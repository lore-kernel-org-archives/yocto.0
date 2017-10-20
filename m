Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC3B6E00A62; Fri, 20 Oct 2017 13:16:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.169 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE5EE007EF
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 13:16:12 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id f46so9175648uae.1
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 13:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=e8GYERawKvZ0D4UlpgVvxryBkzkvHtIwLOLvUGKbsBA=;
	b=VoLjJoGLvfaJSuzi6YmqH6Jplg73GGrQWBZoQapKc9xG9mkl1sWbWJvqDEMGvJh+yW
	X3Ih7Fh31Q+Bi0JmNcpXs6JtCeHkZlt5Tb5DaXN1PW40O20lupauaj/lL5Jpkbmlr6ru
	AHx8+Yi+IPl5gde2a6rMsWFstXF3TX8VsiKQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=e8GYERawKvZ0D4UlpgVvxryBkzkvHtIwLOLvUGKbsBA=;
	b=FuzPQBBdPaWKMGW0Pw/yCIgC5K8JEnr7nX2NpEmDqEonwtCGUf4P4T782JHTiKi7p9
	TVdBRtbrIDIdC2dQhOehdKcqEpWJ25gJXwv7zSEd714LohKsyzreCWUIv0i15T0xAnwg
	0GBkvwfojlBSyHA/vc9P/NM/I5WpLiQ7WgPabKjG5V+pRyuQJMquiY7mrjemY4ebrl8d
	VxoTXGu8SkjiXB6nym6UW+3K4fb2+ga+UBRWKJ+kfHmmsAYdvL3jTUswRl93etb68xuI
	i3T7lAxHa3/zlkbqqgr2IqmkQ7p/59V7tDNn/beigwh1mTfMeNTGaE3btC140xgDExxr
	NVxw==
X-Gm-Message-State: AMCzsaXNz9iBdDzCKTtONxBh4p9t3ZmoWb16oVEjyVIM96FtX4wgAYsI
	vOKEl2U8EdosrWMh9RgRBuVbhc7h0OwKGjwniC5ZkQ==
X-Google-Smtp-Source: ABhQp+RYWVN+aWj48MIwOgXsLnnqvVEX75y4Df5vFKPedE7GXBmTSuYX1wWTzQ5mGPss2Q5f9o5a8rVeM6jc+v8kApc=
X-Received: by 10.176.67.66 with SMTP id k60mr5159676uak.81.1508530572375;
	Fri, 20 Oct 2017 13:16:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.94.197 with HTTP; Fri, 20 Oct 2017 13:15:51 -0700 (PDT)
In-Reply-To: <CAEX+82LrShupg3kUd+nE3yW0OYcE13HAYA0fSc+iHu-SgQ-gTA@mail.gmail.com>
References: <CAEX+82LrShupg3kUd+nE3yW0OYcE13HAYA0fSc+iHu-SgQ-gTA@mail.gmail.com>
From: Matthew McClintock <msm-oss@mcclintock.net>
Date: Fri, 20 Oct 2017 15:15:51 -0500
Message-ID: <CAEsOVNc-jTQcx78b3JRwMGHpi07SzJibgaMdcKwxfO51fLb95A@mail.gmail.com>
To: Javier Romero <xavinux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Contribution to Yocto Linux.
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
X-List-Received-Date: Fri, 20 Oct 2017 20:16:14 -0000
Content-Type: text/plain; charset="UTF-8"

It might be quite a bit of work to get linux-yocto working on the
rpi's since they are using their own kernel forks. Are you prepared to
reconcile the additional patches the rpi kernel's are carrying?

-M

On Fri, Oct 20, 2017 at 12:22 PM, Javier Romero <xavinux@gmail.com> wrote:
> Hi,
>
> My name is Javier and live in Argentina.
>
> Would like to know if it can be useful to test Yocto Linux's Kernel on
> my Raspberry PI 3, and report bugs that maybe found.
>
> Thanks for your attention.
>
> Regards,
>
>
> Javier Romero
> E-mail: xavinux@gmail.com
> Skype: xavinux
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

