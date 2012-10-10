Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD8FFE0027E
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 09:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=NjOadCVMs1u8VTNogHOcWeD/Y7NXtXJjVK89tBENaRE=; 
	b=nLcxDMNaWOcW7OqqMr45XV4RJxZZMPIMvdZ8sjyz32Xrcoirup2Pki9U0St0gcITlCkct2JwNtLUPX5Lpt6VvAq5szwseLuqwOYwskIWNbQzg5OnoWzonLf39md1w0wz;
Received: from [109.224.129.17] (port=20203
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.77)
	(envelope-from <opensource@keylevel.com>) id 1TLzTX-0004se-2y
	for yocto@yoctoproject.org; Wed, 10 Oct 2012 17:49:39 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Wed, 10 Oct 2012 17:49:38 +0100
Message-Id: <7EB7A8EA-43A7-45A9-8769-8E35AC63DC45@keylevel.com>
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Finding root cause of "host include and/or library paths were used"
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
X-List-Received-Date: Wed, 10 Oct 2012 16:49:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to get libsdl_gfx to build. I've created a .bb file which =
runs and installs the relevant headers and libs in tmp/sysroots.

However, I'm getting a QA failure:

NOTE: package libsdl-gfx-2.0.24-r1: task do_populate_sysroot: Succeeded
WARNING: libsdl-gfx: The compile log indicates that host include and/or =
library paths were used.
         Please check the log =
'/media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/work/core2-sjs-linux/=
libsdl-gfx-2.0.24-r1/temp/log.do_compile' for more information.

The compile log has instances of:

cc1: warning: include location "/usr/include/SDL" is unsafe for =
cross-compilation [-Wpoison-system-directories]

The source uses autotools. I've had a look round the files, but it's not =
obvious to me where the above path is set (I'm definitely not an =
autotools expert). Can anyone give me an idea what I should be looking =
for? I suspect it may have something to do with a line from Makefile.am:

libSDL_gfxincludedir =3D $(includedir)/SDL

Chris Tapp

opensource@keylevel.com
www.keylevel.com




