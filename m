Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35ADBE00D0E; Wed,  2 Sep 2015 11:31:31 -0700 (PDT)
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
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6C61E00A7B
	for <yocto@yoctoproject.org>; Wed,  2 Sep 2015 11:31:27 -0700 (PDT)
Received: by igbut12 with SMTP id ut12so21141966igb.1
	for <yocto@yoctoproject.org>; Wed, 02 Sep 2015 11:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=aLZpDLjMecMcx7TX5J723J1tUDzhLgO3sH3xMsHrppg=;
	b=RFZBNnCKSOx3d2vCKaySobmAX1mDeWjpDHmSWHXhF+wI09RUjosj0fK4lcjWAAJ9/3
	+1YgmGFgjjp0CZlwB9FApTluGl3+4VfbUov71wgJ8LJqusQGYI+LWAAW1qox7ksWClhp
	Q4QdUTAXGpT8dR+tYfkJJvwx1itAz1DezPA1TA2XLPkYCoy3SC1YHHo388oDslq8uG7d
	QQWL0SgTi8Cke5gzPU3pN57Q18G3CNeq2OeVapMzJ82fkVinpB3HySe94OI8c6824v1Q
	Lx3gJnGHBl+4VYUr2SMGActlJA1MAk43Fbj+nRAue0851O8Ntm3VAai+v45v4vE+z0xr
	0OAA==
X-Received: by 10.50.55.73 with SMTP id q9mr5538554igp.11.1441218686417; Wed,
	02 Sep 2015 11:31:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.202 with HTTP; Wed, 2 Sep 2015 11:30:57 -0700 (PDT)
In-Reply-To: <167A17EDB344B047B2D335D8E4C5A2FA8DDA7A69@EX2010-CO-02.AERO.BALL.com>
References: <167A17EDB344B047B2D335D8E4C5A2FA8DDA7A69@EX2010-CO-02.AERO.BALL.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Sep 2015 11:30:57 -0700
Message-ID: <CAMKF1sojKoVwJOCfqTYNEJYOAAb2K9vPADOhXmjWFkUgeb3B-g@mail.gmail.com>
To: "Smith, Daniel W" <dwsmith@ball.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ADA Support?
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
X-List-Received-Date: Wed, 02 Sep 2015 18:31:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 2, 2015 at 8:38 AM, Smith, Daniel W <dwsmith@ball.com> wrote:
> Hello,
>
>
>
> I=E2=80=99m trying to figure out what is the best an easiest way to add A=
DA/GNAT
> support for PPC.  I=E2=80=99m currently running poky-fido-13.0.0.  I=E2=
=80=99m new to Yocto.
>
>
>
> Does anyone have any experience with this or suggestions?  Ideally I=E2=
=80=99d be
> able to cross compile using devtool and bitbake recipes or ADT, but I wou=
ld
> be even be satisfied with just compiling the ADA source natively on the
> target.
>

it will be bit involved effort. you have to look into

meta/recipes-devtools/gcc/gcc-configure-common.inc
LANGUAGES ?=3D "c,c++${FORTRAN}${JAVA}"

so you need to add it there and then also package and build the
resulting ada runtime
that should get you going. There will be few other notches needed but minor=
.


>
>
> From what I can tell support for ADA hasn=E2=80=99t been added in any of =
these
> fashions yet.
>
>
>
> Thanks for any help you can provide.
>
> -Daniel Smith
>
>
>
>
>
>
>
>
>
>
>
> This message and any enclosures are intended only for the addressee. Plea=
se
> notify the sender by email if you are not the intended recipient. If you =
are
> not the intended recipient, you may not use, copy, disclose, or distribut=
e
> this
> message or its contents or enclosures to any other person and any such
> actions
> may be unlawful. Ball reserves the right to monitor and review all messag=
es
> and enclosures sent to or from this email address.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

