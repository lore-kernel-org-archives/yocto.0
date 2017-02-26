Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 489D2E009BC; Sat, 25 Feb 2017 22:15:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1009FE0095F
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 22:15:46 -0800 (PST)
Received: by mail-vk0-f66.google.com with SMTP id t8so4012669vke.0
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 22:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XVPwn7JIa7cRyJEk9mmAPrK1jRIPvUWvnKvE4ESjfhU=;
	b=Ak1qiI9iHs55pIgrjbSlL9TJ2LKC412hcc/p1Ua6mcUulh+RdMM83EM9pJ/Mgk4ZBn
	9R7axtkgrv32x6Zy9qpP2LKusjGvR0DFwayscB+T6KgQi2NuLeU4nKgMFWPt44jDbDPL
	jvb/dOa78PJk2WJ542jJruflQZqeWCW33OZmDgL7r4nx2oOzL4hUBdFy43eFNqlnnTck
	N0DlUOPU2ZdB+aT/NuRTL5cxmYF8odpsR9s4MOxwhqjtPctlxIGRixEs4HxcW6I2yTXo
	tMF4zW7jSQ93bhNksfxg0eZTYx525i7eC+SwMIAuww9C50F8VUFqXtBqzWVunBwgK3Z4
	wv6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XVPwn7JIa7cRyJEk9mmAPrK1jRIPvUWvnKvE4ESjfhU=;
	b=sPCHt+EswnJjB5qz60etb2lzCIbavk5r9r/FV/EmL59rAN0ZSq7GPHl+9mjAESc3FA
	nFkDA0IyiKMeHhhgK7Y93q1ta03cUZkXVeyPzzaLbhQ/uDc5MoNy4pd7Hx0ZioPbfkIB
	e2X9FZgAT29WR2+rvHUVT2+e9BCKWYJ1xxZzqtjd2ADfX5LegxCHMD2YRhKCkaMK3rZ0
	xbDFlnarsyCdPulAxE9Y7JaS/hilEUiadDXCTDnnItJ/idk8tOyA1iBx0GoULuHmfu1R
	INrBGaF4Ybv2StOYwADiRvybtPwIcWR+4Msj8kpg2QTK2dcwG29Fhn8CASV7rPJH42Hv
	KDdw==
X-Gm-Message-State: AMke39nNAbwmEn/phJ8PCUoZJlub5bo1z4cMx2hJTSziWWmfAJdeHgb+VuUlTPtj800ucS6YKtIAjJoF3Ocsgg==
X-Received: by 10.31.171.205 with SMTP id u196mr4335929vke.22.1488089746014;
	Sat, 25 Feb 2017 22:15:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Sat, 25 Feb 2017 22:15:45 -0800 (PST)
In-Reply-To: <CAJrj+DNTLZ7isU9Ng9PXEeY-AEOvp_6Vc3Dri=AzQjLGLwmfhQ@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-2-twoerner@gmail.com>
	<CAJrj+DP3MxzVcvZkN=APegrjydGYQZeE3J4MBoZ7RPMxQ-fkfQ@mail.gmail.com>
	<CAHUNapTE=HmydvTCwD5G-zUGcu8FABNertLu3daz_Gdsp=xhSw@mail.gmail.com>
	<CAJrj+DNTLZ7isU9Ng9PXEeY-AEOvp_6Vc3Dri=AzQjLGLwmfhQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 26 Feb 2017 01:15:45 -0500
Message-ID: <CAHUNapRLt0JLdZryoLBPhnAWJKAWZrB0iEr5AcSvi-v-aqgJkQ@mail.gmail.com>
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
X-List-Received-Date: Sun, 26 Feb 2017 06:15:50 -0000
Content-Type: text/plain; charset=UTF-8

pushed, thanks!

On Tue, Feb 21, 2017 at 9:20 PM, Eddie Cai <eddie.cai.linux@gmail.com> wrote:
> Hi Trevor
>
> 2017-02-22 6:25 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>>
>> Almost. The file you created a patch against had  DEFAULTTUNE which
>> has been removed so I had to create a new patch that would apply.  If
>> you're happy with this patch (which is very similar to yours) I'll add
>> your signed-off-by line to it when I commit?
>
> Sure, My pleasure.
>>
>>
>> On Sat, Feb 18, 2017 at 10:40 PM, Eddie Cai <eddie.cai.linux@gmail.com>
>> wrote:
>> > Hi Trevor
>> >
>> > Is this the same one i submit before?
>> > https://www.mail-archive.com/yocto@yoctoproject.org/msg33572.html
>> >
>> > 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>> >> Enable machine overrides for RK3288.
>> >>
>> >> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> >> ---
>> >>  conf/machine/include/rk3288.inc | 3 +++
>> >>  1 file changed, 3 insertions(+)
>> >>
>> >> diff --git a/conf/machine/include/rk3288.inc
>> >> b/conf/machine/include/rk3288.inc
>> >> index 86fc567..769e5c1 100644
>> >> --- a/conf/machine/include/rk3288.inc
>> >> +++ b/conf/machine/include/rk3288.inc
>> >> @@ -1,7 +1,10 @@
>> >>  # Copyright (C) 2015 Romain Perier
>> >>  # Released under the MIT license (see COPYING.MIT for the terms)
>> >>
>> >> +SOC_FAMILY = "rk3288"
>> >> +
>> >>  require conf/machine/include/tune-cortexa17.inc
>> >> +require conf/machine/include/soc-family.inc
>> >>
>> >>  PREFERRED_PROVIDER_virtual/kernel = "linux"
>> >>  SERIAL_CONSOLES = "115200;ttyS2"
>> >> --
>> >> 2.12.0.rc1.48.g076c053
>> >>
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>
>

