Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8EF4E0157B;
	Tue, 27 Aug 2013 15:14:29 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id i17so918329qcy.40
	for <multiple recipients>; Tue, 27 Aug 2013 15:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=NWtaTX/r34AHPKBSBWW8AunQ4n21cwnRMiNtmC913No=;
	b=JI6FEJ99ciDUzCrFtpVFYvHuqOPXtOOWDthy7lQP19Ub6q2F6uxWMtdquVQdWCh7eg
	relCLRxzBBm9RErUVe2dAq18nzDTAk0zHmcF8cUHrfX/fi7lP9sQ8gXuFYjH6g4DFFSB
	L4Ctluliy7pd5k5Igh2aBIP+7ig5xYGLRhDYhiSKNaRBH9kXXbSutALNklP8GBwiw/9V
	L39K+Ye1p+UeWnIU2yVBIkwJcb5oLNtWOJCI4AQSvcg3AS7LSK0E1wLstSoRB3kWFQBo
	D2BHSMM+8JKVrH6wYAvuPKQGQnng4lJH7GtZFMauq+uxXzTgPeXGQZ1uSS/HFXD9LjnJ
	4cmA==
X-Received: by 10.224.23.134 with SMTP id r6mr25236042qab.34.1377641668554;
	Tue, 27 Aug 2013 15:14:28 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-91.hsd1.ma.comcast.net.
	[67.186.188.91]) by mx.google.com with ESMTPSA id
	p10sm32317271qat.10.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 27 Aug 2013 15:14:28 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Tue, 27 Aug 2013 18:14:25 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Tue, 27 Aug 2013 18:14:03 -0400
Message-Id: <acf37bbdc5666b9bac0ff41a24b2623c9ae5f939.1377641309.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377641309.git.mulhern@yoctoproject.org>
References: <cover.1377641309.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1377641309.git.mulhern@yoctoproject.org>
References: <cover.1377641309.git.mulhern@yoctoproject.org>
Subject: [PATCH 4/6] Bastille: accept and observe --os flag in multiple situations.
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
X-List-Received-Date: Tue, 27 Aug 2013 22:14:30 -0000

