Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB046E00BE2; Fri, 16 Oct 2015 08:14:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C592E00BEC
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 08:14:20 -0700 (PDT)
Received: by wijp11 with SMTP id p11so15291296wij.0
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 08:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=oUNC+vH8jMlQmG9liWo+oVCiYgd13wiWg9Aj3cI7Dy4=;
	b=BhwuObJY2qAeMjSONjGLdz9Yw7fbZs5YcN745BsjQgXGh+ZxUUmPc3UEVDYP1C0w4n
	z0NA01pqUmZw45KYJ5G6P8ShxOKi+ehSNea/gDh4DpN8FXdVVmwIS/H/fFcVqtF0Gbtp
	sLDjUubTT8kI2hSKQaBJXqHjb39VK3bvFTPkzdMomuLIblyVKky1lC6bUG5z/GTcPC0t
	Eyiu4afVxNAf4Phe4DhXiKGoLoxtJMc39d4f1tP8CM6R3l8ZiFnr4aNig9p6UdMv02Bt
	dqjH/VjS6vROCmvUCP5s5eOh1YWl63MJCdm7xJz8F30QDcEOyCX/mzD35NNT/Qbh03pL
	lLeA==
X-Received: by 10.180.9.74 with SMTP id x10mr5352186wia.61.1445008459875;
	Fri, 16 Oct 2015 08:14:19 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by smtp.gmail.com with ESMTPSA id mu9sm3595298wib.6.2015.10.16.08.14.19
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 16 Oct 2015 08:14:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <CA+KKcbkVBYfsE7fuJ+g1nmS9TdhL2wheObcCgyuf-LCiC7SOew@mail.gmail.com>
Date: Fri, 16 Oct 2015 17:14:16 +0200
Message-Id: <28948725-D204-4011-89DF-BDAB9EB4FE12@gmail.com>
References: <CA+KKcbkVBYfsE7fuJ+g1nmS9TdhL2wheObcCgyuf-LCiC7SOew@mail.gmail.com>
To: Federico Pietro Briata <federicobriata@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java] can zero shark be enabled again?
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
X-List-Received-Date: Fri, 16 Oct 2015 15:14:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> Am 16.10.2015 um 16:26 schrieb Federico Pietro Briata =
<federicobriata@gmail.com>:
>=20
> Hi again,
>=20
> I saw that some JIT optimization for arm32 has been announcement in =
icedtea
>=20
> the announcement is available at =
http://mail.openjdk.java.net/pipermail/distro-pkg-dev/2015-January/030392.=
html
>=20
> So I'm just wondering if anyone know if shark can be enabled again =
also in yocto recipes and can suggest me some tip to use it.

I fear you mix between ARMJIT provided by IceadTea and ZeroShark =
provided by OpenJDK.

While IcedTea maintains the ARMJIT within hotspot ported from OpenJDK6, =
ZeroShark uses LLVM's JIT.

Since ARM support in LLVM's JIT was utterly broken, MCJIT support is =
required for ZeroShark.
I was working on that but my ARMv7 and my ARMv5 are still crashing - =
even when I can realize some progress (how quick does it crash ^^).

Dunno if - and if, when - I find some tuits to continue the crash =
detection and fixing...

Cheers
--=20
Jens Rehsack - rehsack@gmail.com


