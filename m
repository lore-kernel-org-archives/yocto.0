Return-Path: <joao.jfgoncalves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA0FCE00718; Tue, 30 Oct 2018 18:05:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (joao.jfgoncalves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF21E00718
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 18:05:04 -0700 (PDT)
Received: by mail-it1-f177.google.com with SMTP id h13so3221855itl.1
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 18:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=VR5nvDmp2ft9oX0idwueyxNxeUYCXPrCL3h4XhLWhb8=;
	b=Nj6YqJDxhTnLmF+SHDtboyFrjEJ1uE6wgq4OuBvCJPrTy6KflvWRKVAdXRvkmuse3M
	x9iqGmuqkljTQLa8gIgvzeerjM6q6TKjbAjY3EygMxXFBzE2vJY9zaMYqY/CseFPQx5O
	P+lRVMH8GxooWxtjWDbAnkhtVINkWfgN2JnnsdWJCbOG4gCAvALRWGAUMwSw3hAiX8AF
	P4KPuaaUo14Gf6WVxKv447nBixnaH3avGixR7Tpv/Ubb1M7d9jMVrA9QSDq08A1Tw6mN
	kHqIOYLbm2HEv90WUPecbDvbddKxq52bdN/AzBcyItxC5wRqg6X40GoQtbuwZwct2cZm
	8XVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VR5nvDmp2ft9oX0idwueyxNxeUYCXPrCL3h4XhLWhb8=;
	b=Fucc2QIoNBaINprUn/Akv4KdtEe1D9rVoLNidnCxg9ssJ+C1S9KdDqEcw4YCdLoHm/
	YWp4S8r/UFRuQ5SJcSyHFtQrxr9X9U7yBDwk/oTy74yfTMwdJkBj72NdmGAjhVZzt+ld
	ASyBtfevLBh1Iqmm16E16F+ZqYkuMe1Dby1MxSp02Ns7aqmiQufz70fGIcCmZXk83C/P
	04aHmRSteibjI6eCbwdoDyw7g+5ln1RaLg3FQVMn7EDhGm8hWKkarCWsFlDvP5kwnixv
	RImnJbtfXURNFoFYIC1gJb+39XrTjkJk81o4OaMEzLXho+CcGMJeQ3sIHqy+LLxugKDC
	zxFQ==
X-Gm-Message-State: AGRZ1gIohybstAMffjogeKk8bM1g2MTx0AYz5kDrfK2e7NlUpBrSWDS5
	2Ky/CkHgw0rjYdwKWS0NDgEBjHfWrHQCznwuJpr2MLee
X-Google-Smtp-Source: AJdET5fOXyCihjK7dt+gCXOwiZFNNXoyYic+5TSnRwZPqf/W/HOWy7zmpQdJRHmMeF5q4uQuKID0iFTqmpc9agDCj2g=
X-Received: by 2002:a24:38b:: with SMTP id
	e133-v6mr778108ite.104.1540947903263; 
	Tue, 30 Oct 2018 18:05:03 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?Sm/Do28gR29uw6dhbHZlcw==?= <joao.jfgoncalves@gmail.com>
Date: Wed, 31 Oct 2018 01:04:51 +0000
Message-ID: <CAHXEV+nwa30psLMVwg-B+-KHouLG9LOEW_oYsaFhYjTWuBB+xw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 02 Nov 2018 08:46:10 -0700
Subject: Install a pre-build ipkg package at build time
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
X-List-Received-Date: Wed, 31 Oct 2018 01:05:04 -0000
Content-Type: multipart/alternative; boundary="000000000000643b7f05797be433"

--000000000000643b7f05797be433
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have some pre-build opkg packages and I need to install them on my target
image, is this possible?
I tried to use the bin_package class but I didn't found any example, I'm
also not sure if it can be used this way or just to install the data files
extracted from the ipkg file. Anyway I also tried to extract the binary
files form the package and use the bin_package class to install them, but
with no success.

Does anyone have any example of this?

Thanks,
Jo=C3=A3o Gon=C3=A7alves

--000000000000643b7f05797be433
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi all,<div><br></div><d=
iv>I have some pre-build opkg packages and I need to install them on my tar=
get image, is this possible?</div><div>I tried to use the=C2=A0bin_package =
class but I didn&#39;t found any example, I&#39;m also not sure if it can b=
e used this way or just to install the data files extracted from the ipkg f=
ile. Anyway I also tried to extract the binary files form the package and u=
se the bin_package class to install them, but with no success.</div><div><b=
r></div><div>Does anyone have any example of this?</div><div><br></div><div=
>Thanks,</div><div>Jo=C3=A3o Gon=C3=A7alves</div></div></div></div>

--000000000000643b7f05797be433--
