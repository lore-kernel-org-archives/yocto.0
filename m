Return-Path: <mulhern@gmail.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54E96E01621
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 15:01:30 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x16so255140vbf.10
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 15:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kMiEx9GcyzlR+GHwATQB/JddAqZT/b3Ruk6/0P4rk1k=;
	b=XRsLmRvVxZQxHwomZ/rMSB+oMKq/mSnc7U7ZGSW7hT2czqMEPH5jZVyrPytknhUr0s
	sf3EeYWS6ZSQjPFyz/hRN5Cx9J4gNTt+X4iwuoB9f/DRQpupmUxLkwrWvcDO4lma09ee
	rfLn9uYM6oC/ZJmiJSeciTy6riGbA72q8Zdo0Z8SKquuBnvjTTBLlDD4K9tlEeNBBeyS
	ckP+LpCrL72aliBjsFfZPDZ542xAnWQpT48z84cJgZqQwCmnRQRjbYMHOCVBdSYZQkB0
	QIMVEBRto5buwneeCKpIyTs3y1/+bA11/GMbk9oE25BcZx2k9SRPpVeWR9pTpA28Vvsk
	dXbw==
MIME-Version: 1.0
X-Received: by 10.220.142.147 with SMTP id q19mr911vcu.39.1380146489882; Wed,
	25 Sep 2013 15:01:29 -0700 (PDT)
Received: by 10.58.161.46 with HTTP; Wed, 25 Sep 2013 15:01:29 -0700 (PDT)
In-Reply-To: <1379650814-18256-3-git-send-email-joe@deserted.net>
References: <1379650814-18256-1-git-send-email-joe@deserted.net>
	<1379650814-18256-3-git-send-email-joe@deserted.net>
Date: Wed, 25 Sep 2013 18:01:29 -0400
Message-ID: <CADM5y7tY_kuGzFykFY+tnp7_S9J1=w7_XR8kA-nxX_Nk0p78-Q@mail.gmail.com>
From: mulhern <mulhern@gmail.com>
To: Joe MacDonald <joe@deserted.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 2/2] Bastille: Remove dependency on lib-perl
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
X-List-Received-Date: Wed, 25 Sep 2013 22:01:33 -0000
Content-Type: multipart/alternative; boundary=047d7b34305a447bfb04e73c65c0

--047d7b34305a447bfb04e73c65c0
Content-Type: text/plain; charset=ISO-8859-1

Hi!

Thanks for the patch.

Could you amend it in the following way:
1) Omit the changes to the Bastille code.
2) According to the CPAN documentation the Lib module has been part of perl
core since 5.001. So, you should definitely remove that lib-perl recipe
from meta-security as you are doing. You'll still need to make the Bastille
recipe dependent on the Lib module, but you'll find that among the standard
perl modules elsewhere in the Yocto distribution.

- mulhern


On Fri, Sep 20, 2013 at 12:20 AM, Joe MacDonald <joe@deserted.net> wrote:

