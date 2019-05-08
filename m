Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F3C4E00D54; Wed,  8 May 2019 06:36:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B67E00D4A
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 06:36:58 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id a64so245531qkg.5
	for <yocto@yoctoproject.org>; Wed, 08 May 2019 06:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LGWTrJh6w+ATqpLXylLj4DjLGua+tJEVd/hJBDGWFrE=;
	b=VE9uyCE+VAubDblx2MvcJNois+0l3hbkG3pammxfIgIh5kV32XVJBJWPexfThS7w0+
	N5O0XBsF01tLraR1sME6nB5cLxUmDYlQFwJjeFoFiv6p5IEhXTu/+wkMuS3/W7nT9ol0
	U+De31IodBRrm3ORqz+NqpPkYlzCUV3cLF6IbzFdPWS0Enmi9mxannZNG/pZIXzPnZnM
	Ko4m+aW1hKCOd0Lmn3f5Ipm8ILWl9uO9vTNumxWHiNJ7ctGVSp3H9C9d4Npn6kmPXK1F
	G47Tl6KCSfxwzZs9NN8OQACU1WrzF8V5bjG0YdcYYEnlJlJO927r4aXURfyRC8uNpr/X
	XLog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LGWTrJh6w+ATqpLXylLj4DjLGua+tJEVd/hJBDGWFrE=;
	b=Yml5cWz3THCA9YjBtqVLeH7OLvB9gqDQAoR5MoCUYzGI5S0X7IVOR1JOKb3VkcE4Xc
	gPuyQVWHPndQZ1RdXUSZLKPkUyzk1AgWEeoE0lTTi9pbfh1TrRQz+WPz538qcWv3kL/5
	JAhN3gGlgfrGzb3zeGc5QvMxmvPsj4XvCIfu/3ziHH8bioYRYtbJZFCvBMeR5wolD4/h
	P8ghRy+f3+QfkUSd0ejSpCg0t/i2fylr0nSmBCTJgbPxZszDRqSNppI7RXtJM8PF6RoC
	aoGMRIKow8817C3Z+LTDkOlZi7bUyO3JxOewFqTU9JkfoDAcGyRdJPtuIud0vJLT7yq1
	Fx8w==
X-Gm-Message-State: APjAAAW7l/L1rKIkrLsT1iMxg0CZw4WS/zaraACcpV7opumCrq9BF3jc
	Q/wvKY9O+yxqlRPjnclxPLwY3k2+0T84GMxX0fY=
X-Google-Smtp-Source: APXvYqyRvTvCrlpYQkyM1B05MMa6wL0PlIGMa8GVr8AAIlWc7PDD38nLgaN1AjCPqMDnfuDt6jrJWI7ZjbdILlhzN4k=
X-Received: by 2002:ae9:ef45:: with SMTP id d66mr18896057qkg.313.1557322617590;
	Wed, 08 May 2019 06:36:57 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-ee79f97b-ae6e-4e44-bef7-07fa5c0e3085-1557313560088@3c-app-gmx-bs06>
In-Reply-To: <trinity-ee79f97b-ae6e-4e44-bef7-07fa5c0e3085-1557313560088@3c-app-gmx-bs06>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 8 May 2019 15:36:46 +0200
Message-ID: <CAGAf8Lz3xo8CKAQ_g5MVjaD5_5_4ytsFRiQPEn+-aH=ckFJ-6A@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Eclipse (plugin, settings)
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
X-List-Received-Date: Wed, 08 May 2019 13:36:58 -0000
Content-Type: text/plain; charset="UTF-8"

https://marc.info/?l=openembedded-core&m=155482339222316&w=2

(do not shoot the messenger, thank you)

Zoran
_______

On Wed, May 8, 2019 at 1:11 PM Arno Steffens <star@gmx.li> wrote:
>
> I want to use Eclipse as IDE for coding/debugging.
> What do I have to set to get the proper compiler prefixes and pathes, libs and includes ?
> Or any way to combine the environment setup with start of eclipse?
>
> I have seen there was a Eclipse plugin, but not for newer versions as 2019.03.
>
> Here (https://www.yoctoproject.org/software-item/eclipse-ide-plug-in/) is referenced to the eSDK manual, but no word about eclipse in it. Til now I just use SDK.
>
> Thanks
> Arno
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

