Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 431F8E00717; Sun,  1 Feb 2015 09:12:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A1D4E00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 09:12:30 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id E990427E157;
	Sun,  1 Feb 2015 17:12:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Wyp5bZwoCJvL; Sun,  1 Feb 2015 17:12:02 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-264-196.w90-8.abo.wanadoo.fr
	[90.8.255.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 8CE2B27E152;
	Sun,  1 Feb 2015 17:12:02 +0000 (UTC)
Message-ID: <54CE5E14.3020500@dynamicdevices.co.uk>
Date: Sun, 01 Feb 2015 18:10:44 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: peterengcomau001@adam.com.au, Martin Jansa <martin.jansa@gmail.com>, 
	Simon Bolek <simon.bolek@googlemail.com>
References: <dd6db0bfa347b43e563b4d948b0ae128f94f1c16@webmail.adam.com.au>
In-Reply-To: <dd6db0bfa347b43e563b4d948b0ae128f94f1c16@webmail.adam.com.au>
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt5 problem in yocto 1.7
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
X-List-Received-Date: Sun, 01 Feb 2015 17:12:51 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


On 31/01/2015 19:10, peterengcomau001@adam.com.au wrote:
>
> Hi Alex,
>
> Thanks for confirming the problem exists.
> I set QT_MODULE_BRANCH ?= "dev" in
> meta-qt5/recipes-qt/qt5/qt5-git.inc, but still get the same problem. 
> Do I have the correct file ?

Lachlan,

So I have been building for qemux86 with dizzy,

Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.7.1"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto        = "dizzy:9fc095a439c36014c73b3a8f240afba09fe0e4d7"
meta-oe
meta-efl
meta-webserver
meta-networking   = "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"
meta-mono         = "master:b73fc7c525cc0068b2ed84fc26b5d2d4d87c6c12"
meta-gnome
meta-efl          = "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"
meta-browser.master = "master:14e4829d716db416f62403ddd0941ab97491d707"
meta-ruby
meta-python       = "dizzy:200f6cafc878d4c26871fc56d21ecc8eaa9aa61b"
meta-qt5.dizzy    = "dizzy:8b0ffbd849203d07164ccfad2535bdb107eecd08"

local.conf is here http://pastebin.com/0t2GFWhu
bblayers.conf is here http://pastebin.com/CK6dF9f5

Build command is

bitbake -k core-image-minimal

So this fails a few times building, which seems to be related to gcc
issues, and I've seen on and off for some time.

Afer a few restarts I get to the point where most of it is built and I have

ERROR: Function failed: do_configure (log file is located at
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtwebkit-examples/5.3.2-r0/temp/log.do_configure.26328)
ERROR: Logfile of failure stored in:
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtwebkit-examples/5.3.2-r0/temp/log.do_configure.26328

ERROR: Task 842
(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/qtwebkit-examples_5.3.2.bb,
do_configure) failed with exit code '1'
WARNING: Failed to fetch URL
git://qt.gitorious.org/qt/qtsystems.git;branch=5.3, attempting MIRRORS
if available
ERROR: Fetcher failure: Unable to find revision
aa651c73bf7bc57c1b6b1bfcfa9afe901884a102 in branch 5.3 even from upstream
ERROR: Function failed: Fetcher failure for URL:
'git://qt.gitorious.org/qt/qtsystems.git;branch=5.3'. Unable to fetch
URL from any source.
ERROR: Logfile of failure stored in:
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtsystems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do_fetch.26325
ERROR: Task 756
(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/qtsystems_git.bb,
do_fetch) failed with exit code '1'

...

Note from the above that qtbase has built ok without modifications to
meta-qt5

To double check the qtbase and also to get qtwebkit building I

bitbake -f -c cleansstate qtbase
bitbake qtbase

This builds OK

...

Then

bitbake -k core-image-minimal

Gives

ERROR: Task 843
(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/qtwebkit-examples_5.3.2.bb,
do_compile) failed with exit code '1'
WARNING: Failed to fetch URL
git://qt.gitorious.org/qt/qtsystems.git;branch=5.3, attempting MIRRORS
if available
ERROR: Fetcher failure: Unable to find revision
aa651c73bf7bc57c1b6b1bfcfa9afe901884a102 in branch 5.3 even from upstream
ERROR: Function failed: Fetcher failure for URL:
'git://qt.gitorious.org/qt/qtsystems.git;branch=5.3'. Unable to fetch
URL from any source.
ERROR: Logfile of failure stored in:
/data_drive/imx6/rootfs_builder/qemux86.dizzy/tmp/work/i586-poky-linux/qtsystems/5.3.99+5.4.0-beta1+gitAUTOINC+aa651c73bf-r0/temp/log.do_fetch.21451
ERROR: Task 756
(/data_drive/imx6/rootfs_builder/sources/meta-qt5.dizzy/recipes-qt/qt5/qtsystems_git.bb,
do_fetch) failed with exit code '1'

...

Changing the branch in qtsystems_git gets qtsystems building

#QT_MODULE_BRANCH = "5.3"
QT_MODULE_BRANCH = "dev"

...

I then removed the qtwebkit examples from local.conf as there's some
strange linker problem there

#    qtwebkit-examples-examples \

I then had to remove the qt examples packages as for some reason they
aren't getting built at all

# qtbase-examples \

...

That gets me to the point I get a dizzy root filesystem built. Next I
need to understand why I am not getting the examples packages built.

Hope that helps somewhat.

Cheers,

Alex


