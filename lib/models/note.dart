
class Note {

	int _id;
	String _subeadi;
  String _anakat;
	//String _description;
	String _date;
	int _priority;

	Note(this._subeadi, this._date, this._priority, [this._anakat]);

	Note.withId(this._id, this._subeadi, this._date, this._priority, [this._anakat]);

	int get id => _id;

	String get title => _subeadi;

	String get description => _anakat;

	int get priority => _priority;

	String get date => _date;

	set title(String newTitle) {
		if (newTitle.length <= 255) {
			this._subeadi = newTitle;
		}
	}

	set description(String newDescription) {
		if (newDescription.length <= 255) {
			this._anakat = newDescription;
		}
	}

	set priority(int newPriority) {
		if (newPriority >= 1 && newPriority <= 2) {
			this._priority = newPriority;
		}
	}

	set date(String newDate) {
		this._date = newDate;
	}

	// Convert a Note object into a Map object
	Map<String, dynamic> toMap() {

		var map = Map<String, dynamic>();
		if (id != null) {
			map['id'] = _id;
		}
		map['subeadi'] = _subeadi;
		map['description'] = _anakat;
		map['priority'] = _priority;
		map['date'] = _date;

		return map;
	}

	// Extract a Note object from a Map object
	Note.fromMapObject(Map<String, dynamic> map) {
		this._id = map['id'];
		this._subeadi = map['subeadı'];
		this._anakat = map['description'];
		this._priority = map['priority'];
		this._date = map['date'];
	}
}









