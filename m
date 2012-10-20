Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 910D8E00527
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2012 11:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=rvc5IyBMXenIGKwHw7BX42mvHUKBaPcJP/kNPuOq87s=; 
	b=g0cAp+JelmG+8jz8K8Rx+e0zd9IB+Ttm8Q8TORRuFtRHt5CnL3FBFv6c1FOTKhXM5YKRM5/VTnOSU01SGNmQuEY7/2cZiCaVs98Vh21OACxZN1HR9daGM1LL1vX4IjTt;
Received: from [109.224.129.17] (port=43376
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1TPdpt-0007Ec-TZ
	for yocto@yoctoproject.org; Sat, 20 Oct 2012 19:31:50 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Sat, 20 Oct 2012 19:31:49 +0100
Message-Id: <4C2DC877-D240-4C4A-939A-A2502343BEF2@keylevel.com>
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Cedartrail / GLES / Framebuffer
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
X-List-Received-Date: Sat, 20 Oct 2012 18:31:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm still trying to get my 'perfect' platform configuration for a =
project.

1) I need to use the 'nopvr' machine as I need unionfs. This means I =
need the kernel 3.2, which doesn't currently support pvr;
2) I'm running using the framebuffer and would rather not have to =
include libx11;
3) I was using SDL, but I now need to support GLESv2 / EGL as well.

Is it possible to build a system that runs like this? i.e. GLES on the =
framerbuffer without X11.

I think the only issue is getting a build of MESA that runs without x11, =
but is there anything else, or another way?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




