Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC773E0141D
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 03:25:48 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so742431ggc.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 03:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=H6F+iz7/ACYb0Zt6Cr5gQxEgmQvOUkc2lIjOSVv2xJY=;
	b=MWNOWr1KDlTlM3clEcl7pxJJdJwhqaGwNffnC/c3fZCIiUD3+tMgTMqZwFN1yiq3VY
	aiWpK095ZGOJtRo4gNAlSZZv7lsd0KyFQZ0Y2HhwwAuBsBzzinb2CwspwxT3SRC1nFl/
	g4Ev9Y3SaErmlR4CIrnWjOo2nAZn/jDJQzdwGzjvv8LHxudKPU4YDfP46QRmEwp4vewR
	VZThBvWuFBnvgaTl240E/3LlXA8QhVZojOxQ99ixGIY8IzDmo9+mTrJTBkkTek3oNPKj
	y7nrlgAVvsGz6c4d62p7tcPg1Z9E+Z9fCXUg5Ql+hXPjMP9OjOqPglUUAwkDtC57Gezw
	beNw==
Received: by 10.42.61.16 with SMTP id s16mr2076969ich.7.1343989547658;
	Fri, 03 Aug 2012 03:25:47 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rd8sm20525554igb.3.2012.08.03.03.25.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 03:25:47 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <9B26BBE3-825F-4B27-AD6C-B7C6330218E8@gmail.com>
Date: Fri, 3 Aug 2012 14:25:41 +0400
Message-Id: <5EAD2C42-085D-4A86-AB2C-AD40A6FFE0EC@gmail.com>
References: <6F91EA1C-23C7-4706-978F-C08C8CAEA0FA@gmail.com>
	<9B26BBE3-825F-4B27-AD6C-B7C6330218E8@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Switching between stable gcc versions
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
X-List-Received-Date: Fri, 03 Aug 2012 10:25:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Aug 3, 2012, at 2:19 PM, Khem Raj wrote:

>=20
> On Aug 2, 2012, at 11:37 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>=20
>> Hi,
>>     In poky master, the current version of gcc is 4.7.2. If I have a =
situation, where I need to revert back to using gcc-4.5.1, how can I do =
this cleanly?=20
>>=20
>> Perhaps some of the issues that I'm facing with getting my root =
filesystem image booting on my Xilinx ML507 development board (Virtex 5 =
PowerPC 440 processor) might be related the new gcc-4.7.2 release.
>=20
>=20
> I think you should really debug it. such statements are very coarse =
grained.
> you have to add debug messages to various stages and see where is it =
hanging.
> may be build a static bash and use that as init and debug the init =
sequence from there.

I think this might be the best course of action. Perhaps first start =
with a simple helloworld program, as an kernel boot argument for =
init=3D/hello, just to make sure it gets running, and then put =
init=3D/bin/sh, and then add some printk statements to see where it is =
progressing. Or add kgdb support into the kernel and try the eclipse ADT =
plugin and continue from there.=20

I guess that might be the best way forward for the long term. Ok, will =
give that a shot.

Best regards,

Elvis Dowson


