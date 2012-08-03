Return-Path: <raj.khem@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1CAE0141D
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 03:19:26 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so732094ghb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 03:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=QGBcx2ABwannWowsZj9Aa+Kn+79ClF6qONRUldTrlvc=;
	b=c+F6UjhYLqTIkYGTR1Zo10xbCYhOOPSdPBTzJVvMXqdt1mRyYb5gh6w3c2yI3BmHrZ
	nnyXxMo5g/A/C182YoomIBRp+4PGLYa8UEUhqTIJncqT6bDqOrQR2IUPHSlePAauY89f
	M/lt7je8+a+QSlIqveow776XnTiSxqnP+B93rFhCnc0j8U4B6L1i5XXY8svwmocCrgLs
	GvEYbqA1IW6z7OrjuGHtDReuj6OQp+2gmF4rF9nkr7WJ69J1McdwHcs5Jrvs6OMIcsKP
	8cx1GZNqQ9FZdIwDS5+pwcEwH4KhKBt+eDCVF2hiF4XZhvcjyg8TJnms5mL9IBxJXj73
	bzZw==
Received: by 10.50.168.7 with SMTP id zs7mr9608294igb.65.1343989165179;
	Fri, 03 Aug 2012 03:19:25 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id
	yh10sm2926240igb.0.2012.08.03.03.19.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 03:19:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <6F91EA1C-23C7-4706-978F-C08C8CAEA0FA@gmail.com>
Date: Fri, 3 Aug 2012 03:19:21 -0700
Message-Id: <9B26BBE3-825F-4B27-AD6C-B7C6330218E8@gmail.com>
References: <6F91EA1C-23C7-4706-978F-C08C8CAEA0FA@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1485)
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
X-List-Received-Date: Fri, 03 Aug 2012 10:19:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 2, 2012, at 11:37 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:

> Hi,
>      In poky master, the current version of gcc is 4.7.2. If I have a =
situation, where I need to revert back to using gcc-4.5.1, how can I do =
this cleanly?=20
>=20
> Perhaps some of the issues that I'm facing with getting my root =
filesystem image booting on my Xilinx ML507 development board (Virtex 5 =
PowerPC 440 processor) might be related the new gcc-4.7.2 release.


I think you should really debug it. such statements are very coarse =
grained.
you have to add debug messages to various stages and see where is it =
hanging.
may be build a static bash and use that as init and debug the init =
sequence from there.
>=20
> At the moment, I've had to delete my entire build, switch to the =
bernard-5.0.2 tag, and then attempt to try and build a new =
rootfilesystem. Others have successfully built and got linux running on =
my target board, with bernard-5.0, about a year ago.
>=20


> So, if it does indeed turn out that I need to use an older version of =
gcc, for my target, what should I do, to continue working with the poky =
master repo, but only use the older gcc-4.5.1 release?


If you are willing to support 4.5.1 in your layer that will work for =
you. e.g. toolchain-layer has  4.6 retired into it. So try that one too.

>=20
> Some options that I can think of are:
>=20
> a. Reintroduce the older gcc-4.5.1 recipes in a local branch, but that =
would mean others would not be able to reproduce my work on their =
machines.
>=20

a lot has changed in toolchain are so keep that in mind. You can start =
with original recipes in bernhard and back port bits from master.


> b. Use bernard-5.0.2 to build the toolchain, and set things up so that =
it uses that as an external toolchain.


this might work well.

>=20
> I don't think both the options are elegant, so if someone could offer =
any suggestions it would be great.=20
>=20
> Best regards,
>=20
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


