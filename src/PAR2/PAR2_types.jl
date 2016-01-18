#
# Autogenerated by Thrift Compiler (1.0.0-dev)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

type _enum__Type
  BOOLEAN::Int32
  INT32::Int32
  INT64::Int32
  INT96::Int32
  FLOAT::Int32
  DOUBLE::Int32
  BYTE_ARRAY::Int32
  FIXED_LEN_BYTE_ARRAY::Int32
end
const _Type = _enum__Type(Int32(0), Int32(1), Int32(2), Int32(3), Int32(4), Int32(5), Int32(6), Int32(7))

type _enum_ConvertedType
  UTF8::Int32
  MAP::Int32
  MAP_KEY_VALUE::Int32
  LIST::Int32
  ENUM::Int32
  DECIMAL::Int32
  DATE::Int32
  TIME_MILLIS::Int32
  TIME_MICROS::Int32
  TIMESTAMP_MILLIS::Int32
  TIMESTAMP_MICROS::Int32
  UINT_8::Int32
  UINT_16::Int32
  UINT_32::Int32
  UINT_64::Int32
  INT_8::Int32
  INT_16::Int32
  INT_32::Int32
  INT_64::Int32
  JSON::Int32
  BSON::Int32
  INTERVAL::Int32
end
const ConvertedType = _enum_ConvertedType(Int32(0), Int32(1), Int32(2), Int32(3), Int32(4), Int32(5), Int32(6), Int32(7), Int32(8), Int32(9), Int32(10), Int32(11), Int32(12), Int32(13), Int32(14), Int32(15), Int32(16), Int32(17), Int32(18), Int32(19), Int32(20), Int32(21))

type _enum_FieldRepetitionType
  REQUIRED::Int32
  OPTIONAL::Int32
  REPEATED::Int32
end
const FieldRepetitionType = _enum_FieldRepetitionType(Int32(0), Int32(1), Int32(2))

type _enum_Encoding
  PLAIN::Int32
  PLAIN_DICTIONARY::Int32
  RLE::Int32
  BIT_PACKED::Int32
  DELTA_BINARY_PACKED::Int32
  DELTA_LENGTH_BYTE_ARRAY::Int32
  DELTA_BYTE_ARRAY::Int32
  RLE_DICTIONARY::Int32
end
const Encoding = _enum_Encoding(Int32(0), Int32(2), Int32(3), Int32(4), Int32(5), Int32(6), Int32(7), Int32(8))

type _enum_CompressionCodec
  UNCOMPRESSED::Int32
  SNAPPY::Int32
  GZIP::Int32
  LZO::Int32
end
const CompressionCodec = _enum_CompressionCodec(Int32(0), Int32(1), Int32(2), Int32(3))

type _enum_PageType
  DATA_PAGE::Int32
  INDEX_PAGE::Int32
  DICTIONARY_PAGE::Int32
  DATA_PAGE_V2::Int32
end
const PageType = _enum_PageType(Int32(0), Int32(1), Int32(2), Int32(3))


type Statistics
  max::Vector{UInt8}
  min::Vector{UInt8}
  null_count::Int64
  distinct_count::Int64
  Statistics() = (o=new(); fillunset(o); o)
end # type Statistics
meta(t::Type{Statistics}) = meta(t, Symbol[:max,:min,:null_count,:distinct_count], Int[], Dict{Symbol,Any}())

type SchemaElement
  _type::Int32
  type_length::Int32
  repetition_type::Int32
  name::UTF8String
  num_children::Int32
  converted_type::Int32
  scale::Int32
  precision::Int32
  field_id::Int32
  SchemaElement() = (o=new(); fillunset(o); o)
end # type SchemaElement
meta(t::Type{SchemaElement}) = meta(t, Symbol[:_type,:type_length,:repetition_type,:num_children,:converted_type,:scale,:precision,:field_id], Int[], Dict{Symbol,Any}())

type DataPageHeader
  num_values::Int32
  encoding::Int32
  definition_level_encoding::Int32
  repetition_level_encoding::Int32
  statistics::Statistics
  DataPageHeader() = (o=new(); fillunset(o); o)
end # type DataPageHeader
meta(t::Type{DataPageHeader}) = meta(t, Symbol[:statistics], Int[], Dict{Symbol,Any}())

type IndexPageHeader
end # type IndexPageHeader

type DictionaryPageHeader
  num_values::Int32
  encoding::Int32
  is_sorted::Bool
  DictionaryPageHeader() = (o=new(); fillunset(o); o)
end # type DictionaryPageHeader
meta(t::Type{DictionaryPageHeader}) = meta(t, Symbol[:is_sorted], Int[], Dict{Symbol,Any}())

type DataPageHeaderV2
  num_values::Int32
  num_nulls::Int32
  num_rows::Int32
  encoding::Int32
  definition_levels_byte_length::Int32
  repetition_levels_byte_length::Int32
  is_compressed::Bool
  statistics::Statistics
  DataPageHeaderV2() = (o=new(); fillunset(o); o)
end # type DataPageHeaderV2
meta(t::Type{DataPageHeaderV2}) = meta(t, Symbol[:is_compressed,:statistics], Int[], Dict{Symbol,Any}(:is_compressed => true))

type PageHeader
  _type::Int32
  uncompressed_page_size::Int32
  compressed_page_size::Int32
  crc::Int32
  data_page_header::DataPageHeader
  index_page_header::IndexPageHeader
  dictionary_page_header::DictionaryPageHeader
  data_page_header_v2::DataPageHeaderV2
  PageHeader() = (o=new(); fillunset(o); o)
end # type PageHeader
meta(t::Type{PageHeader}) = meta(t, Symbol[:crc,:data_page_header,:index_page_header,:dictionary_page_header,:data_page_header_v2], Int[], Dict{Symbol,Any}())

type KeyValue
  key::UTF8String
  value::UTF8String
  KeyValue() = (o=new(); fillunset(o); o)
end # type KeyValue
meta(t::Type{KeyValue}) = meta(t, Symbol[:value], Int[], Dict{Symbol,Any}())

type SortingColumn
  column_idx::Int32
  descending::Bool
  nulls_first::Bool
  SortingColumn() = (o=new(); fillunset(o); o)
end # type SortingColumn

type PageEncodingStats
  page_type::Int32
  encoding::Int32
  count::Int32
  PageEncodingStats() = (o=new(); fillunset(o); o)
end # type PageEncodingStats

type ColumnMetaData
  _type::Int32
  encodings::Vector{Int32}
  path_in_schema::Vector{UTF8String}
  codec::Int32
  num_values::Int64
  total_uncompressed_size::Int64
  total_compressed_size::Int64
  key_value_metadata::Vector{KeyValue}
  data_page_offset::Int64
  index_page_offset::Int64
  dictionary_page_offset::Int64
  statistics::Statistics
  encoding_stats::Vector{PageEncodingStats}
  ColumnMetaData() = (o=new(); fillunset(o); o)
end # type ColumnMetaData
meta(t::Type{ColumnMetaData}) = meta(t, Symbol[:key_value_metadata,:index_page_offset,:dictionary_page_offset,:statistics,:encoding_stats], Int[], Dict{Symbol,Any}())

type ColumnChunk
  file_path::UTF8String
  file_offset::Int64
  meta_data::ColumnMetaData
  ColumnChunk() = (o=new(); fillunset(o); o)
end # type ColumnChunk
meta(t::Type{ColumnChunk}) = meta(t, Symbol[:file_path,:meta_data], Int[], Dict{Symbol,Any}())

type RowGroup
  columns::Vector{ColumnChunk}
  total_byte_size::Int64
  num_rows::Int64
  sorting_columns::Vector{SortingColumn}
  RowGroup() = (o=new(); fillunset(o); o)
end # type RowGroup
meta(t::Type{RowGroup}) = meta(t, Symbol[:sorting_columns], Int[], Dict{Symbol,Any}())

type FileMetaData
  version::Int32
  schema::Vector{SchemaElement}
  num_rows::Int64
  row_groups::Vector{RowGroup}
  key_value_metadata::Vector{KeyValue}
  created_by::UTF8String
  FileMetaData() = (o=new(); fillunset(o); o)
end # type FileMetaData
meta(t::Type{FileMetaData}) = meta(t, Symbol[:key_value_metadata,:created_by], Int[], Dict{Symbol,Any}())
