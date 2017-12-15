Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1CD6E00D17; Fri, 15 Dec 2017 14:03:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FE2DE00B48
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 14:03:09 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id t8so19964079wmc.3
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 14:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iu2Z4mf8/T3PBjVh93mnB6ND1w0KaSKJAJ+SrCnduV8=;
	b=EtOeI5zOdnbfSlK2Bb0eT4c4rsk/6djOjUBJ8W19783kB2ySnoHhQhLSa4fMPzZBme
	TrXh32nR8uvPx2sB8E18+JqD5QVX6IGM05MUgpnhRwOFfzbjGO9g3XPGfajHlqK8g/QT
	k26wwVnSG56EfAfpUE2Y7c1dVm9ezWi046PpFERfI4M/z3UjJxNLIh2hTqQvCEvN9ck0
	OoHHbzDJp/Xqr12YJw8mVU0irRkDtpLeJkc5Out+kEdZfOYXJjhLd9rfOJ7yOJ2U7NOw
	w7AghtpGboSgi7UGtKi3K6y+wmvCEqly9O9JEDTN95PMTi8Sp9D9ndQtwBUjJqMW9ZBf
	IeKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iu2Z4mf8/T3PBjVh93mnB6ND1w0KaSKJAJ+SrCnduV8=;
	b=V02cY0SdA7UWrL7APD6HEyA8EfRk18fbgGb2iACApGfUvLZuosq0Cy4v+cGntaO8SG
	3my7wVSRwjtCpiGeMtsMbwRc8mSxJWs//nEZg3KFvxkSEyqanv39pKx9ipLCAkGi6Hqd
	NO8TE4v+LrtgBG2YxAgh4ACOPCyl2pbuBkYZlwg+mBTQ1I3nz1wnQI9dB6bsCk6Rja1/
	QwldxG+5kFNgtrmZGGKKJ29UUh9Fo/hcCXsalHvo2GfTYZtNIcaWq5D1V/IsejaoQy7Y
	OhDo2s9+NmHFiM/K/fDolnuIQlI61BNEYAj9z+BEkQmEvXUadt+SrXNJQjEIqNr4cPzi
	UUVQ==
X-Gm-Message-State: AKGB3mLOxxDeaxR/z/KIFL4ZCe+AoW8TmsHeVU47PVwt3ufjtw78JRAN
	8xJZdV1i4IuEjm+KFlrXzjgjES6uLhrlWbZ9IT0=
X-Google-Smtp-Source: ACJfBosRZdBPE/Eq/n3KJReeWvWDTGxg9gYBJNA/yahL6IJXfSskNa3DQm+GJNvKRVI/8cxYObYUv9cxtJs0HoWZYc0=
X-Received: by 10.28.147.8 with SMTP id v8mr7427921wmd.136.1513375388275; Fri,
	15 Dec 2017 14:03:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.133.68 with HTTP; Fri, 15 Dec 2017 14:03:07 -0800 (PST)
In-Reply-To: <CAPb0b+Ps5vURfT2YYz9CDkp90aBTBnDvAh1_T2pH0cHEg4Dz5g@mail.gmail.com>
References: <CAPb0b+N8sQbkQ4BgH9nS+mdpYCRzWPH5xnCFm8h3X_cOzNLoKA@mail.gmail.com>
	<CAPyrkgzvxtJ6H---FBHyj0omV9rrn3X3ncGpt-W9uvB_J5iUdQ@mail.gmail.com>
	<CAPb0b+Ps5vURfT2YYz9CDkp90aBTBnDvAh1_T2pH0cHEg4Dz5g@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 15 Dec 2017 14:03:07 -0800
Message-ID: <CAJ86T=XDBJ8w5SjTR1z2RUr5hOi+mMH3kq7W8CG-qLoubpubrQ@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] error executing python function in linux-raspberrypi-dev
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
X-List-Received-Date: Fri, 15 Dec 2017 22:03:09 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 15, 2017 at 11:24 AM, Sherif Omran
<sherifomran2000@gmail.com> wrote:
>
> note that i am not mixing branches

Yes you are.

You have somehow setup a rocko build (path ~/yocto-rocko/...), which
is using recipes from the morty branch of meta-oe
(/home/sherif/yocto/poky/meta-openembedded/meta-networking/recipes-support/nis/ypbind-mt_1.38.bb).

