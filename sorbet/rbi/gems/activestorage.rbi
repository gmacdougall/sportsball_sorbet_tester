# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/activestorage/all/activestorage.rbi
#
# activestorage-6.1.4

module ActiveStorage
  def analyzers; end
  def analyzers=(val); end
  def binary_content_type; end
  def binary_content_type=(val); end
  def content_types_allowed_inline; end
  def content_types_allowed_inline=(val); end
  def content_types_to_serve_as_binary; end
  def content_types_to_serve_as_binary=(val); end
  def draw_routes; end
  def draw_routes=(val); end
  def logger; end
  def logger=(val); end
  def paths; end
  def paths=(val); end
  def previewers; end
  def previewers=(val); end
  def queues; end
  def queues=(val); end
  def replace_on_assign_to_many; end
  def replace_on_assign_to_many=(val); end
  def resolve_model_to_route; end
  def resolve_model_to_route=(val); end
  def routes_prefix; end
  def routes_prefix=(val); end
  def self.analyzers; end
  def self.analyzers=(val); end
  def self.binary_content_type; end
  def self.binary_content_type=(val); end
  def self.content_types_allowed_inline; end
  def self.content_types_allowed_inline=(val); end
  def self.content_types_to_serve_as_binary; end
  def self.content_types_to_serve_as_binary=(val); end
  def self.draw_routes; end
  def self.draw_routes=(val); end
  def self.gem_version; end
  def self.logger; end
  def self.logger=(val); end
  def self.paths; end
  def self.paths=(val); end
  def self.previewers; end
  def self.previewers=(val); end
  def self.queues; end
  def self.queues=(val); end
  def self.railtie_helpers_paths; end
  def self.railtie_namespace; end
  def self.railtie_routes_url_helpers(include_path_helpers = nil); end
  def self.replace_on_assign_to_many; end
  def self.replace_on_assign_to_many=(val); end
  def self.resolve_model_to_route; end
  def self.resolve_model_to_route=(val); end
  def self.routes_prefix; end
  def self.routes_prefix=(val); end
  def self.service_urls_expire_in; end
  def self.service_urls_expire_in=(val); end
  def self.table_name_prefix; end
  def self.track_variants; end
  def self.track_variants=(val); end
  def self.use_relative_model_naming?; end
  def self.variable_content_types; end
  def self.variable_content_types=(val); end
  def self.variant_processor; end
  def self.variant_processor=(val); end
  def self.verifier; end
  def self.verifier=(val); end
  def self.version; end
  def self.video_preview_arguments; end
  def self.video_preview_arguments=(val); end
  def self.web_image_content_types; end
  def self.web_image_content_types=(val); end
  def service_urls_expire_in; end
  def service_urls_expire_in=(val); end
  def track_variants; end
  def track_variants=(val); end
  def variable_content_types; end
  def variable_content_types=(val); end
  def variant_processor; end
  def variant_processor=(val); end
  def verifier; end
  def verifier=(val); end
  def video_preview_arguments; end
  def video_preview_arguments=(val); end
  def web_image_content_types; end
  def web_image_content_types=(val); end
  extend ActiveSupport::Autoload
end
module ActiveStorage::VERSION
end
class ActiveStorage::Error < StandardError
end
class ActiveStorage::InvariableError < ActiveStorage::Error
end
class ActiveStorage::UnpreviewableError < ActiveStorage::Error
end
class ActiveStorage::UnrepresentableError < ActiveStorage::Error
end
class ActiveStorage::IntegrityError < ActiveStorage::Error
end
class ActiveStorage::FileNotFoundError < ActiveStorage::Error
end
class ActiveStorage::PreviewError < ActiveStorage::Error
end
module ActiveStorage::Transformers
  extend ActiveSupport::Autoload
end
class ActiveStorage::Previewer
  def blob; end
  def capture(*argv, to:); end
  def download_blob_to_tempfile(&block); end
  def draw(*argv); end
  def initialize(blob); end
  def instrument(operation, payload = nil, &block); end
  def logger; end
  def open_tempfile; end
  def preview(**options); end
  def self.accept?(blob); end
  def tmpdir; end
end
class ActiveStorage::Previewer::PopplerPDFPreviewer < ActiveStorage::Previewer
  def draw_first_page_from(file, &block); end
  def preview(**options); end
  def self.accept?(blob); end
  def self.pdftoppm_exists?; end
  def self.pdftoppm_path; end