> Bastille never uses more than the minimal functionality provided by the
> 'lib' module, just pre-pending a named directory to @INC (and, optionally,
> the directory with a ${archname}/auto appended to it).  Lighten this a bit
> by updating the Bastille code base and remove lib-perl from meta-security
> entirely since it no longer serves any purpose.
>
> Signed-off-by: Joe MacDonald <joe@deserted.net>
> ---
>  recipes-security/bastille/bastille_3.2.1.bb        |    3 +-
>  ...-lib-remove-dependency-on-lib-perl-module.patch |  495
> ++++++++++++++++++++
>  recipes-security/perl/lib-perl_0.63.bb             |   28 --
>  3 files changed, 497 insertions(+), 29 deletions(-)
>  create mode 100644
> recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-perl-module.patch
>  delete mode 100644 recipes-security/perl/lib-perl_0.63.bb
>
> diff --git a/recipes-security/bastille/bastille_3.2.1.bbb/recipes-security/bastille/
> bastille_3.2.1.bb
> index d506399..20a331a 100644
> --- a/recipes-security/bastille/bastille_3.2.1.bb
> +++ b/recipes-security/bastille/bastille_3.2.1.bb
> @@ -6,7 +6,7 @@ LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM =
> "file://${S}/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
>  # Bash is needed for set +o privileged (check busybox), might also need
> ncurses
>  DEPENDS = "virtual/kernel"
> -RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long
> perl-module-text-wrap lib-perl perl-module-file-path
> perl-module-mime-base64 perl-module-file-find perl-module-errno
> perl-module-file-glob perl-module-tie-hash-namedcapture
> perl-module-file-copy perl-module-english perl-module-exporter
> perl-module-cwd libcurses-perl coreutils"
> +RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long
> perl-module-text-wrap perl-module-file-path perl-module-mime-base64
> perl-module-file-find perl-module-errno perl-module-file-glob
> perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english
> perl-module-exporter perl-module-cwd libcurses-perl coreutils"
>  FILES_${PN} += "/run/lock/subsys/bastille"
>
>  inherit allarch module-base
> @@ -32,6 +32,7 @@ SRC_URI = "
> http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
>             file://edit_usage_message.patch \
>             file://organize_distro_discovery.patch \
>             file://do_not_apply_config.patch \
> +           file://0001-lib-remove-dependency-on-lib-perl-module.patch \
>             "
>
>  SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
> diff --git
> a/recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-perl-module.patch
> b/recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-perl-module.patch
> new file mode 100644
> index 0000000..a3ec88d
> --- /dev/null
> +++
> b/recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-perl-module.patch
> @@ -0,0 +1,495 @@
> +From 23126d70d69251b735bd8f0e43c3b7c299e7ab0f Mon Sep 17 00:00:00 2001
> +From: Joe MacDonald <joe@deserted.net>
> +Date: Thu, 19 Sep 2013 10:16:53 -0400
> +Subject: [PATCH] lib: remove dependency on lib-perl module
> +
> +The perl 'lib' module isn't really necessary based on the usage pattern in
> +Bastille, so remove the dependency on it.
> +
> +Upstream-Status: Submitted [SourceForge project:
> https://sourceforge.net/p/bastille-linux/bugs/160/]
> +
> +Signed-off-by: Joe MacDonald <joe@deserted.net>
> +---
> + Bastille/AccountSecurity.pm      |    8 +++++++-
> + Bastille/Apache.pm               |    8 +++++++-
> + Bastille/BootSecurity.pm         |    8 +++++++-
> + Bastille/ConfigureMiscPAM.pm     |    8 +++++++-
> + Bastille/DNS.pm                  |    8 +++++++-
> + Bastille/DisableUserTools.pm     |    8 +++++++-
> + Bastille/FTP.pm                  |    8 +++++++-
> + Bastille/FilePermissions.pm      |    8 +++++++-
> + Bastille/IOLoader.pm             |    8 +++++++-
> + Bastille/Logging.pm              |    8 +++++++-
> + Bastille/MiscellaneousDaemons.pm |    8 +++++++-
> + Bastille/OSXFirewall.pm          |    8 +++++++-
> + Bastille/PSAD.pm                 |    8 +++++++-
> + Bastille/Printing.pm             |    8 +++++++-
> + Bastille/RemoteAccess.pm         |    8 +++++++-
> + Bastille/SecureInetd.pm          |    8 +++++++-
> + Bastille/Sendmail.pm             |    8 +++++++-
> + Bastille/TMPDIR.pm               |    8 +++++++-
> + Bastille/TestDriver.pm           |   12 +++++++++---
> + BastilleBackEnd                  |   10 +++++++++-
> + InteractiveBastille              |   10 +++++++++-
> + RevertBastille                   |   10 +++++++++-
> + find_bastille_affected_files.pl  |    9 ++++++++-
> + 23 files changed, 170 insertions(+), 25 deletions(-)
> +
> +diff --git a/Bastille/AccountSecurity.pm b/Bastille/AccountSecurity.pm
> +index e0ebc8a..96e27fd 100644
> +--- a/Bastille/AccountSecurity.pm
> ++++ b/Bastille/AccountSecurity.pm
> +@@ -3,7 +3,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::AccountSecurity;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> +
> + use Bastille::API;
> +diff --git a/Bastille/Apache.pm b/Bastille/Apache.pm
> +index f6ee3f9..f419a72 100644
> +--- a/Bastille/Apache.pm
> ++++ b/Bastille/Apache.pm
> +@@ -4,7 +4,13 @@
> +
> +
> + package Bastille::Apache;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::HPSpecific;
> +diff --git a/Bastille/BootSecurity.pm b/Bastille/BootSecurity.pm
> +index cd4ac7b..6a9372f 100644
> +--- a/Bastille/BootSecurity.pm
> ++++ b/Bastille/BootSecurity.pm
> +@@ -3,7 +3,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::BootSecurity;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::HPSpecific;
> +diff --git a/Bastille/ConfigureMiscPAM.pm b/Bastille/ConfigureMiscPAM.pm
> +index 2986dc4..c127ce5 100644
> +--- a/Bastille/ConfigureMiscPAM.pm
> ++++ b/Bastille/ConfigureMiscPAM.pm
> +@@ -2,7 +2,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::ConfigureMiscPAM;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::FileContent;
> +diff --git a/Bastille/DNS.pm b/Bastille/DNS.pm
> +index e98309a..2bdceb8 100644
> +--- a/Bastille/DNS.pm
> ++++ b/Bastille/DNS.pm
> +@@ -3,7 +3,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::DNS;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::HPSpecific;
> +diff --git a/Bastille/DisableUserTools.pm b/Bastille/DisableUserTools.pm
> +index b065dd4..22a62c2 100644
> +--- a/Bastille/DisableUserTools.pm
> ++++ b/Bastille/DisableUserTools.pm
> +@@ -2,7 +2,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::DisableUserTools;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> +
> +diff --git a/Bastille/FTP.pm b/Bastille/FTP.pm
> +index 39bf40d..63221ad 100644
> +--- a/Bastille/FTP.pm
> ++++ b/Bastille/FTP.pm
> +@@ -3,7 +3,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::FTP;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::ServiceAdmin;
> +diff --git a/Bastille/FilePermissions.pm b/Bastille/FilePermissions.pm
> +index ea6e8bf..e585fdb 100644
> +--- a/Bastille/FilePermissions.pm
> ++++ b/Bastille/FilePermissions.pm
> +@@ -3,7 +3,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::FilePermissions;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> + use strict;
> + use File::Find ();
> + use Bastille::API;
> +diff --git a/Bastille/IOLoader.pm b/Bastille/IOLoader.pm
> +index abb94d7..fdd71a6 100644
> +--- a/Bastille/IOLoader.pm
> ++++ b/Bastille/IOLoader.pm
> +@@ -2,7 +2,13 @@
> + # Copyright (C) 2001-2006 Hewlett Packard Development Company, L.P.
> + # Licensed under the GNU General Public License, version 2
> + package Bastille::IOLoader;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::HPSpecific;
> +diff --git a/Bastille/Logging.pm b/Bastille/Logging.pm
> +index c5ad049..413ddc9 100644
> +--- a/Bastille/Logging.pm
> ++++ b/Bastille/Logging.pm
> +@@ -3,7 +3,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::Logging;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::ServiceAdmin;
> +diff --git a/Bastille/MiscellaneousDaemons.pm
> b/Bastille/MiscellaneousDaemons.pm
> +index d6f31c4..4625b42 100644
> +--- a/Bastille/MiscellaneousDaemons.pm
> ++++ b/Bastille/MiscellaneousDaemons.pm
> +@@ -3,7 +3,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::MiscellaneousDaemons;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::ServiceAdmin;
> +diff --git a/Bastille/OSXFirewall.pm b/Bastille/OSXFirewall.pm
> +index 3c6f00d..43f0061 100755
> +--- a/Bastille/OSXFirewall.pm
> ++++ b/Bastille/OSXFirewall.pm
> +@@ -2,7 +2,13 @@
> + # Licensed under the GNU General Public License
> +
> + package Bastille::OSXFirewall;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> +
> +diff --git a/Bastille/PSAD.pm b/Bastille/PSAD.pm
> +index 5f5c523..a5d9320 100644
> +--- a/Bastille/PSAD.pm
> ++++ b/Bastille/PSAD.pm
> +@@ -17,7 +17,13 @@
> + #
> +
> + package Bastille::PSAD;
> +-use lib '/usr/lib';
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::ServiceAdmin;
> +diff --git a/Bastille/Printing.pm b/Bastille/Printing.pm
> +index 6b2a34a..5bcd7e4 100644
> +--- a/Bastille/Printing.pm
> ++++ b/Bastille/Printing.pm
> +@@ -2,7 +2,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::Printing;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::AccountPermission;
> +diff --git a/Bastille/RemoteAccess.pm b/Bastille/RemoteAccess.pm
> +index e46588f..2b4d7d4 100644
> +--- a/Bastille/RemoteAccess.pm
> ++++ b/Bastille/RemoteAccess.pm
> +@@ -2,7 +2,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::RemoteAccess;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::FileContent;
> +diff --git a/Bastille/SecureInetd.pm b/Bastille/SecureInetd.pm
> +index defbb78..abfddb2 100644
> +--- a/Bastille/SecureInetd.pm
> ++++ b/Bastille/SecureInetd.pm
> +@@ -9,7 +9,13 @@
> +
> + package Bastille::SecureInetd;
> +
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + use Bastille::API::AccountPermission;
> +diff --git a/Bastille/Sendmail.pm b/Bastille/Sendmail.pm
> +index 9e30024..2cfbbf7 100644
> +--- a/Bastille/Sendmail.pm
> ++++ b/Bastille/Sendmail.pm
> +@@ -3,7 +3,13 @@
> + # Licensed under the GNU General Public License, version 2
> +
> + package Bastille::Sendmail;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> +
> +diff --git a/Bastille/TMPDIR.pm b/Bastille/TMPDIR.pm
> +index 3889e2c..f5ddbf8 100644
> +--- a/Bastille/TMPDIR.pm
> ++++ b/Bastille/TMPDIR.pm
> +@@ -11,7 +11,13 @@
> + #    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
>  02111-1307  USA
> +
> + package Bastille::TMPDIR;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    unshift (@INC,"/usr/lib");
> ++    use Config;
> ++    if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++        unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++    }
> ++}
> +
> + use Bastille::API;
> + @ENV="";
> +diff --git a/Bastille/TestDriver.pm b/Bastille/TestDriver.pm
> +index 123fbc3..840621d 100644
> +--- a/Bastille/TestDriver.pm
> ++++ b/Bastille/TestDriver.pm
> +@@ -7,7 +7,15 @@
> + #than an API.
> +
> + package Bastille::TestDriver;
> +-use lib "/usr/lib";
> ++BEGIN {
> ++    foreach $new_lib ("/usr/lib","/usr/lib/perl5/site_perl") {
> ++        unshift (@INC,$new_lib);
> ++        use Config;
> ++        if (-e "$new_lib/$Config{archname}/auto" ) {
> ++            unshift (@INC,"$new_lib/$Config{archname}/auto");
> ++        }
> ++    }
> ++}
> +
> + use Bastille::API;
> +
> +@@ -16,8 +24,6 @@ use Exporter;
> + @EXPORT = qw(  B_run_test
> + );
> +
> +-use lib "/usr/lib","/usr/lib/perl5/site_perl/";  #"/usr/lib/Bastille";
> +-
> +
> +
> ###########################################################################
> + # define tests
> +diff --git a/BastilleBackEnd b/BastilleBackEnd
> +index 45ff41a..6ceb134 100755
> +--- a/BastilleBackEnd
> ++++ b/BastilleBackEnd
> +@@ -39,7 +39,15 @@
> + ## Our use of modules is somewhat strange for Perl: we have a main
> routine
> + ## in each module which runs on the "use" command.
> +
> +-use lib "/usr/lib","/usr/lib/perl5/site_perl/","/usr/lib/Bastille";
> ++BEGIN {
> ++    foreach $new_lib
> ("/usr/lib","/usr/lib/perl5/site_perl/","/usr/lib/Bastille") {
> ++        unshift (@INC,"$new_lib");
> ++        use Config;
> ++        if (-e "$new_lib/$Config{archname}/auto" ) {
> ++            unshift (@INC,"$new_lib/$Config{archname}/auto");
> ++        }
> ++    }
> ++}
> + use Getopt::Long;
> + use File::Copy;
> +
> +diff --git a/InteractiveBastille b/InteractiveBastille
> +index 6065eda..b8f74aa 100755
> +--- a/InteractiveBastille
> ++++ b/InteractiveBastille
> +@@ -185,7 +185,15 @@ $TEST_ONLY = 0;
> + use Getopt::Long;
> + use Text::Wrap;
> +
> +-use lib "/usr/lib","/usr/lib/perl5/site_perl/","/usr/lib/Bastille";
> ++BEGIN {
> ++    foreach $new_lib
> ("/usr/lib","/usr/lib/perl5/site_perl","/usr/lib/Bastille") {
> ++        unshift (@INC,$new_lib);
> ++        use Config;
> ++        if (-e "$new_lib/$Config{archname}/auto" ) {
> ++            unshift (@INC,"$new_lib/$Config{archname}/auto");
> ++        }
> ++    }
> ++}
> +
> + # make sure we don't look in the current directory for the modules!
> + $i = 0;
> +diff --git a/RevertBastille b/RevertBastille
> +index f1a00cc..4a46a69 100644
> +--- a/RevertBastille
> ++++ b/RevertBastille
> +@@ -18,7 +18,15 @@ use File::Basename;
> + use File::Copy;
> +
> +
> +-use lib "/usr/lib","/usr/lib/perl5/site_perl","/usr/lib/Bastille",
> "/usr/lib/perl5/site_perl/5.8.0/i586-linux-thread-multi";
> ++BEGIN {
> ++    foreach $new_lib
> ("/usr/lib","/usr/lib/perl5/site_perl","/usr/lib/Bastille",
> "/usr/lib/perl5/site_perl/5.8.0/i586-linux-thread-multi") {
> ++        unshift (@INC,$new_lib);
> ++        use Config;
> ++        if (-e "$new_lib/$Config{archname}/auto" ) {
> ++            unshift (@INC,"$new_lib/$Config{archname}/auto");
> ++        }
> ++    }
> ++}
> +
> + require Bastille::API;
> + import Bastille::API;
> +diff --git a/find_bastille_affected_files.pl b/
> find_bastille_affected_files.pl
> +index 10ec0fa..707ea3f 100644
> +--- a/find_bastille_affected_files.pl
> ++++ b/find_bastille_affected_files.pl
> +@@ -2,7 +2,14 @@
> +
> +
> +
> +-use lib "/usr/lib";
> ++BEGIN {
> ++        unshift (@INC,"/usr/lib");
> ++        use Config;
> ++        if (-e "/usr/lib/$Config{archname}/auto" ) {
> ++                unshift (@INC,"/usr/lib/$Config{archname}/auto");
> ++        }
> ++}
> ++
> + push (@INC,"/usr/lib/perl5/site_perl/");
> + push (@INC,"/usr/lib/Bastille");
> +
> +--
> +1.7.10.4
> +
> diff --git a/recipes-security/perl/lib-perl_0.63.bbb/recipes-security/perl/
> lib-perl_0.63.bb
> deleted file mode 100644
> index c05ae1e..0000000
> --- a/recipes-security/perl/lib-perl_0.63.bb
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -DESCRIPTION = "This is a small simple module which simplifies the \
> -manipulation of @INC at compile time. It is typically used to add extra \
> -directories to Perl's search path so that later "use" or "require"
> statements \
> -will find modules which are not located in the default search path."
> -
> -SECTION = "libs"
> -LICENSE = "Artistic-1.0 | GPL-1.0+"
> -PR = "r0"
> -
> -LIC_FILES_CHKSUM =
> "file://README;beginline=26;endline=30;md5=94b119f1a7b8d611efc89b5d562a1a50"
> -
> -DEPENDS += "perl"
> -
> -SRC_URI = "http://www.cpan.org/authors/id/S/SM/SMUELLER/lib-${PV}.tar.gz"
> -
> -SRC_URI[md5sum] = "8607ac4e0d9d43585ec28312f52df67c"
> -SRC_URI[sha256sum] =
> "72f63db9220098e834d7a38231626bd0c9b802c1ec54a628e2df35f3818e5a00"
> -
> -S = "${WORKDIR}/lib-${PV}"
> -
> -EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR}
> EXPATINCPATH=${STAGING_INCDIR}"
> -
> -inherit cpan
> -
> -do_compile() {
> -       export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name
> 'libc-*.so')"
> -       cpan_do_compile
> -}
> --
> 1.7.10.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b34305a447bfb04e73c65c0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><div><br></div><div>Thanks for the patch.</d=
iv><div><br></div><div>Could you amend it in the following way:</div><div>1=
) Omit the changes to the Bastille code.</div><div>2) According to the CPAN=
 documentation the Lib module has been part of perl core since 5.001. So, y=
