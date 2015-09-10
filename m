Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 433ECE00CB9; Thu, 10 Sep 2015 08:10:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D177CE00AE0
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 08:10:01 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so46478249pac.2
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 08:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=7gt5WBtIVc7HRpGuZDA593aJRx/ZBZQzSEdYBFvQ0tI=;
	b=BGxRP5XBLbcvrgyW0gdk+MFdIDNmftYtFiThZBdK2dEFUg2GVZiNl7Qsk+buHMgsCD
	Zy/YF1hGgwdGpFULKRqJvC+PkZmRn03jhvlg9+v07NXNzq4HRRABd792uFDODjMu9iBJ
	6+7694gDZCeRc9R/RjYlBYDdKPyNn1QRdEKc/1yzScUdVQ9WNY1PGKEhyq6f7IG8luSN
	MJ2ZOGz7/eV6ZuXD8yerUxRo2XgiasbPNapL9yrqfI1p5cW3G6IngzkYKQKrc45h9X23
	t4vUD8GMDPrG61hEXOOd1nqVQ/N9NcY/ILTRDIv0YjDAYD0GBEIwp0GGctTolWeiea1V
	IC1w==
X-Received: by 10.69.2.227 with SMTP id br3mr85302299pbd.9.1441897800267;
	Thu, 10 Sep 2015 08:10:00 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:2419:d270:de82:90db?
	([2601:646:8601:4580:2419:d270:de82:90db])
	by smtp.gmail.com with ESMTPSA id
	sl7sm12593005pbc.54.2015.09.10.08.09.58
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Sep 2015 08:09:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALLyC8Rw+cJk+cUBrVA+QttAPh+otCZQoQjhR1pSZ=EzzGGY_g@mail.gmail.com>
Date: Thu, 10 Sep 2015 08:09:58 -0700
Message-Id: <9B667E66-4B12-489F-B26F-5E283225E8C9@gmail.com>
References: <CALLyC8Rw+cJk+cUBrVA+QttAPh+otCZQoQjhR1pSZ=EzzGGY_g@mail.gmail.com>
To: Vivek Per <pervivek@gmail.com>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: dropbear is working after including in IMAGE_FEATURES
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
X-List-Received-Date: Thu, 10 Sep 2015 15:10:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Sep 10, 2015, at 7:09 AM, Vivek Per <pervivek@gmail.com> wrote:
>=20
> Hi,
>       I have included IMAGE_FEATURES +=3D "ssh-server-dropbear" in my =
recipe image. and created the image.
> But after flashing the image i was not able to connect to target from =
my host machine. but target to host is working fine. Can any one tell me =
why it is not working. Is there any package need to add?

Make sure=20
1. ssh-server-dropbear ends up in the IMAGE_FEATUTES for sure and is no =
overwritten elsewhere ( bitbake -e <your-imabe> | grep -e =E2=80=9C^ =
IMAGE_FEATUTES=E2=80=9D)

If above is fine then It seems like that the service did not start on =
target. you can start the service manually and see if that works.=20

-Khem=

