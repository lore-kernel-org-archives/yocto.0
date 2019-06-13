Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 905D0E00D94; Thu, 13 Jun 2019 03:57:00 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35E76E00C7D
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 03:56:58 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id i10so15816418iol.13
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 03:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=V9VOHf9Y8AQecsGcWRl/wpUvmahSsY9879XXhw6kTFg=;
	b=eCaXkIYm3u/l+BRzBZD44/BIrZYH6djgoZF4P6Q1CjKlPxCZMaJ6wK7XW1m34dXUut
	0PIGtFpnr61VuuHRFVaVpKPXVJ7OP4kCt+z3h7I4SBd2A4DljXvVC2IRER2G/82VvJqX
	Y+MZyTjB15dsST2SP0BXS6s3i0M2uvi6J5cG5daQys5Df1ZPI1IOP+2vpHz36NdaZ16O
	o50kixRQt1bIUtMocMxpDVJ3yP13aqs9mQTZMMu6u1MvmmxpLvPSWrV0KKTISIX6NYSn
	r4S6G76MaG3JyeZgR644vkfAvjJlW2g8Mo57oV5h8wqFHNxLoS5N8ILl04MUgqxrHd3M
	eWaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=V9VOHf9Y8AQecsGcWRl/wpUvmahSsY9879XXhw6kTFg=;
	b=XMDNEtx69w3D5Rihoy49he2qwtoC+d+xlsKO1YurCm5YNIsiTT7arJ6y497A8tKuvf
	pEbJLNPSGFBiA+pFavbAKvYzKaADGfmzJ5aucJNiJdyeJ/foo5VpN7JH7pZ3Eg8m3cqu
	7y1lAZuEMJrUQTnRwGbUA7JF2wsedNdkwNvN4aX298eLhmgHQd+4btUrM5kIoydckzu/
	ObKdrpNNwvnSLgztmf++9sPxaTp7t8UbkrHMumY1rshccCnEOa8dyUoUF3zrHRqSouKx
	B77DtzB+M+uMtHWL+/s/GCcrqEkDhGLQ7cO0duIYQjS+QYypb4WyG9Yd2CF2S2CNwP+P
	iXiw==
X-Gm-Message-State: APjAAAWpA64roeEKAgehwfBgfnaWeHaRMVhI5WAIZ0IYRQHU8y8C/fSB
	CiQZJQPbknj6Q3cXzW2tW8CgUVFrcA0e8qjHojA=
X-Google-Smtp-Source: APXvYqxEJ6hxYMrDutfKGx7WJC2GXNYgMpsxNwzjlMJFkilcZVvocjoczlruiU8oirZ+G0zI3NYaewV+rEhHawS6O8Y=
X-Received: by 2002:a05:6602:22cc:: with SMTP id
	e12mr833813ioe.192.1560423417858; 
	Thu, 13 Jun 2019 03:56:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP; Thu, 13 Jun 2019 03:56:57
	-0700 (PDT)
In-Reply-To: <2c0a96e74f3acf0ac45f2bc55908df330fd85cab.camel@linuxfoundation.org>
References: <CAA=hcWRzPWecUL0-e2hhNYE2RzjbuL9=fCLqTyy7GRFD563yGQ@mail.gmail.com>
	<2c0a96e74f3acf0ac45f2bc55908df330fd85cab.camel@linuxfoundation.org>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 13 Jun 2019 20:56:57 +1000
Message-ID: <CAA=hcWRWf-JC3Mg2kmTJ22YjiQto0ixpfNUrnzdbn172nnDE0w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Download git source not the latest
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
X-List-Received-Date: Thu, 13 Jun 2019 10:57:00 -0000
Content-Type: text/plain; charset="UTF-8"

I set up for my release version which is nothing to do with the git
source, how could I link the PV to autorev?

VERSION_MAJOR = "1"
VERSION_MINOR = "0"
VERSION_BUILD = "0"
PV = "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_BUILD}"

Thanks Richard,

- jupiter

On 6/12/19, Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> On Tue, 2019-06-11 at 20:38 +1000, JH wrote:
>> Hi,
>>
>> I set up SRCREV = "${AUTOREV}" in the recipe of my application, but
>> too often it downloaded the old revision. How can I force the bitbake
>> to download the latest git source?
>
> What did you set PV to?
>
> You need to have SRCPV in PV for autorev to work properly.
>
> Regards,
>
> Richard
>
>