end
class ActiveStorage::Previewer::MuPDFPreviewer < ActiveStorage::Previewer
  def draw_first_page_from(file, &block); end
  def preview(**options); end
  def self.accept?(blob); end
  def self.mutool_exists?; end
  def self.mutool_path; end
end
class ActiveStorage::Previewer::VideoPreviewer < ActiveStorage::Previewer
  def draw_relevant_frame_from(file, &block); end
  def preview(**options); end
  def self.accept?(blob); end
  def self.ffmpeg_exists?; end
  def self.ffmpeg_path; end
end
class ActiveStorage::Analyzer
  def blob; end
  def download_blob_to_tempfile(&block); end
  def initialize(blob); end
  def logger; end
  def metadata; end
  def self.accept?(blob); end
  def self.analyze_later?; end
  def tmpdir; end
end
class ActiveStorage::Analyzer::ImageAnalyzer < ActiveStorage::Analyzer
  def metadata; end
  def read_image; end
  def rotated_image?(image); end
  def self.accept?(blob); end
end
class ActiveStorage::Analyzer::VideoAnalyzer < ActiveStorage::Analyzer
  def angle; end
  def computed_height; end
  def container; end
  def display_aspect_ratio; end
  def display_height_scale; end
  def duration; end
  def encoded_height; end
  def encoded_width; end
  def ffprobe_path; end
  def height; end
  def metadata; end
  def probe; end
  def probe_from(file); end
  def rotated?; end
  def self.accept?(blob); end
  def streams; end
  def tags; end
  def video_stream; end
  def width; end
end
class ActiveStorage::LogSubscriber < ActiveSupport::LogSubscriber
end
class ActiveStorage::Downloader
  def download(key, file); end
  def initialize(service); end
  def open(key, checksum:, name: nil, tmpdir: nil); end
  def open_tempfile(name, tmpdir = nil); end
  def service; end
  def verify_integrity_of(file, checksum:); end
end
class ActiveStorage::Service
  def content_disposition_with(filename:, type: nil); end
  def delete(key); end
  def delete_prefixed(prefix); end
  def download(key); end
  def download_chunk(key, range); end
  def exist?(key); end
  def headers_for_direct_upload(key, filename:, content_type:, content_length:, checksum:); end
  def instrument(operation, payload = nil, &block); end
  def name; end
  def name=(arg0); end
  def open(*args, **options, &block); end
  def private_url(key, expires_in:, filename:, disposition:, content_type:, **arg5); end
  def public?; end
  def public_url(key, **arg1); end
  def self.build(configurator:, name:, service: nil, **service_config); end
  def self.configure(service_name, configurations); end
  def service_name; end
  def update_metadata(key, **metadata); end
  def upload(key, io, checksum: nil, **options); end
  def url(key, **options); end
  def url_for_direct_upload(key, expires_in:, content_type:, content_length:, checksum:); end
  extend ActiveSupport::Autoload
end
class ActiveStorage::Service::Registry
  def configurations; end
  def configurator; end
  def fetch(name); end
  def initialize(configurations); end
  def services; end
end
module ActiveStorage::Reflection
end
class ActiveStorage::Reflection::HasOneAttachedReflection < ActiveRecord::Reflection::MacroReflection
  def macro; end
end
class ActiveStorage::Reflection::HasManyAttachedReflection < ActiveRecord::Reflection::MacroReflection
  def macro; end
end
module ActiveStorage::Reflection::ReflectionExtension
  def add_attachment_reflection(model, name, reflection); end
  def reflection_class_for(macro); end
end
module ActiveStorage::Reflection::ActiveRecordExtensions
  extend ActiveSupport::Concern
end
module ActiveStorage::Reflection::ActiveRecordExtensions::ClassMethods
  def reflect_on_all_attachments; end
  def reflect_on_attachment(attachment); end
end
class ActiveStorage::Engine < Rails::Engine
end
module Anonymous_Module_22
end
module Anonymous_Module_23
end
module ActiveStorage::Attached::Model
  def attachment_changes; end
  def changed_for_autosave?; end
  def initialize_dup(*arg0); end
  def reload(*arg0); end
  extend ActiveSupport::Concern
