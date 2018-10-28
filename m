Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3A6E008E3; Sun, 28 Oct 2018 16:11:47 -0700 (PDT)
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
	*      [209.85.214.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 469C7E00826
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 16:11:45 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id f10-v6so2887005plr.1
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 16:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Ao+RIanZyMc7Tna4NSf3TmeysYgAB6CGrIRzH2vTj8s=;
	b=RebtwMeOQEu1gvNpQHVHn6/v9075mHSrH0Jrk8E6DKDliXRW5h8r8fWsIUrNJLbV8m
	Fx0Y6CZ+gSMicZ/orXBULw34SicCzflZD1cjkzgLQ/u2/viVcz+mxkkaNMtiMqVzhRNd
	HAVKD7GpVug91bHJwo/kFfOYTjfNHP/QqUACxJE6KXuuZhFbqG2iU6SHKSuw5poC64Zc
	mY11DnQCLZ9T4peGEgUOOP4rBlSZvPZh6rh+I1pGHIeCoVYk8oHfEdxN6NbYTuIRd3Zb
	FrMG4ZPCHDdEaPrrCVjXw89nWy/JSGhWGWFCg2oT2cwA1ynLA919wXMc1cyRIbxFPzid
	JSAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Ao+RIanZyMc7Tna4NSf3TmeysYgAB6CGrIRzH2vTj8s=;
	b=a72Zw9jc0x/IwJAUkdpaU3DNljepRkahmS6Fi7yZhl8Oxs6aZeQwbNI3+jnZ3zS7ri
	KpSwltg/2EgADtngGm/RVBnVCPEfNAxrOPUpIVCTS8DHC5EfbT7fjRGuvCanSNI8Xs7/
	9bygwROTDkaEUqSc8GHXMeseDS+ydKndXrIcNlRqiO+bTGOPJw7eQzS82RT7uo5JRhdG
	94B36KniouT0zEgAkb0Na9EhrvmVbRPRQ0z0m/bzJmY7i9tbVpziy+irbH827gx1JFKz
	L8UmggxSaQ9BmjS6k3pNbKMHyWu6W8mgxWmtvGtSCNblN0dXORpQA/fh+6YasztDtDE5
	KDJQ==
X-Gm-Message-State: AGRZ1gIgFOWi8OJBMgVIqwtb2TZY3pIYKZQ13I9qZ4SHZ7sNVG0yfl+P
	RVhUAW2tIzUBnrEw84cFFRjL3RxU
X-Google-Smtp-Source: AJdET5e/KBt45kixZeRgp0y8hH3Qoem/+2HRRbZZWABTjcoAsa8GunAmhoPI1tvXBcpoz3A5NJiILA==
X-Received: by 2002:a17:902:8347:: with SMTP id
	z7-v6mr11945324pln.111.1540768304431; 
	Sun, 28 Oct 2018 16:11:44 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:3405:5320:ca09:da28])
	by smtp.gmail.com with ESMTPSA id
	p11-v6sm1636801pfn.53.2018.10.28.16.11.42
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 16:11:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 23:11:41 +0000
Message-Id: <1540768301-4374-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] README: update maintainers email and move pkg help info
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
X-List-Received-Date: Sun, 28 Oct 2018 23:11:47 -0000

This is to simplify the main README

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README            | 207 +-----------------------------------------------------
 docs/overview.txt | 197 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 199 insertions(+), 205 deletions(-)
 create mode 100644 docs/overview.txt

diff --git a/README b/README
index ef80f2b..e238271 100644
--- a/README
+++ b/README
@@ -48,209 +48,6 @@ other layers needed. e.g.:
     /path/to/meta-openembedded/meta-networking \
     /path/to/layer/meta-security \
 
