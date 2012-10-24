Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF4B8E0127A
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 20:08:20 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id s4so901990lbc.35
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 20:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=muhc56Ij4zGGdld2PZezMO6+kX6yT0xYfkYO2aQ+9Cs=;
	b=kgSdm3o9YgPVgyadfgfCmrXpgj4DRtLA/MRafEfqC12R7ERkF74QwsGc6HZKY+Jap1
	Ri6lrUI+kzFvfM4RigrM+xx2B1F6PUVy8y7+acSxfiW60VJQphPE6ivvIWsl2ojTAKDl
	f2SXigu0LnGcuqcl3/LmZxGIlanapQ9u6w/RNfQsrb8pLX8TE3aw9lJneBtkgq1GwKOb
	9gOTtD/4B6e0TQynKzTLx36NwSbt/tLZPzxUuGPMFxx5rI0FmM6izX82Y1Xe2tPvN+NE
	I9scoX5G/8fYg2hDlbCYmHPAyA9vvK7fO2ud9Qn754r17pDtkRY8MR+gVkIpAO1GLls4
	2rHg==
Received: by 10.152.122.11 with SMTP id lo11mr13228443lab.3.1351048099478;
	Tue, 23 Oct 2012 20:08:19 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.1.49 with HTTP; Tue, 23 Oct 2012 20:07:59 -0700 (PDT)
In-Reply-To: <tencent_7B58148337F6D1763DBD490B@qq.com>
References: <tencent_7B58148337F6D1763DBD490B@qq.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 23 Oct 2012 20:07:59 -0700
X-Google-Sender-Auth: EjCL4ORoZ0Tf0G22LuQ2UeERofQ
Message-ID: <CABcZANnuiMpQHRCJXx3zD2hGkwQxLAAOcSrOk4AhFCqQunosAw@mail.gmail.com>
To: Liu <treebody@embedstudy.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: the use of the files in meta/lib
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Oct 2012 03:08:21 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 23, 2012 at 6:39 PM, Liu <treebody@embedstudy.com> wrote:
>     I'm wondering the function of  the directory meta/lib.I suspect the
> files are imported as modules by .bbclass.Is there any good reference docs
> about the python files in the directory ?

They can be used by any python anywhere in the metadata. Some of its
modules are automatically imported for all to use at any time, some
are not. See base.bbclass and the OE_IMPORTS variable to see which are
auto-imported. The only docs on them, as far as I know, is the code
itself. There isn't a great deal of code, so I'd suggest perusing it
directly.
-- 
Christopher Larson

