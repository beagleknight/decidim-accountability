# frozen_string_literal: true

require "spec_helper"

describe Decidim::Accountability::Admin::UpdateStatus do
  let(:organization) { create :organization, available_locales: [:en] }
  let(:participatory_process) { create :participatory_process, organization: organization }
  let(:current_feature) { create :feature, manifest_name: "accountability", participatory_process: participatory_process }

  let(:status) { create :accountability_status, feature: current_feature }

  let(:key) { "planned" }
  let(:name) { "Planned" }
  let(:description) { "description" }
  let(:progress) { 75 }

  let(:form) do
    double(
      :invalid? => invalid,
      key: key,
      name: { en: name },
      description: { en: description },
      progress: progress
    )
  end
  let(:invalid) { false }

  subject { described_class.new(form, status) }

  context "when the form is not valid" do
    let(:invalid) { true }

    it "is not valid" do
      expect { subject.call }.to broadcast(:invalid)
    end
  end

  context "when everything is ok" do
    it "sets the name" do
      subject.call
      expect(translated status.name).to eq name
    end

    it "sets the description" do
      subject.call
      expect(translated status.description).to eq description
    end

    it "sets the key" do
      subject.call
      expect(status.key).to eq key
    end

    it "sets the progress" do
      subject.call
      expect(status.progress).to eq progress
    end

  end
end