ou should definitely remove that lib-perl recipe from meta-security as you =
are doing. You&#39;ll still need to make the Bastille recipe dependent on t=
he Lib module, but you&#39;ll find that among the standard perl modules els=
ewhere in the Yocto distribution.</div>
<div><br></div><div>- mulhern</div></div><div class=3D"gmail_extra"><br><br=
><div class=3D"gmail_quote">On Fri, Sep 20, 2013 at 12:20 AM, Joe MacDonald=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:joe@deserted.net" target=3D"_blank=
">joe@deserted.net</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Bastille never uses more than the minimal fu=
nctionality provided by the<br>
&#39;lib&#39; module, just pre-pending a named directory to @INC (and, opti=
onally,<br>
the directory with a ${archname}/auto appended to it). =A0Lighten this a bi=
t<br>
by updating the Bastille code base and remove lib-perl from meta-security<b=
r>
entirely since it no longer serves any purpose.<br>
<br>
Signed-off-by: Joe MacDonald &lt;<a href=3D"mailto:joe@deserted.net">joe@de=
serted.net</a>&gt;<br>
---<br>
=A0recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" target=3D=
"_blank">bastille_3.2.1.bb</a> =A0 =A0 =A0 =A0| =A0 =A03 +-<br>
=A0...-lib-remove-dependency-on-lib-perl-module.patch | =A0495 ++++++++++++=
++++++++<br>
=A0recipes-security/perl/<a href=3D"http://lib-perl_0.63.bb" target=3D"_bla=
nk">lib-perl_0.63.bb</a> =A0 =A0 =A0 =A0 =A0 =A0 | =A0 28 --<br>
=A03 files changed, 497 insertions(+), 29 deletions(-)<br>
=A0create mode 100644 recipes-security/bastille/files/0001-lib-remove-depen=
dency-on-lib-perl-module.patch<br>
=A0delete mode 100644 recipes-security/perl/<a href=3D"http://lib-perl_0.63=
.bb" target=3D"_blank">lib-perl_0.63.bb</a><br>
<br>
diff --git a/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb"=
 target=3D"_blank">bastille_3.2.1.bb</a> b/recipes-security/bastille/<a hre=
