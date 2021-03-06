# frozen_string_literal: true

require "spec_helper"

describe "Result comments", type: :feature, perform_enqueued: true do
  let!(:feature) { create(:accountability_feature, organization: organization) }
  let!(:commentable) { create(:accountability_result, feature: feature) }

  let(:resource_path) { decidim_accountability.result_path(commentable, feature_id: feature, participatory_process_id: feature.participatory_process) }
  include_examples "comments"
end
