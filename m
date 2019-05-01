Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A363E00D0F; Wed,  1 May 2019 15:32:51 -0700 (PDT)
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
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA832E00798
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 15:32:49 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id r71so332600iod.11
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 15:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=cotKG6k6SeQK4fdC8JpFmBSpwr/fchDr2F09ZPMTHn8=;
	b=vg/wbFbe59I83XmSjXA45NDy3INRFi1dDdFrnwABTXfVbzqLAciDfZfAyhiyTh3kOD
	b5Ibju+T7NUZ4afSsDURal9kY9ey1TQXK3BkeC8b8yR/n6Zl7nuyoRq8s2J0sAkc7is9
	HvGYqMOYRvGXQbeYd6fq9VkEcoh8dt+ifT6UZEmtOPBC5i9p6mx5aavb6w0aVIOOLEh6
	P32sNSqLKVn3i4vbsa44POslO3l7wmQGeRTl5rZB9ixPTBzRhwwz6OxWbUYOSL1XOVOM
	6/py046bUBTgyzf77OwO79t0yWSb6Qa6TjODO7DfqXx/xGkC/6ksX1MRUPNnAT2MTaUv
	UVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=cotKG6k6SeQK4fdC8JpFmBSpwr/fchDr2F09ZPMTHn8=;
	b=PkyePLu8BEYL9gqrKkWgG4WQGojvc8HscTxRDsa46TaoA2mrd88hZ5qSGqrbW9mbWu
	femetDq+jUhkHR8NbMYtS23M4ZOJGgK2wsaZ4zxMP1rDm1ydJOT09xocGod8FlLemYnS
	0hu2dFFYPcmWFrpfi2FnbA/n36qApf98ZqhrRlwTdsQD6Q/GLAxqUJexC1pNN1LnbMSg
	K4dmkN8Yql+Z9IS9BT8LAyLim5uNeXETzfaPJED2WVLQ+I3prOugm02mCvix1hOC6qkQ
	tXOgOf/48V19Z7MGqpAj/D92N4xnOx96pCdNZw0M+1babL0tJpAxrBdE4PsHMQmIjdiA
	9eKg==
X-Gm-Message-State: APjAAAWlrS9aLbHEwRYS80uosaR9igE2tI6UJrR3SvYLRr25xwzNOeWM
	Ki8LfYRvAOHo6ITalMGmAhxrGSye2ff2za7Wmes=
X-Google-Smtp-Source: APXvYqycTb3jBjsd+OlehpEYGpXJO1oH4gobOkpl6DyFq605x0BjnngHF4si9/pHTmDr5JGOR9QxmPgnAaQGdy8w98M=
X-Received: by 2002:a6b:e411:: with SMTP id u17mr227735iog.57.1556749969295;
	Wed, 01 May 2019 15:32:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Wed, 1 May 2019 15:32:48 -0700 (PDT)
In-Reply-To: <CALbNGRQ2aAazVL9bV6NqxE5pdUKMU4jUFGsDt_NvEx_qXPs1_g@mail.gmail.com>
References: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
	<3ca8cb2d31e9c295e6da1bfb161ce9ffbb0e0318.camel@linuxfoundation.org>
	<CAA=hcWSoyZnSMCud9ahg9ZqKi0Wcsy5Sc6GgG05AFHtEG8Wa4w@mail.gmail.com>
	<CALbNGRQ2aAazVL9bV6NqxE5pdUKMU4jUFGsDt_NvEx_qXPs1_g@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 2 May 2019 08:32:48 +1000
Message-ID: <CAA=hcWRc5aaXvUDZ+Fc9uB+gjFdpVPK-aP2Gd4wNmKj=r1Yuqw@mail.gmail.com>
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
X-List-Received-Date: Wed, 01 May 2019 22:32:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

It was my program, it has been compiled for weeks without any issues
until I added an #include <glib.h>, despite the glib-2.0 was defined
in the recipe, the do_compile() stopped at following errors, I can see
glib-2.0 was built in build and image directory, I can see glib.h was
in build and image directory, is it a basic principle if a package
library was defined in DEPENDS, the bitback should automatically find
the header files and library links? Why it still complained no such
file?

DEPENDS +=3D "glib-2.0"
RDEPENDS +=3D "glib-2.0"

do_compile() {
    oe_runmake -e
}


fatal error: glib.h: No such file or directory #include <glib.h>

   ^~~~~~~~
compilation terminated.

Thank you.

Kind regards,

- jupiter




On 5/1/19, Andreas M=C3=BCller <schnitzeltony@gmail.com> wrote:
> On Wed, May 1, 2019 at 12:35 PM JH <jupiter.hce@gmail.com> wrote:
>>
>> Thanks Richard, where to run pkg-config? If I run pkg-config in the
>> host, it pointed to host Ubuntu package which is different to the
>> cross compiler.
>>
>> On 5/1/19, Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
>> > On Wed, 2019-05-01 at 10:43 +1000, JH wrote:
>> >> Hi,
>> >>
>> >> I added glib-2.0 to DEPENDS but it still could find the glib.h, what
>> >> I
>> >> could be missing here?
>> >>
>> >> fatal error: glib.h: No such file or directory
>> >> >  #include <glib.h>
>> >> >           ^~~~~~~~
>> >> > compilation terminated.
>> >
>> > You probably need to use pkg-config to find out which CFLAGS to use fo=
r
>> > glib-2.0...
>> >
> Maybe I missed something but there is not much information about what
> you are trying to build. Starts with build system: autotools / cmake /
> meson / qmake / waf?
>
> Is there a place to look into the recipe? That might make support easier.
>
> Andreas
>