f=3D"http://bastille_3.2.1.bb" target=3D"_blank">bastille_3.2.1.bb</a><br>
index d506399..20a331a 100644<br>
--- a/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" target=
=3D"_blank">bastille_3.2.1.bb</a><br>
+++ b/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" target=
=3D"_blank">bastille_3.2.1.bb</a><br>
@@ -6,7 +6,7 @@ LICENSE =3D &quot;GPLv2&quot;<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://${S}/COPYING;md5=3Dc93c0550bd3173f4504=
b2cbd8991e50b&quot;<br>
=A0# Bash is needed for set +o privileged (check busybox), might also need =
ncurses<br>
=A0DEPENDS =3D &quot;virtual/kernel&quot;<br>
-RDEPENDS_${PN} =3D &quot;perl bash tcl perl-module-getopt-long perl-module=
-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-modu=
le-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-n=
amedcapture perl-module-file-copy perl-module-english perl-module-exporter =
perl-module-cwd libcurses-perl coreutils&quot;<br>

+RDEPENDS_${PN} =3D &quot;perl bash tcl perl-module-getopt-long perl-module=
-text-wrap perl-module-file-path perl-module-mime-base64 perl-module-file-f=
ind perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcaptu=
re perl-module-file-copy perl-module-english perl-module-exporter perl-modu=
le-cwd libcurses-perl coreutils&quot;<br>

