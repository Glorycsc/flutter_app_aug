/// data : [{"children":[],"courseId":13,"id":408,"name":"����","order":190000,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":409,"name":"����","order":190001,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":410,"name":"���˵","order":190002,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":411,"name":"����īӰ","order":190003,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":413,"name":"AndroidȺӢ��","order":190004,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":414,"name":"codeС��","order":190005,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":415,"name":"�ȸ迪����","order":190006,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":416,"name":"��׿��","order":190007,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":417,"name":"���ż����Ŷ�","order":190008,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":420,"name":"GcsSloop","order":190009,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":421,"name":"���������","order":190010,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":427,"name":"susion����","order":190011,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":428,"name":"�������Գ","order":190012,"parentChapterId":407,"userControlSetTop":false,"visible":1},{"children":[],"courseId":13,"id":434,"name":"Android��ĦԺ","order":190013,"parentChapterId":407,"userControlSetTop":false,"visible":1}]
/// errorCode : 0
/// errorMsg : ""

class RemoteModel {
  List<DataBean> data;
  int errorCode;
  String errorMsg;

  static RemoteModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    RemoteModel remoteModelBean = RemoteModel();
    remoteModelBean.data = List()
      ..addAll(
          (map['data'] as List ?? []).map((o) => DataBean.fromMap(o))
      );
    remoteModelBean.errorCode = map['errorCode'];
    remoteModelBean.errorMsg = map['errorMsg'];
    return remoteModelBean;
  }

  Map toJson() =>
      {
        "data": data,
        "errorCode": errorCode,
        "errorMsg": errorMsg,
      };
}

/// children : []
/// courseId : 13
/// id : 408
/// name : "����"
/// order : 190000
/// parentChapterId : 407
/// userControlSetTop : false
/// visible : 1

class DataBean {
  List<dynamic> children;
  int courseId;
  int id;
  String name;
  int order;
  int parentChapterId;
  bool userControlSetTop;
  int visible;

  static DataBean fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    DataBean dataBean = DataBean();
    dataBean.children = map['children'];
    dataBean.courseId = map['courseId'];
    dataBean.id = map['id'];
    dataBean.name = map['name'];
    dataBean.order = map['order'];
    dataBean.parentChapterId = map['parentChapterId'];
    dataBean.userControlSetTop = map['userControlSetTop'];
    dataBean.visible = map['visible'];
    return dataBean;
  }

  Map toJson() =>
      {
        "children": children,
        "courseId": courseId,
        "id": id,
        "name": name,
        "order": order,
        "parentChapterId": parentChapterId,
        "userControlSetTop": userControlSetTop,
        "visible": visible,
      };
}