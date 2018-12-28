Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A9D7E00CE7; Fri, 28 Dec 2018 11:19:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scottellis.developer[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD106E00CD6
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 11:19:24 -0800 (PST)
Received: by mail-qt1-f194.google.com with SMTP id d19so24238988qtq.9
	for <yocto@yoctoproject.org>; Fri, 28 Dec 2018 11:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=6TcmHcCbBVg9Wll2S+hK05iQrFAubI9RyJC7lSnD7fI=;
	b=jKvuiL43QTbxK+0SvgTKPyZ9cGVwzkyRJ9cKm0i0Kvbi1II7yBRL/a5GLktamggtEL
	8qPGYxsW3PuNqpKSQkUEJ3CkWUjlcxNXTeC37zKY+KtPdomm+pndIxYYxMLtr8jFjv7A
	Usls/vfQIz9U889BxpdH4gtVL64XItR06iB5rpate1xHoC2aC3f0l8pmHByivgr7AX/y
	8SehCp+4Iwwr4W96+/H3u4C2sCbnZ8Zmii0nKNZTk8A3BfvhlQcwBvfmh2BHPcb2MowX
	ehHeUI+Kwoe6RaUEMQLcCHqoWWMw4hTJYmQWli+DEHH9LTEGEyBYnqYbqcxl4bjIoFtG
	GfXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6TcmHcCbBVg9Wll2S+hK05iQrFAubI9RyJC7lSnD7fI=;
	b=FLaFtvrM+Z3sgoK29a5vJBGCUy4vlw9IL5tc9x6jm9nAnq7EbQf/DHDS2RQoJValNZ
	vZR55XYX7P5elJcpywZheNQ6gppnP8U9LdSJm8whpHtjDCNITt0Wie2Pul8tFd5fTHIl
	T0If36nO7XrwFv5sI1lOw6GiQp54UZFITmNwcjAltAj/ythtwVVnZ8/T0dnNm8bB0Mij
	q4ZmxiG5FGZIht7nzkaSEOS1HkPLqo66qb/uymMWpCoz0Px98cfcrGRWvRtu0WCZOPT3
	un3EMGFt3PIh6hnDGfR2IKdPNFLB8MpLrM23cL6SjzY5pvRHVjI4GuCRreLpzYI/Oipv
	K0FA==
X-Gm-Message-State: AJcUukdDLNeCpqz0as+4154tU/phV9FWpyY/3YgdMVuXi133TyOVAZOo
	sstF8hETV0ufRucFbRsdpxcYyIIQ
X-Google-Smtp-Source: ALg8bN7FKb6MlEFBccu437w6UaJLYy7j5C6Yw8aqXuyKm9IXnzTn5I5EGAZ4cKjS6BUrhIGdXTPrRw==
X-Received: by 2002:a0c:b746:: with SMTP id q6mr26850058qve.235.1546024763575; 
	Fri, 28 Dec 2018 11:19:23 -0800 (PST)
Received: from fractal.jumpnow (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	m10sm16588686qtg.39.2018.12.28.11.19.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 28 Dec 2018 11:19:22 -0800 (PST)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Fri, 28 Dec 2018 14:19:12 -0500
Message-Id: <1546024752-12007-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: [meta-security][PATCH] nikto: upgrade to 2.1.6
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
X-List-Received-Date: Fri, 28 Dec 2018 19:19:29 -0000

Source now on github.

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/nikto/files/CVE-2018-11652.patch | 106 -------------------
 recipes-security/nikto/files/location.patch       |  32 +++---
 recipes-security/nikto/nikto_2.1.5.bb             | 108 --------------------
 recipes-security/nikto/nikto_2.1.6.bb             | 118 ++++++++++++++++++++++
 4 files changed, 134 insertions(+), 230 deletions(-)
 delete mode 100644 recipes-security/nikto/files/CVE-2018-11652.patch
 delete mode 100644 recipes-security/nikto/nikto_2.1.5.bb
 create mode 100644 recipes-security/nikto/nikto_2.1.6.bb

diff --git a/recipes-security/nikto/files/CVE-2018-11652.patch b/recipes-security/nikto/files/CVE-2018-11652.patch
deleted file mode 100644
index 5ddb169..0000000
--- a/recipes-security/nikto/files/CVE-2018-11652.patch
+++ /dev/null
@@ -1,106 +0,0 @@
-From e759b3300aace5314fe3d30800c8bd83c81c29f7 Mon Sep 17 00:00:00 2001
-From: sullo <sullo@cirt.net>
-Date: Thu, 31 May 2018 23:30:03 -0400
-Subject: [PATCH] Fix CSV injection issue if server responds with a malicious
- Server string & CSV output is opened in Excel or other spreadsheet app.
- Potentially malicious cell start characters are now prefaced with a ' mark.
- Thanks to Adam (@bytesoverbombs) for letting me know!
-
-Also fixed a crash in the outdated plugin if the $sepr field ends up being something that triggers a panic in split().
-
-CVE: CVE-2018-11652
-Upstream-Status: Backport
-Signed-off-by: Nagalakshmi Veeramallu <nveeramallu@mvista.com>
----
- plugins/nikto_outdated.plugin   |  2 +-
- plugins/nikto_report_csv.plugin | 42 +++++++++++++++++++++++++++++------------
- 2 files changed, 31 insertions(+), 13 deletions(-)
-
-diff --git a/plugins/nikto_outdated.plugin b/plugins/nikto_outdated.plugin
-index 72379cc..eb1d889 100644
---- a/plugins/nikto_outdated.plugin
-+++ b/plugins/nikto_outdated.plugin
-@@ -83,7 +83,7 @@ sub nikto_outdated {
-             $sepr = substr($sepr, (length($sepr) - 1), 1);
- 
-             # break up ID string on $sepr
--            my @T = split(/$sepr/, $mark->{'banner'});
-+            my @T = split(/\\$sepr/, $mark->{'banner'});
- 
-             # assume last is version...
-             for ($i = 0 ; $i < $#T ; $i++) { $MATCHSTRING .= "$T[$i] "; }
-diff --git a/plugins/nikto_report_csv.plugin b/plugins/nikto_report_csv.plugin
-index d13acab..b942e78 100644
---- a/plugins/nikto_report_csv.plugin
-+++ b/plugins/nikto_report_csv.plugin
-@@ -52,10 +52,12 @@ sub csv_open {
- sub csv_host_start {
-     my ($handle, $mark) = @_;
-     $mark->{'banner'} =~ s/"/\\"/g;
--    print OUT "\"$mark->{'hostname'}\","
--      . "\"$mark->{'ip'}\","
--      . "\"$mark->{'port'}\"," . "\"\"," . "\"\"," . "\"\","
--      . "\"$mark->{'banner'}\"\n";
-+    print $handle "\"" . csv_safecell($hostname) . "\","
-+      . "\"" . csv_safecell($mark->{'ip'}) . "\","
-+      . "\"" . csv_safecell($mark->{'port'}) . "\"," . "\"\"," . "\"\"," . "\"\","
-+      #. "\"" . $mark->{'banner'} . "\"\n";
-+      . "\"" . csv_safecell($mark->{'banner'}) . "\"\n";
-+
-     return;
- }
- 
-@@ -65,26 +67,42 @@ sub csv_item {
-     my ($handle, $mark, $item) = @_;
-     foreach my $uri (split(' ', $item->{'uri'})) {
-         my $line = '';
--        $line .= "\"$item->{'mark'}->{'hostname'}\",";
--        $line .= "\"$item->{'mark'}->{'ip'}\",";
--        $line .= "\"$item->{'mark'}->{'port'}\",";
-+        $line .= "\"" . csv_safecell($hostname) . "\",";
-+        $line .= "\"" . csv_safecell($item->{'mark'}->{'ip'}) . \",";
-+        $line .= "\"" . csv_safecell($item->{'mark'}->{'port'}) . "\",";
- 
-         $line .= "\"";
-         if ($item->{'osvdb'} ne '') { $line .= "OSVDB-" . $item->{'osvdb'}; }
-         $line .= "\",";
- 
-         $line .= "\"";
--        if ($item->{'method'} ne '') { $line .= $item->{'method'}; }
-+        if ($item->{'method'} ne '') { $line .= csv_safecell($item->{'method'}); }
-         $line .= "\",";
- 
-         $line .= "\"";
--        if ($uri ne '') { $line .= $mark->{'root'} . $uri; }
-+                       { $line .= csv_safecell($mark->{'root'}) . $uri; }
-+               else { $line .= csv_safecell($ur
-         $line .= "\",";
- 
--        $item->{'message'} =~ s/"/\\"/g;
--        $line .= "\"$item->{'message'}\"";
--        print $handle "$line\n";
-+       my $msg = $item->{'message'};
-+       $uri=quotemeta($uri);
-+       my $root = quotemeta($mark->{'root'});
-+       $msg =~ s/^$uri:\s//;
-+       $msg =~ s/^$root$uri:\s//;
-+         $msg =~ s/"/\\"/g;
-+        $line .= "\"" . csv_safecell($msg) ."\"";
-+         print $handle "$line\n";
-+
-     }
- }
- 
-+###############################################################################
-+# prevent CSV injection attacks
-+sub csv_safecell {
-+    my $celldata = $_[0] || return;
-+    if ($celldata =~ /^[=+@-]/) { $celldata = "'" . $celldata; }
-+    return $celldata;
-+}
-+
-+
- 1;
--- 
-2.6.4
-
diff --git a/recipes-security/nikto/files/location.patch b/recipes-security/nikto/files/location.patch
index a95b062..edaa204 100644
--- a/recipes-security/nikto/files/location.patch
+++ b/recipes-security/nikto/files/location.patch
@@ -1,36 +1,36 @@
-From e10b9b1f6704057ace39956ae1dc5c7caca07ff1 Mon Sep 17 00:00:00 2001
-From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
-Date: Mon, 8 Jul 2013 11:53:54 +0300
-Subject: [PATCH] Setting the location of nikto on the image
+From d1cb702d5147abea0d3208a4d554c61a6f2decd6 Mon Sep 17 00:00:00 2001
+From: Scott Ellis <scott@jumpnowtek.com>
+Date: Fri, 28 Dec 2018 11:08:25 -0500
+Subject: [PATCH] Set custom paths
 
-Upstream Status: Inapropriate
+Upstream Status: Inappropriate
 
-Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
+Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
 ---
- nikto.conf |   10 +++++-----
+ nikto.conf | 10 +++++-----
  1 file changed, 5 insertions(+), 5 deletions(-)
 
-diff --git a/nikto.conf b/nikto.conf
-index 25b784d..9577033 100644
+diff --git a/program/nikto.conf b/program/nikto.conf
+index bf36c58..8c55415 100644
 --- a/nikto.conf
 +++ b/nikto.conf
-@@ -61,11 +61,11 @@ CIRT=174.142.17.165
+@@ -61,11 +61,11 @@ CIRT=107.170.99.251
  CHECKMETHODS=HEAD GET
  
  # If you want to specify the location of any of the files, specify them here
 -# EXECDIR=/opt/nikto				# Location of Nikto
 -# PLUGINDIR=/opt/nikto/plugins			# Location of plugin dir
--# DBDIR=/opt/nikto/databases			# Location of plugin dir
--# TEMPLATEDIR=/opt/nikto/templates		# Location of tempmlate dir
+-# DBDIR=/opt/nikto/databases			# Location of database dir
+-# TEMPLATEDIR=/opt/nikto/templates		# Location of template dir
 -# DOCDIR=/opt/nikto/docs			# Location of docs dir
 +EXECDIR=/usr/bin/nikto				# Location of Nikto
 +PLUGINDIR=/etc/nikto/plugins			# Location of plugin dir
-+DBDIR=/etc/nikto/databases			# Location of plugin dir
-+TEMPLATEDIR=/etc/nikto/templates		# Location of tempmlate dir
++DBDIR=/etc/nikto/databases			# Location of database dir
++TEMPLATEDIR=/etc/nikto/templates		# Location of template dir
 +DOCDIR=/usr/share/doc/nikto			# Location of docs dir
  
  # Default plugin macros
- @@MUTATE=dictionary;subdomain
+ # Remove plugins designed to be run standalone
 -- 
-1.7.9.5
+2.7.4
 
diff --git a/recipes-security/nikto/nikto_2.1.5.bb b/recipes-security/nikto/nikto_2.1.5.bb
deleted file mode 100644
index 19eb14f..0000000
--- a/recipes-security/nikto/nikto_2.1.5.bb
+++ /dev/null
@@ -1,108 +0,0 @@
-SUMMARY = "web server scanner"
-DESCRIPTION = "Nikto is an Open Source (GPL) web server scanner which performs comprehensive tests against web servers for multiple items, including over 6500 potentially dangerous \
-               files/CGIs, checks for outdated versions of over 1250 servers, and version specific problems on over 270 servers."
-SECTION = "security"
-LICENSE = "GPLv2"
-
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-
-SRC_URI = "http://cirt.net/nikto/${BP}.tar.gz \
-           file://location.patch \
-           file://CVE-2018-11652.patch"
-
-SRC_URI[md5sum] = "efcc98a918becb77471ee9a5df0a7b1e"
-SRC_URI[sha256sum] = "0e672a6a46bf2abde419a0e8ea846696d7f32e99ad18a6b405736ee6af07509f"
-
-do_install() {
-	install -d ${D}${bindir}
-	install -d ${D}${datadir}
-	install -d ${D}${datadir}/man/man1
-	install -d ${D}${datadir}/doc/nikto
-	install -d ${D}${sysconfdir}/nikto
-	install -d ${D}${sysconfdir}/nikto/databases
-	install -d ${D}${sysconfdir}/nikto/plugins
-	install -d ${D}${sysconfdir}/nikto/templates
-
-	install -m 0644 databases/db_404_strings    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_content_search    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_dictionary    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_embedded    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_favicon    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_headers    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_httpoptions    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_multiple_index    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_outdated    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_parked_strings    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_realms    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_server_msgs    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_subdomains    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_tests    ${D}${sysconfdir}/nikto/databases
-	install -m 0644 databases/db_variables    ${D}${sysconfdir}/nikto/databases
-
-	install -m 0644 plugins/JSON-PP.pm    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/LW2.pm    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_apache_expect_xss.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_apacheusers.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_auth.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_cgi.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_clientaccesspolicy.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_content_search.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_cookies.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_core.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_dictionary_attack.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_embedded.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_favicon.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_fileops.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_headers.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_httpoptions.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_msgs.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_multiple_index.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_outdated.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_parked.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_paths.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_put_del_test.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_report_csv.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_report_html.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_report_msf.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_report_nbe.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_report_text.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_report_xml.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_robots.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_siebel.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_ssl.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_subdomain.plugin    ${D}${sysconfdir}/nikto/plugins
-	install -m 0644 plugins/nikto_tests.plugin    ${D}${sysconfdir}/nikto/plugins
-
-	install -m 0644 templates/htm_close.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/htm_end.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/htm_host_head.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/htm_host_im.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/htm_host_item.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/htm_start.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/htm_stop.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/htm_start.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/htm_summary.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/xml_end.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/xml_host_head.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/xml_host_im.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/xml_host_item.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/xml_start.tmpl    ${D}${sysconfdir}/nikto/templates
-	install -m 0644 templates/xml_summary.tmpl    ${D}${sysconfdir}/nikto/templates
-
-	install -m 0644 nikto.conf    ${D}${sysconfdir}
-
-	install -m 0755 nikto.pl    ${D}${bindir}/nikto
-	install -m 0644 replay.pl    ${D}${bindir}
-	install -m 0644 docs/nikto.1    ${D}${datadir}/man/man1
-
-	install -m 0644 docs/CHANGES.txt    ${D}${datadir}/doc/nikto
-	install -m 0644 docs/LICENSE.txt    ${D}${datadir}/doc/nikto
-	install -m 0644 docs/nikto.dtd    ${D}${datadir}/doc/nikto
-	install -m 0644 docs/nikto_manual.html    ${D}${datadir}/doc/nikto
-}
-
-RDEPENDS_${PN} = "perl libnet-ssleay-perl libwhisker2-perl \
-                perl-module-getopt-long perl-module-time-local \
-                perl-module-io-socket perl-module-overloading \
-                perl-module-base perl-module-b perl-module-bytes \
-                nikto-doc"
diff --git a/recipes-security/nikto/nikto_2.1.6.bb b/recipes-security/nikto/nikto_2.1.6.bb
new file mode 100644
index 0000000..6b6d8e5
--- /dev/null
+++ b/recipes-security/nikto/nikto_2.1.6.bb
@@ -0,0 +1,118 @@
+SUMMARY = "web server scanner"
+DESCRIPTION = "Nikto is an Open Source web server scanner which performs comprehensive tests against web servers"
+SECTION = "security"
+HOMEPAGE = "https://cirt.net/Nikto2"
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+
+SRCREV = "f1bbd1a8756c076c8fd4f4dd0bc34a8ef215ae79"
+SRC_URI = "git://github.com/sullo/nikto.git \
+           file://0001-Set-custom-paths.patch"
+
+S = "${WORKDIR}/git/program"
+
+do_install() {
+    install -d ${D}${bindir}
+    install -d ${D}${datadir}
+    install -d ${D}${datadir}/man/man1
+    install -d ${D}${datadir}/doc/nikto
+    install -d ${D}${sysconfdir}/nikto
+    install -d ${D}${sysconfdir}/nikto/databases
+    install -d ${D}${sysconfdir}/nikto/plugins
+    install -d ${D}${sysconfdir}/nikto/templates
+
+    install -m 0644 databases/db_404_strings    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_content_search    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_dictionary    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_dir_traversal    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_domino    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_drupal    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_embedded    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_favicon    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_headers    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_httpoptions    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_multiple_index    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_outdated    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_parked_strings    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_realms    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_server_msgs    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_tests    ${D}${sysconfdir}/nikto/databases
+    install -m 0644 databases/db_variables    ${D}${sysconfdir}/nikto/databases
+
+    install -m 0644 plugins/LW2.pm    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_apache_expect_xss.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_apacheusers.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_auth.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_cgi.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_clientaccesspolicy.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_content_search.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_cookies.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_core.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_dictionary_attack.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_dir_traversal.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_dishwasher.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_docker_registry.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_domino.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_drupal.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_embedded.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_favicon.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_fileops.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_headers.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_httpoptions.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_ms10_070.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_msgs.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_multiple_index.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_negotiate.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_origin_reflection.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_outdated.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_parked.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_paths.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_put_del_test.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_report_csv.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_report_html.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_report_json.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_report_nbe.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_report_sqlg.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_report_text.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_report_xml.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_robots.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_siebel.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_sitefiles.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_ssl.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_strutshock.plugin    ${D}${sysconfdir}/nikto/plugins
+    install -m 0644 plugins/nikto_tests.plugin    ${D}${sysconfdir}/nikto/plugins
+
+    install -m 0644 templates/htm_close.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/htm_end.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/htm_host_head.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/htm_host_im.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/htm_host_item.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/htm_start.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/htm_stop.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/htm_start.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/htm_summary.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/xml_end.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/xml_host_head.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/xml_host_im.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/xml_host_item.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/xml_start.tmpl    ${D}${sysconfdir}/nikto/templates
+    install -m 0644 templates/xml_summary.tmpl    ${D}${sysconfdir}/nikto/templates
+
+    install -m 0644 nikto.conf    ${D}${sysconfdir}
+
+    install -m 0755 nikto.pl    ${D}${bindir}/nikto
+    install -m 0644 replay.pl    ${D}${bindir}
+    install -m 0644 docs/nikto.1    ${D}${datadir}/man/man1
+
+    install -m 0644 docs/CHANGES.txt    ${D}${datadir}/doc/nikto
+    install -m 0644 docs/LICENSE.txt    ${D}${datadir}/doc/nikto
+    install -m 0644 docs/nikto.dtd    ${D}${datadir}/doc/nikto
+    install -m 0644 docs/nikto_manual.html    ${D}${datadir}/doc/nikto
+}
+
+RDEPENDS_${PN} = "perl libnet-ssleay-perl libwhisker2-perl \
+    perl-module-getopt-long perl-module-time-local \
+    perl-module-io-socket perl-module-overloading \
+    perl-module-base perl-module-b perl-module-bytes"
+
-- 
2.7.4