=A0FILES_${PN} +=3D &quot;/run/lock/subsys/bastille&quot;<br>
<br>
=A0inherit allarch module-base<br>
@@ -32,6 +32,7 @@ SRC_URI =3D &quot;<a href=3D"http://sourceforge.net/proje=
cts/bastille-linux/files/bastille-linux/3" target=3D"_blank">http://sourcef=
orge.net/projects/bastille-linux/files/bastille-linux/3</a><br>
=A0 =A0 =A0 =A0 =A0 =A0 file://edit_usage_message.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://organize_distro_discovery.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://do_not_apply_config.patch \<br>
+ =A0 =A0 =A0 =A0 =A0 file://0001-lib-remove-dependency-on-lib-perl-module.=
patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
<br>
=A0SRC_URI[md5sum] =3D &quot;df803f7e38085aa5da79f85d0539f91b&quot;<br>
diff --git a/recipes-security/bastille/files/0001-lib-remove-dependency-on-=
lib-perl-module.patch b/recipes-security/bastille/files/0001-lib-remove-dep=
endency-on-lib-perl-module.patch<br>
new file mode 100644<br>
index 0000000..a3ec88d<br>
--- /dev/null<br>
+++ b/recipes-security/bastille/files/0001-lib-remove-dependency-on-lib-per=
l-module.patch<br>
@@ -0,0 +1,495 @@<br>
+From 23126d70d69251b735bd8f0e43c3b7c299e7ab0f Mon Sep 17 00:00:00 2001<br>
+From: Joe MacDonald &lt;<a href=3D"mailto:joe@deserted.net">joe@deserted.n=
et</a>&gt;<br>
+Date: Thu, 19 Sep 2013 10:16:53 -0400<br>
+Subject: [PATCH] lib: remove dependency on lib-perl module<br>
+<br>
+The perl &#39;lib&#39; module isn&#39;t really necessary based on the usag=
e pattern in<br>
+Bastille, so remove the dependency on it.<br>
+<br>
+Upstream-Status: Submitted [SourceForge project: <a href=3D"https://source=
forge.net/p/bastille-linux/bugs/160/" target=3D"_blank">https://sourceforge=
.net/p/bastille-linux/bugs/160/</a>]<br>
+<br>
+Signed-off-by: Joe MacDonald &lt;<a href=3D"mailto:joe@deserted.net">joe@d=
eserted.net</a>&gt;<br>
+---<br>
+ Bastille/AccountSecurity.pm =A0 =A0 =A0| =A0 =A08 +++++++-<br>
+ Bastille/Apache.pm =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/BootSecurity.pm =A0 =A0 =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/ConfigureMiscPAM.pm =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/DNS.pm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A08 +++++++-<br=
>
+ Bastille/DisableUserTools.pm =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/FTP.pm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A08 +++++++-<br=
>
+ Bastille/FilePermissions.pm =A0 =A0 =A0| =A0 =A08 +++++++-<br>
+ Bastille/IOLoader.pm =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/Logging.pm =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A08 +++++++-<br>
+ Bastille/MiscellaneousDaemons.pm | =A0 =A08 +++++++-<br>
+ Bastille/OSXFirewall.pm =A0 =A0 =A0 =A0 =A0| =A0 =A08 +++++++-<br>
+ Bastille/PSAD.pm =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/Printing.pm =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/RemoteAccess.pm =A0 =A0 =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/SecureInetd.pm =A0 =A0 =A0 =A0 =A0| =A0 =A08 +++++++-<br>
+ Bastille/Sendmail.pm =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/TMPDIR.pm =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A08 +++++++-<br>
+ Bastille/TestDriver.pm =A0 =A0 =A0 =A0 =A0 | =A0 12 +++++++++---<br>
+ BastilleBackEnd =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 10 +++++++++-<br=
>
+ InteractiveBastille =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 10 +++++++++-<br>
+ RevertBastille =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 10 +++++++++-<br=
>
+ <a href=3D"http://find_bastille_affected_files.pl" target=3D"_blank">find=
_bastille_affected_files.pl</a> =A0| =A0 =A09 ++++++++-<br>
+ 23 files changed, 170 insertions(+), 25 deletions(-)<br>
+<br>
+diff --git a/Bastille/AccountSecurity.pm b/Bastille/AccountSecurity.pm<br>
+index e0ebc8a..96e27fd 100644<br>
+--- a/Bastille/AccountSecurity.pm<br>
++++ b/Bastille/AccountSecurity.pm<br>
+@@ -3,7 +3,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::AccountSecurity;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+<br>
+ use Bastille::API;<br>
+diff --git a/Bastille/Apache.pm b/Bastille/Apache.pm<br>
+index f6ee3f9..f419a72 100644<br>
+--- a/Bastille/Apache.pm<br>
++++ b/Bastille/Apache.pm<br>
+@@ -4,7 +4,13 @@<br>
+<br>
+<br>
+ package Bastille::Apache;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::HPSpecific;<br>
+diff --git a/Bastille/BootSecurity.pm b/Bastille/BootSecurity.pm<br>
+index cd4ac7b..6a9372f 100644<br>
+--- a/Bastille/BootSecurity.pm<br>
++++ b/Bastille/BootSecurity.pm<br>
+@@ -3,7 +3,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::BootSecurity;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::HPSpecific;<br>
+diff --git a/Bastille/ConfigureMiscPAM.pm b/Bastille/ConfigureMiscPAM.pm<b=
r>
+index 2986dc4..c127ce5 100644<br>
+--- a/Bastille/ConfigureMiscPAM.pm<br>
++++ b/Bastille/ConfigureMiscPAM.pm<br>
+@@ -2,7 +2,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::ConfigureMiscPAM;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::FileContent;<br>
+diff --git a/Bastille/DNS.pm b/Bastille/DNS.pm<br>
+index e98309a..2bdceb8 100644<br>
+--- a/Bastille/DNS.pm<br>
++++ b/Bastille/DNS.pm<br>
+@@ -3,7 +3,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::DNS;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::HPSpecific;<br>
+diff --git a/Bastille/DisableUserTools.pm b/Bastille/DisableUserTools.pm<b=
r>
+index b065dd4..22a62c2 100644<br>
+--- a/Bastille/DisableUserTools.pm<br>
++++ b/Bastille/DisableUserTools.pm<br>
+@@ -2,7 +2,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::DisableUserTools;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+<br>
+diff --git a/Bastille/FTP.pm b/Bastille/FTP.pm<br>
+index 39bf40d..63221ad 100644<br>
+--- a/Bastille/FTP.pm<br>
++++ b/Bastille/FTP.pm<br>
+@@ -3,7 +3,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::FTP;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::ServiceAdmin;<br>
+diff --git a/Bastille/FilePermissions.pm b/Bastille/FilePermissions.pm<br>
+index ea6e8bf..e585fdb 100644<br>
+--- a/Bastille/FilePermissions.pm<br>
++++ b/Bastille/FilePermissions.pm<br>
+@@ -3,7 +3,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::FilePermissions;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+ use strict;<br>
+ use File::Find ();<br>
+ use Bastille::API;<br>
+diff --git a/Bastille/IOLoader.pm b/Bastille/IOLoader.pm<br>
+index abb94d7..fdd71a6 100644<br>
+--- a/Bastille/IOLoader.pm<br>
++++ b/Bastille/IOLoader.pm<br>
+@@ -2,7 +2,13 @@<br>
+ # Copyright (C) 2001-2006 Hewlett Packard Development Company, L.P.<br>
+ # Licensed under the GNU General Public License, version 2<br>
+ package Bastille::IOLoader;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::HPSpecific;<br>
+diff --git a/Bastille/Logging.pm b/Bastille/Logging.pm<br>
+index c5ad049..413ddc9 100644<br>
+--- a/Bastille/Logging.pm<br>
++++ b/Bastille/Logging.pm<br>
+@@ -3,7 +3,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::Logging;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::ServiceAdmin;<br>
+diff --git a/Bastille/MiscellaneousDaemons.pm b/Bastille/MiscellaneousDaem=
ons.pm<br>
+index d6f31c4..4625b42 100644<br>
+--- a/Bastille/MiscellaneousDaemons.pm<br>
++++ b/Bastille/MiscellaneousDaemons.pm<br>
+@@ -3,7 +3,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::MiscellaneousDaemons;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::ServiceAdmin;<br>
+diff --git a/Bastille/OSXFirewall.pm b/Bastille/OSXFirewall.pm<br>
+index 3c6f00d..43f0061 100755<br>
+--- a/Bastille/OSXFirewall.pm<br>
++++ b/Bastille/OSXFirewall.pm<br>
+@@ -2,7 +2,13 @@<br>
+ # Licensed under the GNU General Public License<br>
+<br>
+ package Bastille::OSXFirewall;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+<br>
+diff --git a/Bastille/PSAD.pm b/Bastille/PSAD.pm<br>
+index 5f5c523..a5d9320 100644<br>
+--- a/Bastille/PSAD.pm<br>
++++ b/Bastille/PSAD.pm<br>
+@@ -17,7 +17,13 @@<br>
+ #<br>
+<br>
+ package Bastille::PSAD;<br>
+-use lib &#39;/usr/lib&#39;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::ServiceAdmin;<br>
+diff --git a/Bastille/Printing.pm b/Bastille/Printing.pm<br>
+index 6b2a34a..5bcd7e4 100644<br>
+--- a/Bastille/Printing.pm<br>
++++ b/Bastille/Printing.pm<br>
+@@ -2,7 +2,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::Printing;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::AccountPermission;<br>
+diff --git a/Bastille/RemoteAccess.pm b/Bastille/RemoteAccess.pm<br>
+index e46588f..2b4d7d4 100644<br>
+--- a/Bastille/RemoteAccess.pm<br>
++++ b/Bastille/RemoteAccess.pm<br>
+@@ -2,7 +2,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::RemoteAccess;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::FileContent;<br>
+diff --git a/Bastille/SecureInetd.pm b/Bastille/SecureInetd.pm<br>
+index defbb78..abfddb2 100644<br>
+--- a/Bastille/SecureInetd.pm<br>
++++ b/Bastille/SecureInetd.pm<br>
+@@ -9,7 +9,13 @@<br>
+<br>
+ package Bastille::SecureInetd;<br>
+<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ use Bastille::API::AccountPermission;<br>
+diff --git a/Bastille/Sendmail.pm b/Bastille/Sendmail.pm<br>
+index 9e30024..2cfbbf7 100644<br>
+--- a/Bastille/Sendmail.pm<br>
++++ b/Bastille/Sendmail.pm<br>
+@@ -3,7 +3,13 @@<br>
+ # Licensed under the GNU General Public License, version 2<br>
+<br>
+ package Bastille::Sendmail;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+<br>
+diff --git a/Bastille/TMPDIR.pm b/Bastille/TMPDIR.pm<br>
+index 3889e2c..f5ddbf8 100644<br>
+--- a/Bastille/TMPDIR.pm<br>
++++ b/Bastille/TMPDIR.pm<br>
+@@ -11,7 +11,13 @@<br>
+ # =A0 =A0Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA =A00211=
1-1307 =A0USA<br>
+<br>
+ package Bastille::TMPDIR;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0use Config;<br>
++ =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{archname}/auto&quot;=
);<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+ @ENV=3D&quot;&quot;;<br>
+diff --git a/Bastille/TestDriver.pm b/Bastille/TestDriver.pm<br>
+index 123fbc3..840621d 100644<br>
+--- a/Bastille/TestDriver.pm<br>
++++ b/Bastille/TestDriver.pm<br>
+@@ -7,7 +7,15 @@<br>
+ #than an API.<br>
+<br>
+ package Bastille::TestDriver;<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0foreach $new_lib (&quot;/usr/lib&quot;,&quot;/usr/lib/perl5/site_=
perl&quot;) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,$new_lib);<br>
++ =A0 =A0 =A0 =A0use Config;<br>
++ =A0 =A0 =A0 =A0if (-e &quot;$new_lib/$Config{archname}/auto&quot; ) {<br=
>
++ =A0 =A0 =A0 =A0 =A0 =A0unshift (@INC,&quot;$new_lib/$Config{archname}/au=
to&quot;);<br>
++ =A0 =A0 =A0 =A0}<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ use Bastille::API;<br>
+<br>
+@@ -16,8 +24,6 @@ use Exporter;<br>
+ @EXPORT =3D qw( =A0B_run_test<br>
+ );<br>
+<br>
+-use lib &quot;/usr/lib&quot;,&quot;/usr/lib/perl5/site_perl/&quot;; =A0#&=
quot;/usr/lib/Bastille&quot;;<br>
+-<br>
+<br>
+ #########################################################################=
##<br>
+ # define tests<br>
+diff --git a/BastilleBackEnd b/BastilleBackEnd<br>
+index 45ff41a..6ceb134 100755<br>
+--- a/BastilleBackEnd<br>
++++ b/BastilleBackEnd<br>
+@@ -39,7 +39,15 @@<br>
+ ## Our use of modules is somewhat strange for Perl: we have a main routin=
e<br>
+ ## in each module which runs on the &quot;use&quot; command.<br>
+<br>
+-use lib &quot;/usr/lib&quot;,&quot;/usr/lib/perl5/site_perl/&quot;,&quot;=
/usr/lib/Bastille&quot;;<br>
++BEGIN {<br>
++ =A0 =A0foreach $new_lib (&quot;/usr/lib&quot;,&quot;/usr/lib/perl5/site_=
perl/&quot;,&quot;/usr/lib/Bastille&quot;) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;$new_lib&quot;);<br>
++ =A0 =A0 =A0 =A0use Config;<br>
++ =A0 =A0 =A0 =A0if (-e &quot;$new_lib/$Config{archname}/auto&quot; ) {<br=
>
++ =A0 =A0 =A0 =A0 =A0 =A0unshift (@INC,&quot;$new_lib/$Config{archname}/au=
to&quot;);<br>
++ =A0 =A0 =A0 =A0}<br>
++ =A0 =A0}<br>
++}<br>
+ use Getopt::Long;<br>
+ use File::Copy;<br>
+<br>
+diff --git a/InteractiveBastille b/InteractiveBastille<br>
+index 6065eda..b8f74aa 100755<br>
+--- a/InteractiveBastille<br>
++++ b/InteractiveBastille<br>
+@@ -185,7 +185,15 @@ $TEST_ONLY =3D 0;<br>
+ use Getopt::Long;<br>
+ use Text::Wrap;<br>
+<br>
+-use lib &quot;/usr/lib&quot;,&quot;/usr/lib/perl5/site_perl/&quot;,&quot;=
/usr/lib/Bastille&quot;;<br>
++BEGIN {<br>
++ =A0 =A0foreach $new_lib (&quot;/usr/lib&quot;,&quot;/usr/lib/perl5/site_=
perl&quot;,&quot;/usr/lib/Bastille&quot;) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,$new_lib);<br>
++ =A0 =A0 =A0 =A0use Config;<br>
++ =A0 =A0 =A0 =A0if (-e &quot;$new_lib/$Config{archname}/auto&quot; ) {<br=
>
++ =A0 =A0 =A0 =A0 =A0 =A0unshift (@INC,&quot;$new_lib/$Config{archname}/au=
to&quot;);<br>
++ =A0 =A0 =A0 =A0}<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ # make sure we don&#39;t look in the current directory for the modules!<b=
r>
+ $i =3D 0;<br>
+diff --git a/RevertBastille b/RevertBastille<br>
+index f1a00cc..4a46a69 100644<br>
+--- a/RevertBastille<br>
++++ b/RevertBastille<br>
+@@ -18,7 +18,15 @@ use File::Basename;<br>
+ use File::Copy;<br>
+<br>
+<br>
+-use lib &quot;/usr/lib&quot;,&quot;/usr/lib/perl5/site_perl&quot;,&quot;/=
usr/lib/Bastille&quot;, &quot;/usr/lib/perl5/site_perl/5.8.0/i586-linux-thr=
ead-multi&quot;;<br>
++BEGIN {<br>
++ =A0 =A0foreach $new_lib (&quot;/usr/lib&quot;,&quot;/usr/lib/perl5/site_=
perl&quot;,&quot;/usr/lib/Bastille&quot;, &quot;/usr/lib/perl5/site_perl/5.=
8.0/i586-linux-thread-multi&quot;) {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,$new_lib);<br>
++ =A0 =A0 =A0 =A0use Config;<br>
++ =A0 =A0 =A0 =A0if (-e &quot;$new_lib/$Config{archname}/auto&quot; ) {<br=
>
++ =A0 =A0 =A0 =A0 =A0 =A0unshift (@INC,&quot;$new_lib/$Config{archname}/au=
to&quot;);<br>
++ =A0 =A0 =A0 =A0}<br>
++ =A0 =A0}<br>
++}<br>
+<br>
+ require Bastille::API;<br>
+ import Bastille::API;<br>
+diff --git a/<a href=3D"http://find_bastille_affected_files.pl" target=3D"=
_blank">find_bastille_affected_files.pl</a> b/<a href=3D"http://find_bastil=
le_affected_files.pl" target=3D"_blank">find_bastille_affected_files.pl</a>=
<br>

