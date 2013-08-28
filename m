Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B1AEE0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 11:05:22 -0700 (PDT)
Received: by mail-pd0-f180.google.com with SMTP id y10so6611911pdj.11
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 11:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=u/LWs74dRkpL3QDnD3HlVFj2g/UvDqMAo0l74o/gAsw=;
	b=cGkplPn+y3BZcRwBeyj+iEk4k6RBb+4H/fjmqCyZWRsSFm4X6qQahBlv5S7PheJRF/
	j5TMYlNyoEQDmGSdihOsjeEUazCrAQ2xJ7sBsW0aj/cC6aOVx/jCOTJ49VlYpoR4pMyY
	c93bHNw2Io+UIHdBvB9UIAijsHKZNLPLFa/YuaDtr8ue47cZo1H65786mYCn8AavpeI0
	xvUx0Z7ReBVRokeh1zhMnB2hX09e9v3a72jiWCPO/ZpAvIXme8arptaW94Vjpxo1cVID
	y9Q4CvYfJVFtpKWn1zyxLMMqVmYxg4TgVYPpme+z0xFAenB9d7vGL2IkunBv52KRO3p4
	9WPg==
X-Received: by 10.66.254.136 with SMTP id ai8mr28633540pad.86.1377713122384;
	Wed, 28 Aug 2013 11:05:22 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id
	pu5sm35291832pac.21.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 Aug 2013 11:05:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <521E38D9.8060102@windriver.com>
Date: Wed, 28 Aug 2013 22:05:15 +0400
Message-Id: <32CFCC88-EA28-4EFB-9F43-586780CAC54F@gmail.com>
References: <EE3AC7E0-3693-482F-94DB-278D1FD829D5@gmail.com>
	<521E38D9.8060102@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.1498)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to work with linux-yocto kernel
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
X-List-Received-Date: Wed, 28 Aug 2013 18:05:23 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

On Aug 28, 2013, at 9:52 PM, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:

> There were some old bugs which caused the wrong board description to
> be picked up, the seems similar.
>=20
> But without seeing your exact changes, as they sit in the tree, I
> can't be sure.
>=20
> Did you also update the meta and machine branch SRCREVs ?

No, I didn't.=20

I've just done this now. It's only after you mentioned it
that I noticed the SRCREV_meta variable in linux-yocto_3.8.bb

While obvious, once stated, it's better to explicitly document
this step in the kernel development guide, so that people remember to
do it:=20

http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html

BTW, in qemuarma9-standard.scc, for the branch, do I specify
standard/qemuarma9 or just qemuarma9 ?

Best regards,

Elvis Dowson=