end
module ActiveStorage::Attached::Model::ClassMethods
  def has_many_attached(name, dependent: nil, service: nil, strict_loading: nil); end
  def has_one_attached(name, dependent: nil, service: nil, strict_loading: nil); end
  def validate_service_configuration(association_name, service); end
end
class ActiveStorage::Attached::One < ActiveStorage::Attached
  def attach(attachable); end
  def attached?; end
  def attachment; end
  def blank?; end
  def detach; end
  def method_missing(method, *args, &block); end
  def purge; end
  def purge_later; end
  def respond_to_missing?(name, include_private = nil); end
  def write_attachment(attachment); end
end
class ActiveStorage::Attached::Many < ActiveStorage::Attached
  def attach(*attachables); end
  def attached?; end
  def attachments; end
  def blobs; end
  def detach; end
  def method_missing(method, *args, &block); end
  def respond_to_missing?(name, include_private = nil); end
end
module ActiveStorage::Attached::Changes
  extend ActiveSupport::Autoload
end
class ActiveStorage::Attached
  def change; end
  def initialize(name, record); end
  def name; end
  def record; end
end
module ActiveStorage::SetCurrent
  extend ActiveSupport::Concern
end
class ActiveStorage::BaseController < ActionController::Base
  def _layout(lookup_context, formats); end
  def self.__callbacks; end
  def self._routes; end
  def self._wrapper_options; end
  def self.etag_with_template_digest; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def stream(blob); end
  include ActionDispatch::Routing::UrlFor
  include ActiveStorage::SetCurrent
  include Anonymous_Module_24
end
module Anonymous_Module_24
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_22
  extend Anonymous_Module_23
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_22
  include Anonymous_Module_23
end
module ActiveStorage::FileServer
  def serve_file(path, content_type:, disposition:); end
end
class ActiveStorage::DiskController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def acceptable_content?(token); end
  def decode_verified_key; end
  def decode_verified_token; end
  def named_disk_service(name); end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def show; end
  def update; end
  include ActiveStorage::FileServer
  include Anonymous_Module_24
end
class ActiveStorage::DirectUploadsController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def blob_args; end
  def create; end
  def direct_upload_json(blob); end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  include Anonymous_Module_24
end
module ActiveStorage::SetBlob
  def set_blob; end
  extend ActiveSupport::Concern
end
module ActiveStorage::SetHeaders
  def set_content_headers_from(blob); end
  extend ActiveSupport::Concern
end
class ActiveStorage::BaseJob < ActiveJob::Base
end
class ActiveStorage::MirrorJob < ActiveStorage::BaseJob
  def perform(key, checksum:); end
  def self.queue_name; end
  def self.rescue_handlers; end
end
class ActiveStorage::PurgeJob < ActiveStorage::BaseJob
  def perform(blob); end
  def self.queue_name; end
  def self.rescue_handlers; end
end
class ActiveStorage::AnalyzeJob < ActiveStorage::BaseJob
  def perform(blob); end
  def self.queue_name; end
  def self.rescue_handlers; end
end
class ActiveStorage::Variation
  def content_type; end
  def default_to(defaults); end
  def digest; end
  def format; end
  def initialize(transformations); end
  def key; end
  def self.decode(key); end
  def self.encode(transformations); end
  def self.wrap(variator); end
  def transform(file, &block); end
  def transformations; end
  def transformer; end
end
class ActiveStorage::VariantWithRecord
  def blob; end
  def create_or_find_record(image:); end
  def download(**, &&); end
  def image; end
  def initialize(blob, variation); end
  def key(**, &&); end
  def process; end
  def processed; end
  def processed?; end
  def record; end
  def service_url(*args, &block); end
  def transform_blob; end
  def url(**, &&); end
  def variation; end
end
module ActiveStorage::Record::GeneratedAttributeMethods
end
class ActiveStorage::Record < ActiveRecord::Base
  include ActiveStorage::Record::GeneratedAssociationMethods
  include ActiveStorage::Record::GeneratedAttributeMethods
