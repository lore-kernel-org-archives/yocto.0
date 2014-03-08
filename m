Return-Path: <sheerapthinath@gmail.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5FFBE00939
	for <yocto@yoctoproject.org>; Sat,  8 Mar 2014 05:56:55 -0800 (PST)
Received: by mail-ve0-f171.google.com with SMTP id cz12so5314173veb.2
	for <yocto@yoctoproject.org>; Sat, 08 Mar 2014 05:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=kq0lb7NrRHgFud0Ks/zfiH8dzL6YM+dVGvgl0cb0Qcs=;
	b=lkeasIVYtKUqiS3JK9RfdnmPAU7clgDZybfIsKOttDg6FmKEOyMpRsZJTlLxP4M85f
	JRVWtLsMRblkdiavWZaACJBPiyFGxPeevOvbiZuEXPL53plJuOv8kbTdhW21hisOQO8f
	4F7D9qyTIgUs/HXvPpfaVgeebWjeSzyKM8LCxMbTTdtiMdaNlHupXrZBEE1/Mr+gGcLT
	X1rOawz13u4bE5sz07aK9Kvlg6OMOr6YiW5jrHGkl0zheJxmXoL4UmTCIex5lcHRB96O
	n6UefDXMevDbB4JobBKwY8t4q5P498TUTohDa+9vBpdnZuvnPr8HTGYIVsXWNnsvNvVW
	lwjg==
MIME-Version: 1.0
X-Received: by 10.52.110.196 with SMTP id ic4mr310178vdb.27.1394287014171;
	Sat, 08 Mar 2014 05:56:54 -0800 (PST)
Received: by 10.58.29.169 with HTTP; Sat, 8 Mar 2014 05:56:54 -0800 (PST)
Date: Sat, 8 Mar 2014 19:26:54 +0530
Message-ID: <CAJuQfSgvi8bDwg3kbUa7UyP3=dPiT-YYcjFZGDVCer+NiURGCg@mail.gmail.com>
From: sheerapthinath <sheerapthinath@gmail.com>
To: yocto@yoctoproject.org
Subject: Autotools not configuring
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
X-List-Received-Date: Sat, 08 Mar 2014 13:56:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am new to yocto and trying to build a package for raspberry pi.
I am using the BSP layer from https://github.com/djwillis/meta-raspberrypi.

Am able to build the image using BSP without any problem. But when I
added a new layer to add packages, am getting error.

I tried testing with the hello world auto tooled package. When trying
to execute that bb, am getting the error as follows,

make: *** No rule to make target `install'.  Stop.
| ERROR: oe_runmake failed



-- 
Regards,
Sheerapthinath OS