+index 10ec0fa..707ea3f 100644<br>
+--- a/<a href=3D"http://find_bastille_affected_files.pl" target=3D"_blank"=
>find_bastille_affected_files.pl</a><br>
++++ b/<a href=3D"http://find_bastille_affected_files.pl" target=3D"_blank"=
>find_bastille_affected_files.pl</a><br>
+@@ -2,7 +2,14 @@<br>
+<br>
+<br>
+<br>
+-use lib &quot;/usr/lib&quot;;<br>
++BEGIN {<br>
++ =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib&quot;);<br>
++ =A0 =A0 =A0 =A0use Config;<br>
++ =A0 =A0 =A0 =A0if (-e &quot;/usr/lib/$Config{archname}/auto&quot; ) {<br=
>
++ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0unshift (@INC,&quot;/usr/lib/$Config{arch=
name}/auto&quot;);<br>
++ =A0 =A0 =A0 =A0}<br>
++}<br>
++<br>
+ push (@INC,&quot;/usr/lib/perl5/site_perl/&quot;);<br>
+ push (@INC,&quot;/usr/lib/Bastille&quot;);<br>
+<br>
+--<br>
+1.7.10.4<br>
+<br>
diff --git a/recipes-security/perl/<a href=3D"http://lib-perl_0.63.bb" targ=
et=3D"_blank">lib-perl_0.63.bb</a> b/recipes-security/perl/<a href=3D"http:=
//lib-perl_0.63.bb" target=3D"_blank">lib-perl_0.63.bb</a><br>
deleted file mode 100644<br>
index c05ae1e..0000000<br>
--- a/recipes-security/perl/<a href=3D"http://lib-perl_0.63.bb" target=3D"_=
blank">lib-perl_0.63.bb</a><br>
+++ /dev/null<br>
@@ -1,28 +0,0 @@<br>
-DESCRIPTION =3D &quot;This is a small simple module which simplifies the \=
<br>
-manipulation of @INC at compile time. It is typically used to add extra \<=
br>
-directories to Perl&#39;s search path so that later &quot;use&quot; or &qu=
ot;require&quot; statements \<br>
-will find modules which are not located in the default search path.&quot;<=
br>
-<br>
-SECTION =3D &quot;libs&quot;<br>
-LICENSE =3D &quot;Artistic-1.0 | GPL-1.0+&quot;<br>
-PR =3D &quot;r0&quot;<br>
-<br>
-LIC_FILES_CHKSUM =3D &quot;file://README;beginline=3D26;endline=3D30;md5=
=3D94b119f1a7b8d611efc89b5d562a1a50&quot;<br>
-<br>
-DEPENDS +=3D &quot;perl&quot;<br>
-<br>
-SRC_URI =3D &quot;<a href=3D"http://www.cpan.org/authors/id/S/SM/SMUELLER/=
lib-${PV}.tar.gz" target=3D"_blank">http://www.cpan.org/authors/id/S/SM/SMU=
ELLER/lib-${PV}.tar.gz</a>&quot;<br>
-<br>
-SRC_URI[md5sum] =3D &quot;8607ac4e0d9d43585ec28312f52df67c&quot;<br>
-SRC_URI[sha256sum] =3D &quot;72f63db9220098e834d7a38231626bd0c9b802c1ec54a=
628e2df35f3818e5a00&quot;<br>
-<br>
-S =3D &quot;${WORKDIR}/lib-${PV}&quot;<br>
-<br>
-EXTRA_CPANFLAGS =3D &quot;EXPATLIBPATH=3D${STAGING_LIBDIR} EXPATINCPATH=3D=
${STAGING_INCDIR}&quot;<br>
-<br>
-inherit cpan<br>
-<br>
-do_compile() {<br>
- =A0 =A0 =A0 export LIBC=3D&quot;$(find ${STAGING_DIR_TARGET}/${base_libdi=
r}/ -name &#39;libc-*.so&#39;)&quot;<br>
- =A0 =A0 =A0 cpan_do_compile<br>
-}<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.10.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7b34305a447bfb04e73c65c0--
