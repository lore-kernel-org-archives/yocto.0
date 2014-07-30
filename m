Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6C4BE007B5; Wed, 30 Jul 2014 02:50:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, FSL_HELO_BARE_IP_2, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_LOW, RCVD_IN_SORBS_WEB, RCVD_NUMERIC_HELO,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (babu.anoop[at]gmail.com)
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [115.248.23.130 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.7 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8AB6E00796
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 02:50:05 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XCQWJ-0002Ia-Ic
	for yocto@yoctoproject.org; Wed, 30 Jul 2014 11:50:03 +0200
Received: from 115.248.23.130 ([115.248.23.130])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 11:50:03 +0200
Received: from babu.anoop by 115.248.23.130 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 11:50:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Anoop  <babu.anoop@gmail.com>
Date: Wed, 30 Jul 2014 09:46:25 +0000 (UTC)
Message-ID: <loom.20140730T114540-914@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 115.248.23.130 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125
	Safari/537.36)
Subject: Tizen Bitbake error - systemd
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
X-List-Received-Date: Wed, 30 Jul 2014 09:50:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Tizen yocto build bitbake error

Summary: 1 task failed:
  /home/sfm/yocto_temp/meta-tizen/recipes-tizen/systemd/systemd_git.bb, 
do_install
+ /usr/bin/mkdir -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux-gnueabi/systemd/git-r0/image//usr/sbin

/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/temp/run.do_install.17788: line 131: /usr/bin/mkdir: 
No such file or directory
+ bb_exit_handler
+ ret=1
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING: /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux-gnueabi/systemd/git-r0/temp/run.do_install.17788:1 exit 1 from
  /usr/bin/mkdir' -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-
neon-poky-linux-gnueabi/systemd/git-r0/image//usr/sbin
WARNING: /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/temp/run.do_install.17788:1 exit 1 from
  /usr/bin/mkdir -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux-gnueabi/systemd/git-r0/image//usr/sbin
+ exit 1

ERROR: Function failed: do_install (log file is located at 
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/temp/log.do_install.17788)
ERROR: Logfile of failure stored in: 
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/temp/log.do_install.17788
NOTE: recipe systemd-git-r0: task do_install: Failed
checking if gcc  supports -fno-rtti -fno-exceptions... 
ERROR: Task 1466 (/home/sfm/yocto_temp/meta-tizen/recipes-
tizen/systemd/systemd_git.bb, do_install) failed with exit code '1'


***do install log file****

+ rm -f /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image/usr/share/info/dir
+ find /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image -regex '.*\.la$'
+ xargs rm -f --

+ find /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image -regex '.*\.a$'

+ xargs rm -f --

+ /usr/bin/mkdir -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux-gnueabi/systemd/git-r0/image//usr/sbin

xa9hf-vfp-neon-poky-linux-gnueabi/systemd/git-r0/image$dir/$2 && ln -s $1 
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image$dir/$2 && shift 2 || exit $?; done
unable to set CAP_SETFCAP effective capability: Operation not permitted
Makefile:14448: recipe for target 'systemd-detect-virt-install-hook' failed
make[4]: [systemd-detect-virt-install-hook] Error 1 (ignored)
what="systemd-udevd-control.socket systemd-udevd-kernel.socket systemd-
journald.socket systemd-initctl.socket systemd-shutdownd.socket" && 
wants=sockets.target && 	[ -z "$what" ] || ( 
dir=/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image/usr/lib/systemd/system/$wants.wants && 
/bin/mkdir -p -m 0755 $dir && cd $dir && rm -f $what && for i in $what; do 
ln -s ../$i . || exit $? ; done )
what="systemd-tmpfiles-clean.timer" && wants=timers.target && 	[ -z "$what" 
] || ( dir=/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-
linux-gnueabi/systemd/git-r0/image/usr/lib/systemd/system/$wants.wants && 
/bin/mkdir -p -m 0755 $dir && cd $dir && rm -f $what && for i in $what; do 
ln -s ../$i . || exit $? ; done )
setfacl -nm g:wheel:rx,d:g:wheel:rx 
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image/var/log/journal/
setfacl: Option -m: Invalid argument near character 3
Makefile:14536: recipe for target 'libsystemd-journal-install-hook' failed
make[4]: [libsystemd-journal-install-hook] Error 2 (ignored)
what="" && wants=slices.target && 	[ -z "$what" ] || ( 
dir=/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image/usr/lib/systemd/system/$wants.wants && 
/bin/mkdir -p -m 0755 $dir && cd $dir && rm -f $what && for i in $what; do 
ln -s ../$i . || exit $? ; done )
set -- /usr/lib/systemd/system/remote-fs.target /etc/systemd/system/multi-
user.target.wants/remote-fs.target /usr/lib/systemd/system/getty@.service 
/etc/systemd/system/getty.target.wants/getty@tty1.service /etc/systemd/user 
/etc/xdg/systemd/user ../system-services/org.freedesktop.systemd1.service 
/usr/share/dbus-1/services/org.freedesktop.systemd1.service && \
	dir= && 	while [ -n "$1" ]; do /bin/mkdir -p `dirname 
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image$dir/$2` && rm -f 
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image$dir/$2 && ln -s $1 
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image$dir/$2 && shift 2 || exit $?; done
Making install in po
linguas=""; \
for lang in $linguas; do \
  dir=/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image/usr/share/locale/$lang/LC_MESSAGES; \
  /bin/bash /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-
