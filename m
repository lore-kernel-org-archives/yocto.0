Return-Path: <schnitzeltony@googlemail.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6544E0027C
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 02:55:41 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id jz10so1318956veb.14
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 02:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=Hpx0a/MXRSJr2Xn/pQRVfLxUdEngoK12Ntna7FAeNrc=;
	b=DBS8GKdlBgmDXYaM4BWAAjt1DqvwTaCy90Xbj9lzBE3JO+abEnAz8ZdYhtaDt0LmmE
	e4srLgNscs6CKss2xcvED/w1vxmAWR4R18NN9W6rMpmP2LOaITlXa5kYDe+qNmZL/njk
	e3ncUJ6Xl7m66x/Lj34pJW21WFAme/MwvLT0qpUdoZRR7rtuw/nrXEqr3aJeYh7sg6IX
	Tpx/0m8pKkS1Kgtxo/U0gI0IRZc+XM0t1z50MQ/DNDbiTdx6j9oFHDWMMBvoTYujXfTY
	vaj5QX1WPoUorh0MG7YHxxmf88Abof/4wLCH5YRmFcD7MsXZegVCwuxsO9q0HtIzvrvP
	kITQ==
MIME-Version: 1.0
X-Received: by 10.52.69.109 with SMTP id d13mr2904969vdu.75.1367574941084;
	Fri, 03 May 2013 02:55:41 -0700 (PDT)
Received: by 10.52.139.33 with HTTP; Fri, 3 May 2013 02:55:40 -0700 (PDT)
In-Reply-To: <CAK18fxEsx4-o-CNC9nF6R8h-6FNNqK-CvXTG_jn5aSnvGGWDkw@mail.gmail.com>
References: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
	<1359064662-17052-3-git-send-email-schnitzeltony@googlemail.com>
	<20130126225837.GA30017@gmail.com>
	<CALbNGRSwHQs-O8dy-MoB2E26jYLXS0UWLHZYSi-0nZtE9Liisg@mail.gmail.com>
	<CAK18fxH926QynOx4UwReiKs08f=o2dGxnhMRHHqSqmWcMyVOYw@mail.gmail.com>
	<CAK18fxEsx4-o-CNC9nF6R8h-6FNNqK-CvXTG_jn5aSnvGGWDkw@mail.gmail.com>
Date: Fri, 3 May 2013 11:55:40 +0200
Message-ID: <CALbNGRS0TsPiF8MO9WcB=yr-Bjv1T6pSUCuaO-kCiM9xfh8wxQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] xserver-xf86-config: fix do_install
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
X-List-Received-Date: Fri, 03 May 2013 09:55:41 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 3, 2013 at 11:33 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Can't replicate this issue and somebody who experienced it in the past
> confirmed me that it was someway fixed. So I will drop this patch.
>
> Thanks.
>
I think wildcards are qorking currently - you can drop this one

Andreas