[YOCTO #3867]

Five additional patches which cause the --os flag to be accepted and observed
are added. An additional distro, Yocto, is added. The individual patches
are described below.

upgrade_options_processing.patch: Changes setOptions procedure so that it
accepts named parameters for greater flexibility and adjusts all invocations
accordingly. Uses more precise specifications in invocatiosn of
Getop::Long::GetOptions. Omits code associated with a commented out flag.

accept_os_flag_in_backend.patch: Accepts and observes an additional --os
flag in BastilleBackEnd.

allow_os_with_assess.patch: No longer print a usage message and quit if
--assess or its related flags are specified along with the --os flag.

edit_usage_message.patch: Edit usage message to include the specification of
an --os flag with the specification of an --assess flag.

organize_distro_discovery.patch: Separates inferring the distro from
specifying the distro. Adds a "Yocto" distro among the other Linux
distros. Causes the specified distro to override the inferred
distro with a warning message when they are different. Previously if
either the inferred distro or the specified distro was not among supported
distros Bastille would quit with an error.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/bastille/bastille_3.2.1.bb        |    5 +
 .../bastille/files/accept_os_flag_in_backend.patch |   28 ++
 .../bastille/files/allow_os_with_assess.patch      |   37 ++
 .../bastille/files/edit_usage_message.patch        |   26 ++
 .../bastille/files/organize_distro_discovery.patch |  470 ++++++++++++++++++++
 .../files/upgrade_options_processing.patch         |   85 ++++
 6 files changed, 651 insertions(+)
 create mode 100644 recipes-security/bastille/files/accept_os_flag_in_backend.patch
 create mode 100644 recipes-security/bastille/files/allow_os_with_assess.patch
 create mode 100644 recipes-security/bastille/files/edit_usage_message.patch
 create mode 100644 recipes-security/bastille/files/organize_distro_discovery.patch
 create mode 100644 recipes-security/bastille/files/upgrade_options_processing.patch

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index c8d0103..8969f6b 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -24,6 +24,11 @@ SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
            file://remove_questions_text_file_references.patch \
            file://simplify_B_place.patch \
            file://find_existing_config.patch \
+           file://upgrade_options_processing.patch \
+           file://accept_os_flag_in_backend.patch \
+           file://allow_os_with_assess.patch \
+           file://edit_usage_message.patch \
+           file://organize_distro_discovery.patch \
            "
 
 SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
diff --git a/recipes-security/bastille/files/accept_os_flag_in_backend.patch b/recipes-security/bastille/files/accept_os_flag_in_backend.patch
new file mode 100644
index 0000000..ee6ef0f
--- /dev/null
+++ b/recipes-security/bastille/files/accept_os_flag_in_backend.patch
@@ -0,0 +1,28 @@
+Index: Bastille/BastilleBackEnd
+===================================================================
+--- Bastille.orig/BastilleBackEnd	2013-08-21 12:40:54.000000000 -0400
++++ Bastille/BastilleBackEnd	2013-08-21 12:43:21.895950001 -0400
+@@ -52,11 +52,13 @@
+ my $force = 0;
+ my $debug = 0;
+ my $alternate_config=undef;
++my $os_version=undef;
+ 
+ if( Getopt::Long::GetOptions( "n"     => \$nodisclaim,
+                               "v"     => \$verbose,
+                               "force" => \$force,
+ 			      "f=s"   => \$alternate_config,
++                              "os=s"  => \$os_version,
+ 			      "debug" => \$debug) ) {
+     $error = 0; # no parse error
+ 
+@@ -66,7 +68,8 @@
+ 
+ &setOptions(
+   debug => $debug,
+-  verbose => $verbose);
++  verbose => $verbose,
++  os => $os_version);
+ &ConfigureForDistro;
+ 
+ if ( $error ) { # GetOptions couldn't parse all of the args
diff --git a/recipes-security/bastille/files/allow_os_with_assess.patch b/recipes-security/bastille/files/allow_os_with_assess.patch
new file mode 100644
index 0000000..252d0a0
--- /dev/null
+++ b/recipes-security/bastille/files/allow_os_with_assess.patch
@@ -0,0 +1,37 @@
+Index: Bastille/bin/bastille
+===================================================================
+--- Bastille.orig/bin/bastille	2013-08-21 08:59:06.647950000 -0400
++++ Bastille/bin/bastille	2013-08-21 15:55:53.193631711 -0400
+@@ -195,7 +195,6 @@
+ systemFileLocations
+ 
+ isAssessing='no'
+-nonXArg='no'
+ 
+ if [ $PERL_V_MAJ -eq $MIN_V_MAJ  -a  $PERL_V_MIN -lt $MIN_V_MIN -o $PERL_V_MAJ -lt  $MIN_V_MAJ ]; then # invalid Perl
+     printErr
+@@ -316,12 +315,10 @@
+ 	  '--os')
+ 	      options_left="$options_left --os"
+               optarg='yes'
+-              nonXArg='yes'
+ 	      ;;
+           '-f')
+               options_left="$options_left -f"
+               optarg='yes'
+-              nonXArg='yes'
+               ;;
+ #  Non-exclusive (undocumented and unsupported) options follow:
+ #  There is no validity/combination checking done with these.
+@@ -345,11 +342,6 @@
+       fi
+     done
+ 
+-#Detect case where -f or --os attempted use with --assess
+-    if [ \( x$nonXArg = xyes \) -a  \( x$isAssessing = xyes \) ]; then
+-      printUsage
+-      exit 2
+-    fi
+ 
+ # We have a valid version of perl! Verify that all the required
+ # modules can be found.
diff --git a/recipes-security/bastille/files/edit_usage_message.patch b/recipes-security/bastille/files/edit_usage_message.patch
new file mode 100644
index 0000000..1c2cae4
--- /dev/null
+++ b/recipes-security/bastille/files/edit_usage_message.patch
@@ -0,0 +1,26 @@
+Index: Bastille/bin/bastille
+===================================================================
+--- Bastille.orig/bin/bastille	2013-08-25 14:16:35.614779001 -0400
++++ Bastille/bin/bastille	2013-08-25 14:16:38.674779000 -0400
+@@ -60,7 +60,7 @@
+ printUsage () {
+   cat >&2 << EOF
+ $ERRSPACES Usage: bastille [ -b  | -c | -x ] [ --os <version>] [ -f <alternate config> ]
+-$ERRSPACES        bastille [-r | -l | -h | --assess | --assessnobrowser ]
++$ERRSPACES        bastille [-r | -l | -h | --assess | --assessnobrowser ] [ --os <version> ]
+ $ERRSPACES -b : use a saved config file to apply changes
+ $ERRSPACES      directly to system
+ $ERRSPACES -c : use the Curses (non-X11) GUI, not available on HP-UX
+Index: Bastille/Bastille/API.pm
+===================================================================
+--- Bastille.orig/Bastille/API.pm	2013-08-25 08:15:40.266779002 -0400
++++ Bastille/Bastille/API.pm	2013-08-25 14:18:22.750778811 -0400
+@@ -206,7 +206,7 @@
+ #options before interactive or Bastille runs, so this check is often redundant
+ $GLOBAL_ERROR{"usage"}="\n".
+     "$spc Usage: bastille [ -b | -c | -x ] [ --os <version> ] [ -f <alternate config> ]\n".
+-    "$spc        bastille [ -r | --assess | --assessnobowser ]\n\n".
++    "$spc        bastille [ -r | --assess | --assessnobowser ] [ --os <version> ]\n\n".
+     "$spc --assess : check status of system and report in browser\n".
+     "$spc --assessnobrowser : check status of system and list report locations\n".
+     "$spc -b : use a saved config file to apply changes\n".
diff --git a/recipes-security/bastille/files/organize_distro_discovery.patch b/recipes-security/bastille/files/organize_distro_discovery.patch
new file mode 100644
index 0000000..a38bae4
--- /dev/null
+++ b/recipes-security/bastille/files/organize_distro_discovery.patch
@@ -0,0 +1,470 @@
+Index: Bastille/Bastille/API.pm
+===================================================================
+--- Bastille.orig/Bastille/API.pm	2013-08-22 04:32:38.269968002 -0400
++++ Bastille/Bastille/API.pm	2013-08-22 11:29:53.137968002 -0400
+@@ -141,7 +141,7 @@
+     checkProcsForService
+     
+     
+-    $GLOBAL_OS $GLOBAL_ACTUAL_OS $CLI
++    $CLI
+     $GLOBAL_LOGONLY $GLOBAL_VERBOSE $GLOBAL_DEBUG $GLOBAL_AUDITONLY $GLOBAL_AUDIT_NO_BROWSER $errorFlag
+     %GLOBAL_BIN %GLOBAL_DIR %GLOBAL_FILE
+     %GLOBAL_BDIR %GLOBAL_BFILE
+@@ -198,7 +198,7 @@
+ my $err ="ERROR:  ";
+ my $spc ="        ";
+ my $GLOBAL_OS="None";
+-my $GLOBAL_ACTUAL_OS="None";
++my $GLOBAL_INFERRED_OS="None";
+ my %GLOBAL_SUMS=();
+ my $CLI='';
+ 
+@@ -306,7 +306,7 @@
+ 
+ ###########################################################################
+ #
+-# GetDistro checks to see if the target is a known distribution and reports
++# InferDistro checks to see if the target is a known distribution and reports
+ # said distribution.
+ #
+ # This is used throughout the script, but also by ConfigureForDistro.
+@@ -314,205 +314,194 @@
+ #
+ ###########################################################################
+ 
+-sub GetDistro() {
++sub InferDistro() {
+ 
+     my ($release,$distro);
+ 
+-    # Only read files for the distro once.
+-    # if the --os option was used then
+-    if ($GLOBAL_OS eq "None") {
+-	if ( -e "/etc/mandrake-release" ) {
+-	    open(MANDRAKE_RELEASE,"/etc/mandrake-release");
+-	    $release=<MANDRAKE_RELEASE>;
+-
+-	    if ( ($release =~ /^Mandrake Linux release (\d+\.\d+\w*)/) or ($release =~ /^Linux Mandrake release (\d+\.\d+\w*)/) ) {
+-		$distro="MN$1";
+-	    }
+-	    elsif ( $release =~ /^Mandrakelinux release (\d+\.\d+)\b/ ) {
+-                $distro="MN$1";
+-            }
+-            else {
+-		print STDERR "$err Couldn't determine Mandrake/Mandriva version! Setting to 10.1!\n";
+-		$distro="MN10.1";
+-	    }
+-
+-	    close(MANDRAKE_RELEASE);
+-	}
+-	elsif ( -e "/etc/immunix-release" ) {
+-	    open(IMMUNIX_RELEASE,"/etc/immunix-release");
+-	    $release=<IMMUNIX_RELEASE>;
+-	    unless ($release =~ /^Immunix Linux release (\d+\.\d+\w*)/) {
+-		print STDERR "$err Couldn't determine Immunix version! Setting to 6.2!\n";
+-		$distro="RH6.2";
+-	    }
+-	    else {
+-		$distro="RH$1";
+-	    }
+-	    close(*IMMUNIX_RELEASE);
+-	}
+-	elsif ( -e '/etc/fedora-release' ) {
+-            open(FEDORA_RELEASE,'/etc/fedora-release');
+-            $release=<FEDORA_RELEASE>;
+-            close FEDORA_RELEASE;
+-            if ($release =~ /^Fedora Core release (\d+\.?\d*)/) {
+-                $distro = "RHFC$1";
+-            }
+-	    elsif ($release =~ /^Fedora release (\d+\.?\d*)/) {
+-                $distro = "RHFC$1";
+-            } 
+-            else {
+-                print STDERR "$err Could not determine Fedora version! Setting to Fedora Core 8\n";
+-                $distro='RHFC8';
+-            }
++    if ( -e "/etc/mandrake-release" ) {
++        open(MANDRAKE_RELEASE,"/etc/mandrake-release");
++        $release=<MANDRAKE_RELEASE>;
++
++        if ( ($release =~ /^Mandrake Linux release (\d+\.\d+\w*)/) or ($release =~ /^Linux Mandrake release (\d+\.\d+\w*)/) ) {
++	    $distro="MN$1";
++	}
++	elsif ( $release =~ /^Mandrakelinux release (\d+\.\d+)\b/ ) {
++            $distro="MN$1";
++        }
++        else {
++            print STDERR "$err Could not infer Mandrake/Mandriva version! Setting to 10.1!\n";
++	    $distro="MN10.1";
++	}
++
++        close(MANDRAKE_RELEASE);
++    }
++    elsif ( -e "/etc/immunix-release" ) {
++        open(IMMUNIX_RELEASE,"/etc/immunix-release");
++        $release=<IMMUNIX_RELEASE>;
++        unless ($release =~ /^Immunix Linux release (\d+\.\d+\w*)/) {
++            print STDERR "$err Could not infer Immunix version! Setting to 6.2!\n";
++	    $distro="RH6.2";
++        }
++	else {
++	    $distro="RH$1";
+ 	}
+-	elsif ( -e "/etc/redhat-release" ) {
+-	    open(*REDHAT_RELEASE,"/etc/redhat-release");
+-	    $release=<REDHAT_RELEASE>;
+-	    if ($release =~ /^Red Hat Linux release (\d+\.?\d*\w*)/) {
+-		$distro="RH$1";
+-	    }
+-            elsif ($release =~ /^Red Hat Linux .+ release (\d+)\.?\d*([AEW]S)/) {
+-                $distro="RHEL$1$2";
+-            }
+-	    elsif ($release =~ /^Red Hat Enterprise Linux ([AEW]S) release (\d+)/) {
+-		$distro="RHEL$2$1";
++	close(*IMMUNIX_RELEASE);
++    }
++    elsif ( -e '/etc/fedora-release' ) {
++        open(FEDORA_RELEASE,'/etc/fedora-release');
++        $release=<FEDORA_RELEASE>;
++        close FEDORA_RELEASE;
++        if ($release =~ /^Fedora Core release (\d+\.?\d*)/) {
++            $distro = "RHFC$1";
++        }
++	elsif ($release =~ /^Fedora release (\d+\.?\d*)/) {
++            $distro = "RHFC$1";
++        }
++        else {
++            print STDERR "$err Could not infer Fedora version! Setting to Fedora Core 8\n";
++            $distro='RHFC8';
++        }
++    }
++    elsif ( -e "/etc/redhat-release" ) {
++        open(*REDHAT_RELEASE,"/etc/redhat-release");
++        $release=<REDHAT_RELEASE>;
++        if ($release =~ /^Red Hat Linux release (\d+\.?\d*\w*)/) {
++	    $distro="RH$1";
++	}
++        elsif ($release =~ /^Red Hat Linux .+ release (\d+)\.?\d*([AEW]S)/) {
++            $distro="RHEL$1$2";
++        }
++	elsif ($release =~ /^Red Hat Enterprise Linux ([AEW]S) release (\d+)/) {
++	    $distro="RHEL$2$1";
++	}
++	elsif ($release =~ /^CentOS release (\d+\.\d+)/) {
++	    my $version = $1;
++	    if ($version =~ /^4\./) {
++	        $distro='RHEL4AS';
+ 	    }
+-	    elsif ($release =~ /^CentOS release (\d+\.\d+)/) {
+-		my $version = $1;
+-		if ($version =~ /^4\./) {
+-		    $distro='RHEL4AS';
+-		}
+-		elsif ($version =~ /^3\./) {
+-		    $distro='RHEL3AS';
+-		}
+-		else {
+-		    print STDERR "$err Could not determine CentOS version! Setting to Red Hat Enterprise 4 AS.\n";
+-		    $distro='RHEL4AS';
+-                 }
+-	    }
+- 	    else {
+-		# JJB/HP - Should this be B_log?
+-		print STDERR "$err Couldn't determine Red Hat version! Setting to 9!\n";
+-		$distro="RH9";
+-	    }
+-	    close(REDHAT_RELEASE);
+-
+-	}
+-	elsif ( -e "/etc/debian_version" ) {
+-	    $stable="3.1"; #Change this when Debian stable changes
+-	    open(*DEBIAN_RELEASE,"/etc/debian_version");
+-	    $release=<DEBIAN_RELEASE>;
+-	    unless ($release =~ /^(\d+\.\d+\w*)/) {
+-		print STDERR "$err System is not running a stable Debian GNU/Linux version. Setting to $stable.\n";
+-		$distro="DB$stable";
++	    elsif ($version =~ /^3\./) {
++	        $distro='RHEL3AS';
+ 	    }
+ 	    else {
+-		$distro="DB$1";
+-	    }
+-	    close(DEBIAN_RELEASE);
+-	}
+-	elsif ( -e "/etc/SuSE-release" ) {
+-	    open(*SUSE_RELEASE,"/etc/SuSE-release");
+-	    $release=<SUSE_RELEASE>;
+-	    if ($release =~ /^SuSE Linux (\d+\.\d+\w*)/i) {
+-		$distro="SE$1";
+-	    }
+-	    elsif ($release =~ /^SUSE LINUX Enterprise Server (\d+\.?\d?\w*)/i) {
+-		$distro="SESLES$1";
+-	    }
+-	    elsif ($release =~ /^SUSE Linux Enterprise Server (\d+\.?\d?\w*)/i) {
+-		$distro="SESLES$1";
+-	    }
+-            elsif ($release =~ /^openSuSE (\d+\.\d+\w*)/i) {
+-                $distro="SE$1";
++	        print STDERR "$err Could not infer CentOS version! Setting to Red Hat Enterprise 4 AS.\n";
++	        $distro='RHEL4AS';
+             }
+-	    else {
+-		print STDERR "$err Couldn't determine SuSE version! Setting to 10.3!\n";
+-		$distro="SE10.3";
+-	    }
+-	    close(SUSE_RELEASE);
+-	}
+-	elsif ( -e "/etc/turbolinux-release") {
+-	    open(*TURBOLINUX_RELEASE,"/etc/turbolinux-release");
+-	    $release=<TURBOLINUX_RELEASE>;
+-	    unless ($release =~ /^Turbolinux Workstation (\d+\.\d+\w*)/) {
+-		print STDERR "$err Couldn't determine TurboLinux version! Setting to 7.0!\n";
+-		$distro="TB7.0";
+-	    }
+-	    else {
+-		$distro="TB$1";
+-	    }
+-	    close(TURBOLINUX_RELEASE);
++        }
++ 	else {
++	    # JJB/HP - Should this be B_log?
++	    print STDERR "$err Could not infer Red Hat version! Setting to 9!\n";
++	    $distro="RH9";
++	}
++	close(REDHAT_RELEASE);
++
++    }
++    elsif ( -e "/etc/debian_version" ) {
++        $stable="3.1"; #Change this when Debian stable changes
++        open(*DEBIAN_RELEASE,"/etc/debian_version");
++        $release=<DEBIAN_RELEASE>;
++        unless ($release =~ /^(\d+\.\d+\w*)/) {
++  	    print STDERR "$err System is not running a stable Debian GNU/Linux version. Setting to $stable.\n";
++	    $distro="DB$stable";
++        }
++        else {
++	    $distro="DB$1";
++	}
++	close(DEBIAN_RELEASE);
++    }
++    elsif ( -e "/etc/SuSE-release" ) {
++        open(*SUSE_RELEASE,"/etc/SuSE-release");
++        $release=<SUSE_RELEASE>;
++        if ($release =~ /^SuSE Linux (\d+\.\d+\w*)/i) {
++	    $distro="SE$1";
++        }
++        elsif ($release =~ /^SUSE LINUX Enterprise Server (\d+\.?\d?\w*)/i) {
++	    $distro="SESLES$1";
++        }
++	elsif ($release =~ /^SUSE Linux Enterprise Server (\d+\.?\d?\w*)/i) {
++	    $distro="SESLES$1";
++	}
++        elsif ($release =~ /^openSuSE (\d+\.\d+\w*)/i) {
++            $distro="SE$1";
++        }
++	else {
++	    print STDERR "$err Could not infer SuSE version! Setting to 10.3!\n";
++	    $distro="SE10.3";
+ 	}
++	close(SUSE_RELEASE);
++    }
++    elsif ( -e "/etc/turbolinux-release") {
++        open(*TURBOLINUX_RELEASE,"/etc/turbolinux-release");
++        $release=<TURBOLINUX_RELEASE>;
++        unless ($release =~ /^Turbolinux Workstation (\d+\.\d+\w*)/) {
++	    print STDERR "$err Could not infer TurboLinux version! Setting to 7.0!\n";
++	    $distro="TB7.0";
++        }
+ 	else {
+-	    # We're either on Mac OS X, HP-UX or an unsupported O/S.
+-            if ( -x '/usr/bin/uname') {
++	    $distro="TB$1";
++	}
++	close(TURBOLINUX_RELEASE);
++    }
++    else {
++        # We're either on Mac OS X, HP-UX or an unsupported O/S.
++        if ( -x '/usr/bin/uname') {
+ 		# uname is in /usr/bin on Mac OS X and HP-UX
+-		$release=`/usr/bin/uname -sr`;
+-	    }
+-	    else {
+-                print STDERR "$err Could not determine operating system version!\n";
+-		$distro="unknown"
+-            }
+-
+-	    # Figure out what kind of system we're on.
+-	    if ($release ne "") {
+-		if ($release =~ /^Darwin\s+(\d+)\.(\d+)/) {
+-		    if ($1 == 6 ) {
+-			$distro = "OSX10.2";
+-		    }
+-		    elsif ($1 == 7) {
+-			$distro = "OSX10.3";
+-		    }
+-                    elsif ($1 == 8) {
+-                        $distro = "OSX10.3";
+-                    }
+-		    else {
+-		        $distro = "unknown";
+-		    }
++	    $release=`/usr/bin/uname -sr`;
++	}
++	else {
++            print STDERR "$err Could not infer operating system version from filesystem context. Setting inferred distro to 'unknown'.\n";
++	    $distro="unknown";
++        }
++
++	# Figure out what kind of system we're on.
++	if ($release ne "") {
++	    if ($release =~ /^Darwin\s+(\d+)\.(\d+)/) {
++	        if ($1 == 6 ) {
++		    $distro = "OSX10.2";
+ 		}
+-	        elsif ( $release =~ /(^HP-UX)\s*B\.(\d+\.\d+)/ ) {
+-		   $distro="$1$2";
++		elsif ($1 == 7) {
++		    $distro = "OSX10.3";
+ 		}
++                elsif ($1 == 8) {
++                    $distro = "OSX10.3";
++                }
+ 		else {
+-		   print STDERR "$err Could not determine operating system version!\n";
+-	           $distro="unknown";
++                    print STDERR "$err Could not infer operating system version from filesystem context. Setting inferred distro to 'unknown'.\n";
++		    $distro = "unknown";
+ 		}
+ 	    }
++	    elsif ( $release =~ /(^HP-UX)\s*B\.(\d+\.\d+)/ ) {
++	        $distro="$1$2";
++	    }
++	    else {
++                print STDERR "$err Could not infer operating system version from filesystem context. Setting inferred distro to 'unknown'.\n";
++	        $distro="unknown";
++	    }
+ 	}
+-
+-	$GLOBAL_OS=$distro;
+-    } elsif (not (defined $GLOBAL_OS)) {
+-        print "ERROR: GLOBAL OS Scoping Issue\n";
+-    } else {
+-        $distro = $GLOBAL_OS;
+     }
+-
+     return $distro;
+ }
+ 
+ ###################################################################################
+-#   &getActualDistro;                                                             #
++#   &getInferredDistro;                                                             #
+ #                                                                                 #
+ #    This subroutine returns the actual os version in which is running on.  This  #
+ #    os version is independent of the --os switch feed to bastille.               #
+ #                                                                                 #
+ ###################################################################################
+-sub getActualDistro {
+-    # set local variable to $GLOBAL_OS
++sub getInferredDistro {
++    if ($GLOBAL_INFERRED_OS eq "None") {
++        $GLOBAL_INFERRED_OS = &InferDistro;
++    }
++    return $GLOBAL_INFERRED_OS;
++}
+ 
+-    if ($GLOBAL_ACTUAL_OS eq "None") {
+-        my $os = $GLOBAL_OS;
+-        # undef GLOBAL_OS so that the GetDistro routine will return
+-        # the actualDistro, it might otherwise return the distro set
+-        # by the --os switch.
+-        $GLOBAL_OS = "None";
+-        $GLOBAL_ACTUAL_OS = &GetDistro;
+-        # reset the GLOBAL_OS variable
+-        $GLOBAL_OS = $os;
++sub GetDistro {
++    if ($GLOBAL_OS eq "None") {
++        return &getInferredDistro;
+     }
+-    return $GLOBAL_ACTUAL_OS;
++    return $GLOBAL_OS;
+ }
++
+ # These are helper routines which used to be included inside GetDistro
+ sub is_OS_supported($) {
+    my $os=$_[0];
+@@ -556,7 +545,8 @@
+ 			      "SE7.2","SE7.3", "SE8.0","SE8.1","SE9.0","SE9.1",
+ 			      "SE9.2","SE9.3","SE10.0","SE10.1","SE10.2","SE10.3",
+ 			      "SESLES8","SESLES9","SESLES10",
+-			      "TB7.0"
++			      "TB7.0",
++                              "Yocto"
+ 			      ],
+ 
+ 		  "HP-UX" => [
+@@ -882,23 +872,19 @@
+ ###########################################################################
+ sub ConfigureForDistro {
+ 
+-    my $retval=1;
+-
+-    # checking to see if the os version given is in fact supported
+     my $distro = &GetDistro;
+ 
+-    # checking to see if the actual os version is in fact supported
+-    my $actualDistro = &getActualDistro;
++    my $inferredDistro = &getInferredDistro;
++
++    if (! ($inferredDistro eq $distro) ) {
++        print STDERR "WARNING: Inferred distro $inferredDistro is not the same as specified distro $distro. Using specified distro.\n";
++    }
++
+     $ENV{'LOCALE'}=''; # So that test cases checking for english results work ok.
+-    if ((! &is_OS_supported($distro)) or (! &is_OS_supported($actualDistro))  ) {
+-	# if either is not supported then print out a list of supported versions
+-	if (! &is_OS_supported($distro)) {
+-	    print STDERR "$err '$distro' is not a supported operating system.\n";
+-	}
+-	else {
+-	    print STDERR "$err Bastille is unable to operate correctly on this\n";
+-	    print STDERR "$spc $distro operating system.\n";
+-	}
++
++    if (! &is_OS_supported($distro)) {
++	print STDERR "$err '$distro' is not a supported operating system.\n";
++
+ 	my %supportedOSHash = &getSupportedOSHash;
+ 	print STDERR "$spc Valid operating system versions are as follows:\n";
+ 
+@@ -930,7 +916,7 @@
+     # intend via setting the Perl umask
+     umask(077);
+ 
+-    &getFileAndServiceInfo($distro,$actualDistro);
++    &getFileAndServiceInfo($distro,$distro);
+ 
+ #    &dumpFileInfo;  # great for debuging file location issues
+ #    &dumpServiceInfo; # great for debuging service information issues
+@@ -942,7 +928,7 @@
+ 	    "$spc You must use Bastille\'s -n flag (for example:\n" .
+ 	    "$spc bastille -f -n) or \'touch $nodisclaim_file \'\n";
+ 
+-    return $retval;
++    return 1;
+ }
+ 
+ 
+Index: Bastille/Bastille/LogAPI.pm
+===================================================================
+--- Bastille.orig/Bastille/LogAPI.pm	2013-08-22 04:32:38.269968002 -0400
++++ Bastille/Bastille/LogAPI.pm	2013-08-22 04:32:47.509968002 -0400
+@@ -111,7 +111,7 @@
+    # do this here to prevent bootstrapping problem, where we need to
+    # write an error that the errorlog location isn't defined.
+    my $logdir="/var/log/Bastille";
+-   if(&getActualDistro =~ "^HP-UX"){
++   if(&getInferredDistro =~ "^HP-UX"){
+        $logdir = "/var/opt/sec_mgmt/bastille/log/";
+    }
+ 
diff --git a/recipes-security/bastille/files/upgrade_options_processing.patch b/recipes-security/bastille/files/upgrade_options_processing.patch
new file mode 100644
index 0000000..5889a57
--- /dev/null
+++ b/recipes-security/bastille/files/upgrade_options_processing.patch
@@ -0,0 +1,85 @@
+Index: Bastille/Bastille/API.pm
+===================================================================
+--- Bastille.orig/Bastille/API.pm	2013-08-21 11:41:09.235950000 -0400
++++ Bastille/Bastille/API.pm	2013-08-21 11:41:16.183950000 -0400
+@@ -271,9 +271,15 @@
+ # setOptions takes six arguments, $GLOBAL_DEBUG, $GLOBAL_LOGONLY,
+ # $GLOBAL_VERBOSE, $GLOBAL_AUDITONLY, $GLOBAL_AUDIT_NO_BROWSER, and GLOBAL_OS;
+ ###########################################################################
+-sub setOptions($$$$$$) {
+-    ($GLOBAL_DEBUG,$GLOBAL_LOGONLY,$GLOBAL_VERBOSE,$GLOBAL_AUDITONLY,
+-     $GLOBAL_AUDIT_NO_BROWSER,$GLOBAL_OS) = @_;
++sub setOptions {
++    my %opts = @_;
++
++    $GLOBAL_DEBUG = $opts{debug};
++    $GLOBAL_LOGONLY = $opts{logonly};
++    $GLOBAL_VERBOSE = $opts{verbose};
++    $GLOBAL_AUDITONLY = $opts{auditonly};
++    $GLOBAL_AUDIT_NO_BROWSER = $opts{audit_no_browser};
++    $GLOBAL_OS = $opts{os};
+     if ($GLOBAL_AUDIT_NO_BROWSER) {
+ 	$GLOBAL_AUDITONLY = 1;
+     }
+Index: Bastille/BastilleBackEnd
+===================================================================
+--- Bastille.orig/BastilleBackEnd	2013-08-21 11:41:09.235950000 -0400
++++ Bastille/BastilleBackEnd	2013-08-21 12:40:54.055950001 -0400
+@@ -50,15 +50,13 @@
+ my $nodisclaim = 0;
+ my $verbose = 0;
+ my $force = 0;
+-my $log_only = 0;
+ my $debug = 0;
+ my $alternate_config=undef;
+ 
+ if( Getopt::Long::GetOptions( "n"     => \$nodisclaim,
+                               "v"     => \$verbose,
+                               "force" => \$force,
+-#			      "log"   => \$log_only, # broken
+-			      "f:s"   => \$alternate_config,
++			      "f=s"   => \$alternate_config,
+ 			      "debug" => \$debug) ) {
+     $error = 0; # no parse error
+ 
+@@ -66,7 +64,9 @@
+     $error = 1; # parse error
+ }
+ 
+-&setOptions($debug,$log_only,$verbose);
++&setOptions(
++  debug => $debug,
++  verbose => $verbose);
+ &ConfigureForDistro;
+ 
+ if ( $error ) { # GetOptions couldn't parse all of the args
+Index: Bastille/InteractiveBastille
+===================================================================
+--- Bastille.orig/InteractiveBastille	2013-08-21 11:41:09.235950000 -0400
++++ Bastille/InteractiveBastille	2013-08-21 12:40:30.531950001 -0400
+@@ -234,8 +234,8 @@
+ 			      "a"     => \$audit,
+                               "force" => \$force,
+ 			      "log"   => \$log_only,
+-			      "os:s"  => \$os_version,
+-                              "f:s"   => \$alternate_config,
++			      "os=s"  => \$os_version,
++                              "f=s"   => \$alternate_config,
+ 			      "debug" => \$debug) ) {
+     $error = 0; # no parse error
+ } else {
+@@ -293,7 +293,13 @@
+     $UseRequiresRules = 'N';
+ }
+ 
+-&setOptions($debug,$log_only,$verbose,$audit,$auditnobrowser,$os_version);
++&setOptions(
++  debug => $debug,
++  logonly => $log_only,
++  verbose => $verbose,
++  auditonly => $audit,
++  audit_no_browser => $auditnobrowser,
++  os => $os_version);
+ &ConfigureForDistro;
+ 
+ # ensuring mutually exclusive options are exclusive
-- 
1.7.10.4


