Return-Path: <joe@deserted.net>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5973AE015AB
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 00:16:20 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id aq17so97940iec.13
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 00:16:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=YylyY/+ksgtLMzmtB034QUT/H3C5GstX9h1cvySvhvE=;
	b=kaRLabXaxyTHkIUC8k9XRrLPFfwGjFL6d+KuAebmqzPpiPtzkdgyuJDNwt7af0Pywq
	aap+oQffuqdLVh0r27bj6XVXX+gCE1l/nLwWNG3WQ1mpsOQfB07MRKhogOy0ahM2MuDQ
	0pzYyoJyQ8DmrR9ZzIb1LaAyfGoxvVYirzZtxvvOGOVKzGUAOQ4P4f5f0oou5juydhpp
	VroMXNDhwriMfJnTUDlmsUQ9O0wEkt6AouWC0CSW7KN0qCUJGmCYtLwPCYP/2iZ7QOUW
	QubgxQ1bc6ikySbGjW2RaGyXlBAA0D6oRrDxZeeJmF4FITHBpGNkSv8uGW829DAqX58V
	gRFw==
X-Gm-Message-State: ALoCoQktgCxTpWvRN0igli/rkM2Bdp9rZmFVVFm8UjVcezhVRvIOncPdvzywIx4FSV4kCneMuS+d
X-Received: by 10.42.232.206 with SMTP id jv14mr17284icb.52.1379650821664;
	Thu, 19 Sep 2013 21:20:21 -0700 (PDT)
Received: from burninator.deserted.net (198-84-238-35.cpe.teksavvy.com.
	[198.84.238.35])
	by mx.google.com with ESMTPSA id y10sm1025512igl.4.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Sep 2013 21:20:21 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Fri, 20 Sep 2013 00:20:14 -0400
Message-Id: <1379650814-18256-3-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1379650814-18256-1-git-send-email-joe@deserted.net>
References: <1379650814-18256-1-git-send-email-joe@deserted.net>
Subject: [meta-security][PATCH 2/2] Bastille: Remove dependency on lib-perl
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
X-List-Received-Date: Fri, 20 Sep 2013 07:16:21 -0000

Bastille never uses more than the minimal functionality provided by the
'lib' module, just pre-pending a named directory to @INC (and, optionally,
the directory with a ${archname}/auto appended to it).  Lighten this a bit
by updating the Bastille code base and remove lib-perl from meta-security
entirely since it no longer serves any purpose.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/bastille/bastille_3.2.1.bb        |    3 +-
 ...-lib-remove-dependency-on-lib-perl-module.patch |  495 ++++++++++++++++++++
 recipes-security/perl/lib-perl_0.63.bb             |   28 --
 3 files changed, 497 insertions(+), 29 deletions(-)
 create mode 100644 recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-perl-module.patch
 delete mode 100644 recipes-security/perl/lib-perl_0.63.bb

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index d506399..20a331a 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -6,7 +6,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 # Bash is needed for set +o privileged (check busybox), might also need ncurses
 DEPENDS = "virtual/kernel"
-RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
+RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
 FILES_${PN} += "/run/lock/subsys/bastille"
 
 inherit allarch module-base
@@ -32,6 +32,7 @@ SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
            file://edit_usage_message.patch \
            file://organize_distro_discovery.patch \
            file://do_not_apply_config.patch \
+           file://0001-lib-remove-dependency-on-lib-perl-module.patch \
            "
 
 SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
