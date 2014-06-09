Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02A8EE00B71; Mon,  9 Jun 2014 09:47:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 331 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Jun 2014 09:47:34 PDT
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42AFEE00B0B
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 09:47:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 6A354398995E
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 12:42:02 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 9WzjP2SioRlN for <yocto@yoctoproject.org>;
	Mon,  9 Jun 2014 12:41:58 -0400 (EDT)
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 0840B3989951
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 12:41:57 -0400 (EDT)
Received: by mail-ve0-f169.google.com with SMTP id pa12so439961veb.14
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 09:41:57 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.52.249.76 with SMTP id ys12mr2287382vdc.63.1402332117385;
	Mon, 09 Jun 2014 09:41:57 -0700 (PDT)
Received: by 10.58.46.129 with HTTP; Mon, 9 Jun 2014 09:41:57 -0700 (PDT)
Date: Mon, 9 Jun 2014 12:41:57 -0400
Message-ID: <CACgAsMc0XGYRvr8+Y-3DFdTOhonvACuV3K60MkqD59vRp+EWkA@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to add the same recipe twice?
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
X-List-Received-Date: Mon, 09 Jun 2014 16:47:38 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Here what I want to do:
- Have 2 different psplash in my image.

Here what I have done:
- Copy and rename the psplash recipe to psplash-desktop and modify
couple of things.


Here the warning I'm having:
WARNING: The recipe psplash-desktop is trying to install files into a
shared area when those files already exist. Those files and their
manifest location are:
   /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/sysroots/overo/pkgdata/runtime/psplash-default
   Matched in manifest-overo-psplash.packagedata
manifest-overo-psplash-second.packagedata
   /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/sysroots/overo/pkgdata/runtime/psplash-default.packaged
   Matched in manifest-overo-psplash.packagedata
   /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/sysroots/overo/pkgdata/runtime-reverse/psplash-default
   Matched in manifest-overo-psplash.packagedata
manifest-overo-psplash-second.packagedata
Please verify which package should provide the above files.
WARNING: The recipe psplash-desktop is trying to install files into a
shared area when those files already exist. Those files and their
manifest location are:
   /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/deploy/rpm/armv7a_vfp_neon/psplash-default-0.1+git0+afd4e228c6-r15.armv7a_vfp_neon.rpm
   Matched in manifest-armv7a-vfp-neon-psplash.package_write_rpm
Please verify which package should provide the above files.

Here the error:
http://pastebin.com/t2gYs3WT

Here the diff of my psplash recipe compare to psplash original:
http://pastebin.com/8TrQRFkQ

In the chat sgw_ recommended my to use:...
sgw_> kapare, now that I better understand, you want to mv your binary
in the do_install_append(), and keep the update-alternative code and
FILES_${PN} bin, but use the renamed binary in the
ALTERNATIVE_LINK_NAME, but you also need ALTNATIVE_TARGET[psplash] =
${bindir}/psplash-default

There is something that I'm missing...

Any idea what?

BR,

-KA