end
module ActiveStorage::Record::GeneratedAssociationMethods
end
class ActiveStorage::Record::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Record::GeneratedRelationMethods
end
module ActiveStorage::Record::GeneratedRelationMethods
end
class ActiveStorage::Record::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Record::GeneratedRelationMethods
end
class ActiveStorage::Record::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Record::GeneratedRelationMethods
end
class ActiveStorage::Preview
  def blob; end
  def download(&block); end
  def image; end
  def initialize(blob, variation_or_variation_key); end
  def key; end
  def previewer; end
  def previewer_class; end
  def process; end
  def processed; end
  def processed?; end
  def service_url(*args, &block); end
  def url(**options); end
  def variant; end
  def variation; end
end
class ActiveStorage::Preview::UnprocessedError < StandardError
end
class ActiveStorage::Analyzer::NullAnalyzer < ActiveStorage::Analyzer
  def metadata; end
  def self.accept?(blob); end
  def self.analyze_later?; end
end
module ActiveStorage::Blob::Analyzable
  def analyze; end
  def analyze_later; end
  def analyzed?; end
  def analyzer; end
  def analyzer_class; end
  def extract_metadata_via_analyzer; end
end
module ActiveStorage::Blob::Identifiable
  def download_identifiable_chunk; end
  def identified?; end
  def identify; end
  def identify_content_type; end
  def identify_without_saving; end
end
module ActiveStorage::Blob::Representable
  def default_variant_format; end
  def default_variant_transformations; end
  def format; end
  def preview(transformations); end
  def previewable?; end
  def representable?; end
  def representation(transformations); end
  def variable?; end
  def variant(transformations); end
  def variant_class; end
  extend ActiveSupport::Concern
end
class ActiveStorage::Service::Configurator
  def build(service_name); end
  def config_for(name); end
  def configurations; end
  def initialize(configurations); end
  def resolve(class_name); end
  def self.build(service_name, configurations); end
end
class ActiveStorage::Service::DiskService < ActiveStorage::Service
  def current_host; end
  def delete(key); end
  def delete_prefixed(prefix); end
  def download(key, &block); end
  def download_chunk(key, range); end
  def ensure_integrity_of(key, checksum); end
  def exist?(key); end
  def folder_for(key); end
  def generate_url(key, expires_in:, filename:, content_type:, disposition:); end
  def headers_for_direct_upload(key, content_type:, **arg2); end
  def initialize(root:, public: nil, **options); end
  def make_path_for(key); end
  def path_for(key); end
  def private_url(key, expires_in:, filename:, content_type:, disposition:, **arg5); end
  def public_url(key, filename:, content_type: nil, disposition: nil, **arg4); end
  def root; end
  def stream(key); end
  def upload(key, io, checksum: nil, **arg3); end
  def url_for_direct_upload(key, expires_in:, content_type:, content_length:, checksum:); end
  def url_helpers; end
end
module ActiveStorage::Blob::GeneratedAttributeMethods
end
class ActiveStorage::Blob < ActiveStorage::Record
  def allowed_inline?; end
  def attachable_plain_text_representation(caption = nil); end
  def audio?; end
  def autosave_associated_records_for_attachments(*args); end
  def autosave_associated_records_for_preview_image_attachment; end
  def autosave_associated_records_for_preview_image_blob; end
  def autosave_associated_records_for_variant_records(*args); end
  def compute_checksum_in_chunks(io); end
  def content_type_for_serving; end
  def delete; end
  def download(&block); end
  def extract_content_type(io); end
  def filename; end
  def forced_disposition_for_serving; end
  def forcibly_serve_as_binary?; end
  def image?; end
  def key; end
  def mirror_later; end
  def open(tmpdir: nil, &block); end
  def previewable_attachable?; end
  def purge; end
  def purge_later; end
  def regenerate_key; end
  def service; end
  def service_headers_for_direct_upload; end
  def service_metadata; end
  def service_url(*args, &block); end
  def service_url_for_direct_upload(expires_in: nil); end
  def services; end
  def services=(arg0); end
  def services?; end
  def signed_id; end
  def text?; end
  def to_trix_content_attachment_partial_path; end
  def unfurl(io, identify: nil); end
  def update_service_metadata; end
  def upload(io, identify: nil); end
  def upload_without_unfurling(io); end
  def url(expires_in: nil, disposition: nil, filename: nil, **options); end
  def validate_associated_records_for_attachments(*args); end
  def validate_associated_records_for_variant_records(*args); end
  def video?; end
  def web_image?; end
  extend ActionText::Attachable::ClassMethods
  include ActionText::Attachable
  include ActiveStorage::Blob::Analyzable
  include ActiveStorage::Blob::GeneratedAssociationMethods
  include ActiveStorage::Blob::GeneratedAttributeMethods
  include ActiveStorage::Blob::Identifiable
  include ActiveStorage::Blob::Representable
  include Anonymous_Module_25
