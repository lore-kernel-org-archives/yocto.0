Return-Path: <packages@autobuilder.yoctoproject.org>
Received: from autobuilder.yoctoproject.org (ab-master.i.yoctoproject.org
	[10.0.10.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F454E0140D
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2013 19:00:14 -0700 (PDT)
Received: by autobuilder.yoctoproject.org (Postfix, from userid 802)
	id 9464E407EF; Mon,  1 Jul 2013 02:00:14 +0000 (UTC)
Date: Mon, 1 Jul 2013 02:00:14 +0000
From: Yocto Project Package Report System <package-reporting@yoctoproject.org>
To: yocto@yoctoproject.org
Message-ID: <20130701020014.GA12054@ab01.i.yoctoproject.org>
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
X-List-Received-Date: Mon, 01 Jul 2013 02:00:14 -0000
X-Groupsio-MsgNum: 14762
Content-Type: multipart/mixed; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline

--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

fatal: Refusing to fetch into current branch refs/heads/stage of non-bare repository
Now updating daily_check database, please wait for a minute......
Now updating pkginfotable,please wait a minute........
['Package', 'Version', 'Upver', 'License', 'Section', 'Home', 'Release', 'Depends', 'BugTracker', 'PE', 'Description', 'Status', 'Tracking', 'URI', 'MAINTAINER', 'NoUpReason']

Database update successful!
From git://git.yoctoproject.org/poky-contrib
 * [new branch]      stage/master_under_test -> stage
Now updating daily_check database, please wait for a minute......
Now updating pkgrecord table and generate new upgr_hist table, please wait a minute......
['milestone_target_to_db.py', '2013-04-30']
SERVER_PATH: /srv/www/vhosts/packages.yoctoproject.org/python-function/../newserver/webserver/
Database update successful!
Connecting to database /srv/www/vhosts/packages.yoctoproject.org/newserver/webserver/pkginfobackup.sqlite
Traceback (most recent call last):
  File "history_upgrade_number_chart.py", line 45, in <module>
    upgr_count = cu.execute(querry).fetchall()[0][0]
sqlite3.OperationalError: no such table: upgr_hist
REPORT-SYSTEM-UPDATE ERROR: Draw barchart faild!
Any problem, please contact Saul Wold <sgw@linux.intel.com> 

--5vNYLRcllDrimb99
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="potential_format_problem.log"

recipe_color.inc/17: RECIPE_COLOR = "green"

--5vNYLRcllDrimb99--
