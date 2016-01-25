Return-Path: <belen.barros.pena@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16571E00AAB; Mon, 25 Jan 2016 06:58:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AC96E008F5
	for <yocto@yoctoproject.org>; Mon, 25 Jan 2016 06:58:52 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 25 Jan 2016 06:58:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,344,1449561600"; d="scan'208";a="35804075"
Received: from unknown (HELO bbarrosp-mac03.local.com) ([10.252.21.147])
	by fmsmga004.fm.intel.com with ESMTP; 25 Jan 2016 06:58:50 -0800
From: Belen Barros Pena <belen.barros.pena@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 25 Jan 2016 15:58:40 +0100
Message-Id: <1453733920-94824-1-git-send-email-belen.barros.pena@linux.intel.com>
X-Mailer: git-send-email 2.5.4 (Apple Git-61)
Cc: srifenbark@gmail.com
Subject: [PATCH] toaster-manual: update documentation about production set up
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
X-List-Received-Date: Mon, 25 Jan 2016 14:58:54 -0000

From: Belen Barros Pena <belen.barros.pena@intel.com>

The instructions the Toaster manual provides for the production set up
are not up-to-date, so update them.

The changes should be applied to both master and jethro.

Signed-off-by: Belen Barros Pena <belen.barros.pena@intel.com>
---
 .../toaster-manual-setup-and-use.xml               | 43 ++++++++--------------
 1 file changed, 15 insertions(+), 28 deletions(-)

diff --git a/documentation/toaster-manual/toaster-manual-setup-and-use.xml b/documentation/toaster-manual/toaster-manual-setup-and-use.xml
index 6a69706..6c557a4 100644
--- a/documentation/toaster-manual/toaster-manual-setup-and-use.xml
+++ b/documentation/toaster-manual/toaster-manual-setup-and-use.xml
@@ -276,6 +276,7 @@
              'PASSWORD': 'yourpasswordhere',
              'HOST': 'localhost',
              'PORT': '3306',
+         }
      }
                                 </literallayout>
                                 </para></listitem>
@@ -298,7 +299,7 @@
                         server defined earlier:
                         <literallayout class='monospaced'>
      $ mysql -u root -p
-     mysql> CREATE DATABASE toaster;
+     mysql> CREATE DATABASE toaster_data;
      mysql> CREATE USER 'toaster'@'localhost' identified by 'yourpasswordhere';
      mysql> GRANT all on toaster_data.* to 'toaster'@'localhost';
      mysql> quit
@@ -309,9 +310,9 @@
                         default data, and gather the statically-served files:
                         <literallayout class='monospaced'>
      $ cd  /var/www/toaster/poky/
-     $ ./bitbake/lib/toaster/manage.py syncdb --migrate
-     $ ./bitbake/lib/toaster/manage.py loadconf ./meta-yocto/conf/toasterconf.json
-     $ ./bitbake/lib/toaster/manage.py lsupdates
+     $ ./bitbake/lib/toaster/manage.py syncdb
+     $ ./bitbake/lib/toaster/manage.py migrate
+     $ TOASTER_DIR=`pwd` TOASTER_CONF=./meta-yocto/conf/toasterconf.json ./bitbake/lib/toaster/manage.py checksettings
      $ ./bitbake/lib/toaster/manage.py collectstatic
                         </literallayout>
                         </para>
@@ -319,33 +320,20 @@
                         <para>
                             For the above set of commands, after moving to the
                             <filename>poky</filename> directory,
-                            the <filename>syncdb</filename> command with the
-                            <filename>migrate</filename> option makes sure the database
+                            the <filename>syncdb</filename> and <filename>migrate</filename>
+                            commands ensure the database
                             schema has had changes propagated correctly (i.e.
                             migrations).
-                            See the
-                            <ulink url='https://south.readthedocs.org/en/latest/commands.html#syncdb'><filename>syncdb</filename></ulink>
-                            command for more information.
                         </para>
 
                         <para>
-                            The
-                            <link linkend='toaster-command-loadconf'><filename>loadconf</filename></link>
-                            command loads the
-                            <filename>./meta-yocto/conf/toasterconf.json</filename>
-                            JSON file.
-                        </para>
-
-                        <para>
-                            The <filename>lsupdates</filename> command fetches
-                            information about machines, recipes and
-                            layers available as part of OpenEmbedded.
-                            The information is fetched from the
-                            <ulink url='http://layers.openembedded.org/'>OpenEmbedded Metadata Index</ulink>.
-                            This information provides easy access to metadata
-                            from Toaster, and it is key for Toaster's usability.
-                            It is not recommended that you use Toaster without
-                            fetching this information."
+                            The next line sets the Toaster root directory
+                            <filename>TOASTER_DIR</filename>, and the location of
+                            the Toaster configuration file <filename>TOASTER_CONF</filename>,
+                            relative to the root directory. For more information on the
+                            Toaster configuration file see section
+                            <link linkend='toaster-json-files'>4.3 JSON Files</link>
+                            of this manual.
                         </para>
 
                         <para>
@@ -353,8 +341,6 @@
                             is a Django framework command that collects all the
                             statically served files into a designated directory to
                             be served up by the Apache web server.
-                            For more information on this Django command, see
-                            <ulink url='https://docs.djangoproject.com/en/1.7/ref/contrib/staticfiles/'></ulink>.
                         </para></listitem>
                     <listitem><para>
                         Add an Apache configuration file for Toaster to your Apache web
@@ -389,6 +375,7 @@
                         <literallayout class='monospaced'>
      $ sudo a2enmod wsgi
      $ sudo a2enconf toaster
+     $ chmod +x bitbake/lib/toaster/toastermain/wsgi.py
                         </literallayout>
                         Finally, restart Apache to make sure all new configuration
                         is loaded.
-- 
2.5.4 (Apple Git-61)


