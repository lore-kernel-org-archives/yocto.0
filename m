Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE5B9E0073F
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 06:44:44 -0700 (PDT)
Received: from [192.168.0.54] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id AC9B440319
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 14:40:42 +0100 (BST)
Message-ID: <4FFAE092.3080801@communistcode.co.uk>
Date: Mon, 09 Jul 2012 14:45:54 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Quilt Build Failure - Master && Denzil
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Jul 2012 13:44:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

So I am trying to setup a new build machine for a way to run production 
builds with a staging git meta-layer repo. However, before I have even 
got to the difficult part I am facing build errors on both the Master 
branch and the Denzil branch of Poky.

I am attempting to build for the qeumarm machine with the image being a 
vanilla core-image-minimal.

    [build@yoctoBuilder build]$ cat
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/temp/log.do_install.3939
    NOTE: make -j 4
    BUILD_ROOT=/mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image
    install
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/bin
    rm -rf
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat
    /usr/bin/install -c -m 755 bin/quilt bin/guards
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/bin/
    /usr/bin/install -c -m 755 compat/sendmail            \
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt
    ln -sf /usr/bin/gawk    \
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat/awk
    /usr/bin/install -c -m 755 quilt/grep quilt/upgrade quilt/refresh
    quilt/fold quilt/files quilt/revert quilt/next quilt/header
    quilt/annotate quilt/diff quilt/graph quilt/edit quilt/mail
    quilt/top quilt/delete quilt/pop quilt/new quilt/import
    quilt/previous quilt/applied quilt/remove quilt/fork quilt/patches
    quilt/snapshot quilt/add quilt/push quilt/series quilt/setup
    quilt/rename quilt/unapplied
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/
    ln: failed to create symbolic link
    '/mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/compat/awk':
    Read-only file system
    make: *** [install-compat-symlink-awk] Error 1
    make: *** Waiting for unfinished jobs....
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/scripts
    /usr/bin/install -c -m 755 quilt/scripts/inspect
    quilt/scripts/dependency-graph quilt/scripts/edmail
    quilt/scripts/remove-trailing-ws        \
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/scripts
    /usr/bin/install -c -m 644 quilt/scripts/patchfns            \
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/quilt/scripts
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/lib/quilt
    /usr/bin/install -c -m 755 lib/backup-files
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/lib/quilt/
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/doc/quilt/
    /usr/bin/install -c -m 644 doc/README                    \
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/doc/quilt/
    /usr/bin/install -c -m 644 doc/quilt.pdf doc/README.MAIL         \
            /mnt/yoctoBuilds/poky-denzil.git/build/tmp/workERROR:
    Function failed: do_install (see
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/temp/log.do_install.3939
    for further information)
    /x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/doc/quilt/
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/man/man1
    /usr/bin/install -c -m 644 doc/quilt.1 bin/guards.1
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/man/man1/
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/etc
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/etc/bash_completion.d
    /usr/bin/install -c -m 644 bash_completion                \
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/etc/bash_completion.d/quilt
    /usr/bin/install -c -m 644 quilt.quiltrc
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/etc/
    /usr/bin/install -c -d
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/emacs/site-lisp/
    /usr/bin/install -c -m 644 lib/quilt.el
    /mnt/yoctoBuilds/poky-denzil.git/build/tmp/work/x86_64-linux/quilt-native-0.51-r1/image/mnt/yoctoBuilds/poky-denzil.git/build/tmp/sysroots/x86_64-linux/usr/share/emacs/site-lisp/
    ERROR: oe_runmake failed

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


