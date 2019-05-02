Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 089F6E00D0F; Wed,  1 May 2019 17:38:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1091E0053F
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 17:38:19 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id s3so521260itk.1
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 17:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=QRaXvRyKwWLcqH2Adv6tBzBQWKeukBfOaSOWG7s1j70=;
	b=paL03tx1olWEr2SsskJt1YLmgWAJyL0ZiBpMNIRSk5bmAw06DZ7N0Zysla+sG/WjK4
	mAxsFsctT9nLbmfCWHC618NqfMRPi9mtNcVDhXnpdN0M18CAGuAUJoCbaCAcJK22QTtv
	yB/6HSWE2H83Uxey5PwORI7LPO+78PUvGvvsPJ6qBaosNOTASF8l2b09k1MXpbtlVPDJ
	JVorakkMy9wtDpBdGHBRmuYrMrIxcfATaOjRDFuHya/mXjMcUGQC9dR6nenYMb6B4SL0
	pKSOCR9xXPvtNVQOLHEZ1ZjtiTyvN0SulB7sN/yi8ZvBHMUXAOBsh2+aUXpiWrXvb6bd
	e1KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=QRaXvRyKwWLcqH2Adv6tBzBQWKeukBfOaSOWG7s1j70=;
	b=fzjKt5o1/Sha6Juk3GF9y+ilI/DTzS7s3oD1/EyKTWOsskSOHhmOpRjRPUN7pNe/ky
	/czEXbPRMhedNrFhLpKUs2FuJnEIi9iBqg6AS31N/9IuXPFxOEfnwFLLZ0vNPGyXEJGK
	xh9+K/qu0J3c/XG6c0VrUIqxN9aXpeUEcIPcmRuVOp8AOEmRnv1quJaLqy1n+GZtz9jn
	GGZUjhnXG9kRKzw1R2JWZavX+dgyx3zeTFzbFkesV+66gV+iqGZ9h4IhExrZdoIM8u2X
	+qflyj+fjtWyMmE1Lnd5Oj74eJ2A+JFgUoeEnOSd2UQ467aJXQmVwNLL7npYBfS7Ih03
	llTQ==
X-Gm-Message-State: APjAAAXJAAN/gzGu4aYDC89ikefCb1L+J63LBkY6N9i07O5Oh3uAnwyG
	MVaQJ7fbahwoQvZG6oGxyZXWPYzScx3mAlK/1HU=
X-Google-Smtp-Source: APXvYqyUk31ZzYUfTNsx/pZP7VPFZQyrxwRjUAbJRlZSUxdfWkUOa6j+h1sm1NvdqVblL7An5OB/g3zuOEd0SzdkiE4=
X-Received: by 2002:a24:e517:: with SMTP id g23mr370564iti.113.1556757499430; 
	Wed, 01 May 2019 17:38:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Wed, 1 May 2019 17:38:19 -0700 (PDT)
In-Reply-To: <CALbNGRRs_nVeQ0X+crQnN=3cpp5hYQFxTqhnwYvfuUgphvRc3Q@mail.gmail.com>
References: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
	<3ca8cb2d31e9c295e6da1bfb161ce9ffbb0e0318.camel@linuxfoundation.org>
	<CAA=hcWSoyZnSMCud9ahg9ZqKi0Wcsy5Sc6GgG05AFHtEG8Wa4w@mail.gmail.com>
	<CALbNGRQ2aAazVL9bV6NqxE5pdUKMU4jUFGsDt_NvEx_qXPs1_g@mail.gmail.com>
	<CAA=hcWRc5aaXvUDZ+Fc9uB+gjFdpVPK-aP2Gd4wNmKj=r1Yuqw@mail.gmail.com>
	<CALbNGRRs_nVeQ0X+crQnN=3cpp5hYQFxTqhnwYvfuUgphvRc3Q@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 2 May 2019 10:38:19 +1000
Message-ID: <CAA=hcWS5sEbsjDmbBfzadsu_O=y-HLvKxmi=C3WFFsVeEJ_Wbg@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Could not find glib.h
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
X-List-Received-Date: Thu, 02 May 2019 00:38:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much Andreas, that fixed it, so much to learn :-).

Appreciate your helps.

- jupiter

On 5/2/19, Andreas M=C3=BCller <schnitzeltony@gmail.com> wrote:
> On Thu, May 2, 2019 at 12:32 AM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi Andreas,
>>
>> It was my program, it has been compiled for weeks without any issues
>> until I added an #include <glib.h>, despite the glib-2.0 was defined
>> in the recipe, the do_compile() stopped at following errors, I can see
>> glib-2.0 was built in build and image directory, I can see glib.h was
>> in build and image directory, is it a basic principle if a package
>> library was defined in DEPENDS, the bitback should automatically find
>> the header files and library links? Why it still complained no such
>> file?
>>
>> DEPENDS +=3D "glib-2.0"
>> RDEPENDS +=3D "glib-2.0"
> ^ In case your program links successfully this can go
>
> you could write
>
> do_compile() {
>     CFLAGS=3D"${CFLAGS} `pkg-config --cflags glib-2.0`"
>     LDFLAGS=3D"${LDFLAGS} `pkg-config --libs glib-2.0`"
>     oe_runmake -e
> }
>
> Or similar in your Makefile
>
> And and don't forget
>
> inherit pkgconfig
>
> in your recipe
>
> Andreas
>
>
>>
>> do_compile() {
>>     oe_runmake -e
>> }
>>
>>
>> fatal error: glib.h: No such file or directory #include <glib.h>
>>
>>    ^~~~~~~~
>> compilation terminated.
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jupiter
>>
>>
>>
>>
>> On 5/1/19, Andreas M=C3=BCller <schnitzeltony@gmail.com> wrote:
>> > On Wed, May 1, 2019 at 12:35 PM JH <jupiter.hce@gmail.com> wrote:
>> >>
>> >> Thanks Richard, where to run pkg-config? If I run pkg-config in the
>> >> host, it pointed to host Ubuntu package which is different to the
>> >> cross compiler.
>> >>
>> >> On 5/1/19, Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
>> >> > On Wed, 2019-05-01 at 10:43 +1000, JH wrote:
>> >> >> Hi,
>> >> >>
>> >> >> I added glib-2.0 to DEPENDS but it still could find the glib.h,
>> >> >> what
>> >> >> I
>> >> >> could be missing here?
>> >> >>
>> >> >> fatal error: glib.h: No such file or directory
>> >> >> >  #include <glib.h>
>> >> >> >           ^~~~~~~~
>> >> >> > compilation terminated.
>> >> >
>> >> > You probably need to use pkg-config to find out which CFLAGS to use
>> >> > for
>> >> > glib-2.0...
>> >> >
>> > Maybe I missed something but there is not much information about what
>> > you are trying to build. Starts with build system: autotools / cmake /
>> > meson / qmake / waf?
>> >
>> > Is there a place to look into the recipe? That might make support
>> > easier.
>> >
>> > Andreas
>> >
>

