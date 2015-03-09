Return-Path: <maxin@maxinbjohn.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64C9FE00810; Mon,  9 Mar 2015 07:02:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B43E003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 07:01:56 -0700 (PDT)
Received: by igdh15 with SMTP id h15so20967757igd.4
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 07:01:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=8icN62pBlIGaTdXJl/a37ZYh/T4rQs04cwRMqoOw6tk=;
	b=ISlylMm2j67hzQS3iSbNwNRBsX5dcPS4ntvCH75pTFjtHY552npx4wd15t5pgEr5F2
	MSdkYHnMBQ0+AREYijXiSZgPAOj4P0KO6MmNeIAqg+0a2R82YwQlCPIfGog1jqP/goZf
	HpPrbMIpIcvM9ABzc9WGfkD0K4lIkZo1RcNf3MUtuAW/cwoy6ZvbFfjZYddipyiVM2M+
	soC8OIMBYcmJU14zFJnDtoNoo+ctviu2K3CYTc+cUyNK4jtv6UyAVjicDiejP+PADJnW
	KZZ3F98TmPK0X3QsGsZcVzMWKWJNLHkjyPsp1r9H4JkhvTknGpjlIkUav5itUYO441oA
	nCvQ==
X-Gm-Message-State: ALoCoQmaheUzxZxJ5eFD7erIsopE/6s2493iZz4WY0XQ+fNZruIzX5heEIiKf2B14T+GjKhfoo+8
MIME-Version: 1.0
X-Received: by 10.42.85.82 with SMTP id p18mr26845191icl.58.1425909716004;
	Mon, 09 Mar 2015 07:01:56 -0700 (PDT)
Received: by 10.36.57.11 with HTTP; Mon, 9 Mar 2015 07:01:55 -0700 (PDT)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <CABNKipLemhk9hbPFm8JiGH-uoZbHbQQK1bqxeKuJ2HOYCVM4NA@mail.gmail.com>
References: <CABNKipLemhk9hbPFm8JiGH-uoZbHbQQK1bqxeKuJ2HOYCVM4NA@mail.gmail.com>
Date: Mon, 9 Mar 2015 15:01:55 +0100
Message-ID: <CAFicg86+Wn33=KWfuot3qOod_um7qMKL3wOL4pW+8WEqYdbZ=w@mail.gmail.com>
From: Maxin John <maxin@maxinbjohn.info>
To: Parthiban Kandasamy <parthiban@ulivesystems.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: avoid kernel building
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
X-List-Received-Date: Mon, 09 Mar 2015 14:02:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi Parthiban,

On Mon, Mar 9, 2015 at 2:40 PM, Parthiban Kandasamy
<parthiban@ulivesystems.com> wrote:
> i am using beagle board-xm, for this board i don want to build kernel
> package. so how to exclude linux-yocto from build process. i tried following
> option
>
> PACKAGE_EXCLUDE = "linux-yocto" -> it was not effect,
> BBMASK .= "|.*linux-yocto" -> it was not effect,
>
> those statement not work, so what will be the correct option.

Please set this in local.conf file:
PREFERRED_PROVIDER_virtual/kernel = "linux-dummy"

and build again.

> thanks and regards,
> parthiban
>       +919790329795

Best Regards,
Maxin

