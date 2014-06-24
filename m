Return-Path: <jack.lovell@durham.ac.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43283E00571; Tue, 24 Jun 2014 06:39:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [194.81.223.71 listed in list.dnswl.org]
X-Greylist: delayed 1776 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Jun 2014 06:39:45 PDT
Received: from mx0.ccfe.ac.uk (mx0.ccfe.ac.uk [194.81.223.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3953AE00507
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 06:39:45 -0700 (PDT)
Received: from [194.131.174.89] by mx0.ccfe.ac.uk (Post.Office MTA v3.5.3
	release 223 ID# 1001-66693U3500L400S0V35) with ESMTP id uk
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 14:10:03 +0100
Message-ID: <53A978AB.5020808@durham.ac.uk>
Date: Tue, 24 Jun 2014 14:10:03 +0100
From: Jack Lovell <jack.lovell@durham.ac.uk>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Compiling Pseudo on Scientific Linux 6.4
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
X-List-Received-Date: Tue, 24 Jun 2014 13:39:58 -0000
X-Groupsio-MsgNum: 20285
Content-Type: multipart/mixed; boundary="------------070209040009030202000502"

--------------070209040009030202000502
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I'm having issues running bitbake on SL 6.4. I'm trying to build U-boot, 
but before I even get to that stage, Pseudo fails on do_install for 
quilt-native. I keep getting the error message:
|     The current directory must be set to the ITT directory.
|     Change the default to the ITT directory and re-run
|     this script.

Attached is the log file. I'm using a precompiled tarball of the 
required binaries, and have sourced its settings script before sourcing 
the oe-build-env script required for openembedded.

--------------070209040009030202000502
Content-Type: text/plain; charset=UTF-8;
 name="log.do_install.13552"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="log.do_install.13552"

DEBUG: Executing shell function do_install
NOTE: make -j 4 BUILD_ROOT=/home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image install
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/bin
rm -rf /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/compat
/usr/bin/install -c -m 755 bin/quilt bin/guards /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/bin/
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/compat
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt
/usr/bin/install -c -m 755 quilt/add quilt/annotate quilt/applied quilt/delete quilt/diff quilt/edit quilt/files quilt/fold quilt/fork quilt/graph quilt/grep quilt/header quilt/import quilt/mail quilt/new quilt/next quilt/patches quilt/pop quilt/previous quilt/push quilt/refresh quilt/remove quilt/rename quilt/revert quilt/series quilt/setup quilt/snapshot quilt/top quilt/unapplied quilt/upgrade /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/
ln -sf /usr/bin/gawk	\
	       /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/compat/awk
ln -sf /usr/sbin/sendmail	\
	       /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/compat/sendmail
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/scripts
ln -sf /bin/rpm	\
	       /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/compat/rpmbuild
/usr/bin/install -c -m 755 quilt/scripts/inspect quilt/scripts/dependency-graph quilt/scripts/edmail quilt/scripts/remove-trailing-ws quilt/scripts/backup-files		\
		   /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/scripts
/usr/bin/install -c -m 644 quilt/scripts/patchfns quilt/scripts/utilfns	\
		   /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/quilt/scripts
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/doc/quilt/
/usr/bin/install -c -m 644 doc/README					\
		   /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/doc/quilt/
/usr/bin/install -c -m 644 doc/quilt.pdf doc/README.MAIL			\
		   /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/doc/quilt/
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/man/man1
/usr/bin/install -c -m 644 doc/quilt.1 bin/guards.1 /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/man/man1/
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/etc
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/etc/bash_completion.d
/usr/bin/install -c -m 644 bash_completion				\
		   /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/etc/bash_completion.d/quilt
/usr/bin/install -c -m 644 quilt.quiltrc /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/etc/
/usr/bin/install -c -d /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/emacs/site-lisp/
/usr/bin/install -c -m 644 lib/quilt.el /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/emacs/site-lisp/
for lang in fr de ja ru ; do					\
		dir=/home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/image/usr/local/share/locale/$lang/LC_MESSAGES;	\
		/usr/bin/install -c -d $dir;					\
		/usr/bin/install -c -m 644 po/$lang.mo				\
		    $dir/quilt.mo ;					\
	done

    The current directory must be set to the ITT directory.
    Change the default to the ITT directory and re-run
    this script.
        
ERROR: Function failed: do_install (see /home/jlovell/FPGA/Enclustra/Mars_ZX3/Yocto/poky/build/tmp/work/i686-linux/quilt-native-0.60-r0/temp/log.do_install.13552 for further information)

--------------070209040009030202000502--
