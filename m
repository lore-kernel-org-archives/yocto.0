Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9131EE00857; Wed, 28 Mar 2018 06:59:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71DD1E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 06:59:22 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id r184so1419907vke.11
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 06:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wmkO2Euefg/GA52QVcAYMO88W6nEaIKKIHIZlUcnJXo=;
	b=Pa+4YOyU4/HuskbHoC9p5BO4cYJE3xfmkqyEiJ+521yTkej/0KCyPpl0B2WOiSsgt+
	YMeOj7YfUe0r3bKNzYooga5qxYRMW0KHQskwcCJcmOCAJWzmZ7uQDwHQfCp8a2hgcjmq
	ADIrDWcgld4kNeCDc5OvY9Mu2APzbB2xCmwnF8ea8Qu1/Apr2O5OmMCq7d8D6gdTu0xb
	oSbhY/wwNbaJVuMUMCMS5EzxnP31ck0rUnI+JON9tQDPCFZn+im4wq8IczL4oXHxqcd0
	Wi8vNdL/3PmWMwZFzLipE33g7ulcMO3dD+AV+SIi7bnZJn9rU+maz3DW0Zm7AuhYn2EO
	eKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wmkO2Euefg/GA52QVcAYMO88W6nEaIKKIHIZlUcnJXo=;
	b=eUYyGlUaICFGgLfQmYBZfKqba5aSrQv9jwc02NSUX12pQhUQfgtwwn4/3jX4kV5Hhr
	EQDNNeRBAPqgkIY+1pfvf0MVPlqV+H0uELaJhxbDmfE41pXjQ9WCeu980Qymrmw5BE2p
	XgZoe8++XlrHvhrAvkrzMk/gOoNCSC1NBuLSbYpSFbimqSxZXX4Y2mViD9WiEZZBLjrm
	Bn2/KKonc3VBQefuFvE5yG6sn3EBWbm4aojDIaCS4fTvPDjyc/EGIVLjO36hWS6GPtpl
	UH9ri34T0SgX6rMydZydsBuSq0kJzNVHEETPo236ayGBi0WbH9mmQm+p28SErxPlX2UE
	CquA==
X-Gm-Message-State: AElRT7GMVinGG2jpokNqMgvMsVNJMK0g+SaTd06XvKLGjVLgYwn1zHDK
	r5q4f7ZcOwfidrEyCJ2CqBw+pkMqRLK6yXToBhXC3uOj
X-Google-Smtp-Source: AIpwx49st+/5RkBvrUrAxEotXEW1uCuw5KlnBKxP2IwSE5eZP91IMzcwyWXd4UFbGQihI2hSJHUq1O5zff3TI062tWk=
X-Received: by 10.31.193.79 with SMTP id r76mr2333736vkf.141.1522245561526;
	Wed, 28 Mar 2018 06:59:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.96.145 with HTTP; Wed, 28 Mar 2018 06:58:41 -0700 (PDT)
X-Originating-IP: [90.152.4.98]
In-Reply-To: <CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
References: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
	<CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 28 Mar 2018 14:58:41 +0100
Message-ID: <CAK18fxFUFBRH8rsbkOXnKAK=ZzM0JnfAN95TADn8Tcorx63-Xg@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] raspberrypi3 model B+ not booting
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
X-List-Received-Date: Wed, 28 Mar 2018 13:59:23 -0000
Content-Type: multipart/alternative; boundary="001a114dd06cf4c585056879692b"

--001a114dd06cf4c585056879692b
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 28, 2018 at 1:38 PM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> Please use Morty, it works fine.
>

I don't think that is true though. It needs newer firmware. Not even master
has it.

--001a114dd06cf4c585056879692b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Mar 28, 2018 at 1:38 PM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"=
mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>Please use Morty, it works fine.</div></blockquote><div><br></div><div>I d=
on&#39;t think that is true though. It needs newer firmware. Not even maste=
r has it.=C2=A0</div></div></div></div>

--001a114dd06cf4c585056879692b--
