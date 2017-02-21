Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4B43E0097C; Tue, 21 Feb 2017 14:25:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B41CE00939
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 14:25:46 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id s186so14279493qkb.1
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 14:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2r5/owZpSIaZcwFkMmGqyuwNfL0kQgQ8zUvOyomF+nc=;
	b=mzcYRqbU8aUoWTFeHrzJr1QALkXMzmlULfYoXWCe9k/ECQW5LC26IhNluFxmiszp85
	5Sv6FhULxnMWhUg6GTmrjBFxtnRa5z7QDPOB0Rld8xbTW4oZYJ314CCRnbbBCfOED2JT
	5CJd9IiW8sxpKJzo1WIAMx+EaNbaOwa7IfTSZ/ULpM3HxB9dksYO6ME1S5kkIftj3LVg
	VhJQjCAgyaA/io7LP2wYYMqfafveRRfJEJKnR4PbKJy9c4QAJj8LyzBMU60glN+6mZbT
	umhOjqyHaThhfTjyuF97NrjPRqX+qxL5H+Fly5u9B9c9QPAC7a4NigOxHCp2q5y0axmE
	2W+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2r5/owZpSIaZcwFkMmGqyuwNfL0kQgQ8zUvOyomF+nc=;
	b=fMT6JmoiW977UxuWgr0x2i5ZMl9fwxK1KMvYdTvdp/zY5KDzbn3GdYKYf4xu58rKFR
	tuHbi+aXSZAJGRCqJpjl8DWaKBUb7d9cdmhYuOYAlKOmzfeuhBlYC4N7/mdohLzuEg3q
	QFvXcJj3DwxOLrUW9Fe3tw+gdHk8o5LuNWsBAkNjtuAf3Riqthac56PgJ4IBfDJUzagP
	PPQwuxRuLGonGLtRXSDRBsVKCkD6h4U1Lessyl5dvzNPo1sA9rXf2nkf2t5m0emXm4rE
	oTOYpWkOdydffisvrZKL4z6H7lbIZhhb7Zj3JMn32SpV79wZrmXw6dQOCWsq/CyLpkte
	58Ew==
X-Gm-Message-State: AMke39nznxuVM/l++CwSOtAZpkQ/+E5h4hwOgmpwkY3u6DhjGt53wKl95pvTVcdpAJpcC/v2hbiJZPKLi2lxaQ==
X-Received: by 10.55.44.195 with SMTP id s186mr27081115qkh.151.1487715945578; 
	Tue, 21 Feb 2017 14:25:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Tue, 21 Feb 2017 14:25:45 -0800 (PST)
In-Reply-To: <CAJrj+DP3MxzVcvZkN=APegrjydGYQZeE3J4MBoZ7RPMxQ-fkfQ@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-2-twoerner@gmail.com>
	<CAJrj+DP3MxzVcvZkN=APegrjydGYQZeE3J4MBoZ7RPMxQ-fkfQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 21 Feb 2017 17:25:45 -0500
Message-ID: <CAHUNapTE=HmydvTCwD5G-zUGcu8FABNertLu3daz_Gdsp=xhSw@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 1/5] machine: rk3288: enable SoC-specific assignments
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
X-List-Received-Date: Tue, 21 Feb 2017 22:25:47 -0000
Content-Type: text/plain; charset=UTF-8

Almost. The file you created a patch against had  DEFAULTTUNE which
has been removed so I had to create a new patch that would apply.  If
you're happy with this patch (which is very similar to yours) I'll add
your signed-off-by line to it when I commit?

On Sat, Feb 18, 2017 at 10:40 PM, Eddie Cai <eddie.cai.linux@gmail.com> wrote:
> Hi Trevor
>
> Is this the same one i submit before?
> https://www.mail-archive.com/yocto@yoctoproject.org/msg33572.html
>
> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>> Enable machine overrides for RK3288.
>>
>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> ---
>>  conf/machine/include/rk3288.inc | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
>> index 86fc567..769e5c1 100644
>> --- a/conf/machine/include/rk3288.inc
>> +++ b/conf/machine/include/rk3288.inc
>> @@ -1,7 +1,10 @@
>>  # Copyright (C) 2015 Romain Perier
>>  # Released under the MIT license (see COPYING.MIT for the terms)
>>
>> +SOC_FAMILY = "rk3288"
>> +
>>  require conf/machine/include/tune-cortexa17.inc
>> +require conf/machine/include/soc-family.inc
>>
>>  PREFERRED_PROVIDER_virtual/kernel = "linux"
>>  SERIAL_CONSOLES = "115200;ttyS2"
>> --
>> 2.12.0.rc1.48.g076c053
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