-Contents and Help
-=================
-
-In this section the contents of the layer is listed, along with a short
-help for each package.
-
-         == bastille ==
-
-        Bastille  is  a  system hardening / lockdown program which enhances the
-        security of a Unix host.  It configures daemons, system settings and
-        firewalls to be more secure.  It can shut off unneeded services
-        like rcp and rlogin, and helps create "chroot jails" that help limit the
-        vulnerability of common Internet services like Web services and DNS.
-
-        usage : The functionality of Bastille which is available is
-                restricted to a purely informational one. The command:
-                bastille -c --os Yocto
-                will cause a series of menus containing security questions
-                about the system to be displayed to the user. For each
-                question, a default response, specified in the configuration
-                file which is installed with Bastille, will be selected.
-                The user may select an alternate response. When the user
-                has completed the sequence of menus Bastille saves the
-                responses to the configuration file.
-
-                The command:
-                bastille -l lists the configuration files that Bastille
-                is able to locate.
-
-                The other functionality which Bastille is intended to provide
-                is actually unavailable. This is not due to errors in poky
-                installation or configuration of the application. The Bastille
-                distribution is no longer supported. Significant modifications
-                would be required to make it possible to make use of the
-                functionality which is currently unavailable.
-
-
-        Additional information about Bastille can be found in the package
-        README file and other documentation.
-
-        Alternatives to Bastille include buck-security and checksecurity,
-        described elsewhere in this file.
-
-
-        == redhat-security ==
-
-        Sometimes you want to check different aspects of a distribution for security problems.
-        This can be anything from file permissions to correctness of code. This is a collection of those tools.
-        Depending on what information the tool has to access, it may need to be run as root.
-
-        - rpm-chksec.sh : This will take an rpm name as input and verify each ELF file to see if its compiled with the intended flags
-                          to most effectively use PIE and RELRO. Green is good, Orange could use work but is acceptable, and Red needs fixing.
-                          It has a mode --all that is the equivalent of using rpm -qa and feeding the packages to it.
-                          In this mode it will only give a summary result for the package. To find which files don't comply,
-                          re-run using just the package name.
-
-		!!! WARNING !!! - in order to use this script you need to add to your conf/local.conf file the following lines:
-						IMAGE_ROOTFS_EXTRA_SPACE = ""  - specifying the extra space of the image
-						IMAGE_FEATURES += "package management" - for the correct output of rpm -qa
-
-        - find-nodrop-groups.sh : This will scan a whole file system to see if a program makes calls to change UID
-                                  and GID without also calling setgroups or initgroups.
-
-        - rpm-drop-groups.sh : Same as above, but takes an rpm name instead.
-
-        - find-chroot.sh : This script scans the whole file system looking for ELF files that calls chroot(2) that also do not include a call to chdir.
-                           Programs that fail to do this do not have the cwd inside the chroot. This means the app can escape the protection that was intended.
-
-        - find-chroot-py.sh : This test is like the one above except it examines python scripts for the same problem.
-
-        - find-execstack.sh : This program scans the whole file system for ELF programs that have marked the stack as being executable.
-                              This means that if the program has another vulnerablity such as stack buffer overflow,
-                              any code the attacker places there is executable. Any program found must be fixed.
-
-        - find-hidden-exec.sh : This program scans the whole file system looking for excutables that are hidden.
-                                Anything found must be investigated since its highly unusual for executables to be hidden.
-
-        - find-sh4errors.sh : This program scans the whole file system looking for shell scripts.
-                              It then does a sh -n on the script which causes bash to parse the file to see if there are any mistakes.
-
-        - selinux-check-devices.sh : This script checks the /dev directory to see if there are any devices that are not correctly labeled.
-                                     Anything found by this test should be reported so that selinux policy can be fixed.
-                                     This test is very hardware specific, so to be effective a lot of people with different hardware
-                                     should run this test each upstream kernel version release.
-
-        - selinux-ls-unconfined.sh :  This script scans the running processes and looks for anything labeled with initrc_t or inetd.
-                                      These both mean that there are daemons that do not have policy and are therefore running unconfined.
-                                      These should be reported as SE Linux policy problems. Because it checks currently running daemons,
-                                      the more you have running, the better the test is.
-
-        - find-sh4tmp.sh : This script scans the whole filesystem to check if shell scripts are using well known tmp file names
-                           instead of obscure ones created by something like mktemp.
-
-        - find-elf4tmp.sh : This script scans the whole file system for ELF files using /tmp. When it finds this,
-                            it also looks to see if any of the known good random name generator functions is called by looking
-                            at the symbol table. If not, it will output the string.
-
-        - lib-bin-check.sh : This will check all installed library packages to see if an application is also part of the package.
-                             The relationship to security is that the SHA256 hash check will fail if a 32 bit version overwrites it.
-                             Also, the less binaries on a system, the more secure it is by virtue of removing the chance for an exploitable bug.
-
-
-                usage : simply invoke the script name in the terminal.
-
-
-        == pax-utils ==
-
-		( This package can be found in oe-core )
-
-        pax-utils is a small set of various PaX aware and related utilities for
-        ELF binaries.
-
-        - scanelf : With this application you can print out information specific to the ELF structure of a binary.
-                    For more help please consult the man pages or the readme file.
-
-        - pspax : is a user-space utility that scans the proc directory and list
-                  ELF types, as well as their respective PaX flags and filenames and
-                  attributes. Depending on build options, it may additionaly display the
-                  process running set of capabilities.
-
-        - scanmacho : is a user-space utility to quickly scan given
-                      Mach-Os, directories, or common system paths for different information. This
-                      may include Mach-O types, their install_names, etc.
-
-        - dumpelf : is a user-space utility to dump all of the internal
-                    ELF structures into the equivalent C structures for fun debugging and/or
-                    reference purposes.
-
-
-                usage : simply invoke the script name in the terminal.
-
-
-        == buck-security ==
-
-        Buck-Security is a security scanner for Debian and Ubuntu Linux. It runs a couple of important checks and helps you to harden your Linux
-        system. This enables you to quickly overview the security status of your Linux system.
-
-                usage :	!!! before starting to use this tool please run the following command: !!!
-
-						export GPG_TTY=`tty`
-
-						This command is needed for the usage of the comand --make-checksum, which creates
-						a checksum for the files in the system.
-
-						switch to directory /usr/local/buck-security.
-                        before running the script, you should check the activated checks in conf/buck-security.conf file.
-                        after altering the changes, save the file and simply run :
-
-                        ./buck-security
-
-                        you can choose between different outputs : 1, 2(default) or 3.
-
-                        More detailed usage can be found typing ./buck-security --help
-
-
-        == libseccomp ==
-
-        The libseccomp library provides and easy to use, platform independent, interface to the Linux Kernel's syscall filtering mechanism: seccomp.
-        The libseccomp API is designed to abstract away the underlying BPF based syscall filter language and present a more conventional
-        function-call based filtering interface that should be familiar to, and easily adopted by application developers.
-
-                usage : More detailed usage can be found in the man pages and README file of the package.
-
-
-
-        == checksecurity ==
-
-        checksecurity is a simple package which will scan your system for several simple security holes.
-        It uses a simple collection of plugins, all of which are shell scripts which are configured by environmental variables.
-
-
-                usage : To start checksecurity simply write in the terminal :
-
-                        checksecurity
-
-        More detailed usage can be found in the man pages and README file of the package.
-
-
-        == nikto ==
-
-        Nikto is an Open Source (GPL) web server scanner which performs comprehensive tests against web servers for multiple items,
-        including over 6500 potentially dangerous files/CGIs, checks for outdated versions of over 1250 servers, and version specific
-        problems on over 270 servers. It also checks for server configuration items such as the presence of multiple index files,
-        HTTP server options, and will attempt to identify installed web servers and software.
-
-                usage : To start nikto simply write in the terminal :
-
-                        nikto
-
-        More detailed usage can be found in the man pages and README file of the package.
-
-
-        == nmap ==
-
-        Nmap ("Network Mapper") is a free and open source (license) utility for network discovery and security auditing.
-        Many systems and network administrators also find it useful for tasks such as network inventory,
-        managing service upgrade schedules, and monitoring host or service uptime.
-
-                usage : To start nikto simply write in the terminal :
-
-                        nmap
-
-        More detailed usage can be found in the man pages and README file of the package.
 
 Maintenance
 -----------