diff --git a/recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-perl-module.patch b/recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-perl-module.patch
new file mode 100644
index 0000000..a3ec88d
--- /dev/null
+++ b/recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-perl-module.patch
@@ -0,0 +1,495 @@
+From 23126d70d69251b735bd8f0e43c3b7c299e7ab0f Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe@deserted.net>
+Date: Thu, 19 Sep 2013 10:16:53 -0400
+Subject: [PATCH] lib: remove dependency on lib-perl module
+
+The perl 'lib' module isn't really necessary based on the usage pattern in
+Bastille, so remove the dependency on it.
+
+Upstream-Status: Submitted [SourceForge project: https://sourceforge.net/p/bastille-linux/bugs/160/]
+
+Signed-off-by: Joe MacDonald <joe@deserted.net>
+---
+ Bastille/AccountSecurity.pm      |    8 +++++++-
+ Bastille/Apache.pm               |    8 +++++++-
+ Bastille/BootSecurity.pm         |    8 +++++++-
+ Bastille/ConfigureMiscPAM.pm     |    8 +++++++-
+ Bastille/DNS.pm                  |    8 +++++++-
+ Bastille/DisableUserTools.pm     |    8 +++++++-
+ Bastille/FTP.pm                  |    8 +++++++-
+ Bastille/FilePermissions.pm      |    8 +++++++-
+ Bastille/IOLoader.pm             |    8 +++++++-
+ Bastille/Logging.pm              |    8 +++++++-
+ Bastille/MiscellaneousDaemons.pm |    8 +++++++-
+ Bastille/OSXFirewall.pm          |    8 +++++++-
+ Bastille/PSAD.pm                 |    8 +++++++-
+ Bastille/Printing.pm             |    8 +++++++-
+ Bastille/RemoteAccess.pm         |    8 +++++++-
+ Bastille/SecureInetd.pm          |    8 +++++++-
+ Bastille/Sendmail.pm             |    8 +++++++-
+ Bastille/TMPDIR.pm               |    8 +++++++-
+ Bastille/TestDriver.pm           |   12 +++++++++---
+ BastilleBackEnd                  |   10 +++++++++-
+ InteractiveBastille              |   10 +++++++++-
+ RevertBastille                   |   10 +++++++++-
+ find_bastille_affected_files.pl  |    9 ++++++++-
+ 23 files changed, 170 insertions(+), 25 deletions(-)
+
+diff --git a/Bastille/AccountSecurity.pm b/Bastille/AccountSecurity.pm
+index e0ebc8a..96e27fd 100644
+--- a/Bastille/AccountSecurity.pm
++++ b/Bastille/AccountSecurity.pm
+@@ -3,7 +3,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::AccountSecurity;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ 
+ use Bastille::API;
+diff --git a/Bastille/Apache.pm b/Bastille/Apache.pm
+index f6ee3f9..f419a72 100644
+--- a/Bastille/Apache.pm
++++ b/Bastille/Apache.pm
+@@ -4,7 +4,13 @@
+ 
+ 
+ package Bastille::Apache;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::HPSpecific;
+diff --git a/Bastille/BootSecurity.pm b/Bastille/BootSecurity.pm
+index cd4ac7b..6a9372f 100644
+--- a/Bastille/BootSecurity.pm
++++ b/Bastille/BootSecurity.pm
+@@ -3,7 +3,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::BootSecurity;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::HPSpecific;
+diff --git a/Bastille/ConfigureMiscPAM.pm b/Bastille/ConfigureMiscPAM.pm
+index 2986dc4..c127ce5 100644
+--- a/Bastille/ConfigureMiscPAM.pm
++++ b/Bastille/ConfigureMiscPAM.pm
+@@ -2,7 +2,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::ConfigureMiscPAM;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::FileContent;
+diff --git a/Bastille/DNS.pm b/Bastille/DNS.pm
+index e98309a..2bdceb8 100644
+--- a/Bastille/DNS.pm
++++ b/Bastille/DNS.pm
+@@ -3,7 +3,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::DNS;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::HPSpecific;
+diff --git a/Bastille/DisableUserTools.pm b/Bastille/DisableUserTools.pm
+index b065dd4..22a62c2 100644
+--- a/Bastille/DisableUserTools.pm
++++ b/Bastille/DisableUserTools.pm
+@@ -2,7 +2,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::DisableUserTools;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ 
+diff --git a/Bastille/FTP.pm b/Bastille/FTP.pm
+index 39bf40d..63221ad 100644
+--- a/Bastille/FTP.pm
++++ b/Bastille/FTP.pm
+@@ -3,7 +3,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::FTP;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::ServiceAdmin;
+diff --git a/Bastille/FilePermissions.pm b/Bastille/FilePermissions.pm
+index ea6e8bf..e585fdb 100644
+--- a/Bastille/FilePermissions.pm
++++ b/Bastille/FilePermissions.pm
+@@ -3,7 +3,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::FilePermissions;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ use strict;
+ use File::Find ();
+ use Bastille::API;
+diff --git a/Bastille/IOLoader.pm b/Bastille/IOLoader.pm
+index abb94d7..fdd71a6 100644
+--- a/Bastille/IOLoader.pm
++++ b/Bastille/IOLoader.pm
+@@ -2,7 +2,13 @@
+ # Copyright (C) 2001-2006 Hewlett Packard Development Company, L.P.
+ # Licensed under the GNU General Public License, version 2
+ package Bastille::IOLoader;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::HPSpecific;
+diff --git a/Bastille/Logging.pm b/Bastille/Logging.pm
+index c5ad049..413ddc9 100644
+--- a/Bastille/Logging.pm
++++ b/Bastille/Logging.pm
+@@ -3,7 +3,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::Logging;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::ServiceAdmin;
+diff --git a/Bastille/MiscellaneousDaemons.pm b/Bastille/MiscellaneousDaemons.pm
+index d6f31c4..4625b42 100644
+--- a/Bastille/MiscellaneousDaemons.pm
++++ b/Bastille/MiscellaneousDaemons.pm
+@@ -3,7 +3,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::MiscellaneousDaemons;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::ServiceAdmin;
+diff --git a/Bastille/OSXFirewall.pm b/Bastille/OSXFirewall.pm
+index 3c6f00d..43f0061 100755
+--- a/Bastille/OSXFirewall.pm
++++ b/Bastille/OSXFirewall.pm
+@@ -2,7 +2,13 @@
+ # Licensed under the GNU General Public License
+ 
+ package Bastille::OSXFirewall;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ 
+diff --git a/Bastille/PSAD.pm b/Bastille/PSAD.pm
+index 5f5c523..a5d9320 100644
+--- a/Bastille/PSAD.pm
++++ b/Bastille/PSAD.pm
+@@ -17,7 +17,13 @@
+ #
+ 
+ package Bastille::PSAD;
+-use lib '/usr/lib';
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::ServiceAdmin;
+diff --git a/Bastille/Printing.pm b/Bastille/Printing.pm
+index 6b2a34a..5bcd7e4 100644
+--- a/Bastille/Printing.pm
++++ b/Bastille/Printing.pm
+@@ -2,7 +2,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::Printing;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::AccountPermission;
+diff --git a/Bastille/RemoteAccess.pm b/Bastille/RemoteAccess.pm
+index e46588f..2b4d7d4 100644
+--- a/Bastille/RemoteAccess.pm
++++ b/Bastille/RemoteAccess.pm
+@@ -2,7 +2,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::RemoteAccess;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::FileContent;
+diff --git a/Bastille/SecureInetd.pm b/Bastille/SecureInetd.pm
+index defbb78..abfddb2 100644
+--- a/Bastille/SecureInetd.pm
++++ b/Bastille/SecureInetd.pm
+@@ -9,7 +9,13 @@
+ 
+ package Bastille::SecureInetd;
+ 
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ use Bastille::API::AccountPermission;
+diff --git a/Bastille/Sendmail.pm b/Bastille/Sendmail.pm
+index 9e30024..2cfbbf7 100644
+--- a/Bastille/Sendmail.pm
++++ b/Bastille/Sendmail.pm
+@@ -3,7 +3,13 @@
+ # Licensed under the GNU General Public License, version 2
+ 
+ package Bastille::Sendmail;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ 
+diff --git a/Bastille/TMPDIR.pm b/Bastille/TMPDIR.pm
+index 3889e2c..f5ddbf8 100644
+--- a/Bastille/TMPDIR.pm
++++ b/Bastille/TMPDIR.pm
+@@ -11,7 +11,13 @@
+ #    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ 
+ package Bastille::TMPDIR;
+-use lib "/usr/lib";
++BEGIN {
++    unshift (@INC,"/usr/lib");
++    use Config;
++    if (-e "/usr/lib/$Config{archname}/auto" ) {
++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
++    }
++}
+ 
+ use Bastille::API;
+ @ENV="";
+diff --git a/Bastille/TestDriver.pm b/Bastille/TestDriver.pm
+index 123fbc3..840621d 100644
+--- a/Bastille/TestDriver.pm
++++ b/Bastille/TestDriver.pm
+@@ -7,7 +7,15 @@
+ #than an API.
+ 
+ package Bastille::TestDriver;
+-use lib "/usr/lib";
++BEGIN {
++    foreach $new_lib ("/usr/lib","/usr/lib/perl5/site_perl") {
++        unshift (@INC,$new_lib);
++        use Config;
++        if (-e "$new_lib/$Config{archname}/auto" ) {
++            unshift (@INC,"$new_lib/$Config{archname}/auto");
++        }
++    }
++}
+ 
+ use Bastille::API;
+ 
+@@ -16,8 +24,6 @@ use Exporter;
+ @EXPORT = qw(  B_run_test 
+ );
+ 
+-use lib "/usr/lib","/usr/lib/perl5/site_perl/";  #"/usr/lib/Bastille";
+-
+ 
+ ###########################################################################
+ # define tests
+diff --git a/BastilleBackEnd b/BastilleBackEnd
+index 45ff41a..6ceb134 100755
+--- a/BastilleBackEnd
++++ b/BastilleBackEnd
+@@ -39,7 +39,15 @@
+ ## Our use of modules is somewhat strange for Perl: we have a main routine
+ ## in each module which runs on the "use" command.
+ 
+-use lib "/usr/lib","/usr/lib/perl5/site_perl/","/usr/lib/Bastille";
++BEGIN {
++    foreach $new_lib ("/usr/lib","/usr/lib/perl5/site_perl/","/usr/lib/Bastille") {
++        unshift (@INC,"$new_lib");
++        use Config;
++        if (-e "$new_lib/$Config{archname}/auto" ) {
++            unshift (@INC,"$new_lib/$Config{archname}/auto");
++        }
++    }
++}
+ use Getopt::Long;
+ use File::Copy;
+ 
+diff --git a/InteractiveBastille b/InteractiveBastille
+index 6065eda..b8f74aa 100755
+--- a/InteractiveBastille
++++ b/InteractiveBastille
+@@ -185,7 +185,15 @@ $TEST_ONLY = 0;
+ use Getopt::Long;
+ use Text::Wrap;
+ 
+-use lib "/usr/lib","/usr/lib/perl5/site_perl/","/usr/lib/Bastille";
++BEGIN {
++    foreach $new_lib ("/usr/lib","/usr/lib/perl5/site_perl","/usr/lib/Bastille") {
++        unshift (@INC,$new_lib);
++        use Config;
++        if (-e "$new_lib/$Config{archname}/auto" ) {
++            unshift (@INC,"$new_lib/$Config{archname}/auto");
++        }
++    }
++}
+ 
+ # make sure we don't look in the current directory for the modules!
+ $i = 0;
+diff --git a/RevertBastille b/RevertBastille
+index f1a00cc..4a46a69 100644
+--- a/RevertBastille
++++ b/RevertBastille
+@@ -18,7 +18,15 @@ use File::Basename;
+ use File::Copy;
+ 
+ 
+-use lib "/usr/lib","/usr/lib/perl5/site_perl","/usr/lib/Bastille", "/usr/lib/perl5/site_perl/5.8.0/i586-linux-thread-multi";
++BEGIN {
++    foreach $new_lib ("/usr/lib","/usr/lib/perl5/site_perl","/usr/lib/Bastille", "/usr/lib/perl5/site_perl/5.8.0/i586-linux-thread-multi") {
++        unshift (@INC,$new_lib);
++        use Config;
++        if (-e "$new_lib/$Config{archname}/auto" ) {
++            unshift (@INC,"$new_lib/$Config{archname}/auto");
++        }
++    }
++}
+ 
+ require Bastille::API;
+ import Bastille::API;
+diff --git a/find_bastille_affected_files.pl b/find_bastille_affected_files.pl
+index 10ec0fa..707ea3f 100644
+--- a/find_bastille_affected_files.pl
++++ b/find_bastille_affected_files.pl
+@@ -2,7 +2,14 @@
+ 
+ 
+  
+-use lib "/usr/lib";
++BEGIN {
++        unshift (@INC,"/usr/lib");
++        use Config;
++        if (-e "/usr/lib/$Config{archname}/auto" ) {
++                unshift (@INC,"/usr/lib/$Config{archname}/auto");
++        }
++}
++
+ push (@INC,"/usr/lib/perl5/site_perl/");
+ push (@INC,"/usr/lib/Bastille");  
+ 
+-- 
+1.7.10.4
+
diff --git a/recipes-security/perl/lib-perl_0.63.bb b/recipes-security/perl/lib-perl_0.63.bb
deleted file mode 100644
index c05ae1e..0000000
--- a/recipes-security/perl/lib-perl_0.63.bb
+++ /dev/null
@@ -1,28 +0,0 @@
-DESCRIPTION = "This is a small simple module which simplifies the \
-manipulation of @INC at compile time. It is typically used to add extra \
-directories to Perl's search path so that later "use" or "require" statements \
-will find modules which are not located in the default search path."
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-PR = "r0"
-
-LIC_FILES_CHKSUM = "file://README;beginline=26;endline=30;md5=94b119f1a7b8d611efc89b5d562a1a50"
-
-DEPENDS += "perl"
-
-SRC_URI = "http://www.cpan.org/authors/id/S/SM/SMUELLER/lib-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "8607ac4e0d9d43585ec28312f52df67c"
-SRC_URI[sha256sum] = "72f63db9220098e834d7a38231626bd0c9b802c1ec54a628e2df35f3818e5a00"
-
-S = "${WORKDIR}/lib-${PV}"
-
-EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
-
-inherit cpan
-
-do_compile() {
-	export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
-	cpan_do_compile
-}
-- 
1.7.10.4