end
module ActiveStorage::Blob::GeneratedAssociationMethods
  def attachment_ids; end
  def attachment_ids=(ids); end
  def attachments; end
  def attachments=(value); end
  def build_preview_image_attachment(*args, &block); end
  def create_preview_image_attachment!(*args, &block); end
  def create_preview_image_attachment(*args, &block); end
  def preview_image; end
  def preview_image=(attachable); end
  def preview_image_attachment; end
  def preview_image_attachment=(value); end
  def preview_image_blob; end
  def preview_image_blob=(value); end
  def reload_preview_image_attachment; end
  def reload_preview_image_blob; end
  def variant_record_ids; end
  def variant_record_ids=(ids); end
  def variant_records; end
  def variant_records=(value); end
end
class ActiveStorage::Blob::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Blob::GeneratedRelationMethods
end
module ActiveStorage::Blob::GeneratedRelationMethods
  def unattached(**, &&); end
  def with_attached_preview_image(**, &&); end
end
class ActiveStorage::Blob::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Blob::GeneratedRelationMethods
end
class ActiveStorage::Blob::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Blob::GeneratedRelationMethods
end
module Anonymous_Module_25
  def analyzed; end
  def analyzed=(value); end
  def analyzed_before_last_save; end
  def analyzed_change; end
  def analyzed_changed?; end
  def analyzed_was; end
  def identified; end
  def identified=(value); end
  def identified_before_last_save; end
  def identified_change; end
  def identified_changed?; end
  def identified_was; end
  def saved_change_to_analyzed; end
  def saved_change_to_analyzed?; end
  def saved_change_to_identified; end
  def saved_change_to_identified?; end
end
module ActiveStorage::VariantRecord::GeneratedAttributeMethods
end
class ActiveStorage::VariantRecord < ActiveStorage::Record
  def autosave_associated_records_for_blob(*args); end
  def autosave_associated_records_for_image_attachment; end
  def autosave_associated_records_for_image_blob; end
  include ActiveStorage::VariantRecord::GeneratedAssociationMethods
  include ActiveStorage::VariantRecord::GeneratedAttributeMethods
end
module ActiveStorage::VariantRecord::GeneratedAssociationMethods
  def blob; end
  def blob=(value); end
  def build_blob(*args, &block); end
  def build_image_attachment(*args, &block); end
  def create_blob!(*args, &block); end
  def create_blob(*args, &block); end
  def create_image_attachment!(*args, &block); end
  def create_image_attachment(*args, &block); end
  def image; end
  def image=(attachable); end
  def image_attachment; end
  def image_attachment=(value); end
  def image_blob; end
  def image_blob=(value); end
  def reload_blob; end
  def reload_image_attachment; end
  def reload_image_blob; end
end
class ActiveStorage::VariantRecord::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::VariantRecord::GeneratedRelationMethods
end
module ActiveStorage::VariantRecord::GeneratedRelationMethods
  def with_attached_image(**, &&); end
end
class ActiveStorage::VariantRecord::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::VariantRecord::GeneratedRelationMethods
end
class ActiveStorage::VariantRecord::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::VariantRecord::GeneratedRelationMethods
end
class ActiveStorage::Filename
  def <=>(other); end
  def as_json(*arg0); end
  def base; end
  def extension; end
  def extension_with_delimiter; end
  def extension_without_delimiter; end
  def initialize(filename); end
  def sanitized; end
  def self.wrap(filename); end
  def to_json; end
  def to_s; end
  include Comparable
end
class ActiveStorage::Current < ActiveSupport::CurrentAttributes
  def self.host; end
  def self.host=(attribute); end
  include Anonymous_Module_26
end
module Anonymous_Module_26
  def host; end
  def host=(attribute); end