@@ -260,8 +57,8 @@ Send pull requests, patches, comments or questions to yocto@yoctoproject.org
 When sending single patches, please using something like:
 'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security][PATCH'
 
-Maintainers:    Saul Wold <sgw@linux.intel.com>
-                Armin Kuster <akuster@mvista.com>
+Maintainers:    Armin Kuster <akuster808@gmail.com>
+                Saul Wold <sgw@linux.intel.com>
 
 
 License
diff --git a/docs/overview.txt b/docs/overview.txt
new file mode 100644
index 0000000..ed3135a
--- /dev/null
+++ b/docs/overview.txt
@@ -0,0 +1,197 @@
+Meta-security Docs
+=============
+
+In this section the contents of the layer is listed, along with a short
+help for each package.
+
+         == bastille ==
+
+        Bastille  is  a  system hardening / lockdown program which enhances the
+        security of a Unix host.  It configures daemons, system settings and
+        firewalls to be more secure.  It can shut off unneeded services
+        like rcp and rlogin, and helps create "chroot jails" that help limit the
+        vulnerability of common Internet services like Web services and DNS.
+
+        usage : The functionality of Bastille which is available is
+                restricted to a purely informational one. The command:
+                bastille -c --os Yocto
+                will cause a series of menus containing security questions
+                about the system to be displayed to the user. For each
+                question, a default response, specified in the configuration
+                file which is installed with Bastille, will be selected.
+                The user may select an alternate response. When the user
+                has completed the sequence of menus Bastille saves the
+                responses to the configuration file.
+
+                The command:
+                bastille -l lists the configuration files that Bastille
+                is able to locate.
+
+                The other functionality which Bastille is intended to provide
+                is actually unavailable. This is not due to errors in poky
+                installation or configuration of the application. The Bastille
+                distribution is no longer supported. Significant modifications
+                would be required to make it possible to make use of the
+                functionality which is currently unavailable.
+
+
+        Additional information about Bastille can be found in the package
+        README file and other documentation.
+
+        Alternatives to Bastille include buck-security and checksecurity,
+        described elsewhere in this file.
+
+
+        == redhat-security ==
+
+        Sometimes you want to check different aspects of a distribution for security problems.
+        This can be anything from file permissions to correctness of code. This is a collection of those tools.
+        Depending on what information the tool has to access, it may need to be run as root.
+
+        - rpm-chksec.sh : This will take an rpm name as input and verify each ELF file to see if its compiled with the intended flags
+                          to most effectively use PIE and RELRO. Green is good, Orange could use work but is acceptable, and Red needs fixing.
+                          It has a mode --all that is the equivalent of using rpm -qa and feeding the packages to it.
+                          In this mode it will only give a summary result for the package. To find which files don't comply,
+                          re-run using just the package name.
+
+		!!! WARNING !!! - in order to use this script you need to add to your conf/local.conf file the following lines:
+						IMAGE_ROOTFS_EXTRA_SPACE = ""  - specifying the extra space of the image
+						IMAGE_FEATURES += "package management" - for the correct output of rpm -qa
+
+        - find-nodrop-groups.sh : This will scan a whole file system to see if a program makes calls to change UID
+                                  and GID without also calling setgroups or initgroups.
+
+        - rpm-drop-groups.sh : Same as above, but takes an rpm name instead.
+
+        - find-chroot.sh : This script scans the whole file system looking for ELF files that calls chroot(2) that also do not include a call to chdir.
+                           Programs that fail to do this do not have the cwd inside the chroot. This means the app can escape the protection that was intended.
+
+        - find-chroot-py.sh : This test is like the one above except it examines python scripts for the same problem.
+
+        - find-execstack.sh : This program scans the whole file system for ELF programs that have marked the stack as being executable.
+                              This means that if the program has another vulnerablity such as stack buffer overflow,
+                              any code the attacker places there is executable. Any program found must be fixed.
+
+        - find-hidden-exec.sh : This program scans the whole file system looking for excutables that are hidden.
+                                Anything found must be investigated since its highly unusual for executables to be hidden.
+
+        - find-sh4errors.sh : This program scans the whole file system looking for shell scripts.
+                              It then does a sh -n on the script which causes bash to parse the file to see if there are any mistakes.
+
+        - selinux-check-devices.sh : This script checks the /dev directory to see if there are any devices that are not correctly labeled.
+                                     Anything found by this test should be reported so that selinux policy can be fixed.
+                                     This test is very hardware specific, so to be effective a lot of people with different hardware
+                                     should run this test each upstream kernel version release.
+
+        - selinux-ls-unconfined.sh :  This script scans the running processes and looks for anything labeled with initrc_t or inetd.
+                                      These both mean that there are daemons that do not have policy and are therefore running unconfined.
+                                      These should be reported as SE Linux policy problems. Because it checks currently running daemons,
+                                      the more you have running, the better the test is.
+
+        - find-sh4tmp.sh : This script scans the whole filesystem to check if shell scripts are using well known tmp file names
+                           instead of obscure ones created by something like mktemp.
+
+        - find-elf4tmp.sh : This script scans the whole file system for ELF files using /tmp. When it finds this,
+                            it also looks to see if any of the known good random name generator functions is called by looking
+                            at the symbol table. If not, it will output the string.
+
+        - lib-bin-check.sh : This will check all installed library packages to see if an application is also part of the package.
+                             The relationship to security is that the SHA256 hash check will fail if a 32 bit version overwrites it.
+                             Also, the less binaries on a system, the more secure it is by virtue of removing the chance for an exploitable bug.
+
+
+                usage : simply invoke the script name in the terminal.
+
+
+        == pax-utils ==
+
+		( This package can be found in oe-core )
+
+        pax-utils is a small set of various PaX aware and related utilities for
+        ELF binaries.
+
+        - scanelf : With this application you can print out information specific to the ELF structure of a binary.
+                    For more help please consult the man pages or the readme file.
+
+        - pspax : is a user-space utility that scans the proc directory and list
+                  ELF types, as well as their respective PaX flags and filenames and
+                  attributes. Depending on build options, it may additionaly display the
+                  process running set of capabilities.
+
+        - scanmacho : is a user-space utility to quickly scan given
+                      Mach-Os, directories, or common system paths for different information. This
+                      may include Mach-O types, their install_names, etc.
+
+        - dumpelf : is a user-space utility to dump all of the internal
+                    ELF structures into the equivalent C structures for fun debugging and/or
+                    reference purposes.
+
+
+                usage : simply invoke the script name in the terminal.
+
+
+        == buck-security ==
+
+        Buck-Security is a security scanner for Debian and Ubuntu Linux. It runs a couple of important checks and helps you to harden your Linux
+        system. This enables you to quickly overview the security status of your Linux system.
+
+                usage :	!!! before starting to use this tool please run the following command: !!!
+
+						export GPG_TTY=`tty`
+
+						This command is needed for the usage of the comand --make-checksum, which creates
+						a checksum for the files in the system.
+
+						switch to directory /usr/local/buck-security.
+                        before running the script, you should check the activated checks in conf/buck-security.conf file.
+                        after altering the changes, save the file and simply run :
+
+                        ./buck-security
+
+                        you can choose between different outputs : 1, 2(default) or 3.
+
+                        More detailed usage can be found typing ./buck-security --help
+
+
+        == libseccomp ==
+
+        The libseccomp library provides and easy to use, platform independent, interface to the Linux Kernel's syscall filtering mechanism: seccomp.
+        The libseccomp API is designed to abstract away the underlying BPF based syscall filter language and present a more conventional
+        function-call based filtering interface that should be familiar to, and easily adopted by application developers.
+
+                usage : More detailed usage can be found in the man pages and README file of the package.
+
+
+
+        == checksecurity ==
+
+        checksecurity is a simple package which will scan your system for several simple security holes.
+        It uses a simple collection of plugins, all of which are shell scripts which are configured by environmental variables.
+
+
+                usage : To start checksecurity simply write in the terminal :
+
+                        checksecurity
+
+        More detailed usage can be found in the man pages and README file of the package.
+
+
+        == nikto ==
+
+        Nikto is an Open Source (GPL) web server scanner which performs comprehensive tests against web servers for multiple items,
+        including over 6500 potentially dangerous files/CGIs, checks for outdated versions of over 1250 servers, and version specific
+        problems on over 270 servers. It also checks for server configuration items such as the presence of multiple index files,
+        HTTP server options, and will attempt to identify installed web servers and software.
+
+                usage : To start nikto simply write in the terminal :
+
+                        nikto
+
+        More detailed usage can be found in the man pages and README file of the package.
+
+License
+=======
+
+All metadata is MIT licensed unless otherwise stated. Source code included
+in tree for individual recipes is under the LICENSE stated in each recipe
+(.bb file) unless otherwise stated.
-- 
2.7.4


