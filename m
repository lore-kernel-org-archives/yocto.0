Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7F9AE015A4
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 23:16:55 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so5137565pdj.17
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 23:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=RC0mrKnIkIwUBmE4K3U8ztxo3GrQJF4/6641pdtngc8=;
	b=YpdkQGqh0KVfY+Zh1uMmUtNEskYROzttrVQkQE8/AUgI9mfa6sWjgKfm52wQfyFlYs
	WJ2yO8MGUbKXbB2JUNIh65E0ZLB9km5P1stjHLhjxXvuWV0GMAY4Ul0KyH+IuS3zfTMt
	5JRpVAalSpbWsrkpkk2C2nHpIKqcAnWLJ2a7J8UpBuMMnxYmDMtLN377TS0QJshPOnHe
	jS8YodbBp5lHVA2zwbufs5fzEj19LSYvkaSSf0viGAewchKnBZRhWn0IHdy69ZRJibS+
	6SSuIkStcmKlwMMq6fyTcWGjthuyp47dQjAgO1xT2Pdvbzz87yaI8l9I9XNVePFTsAkR
	lZdw==
X-Received: by 10.68.197.73 with SMTP id is9mr32786819pbc.75.1379398615148;
	Mon, 16 Sep 2013 23:16:55 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	xv2sm29731310pbb.39.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 16 Sep 2013 23:16:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <17797116383D4341B029FDF34C22BF6A5D7F898A52@GUREXMB01.ASIAN.AD.ARICENT.COM>
Date: Mon, 16 Sep 2013 23:16:51 -0700
Message-Id: <1E7EC87B-ADCA-44D9-805E-7CA4ADA3EA6A@gmail.com>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A5D7F5F6077@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<CAP71WjxsyY39wb3tnBUMV=AuURNi1DrpRBB-aG0qPOA220Fw_g@mail.gmail.com>
	<17797116383D4341B029FDF34C22BF6A5D7F5F632C@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<CAP71WjyQa-Ozds+fQT=93+kTTdh33F4yW2NvZo8K1=hC=f2Uxw@mail.gmail.com>
	<17797116383D4341B029FDF34C22BF6A5D7F898A52@GUREXMB01.ASIAN.AD.ARICENT.COM>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
X-Mailer: Apple Mail (2.1510)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Tue, 17 Sep 2013 06:16:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Sep 16, 2013, at 10:54 PM, Rohit2 Jindal <rohit2.jindal@aricent.com> =
wrote:

> Hi,
> =20
> Please suggest me the way to git clone from two repos parallel in the =
same recipe Is possible in yocto .If yes how to do that.
> Eg
> SRC_URI =3D =
"git://ep-code.xyz.com/sysconfig.git;branch=3Dxxx-ep-20130823-3.0-alpha;pr=
otocol=3Dssh
> SRC_URI =3D =
"git://ep-code.xyz.com/xload.git;branch=3Dxxx-ep-20130823-3.0-alpha;protoc=
ol=3Dssh
> When I tries to do this it unpacks the source downloaded to =
WORKDIR/git so overwrites the first unpack with the other. So please =
suggest me the
> way that two download two repos in same recipes with their detstined =
cloned folder changed to folder with my required naming convention
> instead of generic git name folder in workdir.

you could try using 'subpath' param to git fetcher.

try something like

SRC_URI =3D =
"git://ep-code.xyz.com/sysconfig.git;branch=3Dxxx-ep-20130823-3.0-alpha;pr=
otocol=3Dssh;subpath=3Dgit1"
SRC_URI =3D =
"git://ep-code.xyz.com/xload.git;branch=3Dxxx-ep-20130823-3.0-alpha;protoc=
ol=3Dssh;subpath=3Dgit2"

and see if that helps


