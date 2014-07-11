Return-Path: <daiane.list@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28A0FE0079D; Fri, 11 Jul 2014 06:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daiane.list[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D51EE00736;
	Fri, 11 Jul 2014 06:46:25 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id la4so2083279vcb.14
	for <multiple recipients>; Fri, 11 Jul 2014 06:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type:content-transfer-encoding;
	bh=+vxNyKToN0aa5Xp6iEVHFUpIn8Y6Agl7qXDc6SqpfYo=;
	b=MMb8dT4h2lg4a4yDNahoO/+K7b0+SuwZdCAlRBnEN4Eg0eD4J/n3Rkph7stA3prx+u
	M1+JbtUvD045I6Io/XgjbN+sMwEuz3rZkDE6+ZpOuNCi5fRLifIct9oNl5F7ROwoI2vA
	6S/e131rVsygG4YYnP1gA4rZbuRVudNbvallmFzbkMAPhITmQQKlcShuQBNELbEUbQlz
	D15NatJjVvFENXC5nzTnx1FvOXHwkDRyt0S1qicQ7gufaR4DyedTlBE70gGeQLRbi1CK
	K4jPUZviDTQ3QboS/3Vi/BgDjX/z42LJqFqrq2KkfJYvkGz1RSeouse1Nk2Lp4Bn2r2z
	2h4w==
MIME-Version: 1.0
X-Received: by 10.220.68.83 with SMTP id u19mr943364vci.52.1405086385146; Fri,
	11 Jul 2014 06:46:25 -0700 (PDT)
Sender: angolini@gmail.com
X-Google-Sender-Delegation: angolini@gmail.com
Received: by 10.220.118.132 with HTTP; Fri, 11 Jul 2014 06:46:25 -0700 (PDT)
In-Reply-To: <CAP3RZoiejMxU33NE2cwmWN=LxJ7RoieaCJLf5Ch0hQSGABXKcw@mail.gmail.com>
References: <CAP3RZoiejMxU33NE2cwmWN=LxJ7RoieaCJLf5Ch0hQSGABXKcw@mail.gmail.com>
Date: Fri, 11 Jul 2014 10:46:25 -0300
X-Google-Sender-Auth: hRx3-hHu0FkUEjKsfo4LfHF-_IA
Message-ID: <CA+jg_OUkHqTnuj6gKoFDhB_yrAr1ASqsqQxXmqojFmNYQod-YA@mail.gmail.com>
From: Daiane Angolini <daiane.list@gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] yocto build taking too long time
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
X-List-Received-Date: Fri, 11 Jul 2014 13:46:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 10, 2014 at 6:10 AM, jags gediya <jags.gediya@gmail.com> wrote:
> When i run command bitbake core-image-minimalm my build stops at
> NOTE: Preparing runqueue
> and after taking too long time it continues again.
> Is build checks anything at that point?


I have no idea what you=C2=B4re talking about.

I can only say, yes, yocto takes forever, and this is the "normal" behavior=
.

In my core i5, core-image-minimal takes something like 30 minutes to
build from scratch


Daiane
>
> Thanks,
> Jags Gediya
> --
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale

