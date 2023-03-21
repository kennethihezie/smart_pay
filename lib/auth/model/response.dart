class StatusResponse {
  final bool? status;
  final String? message;
  final dynamic meta;
  final List<dynamic>? pagination;
  final Map<String, dynamic>? data;

  StatusResponse(
      {this.status, this.message, this.meta, this.pagination, this.data});

  factory StatusResponse.fromJson(Map json) {
    return StatusResponse(
      status: json['status'],
      message: json['message'],
      meta: json['meta'],
      pagination: json['pagination'],
      data: json['data'],
    );
  }

  Map<String, dynamic> toJson(StatusResponse response) {
    return {
      "status": response.status,
      "message": response.message,
      "meta": response.meta,
      "pagination": response.pagination,
      "data": response.data
    };
  }
}
