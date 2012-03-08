Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DF62E0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 08:57:27 -0800 (PST)
Received: by pbbjt11 with SMTP id jt11so2035204pbb.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 08:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HkncKxwJ1u9LUGJj2Qktw1eESlDEyEkcCOMmXMCiR6Q=;
	b=efCCV4SWXrs64esgaYRzEhEDzpygX6/yw8YuYA/OGr3muF22yLrDie/GnTh5v2eWHw
	RuDiFuevHwe20a7XA/pj54zI+nyENX6xzo68x8B4HxbOdSDUJjuZ8rJdPHqz0tBVr9Zc
	V56khkzp83t6eNfwN1julZzdlueOn667S+GvlRm10ylRdInHIT00XmWLSkB0sHStI/mg
	Id0aX71eEAxzzwSXqoIK/a6bT8318Fy+6HB37xk3M3t+TOFmmqtjyUOdBOpVynRwwSKk
	bnBbXtCUZ8ecR9I6+n7tMv5cQLaxyXYhtFK6jqy8teFNQYQigSoQypqyMJND8XtgDuwm
	wHcQ==
MIME-Version: 1.0
Received: by 10.68.130.233 with SMTP id oh9mr10796265pbb.92.1331225846978;
	Thu, 08 Mar 2012 08:57:26 -0800 (PST)
Received: by 10.68.20.134 with HTTP; Thu, 8 Mar 2012 08:57:26 -0800 (PST)
In-Reply-To: <4F58D16C.8030309@gmail.com>
References: <4F58D16C.8030309@gmail.com>
Date: Thu, 8 Mar 2012 11:57:26 -0500
Message-ID: <CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Thu, 08 Mar 2012 16:57:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Suppose I want to build the meta-intel/meta-sugarbay image and also include
> some video and audio files into the /home/root directory to facilitate
> testing of the video and audio players.
>
> Can I include these files in a recipe somewhere?

I use the recipe at the end of this message to include whatever I
want. This recipe has to be added to the image - I have a custom
image, so it goes in there. I am sure a recipe can be added to
something in local.conf - I just do not know that variable. My guess
it is IMAGE_IMSTALL += "mypics".

Regardless ...

mypics-1.0.tar.gz contains a file called COPYING and its mds5um on the
2nd line. It can be replaced with a license from common licenses
directory - but at the time when I wrote this recipe, I did not know
how to do that. Anything that goes in there ends up in
/home/root/mypics.

It can probably be tweaked to look better - I am sure SRC_URI line is
not perfect. But it seems to work between Edison to master

For larger files - like video worth 200MB or so, I just store them on
a hard disk and mount manually on /media/hdd or where-ever. Not that
it wont work in this recipe, just that it would take longer to build
the image etc.

All the best. Hopefully, this will get you started in the right direction.

LICENSE = "MyLic"
LIC_FILES_CHKSUM = "file://COPYING;md5=697172b05e4bff0a2421579697ba5653"

MY_DESTINATION = "/home/root/mypics"

SRC_URI = "file://mypics-1.0/mypics-1.0.tar.gz"

do_install_append() {
        install -d ${D}${MY_DESTINATION}
        install -m 0644  ${S}/* ${D}${MY_DESTINATION}
}

PR = "r0"

FILES_${PN} += "${MY_DESTINATION}/*"

