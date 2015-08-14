Return-Path: <gerard.b@tekmagic.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6EF5E00A70; Fri, 14 Aug 2015 12:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97925E00A49
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 12:18:50 -0700 (PDT)
Received: by qgeg42 with SMTP id g42so58387061qge.1
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 12:18:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:reply-to:from:to:subject:date:organization
	:message-id:mime-version:content-type:content-transfer-encoding
	:thread-index:content-language;
	bh=EO0dvvzcxOr/s50+VMQVXy3Mqmsb/KxgwrMLin1wfcI=;
	b=K+iT21kynFPHnqnBRdaz8lW9yTqgim1sNVBwgQAS3lWwP7IVS7NQAdrnOLdkYIPu4Z
	Ip7tVSESU+vV019S+hrPIxWYQt/NAQyOCvTghaX2N3nL2qTJRU0VXN3UsigGzUYdfKK4
	heCjwXRYSVm3QikzfxPLKaVytSP+Gh7QvKbZV1XpNN7zurNwS2fIxXrIjUX3hCOUgFsy
	0Qm4Vw32BgoxaTQ/kkiOZXVBhyCrY1jL4bteFqUgR/UDwjh8wxkLaH3lG9ariFPHuRQf
	MjN6FlsB7+iMAPujDBDsOtbwD+s0Dbr3XNgh3ZFOzbzULwywd1HNIz458gZDsXzWDA68
	DUrg==
X-Gm-Message-State: ALoCoQlb2/ItvUji/slFKFpZAjRbdRBkMvWIEL2GggqSn0oaQlohgMbEAvI99GNz3bxErboCWqzD
X-Received: by 10.140.130.196 with SMTP id 187mr12073446qhc.58.1439579930312; 
	Fri, 14 Aug 2015 12:18:50 -0700 (PDT)
Received: from Win8onMBA (pool-108-36-234-126.phlapa.fios.verizon.net.
	[108.36.234.126])
	by smtp.gmail.com with ESMTPSA id 67sm3535618qhs.8.2015.08.14.12.18.48
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 14 Aug 2015 12:18:49 -0700 (PDT)
From: "Gerard Bucas" <gerard.b@tekmagic.net>
To: <yocto@yoctoproject.org>
Date: Fri, 14 Aug 2015 15:19:20 -0400
Organization: TekMagic
Message-ID: <032b01d0d6c6$1fbf16f0$5f3d44d0$@tekmagic.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdDWxhUnUEqEQnabSGK+5V6p7GUwIQ==
X-Mailman-Approved-At: Wed, 19 Aug 2015 02:49:29 -0700
Subject: Re: Adding Python to an Image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gerard.b@tekmagic.net
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Aug 2015 19:18:57 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us

Hi Ross (or anyone else!)

How do YOU know this & how could ANYONE find out about the names of ALL =
the
modules available for adding in yocto?

In other words is there a searchable list somewhere of ALL "things" that =
can
be added to a yocto build?

I (& others!) would love to better understand how we can "learn" to find =
the
names of all the modules that can easily be added to yocto!?

THANKS!

Gerard


[yocto] Adding Python to an Image
Jeremy Moles=A0cubicool at gmail.com=A0
Thu Sep 25 14:35:54 PDT 2014
=95 Previous message:=A0[yocto] Adding Python to an Image
=95 Next message:=A0[yocto] Wildcard in RDEPENDS when exporting perl =
modules to
SDK
=95 Messages sorted by:=A0[ date ]=A0[ thread ]=A0[ subject ]=A0[ author =
]
________________________________________
On 09/25/2014 05:26 PM, Burton, Ross wrote:
> On 25 September 2014 21:53, Jeremy Moles <cubicool at gmail.com> =
wrote:
>> Hello everyone! With today's git (56f6634) I can build python using
bitbake
>> without any issues. However, if I add it to an image I'm trying to
arranage
>> (in the form of adding it to IMAGE_INSTALL) it totally explodes. The
error
>> is massive, so I have attached it to this e-mail.
> The message says that it can't find a package called "python" (and
> then spams you with the complete list of packages it did find).
> There's a good reason for this: the python recipe doesn't actually
> produce a package called python.
>
> The binary and key libraries are in python-core, and the rest of the
> modules are split into separate packages.  If you want to install them
> all then install python-modules.
>
> Ross
>

Ah, thanks. In this case, python is the RECIPE, which can (and in this=20
case, does) produce man PACKAGES.

Thanks for the reminder! Chugging right along!



