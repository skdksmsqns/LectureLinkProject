package sql;

public class CmtSQL {

	public static final String CMT_SELCTE_ALL_SQL // CMT �Խ��� ��ȸ
			= "SELECT * FROM cmt  ";

	public static final String CMT_INSERT_SQL // CMT �Խ��� ��� �Է�
			= "INSERT INTO cmt VALUES(seq_cmt_no.nextval,?,?,?,?,?,sysdate)";

	public static final String CMT_SELECT_BY_LECTURE_NO_SQL // CMT �Խ��� no ��ȸ
			= "SELECT * FROM cmt WHERE lecture_no = ? ORDER BY cmt_no DESC";

	public static final String CMT_SELECT_SEQCURRVAL_SQL // CMT �Խ��� ������ ��ȸ
			= "SELECT seq_cmt_no.currval AS num FROM dual";

	public static final String CMT_DELETE_BY_CMT_NO_SQL // CMT �Խ��� ��� ����
			= "DELETE FROM cmt WHERE cmt_no = ?";

	public static final String CMT_SELECT_LECTURE_NO_PAGE_SQL 
			= "SELECT * FROM(SELECT ROWNUM as RN, cmts.* "
			+ "FROM (SELECT * FROM(SELECT * from cmt where cmt.lecture_no=?) cmt ORDER BY cmt_no DESC) cmts)"
			+ "WHERE rn BETWEEN ? AND ? ORDER BY cmt_no DESC";
	
	public static final String CMT_AVG_RATING_SQL //CMT ���Ǻ� ��� ����
			="SELECT avg(rating) as avg FROM cmt WHERE lecture_no=?";
	

}