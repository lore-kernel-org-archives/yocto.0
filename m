Return-Path: <SRS0=jNvGWC=CM=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout09.eigbox.net (bosmailout09.eigbox.net [66.96.186.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55E75E0059A
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 07:58:49 -0700 (PDT)
Received: from bosmailscan05.eigbox.net ([10.20.15.5])
	by bosmailout09.eigbox.net with esmtp (Exim) id 1SGAci-0003Ul-8h
	for yocto@yoctoproject.org; Fri, 06 Apr 2012 10:58:48 -0400
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan05.eigbox.net with esmtp (Exim)
	id 1SGAch-0008FM-QO; Fri, 06 Apr 2012 10:58:47 -0400
Received: from bosauthsmtp15.eigbox.net ([10.20.18.15])
	by bosimpout02.eigbox.net with NO UCE
	id ueyn1i00B0KWaAJ01eyn61; Fri, 06 Apr 2012 10:58:47 -0400
X-Authority-Analysis: v=2.0 cv=BexvJMR2 c=1 sm=1
	a=mQ9TXjcnfsl5SiQzdG+CQg==:17 a=mn2ndCrYJZwA:10 a=5XsFQGJ3Uf0A:10
	a=QF0MZOn7CGcA:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=iGHA9ds3AAAA:8
	a=6CkJMNviT_ZelioNlg8A:9 a=7UwJfN_038t05fRsfDIA:7 a=wPNLvfGTeEIA:10
	a=6thTdk0GfRoQwv0zj4iWMg==:117
X-EN-OrigOutIP: 10.20.18.15
X-EN-IMPSID: ueyn1i00B0KWaAJ01eyn61
Received: from pool-108-11-46-102.atclnj.east.verizon.net ([108.11.46.102]
	helo=[192.168.1.3]) by bosauthsmtp15.eigbox.net with esmtpa (Exim)
	id 1SGAch-0006gm-Jp; Fri, 06 Apr 2012 10:58:47 -0400
Message-ID: <4F7F04A4.9080909@mindchasers.com>
Date: Fri, 06 Apr 2012 10:58:44 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>, 
	"Liu, Song" <song.liu@intel.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.11.46.102
X-EN-OrigHost: pool-108-11-46-102.atclnj.east.verizon.net
Subject: Belated experience survey of using Yocto 1.2
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
X-List-Received-Date: Fri, 06 Apr 2012 14:58:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Q: Which architecture did you choose to build?

A: Very basic tests with default qemux86 and more extensive tests with 
mpc8315e-rdb (I have that piece of hardware)

Q: How easily were you able to build an image and boot an image?

A: Qemu was very easy & nice.  For mpc8315, I created a u-boot image to 
boot my hardware.  This required some customization of my recipe, which 
should probably be included in the README.hardware (since u-boot ram 
image is so basic for embedded powerpc).  I added "ext2.gz.u-boot" to 
IMAGE_FSTYPES and inherited image_types_uboot.

Q: Is there any surprise to you in the process of doing this Beta 
testing? If so, would you please describe it and tell us how you 
expected it to work?

A: I was a little confused on why we were told to use the web 
documentation and not build & use the current documentation in the 
project tree.  I never had the chance to figure out whether & where they 
were out of synch, but I did run into a problem when installing ADT and 
trying to find the 
http://downloads.yoctoproject.org/releases/eclipse-plugin/1.1.1 link, 
which didn't exist.

Q: How do you like our HOB interface? Please provide us with your 
thoughts and suggestions on HOB interface and functionality.

A: I launched it but decided it wasn't for me.  I'm not a fan of 
multiple layers of abstraction.  I am curious as to whether hob includes 
graphical visibility tools for the project tree.  I'll revisit this 
again later.


Q: Was it easy to find the support you needed to build and boot an image?

A: I didn't have any problems, but I usually rely on searching the mail 
lists or the source code when I do have issues.  I did send out one 
question about MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS.  It seemed that the 
documentation didn't adequately specify when and when not this variable 
will cause an error in the build process.


Q: Which Bugzilla reports did you submit?

A: none, but I did submit a patch for README.hardware

Q: Did you try anything else with Yocto 1.2?

A: here's what I did with mpc83155:

1) created my own layer and custom image recipe, starting with 
core-image-minimal
2) added various packages like dropbear and disk tools
3) created a u-boot ramdisk and booted from it via tftp
4) created the (meta-ide) toolchain and did some basic tests
5) Tried to install the eclipse plugin but ran into problems with ADT 
build version too old.  From the mail lists, it looks like I have a 
mismatch with the environment variable since my plugin was downloaded 
from 1.1.   I decided to call it quits here since I need to clean up my 
eclipse plugins for other reasons.  I'm looking forward to using the 
Yocto Eclipse plugin in the future.


Q: What would you like to have in Yocto Project for future releases?

A: These may already exist (& I haven't used HOB), but I'm currently 
looking for:

1) How to step through python code in recipes (my current plan is to 
hack bitbake).
2) Cut down the number of variables that generate items like package 
sets, packages, and tasks.  It seems that there are too many variables 
and the nuances between them are too subtle.  Let users introduce these 
subtle variables for their own needs, but the project should only have 
as few as necessary.
3) tool to perform quick reverse searches on variables - where are my 
variables being first set and then overridden in the various conf files.
4) A visibility tool that helps me understand why each directory or file 
was built (e.g, part of toolchain, rootfs, particular package 
dependency, etc.) and whether this directory / file was ultimately 
required to generate the toolchain or rootfs.  I have a feeling that I 
have quite a bit of dead bits in my project tree, but I haven't had a 
chance to dig in yet.
5) Less emphasis on external documentation and more on commenting in 
code.  Make sure all comments make sense to the casual developer.
6) Catalog of user experience on stability & deployment issues with 
yocto & OE recipes.  Be able to rate and comment about each package 
(e.g., interface you see in the (app store / marketplace / ubuntu 
software center ).
7) A better statement on the relationship of OE and Yocto going forward. 
  Am I going to be able to seamlessly build all OE recipes at some point?
8) Better web interface into the mail archives & encourage users in the 
documentation to search mail archives before posting questions (mailing 
lists aren't mentioned in the current quick start).



