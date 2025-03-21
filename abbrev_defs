;;-*-coding: utf-8;-*-
(define-abbrev-table 'c++-mode-abbrev-table
  '(
    ("mm" "MOCK_METHOD" nil :count 10)
   ))

(define-abbrev-table 'go-mode-abbrev-table
  '(
    ("ife" "if err != nil {
		log.Errorf(\"%v\", err)
	}" nil :count 1)
    ("iferr" "if err != nil {
		t.Errorf(\" %v \", err)
	}" nil :count 3)
    ("onil" "if obj == nil {
		t.Error(\"\")
	} " nil :count 2)
    ("rus" "github.com/sirupsen/logrus" nil :count 3)
    ("terr" "if err != nil {
		t.Errorf(\" %v \", err)
	}" nil :count 1)
    ("wr" "w http.ResponseWriter, r *http.Request" nil :count 2)
   ))

