Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF82E014E4
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 19:00:25 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 05977408A8; Mon, 19 Aug 2013 02:00:25 +0000 (UTC)
Date: Mon, 19 Aug 2013 02:00:24 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130819020024.GA3102@ab01.i.yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-12-10)
Subject: Warning! Some failures happened on pkg-report system!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 19 Aug 2013 02:00:25 -0000
X-Groupsio-MsgNum: 15514
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Already up-to-date.
Already up-to-date.
Now updating daily_check database, please wait for a minute......
Now updating daily_check database, please wait for a minute......
Now updating pkginfotable,please wait a minute........
['Package', 'Version', 'Upver', 'License', 'Section', 'Home', 'Release', 'Depends', 'BugTracker', 'PE', 'Description', 'Status', 'Tracking', 'URI', 'MAINTAINER', 'NoUpReason']

Database update successful!
Now updating pkginfotable,please wait a minute........
['Package', 'Version', 'Upver', 'License', 'Section', 'Home', 'Release', 'Depends', 'BugTracker', 'PE', 'Description', 'Status', 'Tracking', 'URI', 'MAINTAINER', 'NoUpReason']

Traceback (most recent call last):
  File "info_to_db.py", line 114, in <module>
    cu.execute(cmd1)
sqlite3.OperationalError: database is locked
REPORT-SYSTEM-UPDATE ERROR: Update database faild!
Now updating pkgrecord table and generate new upgr_hist table, please wait a minute......
milestone_target_to_db.py date_parameter = 2013-07-29
['milestone_target_to_db.py', '2013-07-29']
SERVER_PATH: /srv/www/vhosts/packages.yoctoproject.org/python-function/../newserver/webserver/
Traceback (most recent call last):
  File "update_release_sdates_to_db.py", line 27, in <module>
    cu.execute("create table if not exists release_dates (name varchar(50), start_date date, end_date date)")
sqlite3.OperationalError: database is locked
REPORT-SYSTEM-UPDATE ERROR: run update_release_sdates_to_db.py faild! Please release/milestone start_date, end_date and name format! 
REPORT-SYSTEM-UPDATE ERROR: Didn't draw chart because some failures happend before
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--a8Wt8u1KmwUX3Y2C--