end
module ActiveStorage::Attachment::GeneratedAttributeMethods
end
class ActiveStorage::Attachment < ActiveStorage::Record
  def analyze_blob_later; end
  def autosave_associated_records_for_blob(*args); end
  def autosave_associated_records_for_record(*args); end
  def dependent; end
  def method_missing(method, *args, &block); end
  def mirror_blob_later; end
  def purge; end
  def purge_dependent_blob_later; end
  def purge_later; end
  def respond_to_missing?(name, include_private = nil); end
  def signed_id(**, &&); end
  def validate_associated_records_for_blob(*args); end
  include ActiveStorage::Attachment::GeneratedAssociationMethods
  include ActiveStorage::Attachment::GeneratedAttributeMethods
end
module ActiveStorage::Attachment::GeneratedAssociationMethods
  def blob; end
  def blob=(value); end
  def build_blob(*args, &block); end
  def create_blob!(*args, &block); end
  def create_blob(*args, &block); end
  def record; end
  def record=(value); end
  def reload_blob; end
  def reload_record; end
end
class ActiveStorage::Attachment::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Attachment::GeneratedRelationMethods
end
module ActiveStorage::Attachment::GeneratedRelationMethods
end
class ActiveStorage::Attachment::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Attachment::GeneratedRelationMethods
end
class ActiveStorage::Attachment::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include ActiveStorage::Attachment::GeneratedRelationMethods
end
class ActiveStorage::Variant
  def blob; end
  def content_type(**, &&); end
  def content_type_for_serving(**, &&); end
  def download(&block); end
  def filename; end
  def forced_disposition_for_serving; end
  def image; end
  def initialize(blob, variation_or_variation_key); end
  def key; end
  def process; end
  def processed; end
  def processed?; end
  def service(**, &&); end
  def service_url(*args, &block); end
  def url(expires_in: nil, disposition: nil); end
  def variation; end
end
class ActiveStorage::Blobs::ProxyController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def show; end
  include ActiveStorage::SetBlob
  include ActiveStorage::SetHeaders
  include Anonymous_Module_24
end
class ActiveStorage::Blobs::RedirectController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def show; end
  include ActiveStorage::SetBlob
  include Anonymous_Module_24
end
class ActiveStorage::Representations::BaseController < ActiveStorage::BaseController
  def _layout(lookup_context, formats); end
  def self.__callbacks; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def set_representation; end
  include ActiveStorage::SetBlob
  include Anonymous_Module_24
end
class ActiveStorage::Representations::ProxyController < ActiveStorage::Representations::BaseController
  def _layout(lookup_context, formats); end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def show; end
  include ActiveStorage::SetHeaders
  include Anonymous_Module_24
end
class ActiveStorage::Representations::RedirectController < ActiveStorage::Representations::BaseController
  def _layout(lookup_context, formats); end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def show; end
  include Anonymous_Module_24
end
class ActiveStorage::Attached::Changes::CreateOne
  def attachable; end
  def attachment; end
  def attachment_service_name; end
  def blob; end
  def build_attachment; end
  def find_attachment; end
  def find_or_build_attachment; end
  def find_or_build_blob; end
  def initialize(name, record, attachable); end
  def name; end
  def record; end
  def save; end
  def upload; end
end
class ActiveStorage::Attached::Changes::CreateMany
  def assign_associated_attachments; end
  def attachables; end
  def attachments; end
  def blobs; end
  def build_subchange_from(attachable); end
  def initialize(name, record, attachables); end
  def name; end
  def record; end
  def reset_associated_blobs; end
  def save; end
  def subchanges; end
  def upload; end
end
class ActiveStorage::Attached::Changes::CreateOneOfMany < ActiveStorage::Attached::Changes::CreateOne
  def find_attachment; end
end
class ActiveStorage::Attached::Changes::DeleteOne
  def attachment; end
  def initialize(name, record); end
  def name; end
  def record; end
  def save; end
end
class ActiveStorage::Attached::Changes::DeleteMany
  def attachables; end
  def attachments; end
  def blobs; end
  def initialize(name, record); end
  def name; end
  def record; end
  def save; end
end
class ActiveStorage::Transformers::Transformer
  def initialize(transformations); end
  def process(file, format:); end
  def transform(file, format:); end
  def transformations; end
end
class ActiveStorage::Transformers::ImageProcessingTransformer < ActiveStorage::Transformers::Transformer
  def operations; end
  def process(file, format:); end
  def processor; end
end