linux-gnueabi/systemd/git-r0/git/build-aux/install-sh -d $dir; \
  if test -r $lang.gmo; then \
    /usr/bin/install -c -m 644 $lang.gmo $dir/systemd.mo; \
    echo "installing $lang.gmo as $dir/systemd.mo"; \
  else \
    /usr/bin/install -c -m 644 ./$lang.gmo $dir/systemd.mo; \
    echo "installing ./$lang.gmo as" \
	 "$dir/systemd.mo"; \
  fi; \
  if test -r $lang.gmo.m; then \
    /usr/bin/install -c -m 644 $lang.gmo.m $dir/systemd.mo.m; \
    echo "installing $lang.gmo.m as $dir/systemd.mo.m"; \
  else \
    if test -r ./$lang.gmo.m ; then \
      /usr/bin/install -c -m 644 ./$lang.gmo.m \
	$dir/systemd.mo.m; \
      echo "installing ./$lang.gmo.m as" \
	   "$dir/systemd.mo.m"; \
    else \
      true; \
    fi; \
  fi; \
done
+ rm -f /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image/usr/share/info/dir
+ find /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image -regex '.*\.la$'
+ xargs rm -f --
+ find /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/image -regex '.*\.a$'
+ xargs rm -f --
+ /usr/bin/mkdir -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-
linux-gnueabi/systemd/git-r0/temp/run.do_install.17788: line 131: 
/usr/bin/mkdir: No such file or directory
+ bb_exit_handler
+ ret=1
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING: /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux-gnueabi/systemd/git-r0/temp/run.do_install.17788:1 exit 1 from
  /usr/bin/mkdir' -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-
neon-poky-linux-gnueabi/systemd/git-r0/image//usr/sbin
WARNING: /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/temp/run.do_install.17788:1 exit 1 from
  /usr/bin/mkdir -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux-gnueabi/systemd/git-r0/image//usr/sbin
+ exit 1

-gnueabi/systemd/git-r0/image//usr/sbin
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/temp/run.do_install.17788: line 131: /usr/bin/mkdir: 
No such file or directory
+ bb_exit_handler
+ ret=1
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING: /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux-gnueabi/systemd/git-r0/temp/run.do_install.17788:1 exit 1 from
  /usr/bin/mkdir' -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-
neon-poky-linux-gnueabi/systemd/git-r0/image//usr/sbin
WARNING: /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/temp/run.do_install.17788:1 exit 1 from
  /usr/bin/mkdir -p /home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-
poky-linux-gnueabi/systemd/git-r0/image//usr/sbin
+ exit 1
ERROR: Function failed: do_install (log file is located at 
/home/sfm/yocto_temp/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-
gnueabi/systemd/git-r0/temp/log.do_install.17788)

Request inputs to resolve this error


