Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1660AE00B81; Thu, 18 Oct 2018 02:52:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E9F9E00A0C
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 02:51:59 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id o14so29169489oth.4
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 02:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=nTQ6gPNq2yvDmyGq/ykRchlmA3ijzjZrYAVLQ/2L4I4=;
	b=sveO24//Zl9XOvNPoJreU2QnFAVSB6+6XoB6olvY2meFtoqevDfs2BlM/0u4c9v8+Z
	/tFzDZRNDWMCv/nhU0DnPtPWtjkKOhp6uc1wPv5Jwowa/RFe2LfVE+o9ugWQXsxrAovT
	cHPmvHL3pRQX5zDy3mwPtlkQASsAJKdwEngRGRV5VIJPa7e/17sAy2kj29OxvNPpSPBx
	CD7A0jF80+Rmvyl47Vs+/NV4wZqu0PuiQUrm9c6T1gG7QqDuAp5sVaJFwl6uWeg2Mx/H
	kl8//j2jZpdVp1LYNKRwJmANFLwAA94rmIw1amJ5aiHKSqKwcHnvlIrjTfhEh6mQ1Rhc
	sy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=nTQ6gPNq2yvDmyGq/ykRchlmA3ijzjZrYAVLQ/2L4I4=;
	b=kTUos4+AxdJHF40UZl1qwtBn+3y9ZWZN8CWJhHDHcCX2uPxQ5Hw+0oEcDeG9KY9cpV
	JjySvQZC+DjcLeevzsRnD3Yn2dYrpBg+aPZRabJDRu8FdmKoCElwENZ7fgtTRYS/Wd7L
	wYsrSbHzL3Db6TX3tl5Bl79UjYipc4RtjVAI11EuISgHJDqHPi/xjGAGcb1WrFiauMto
	EdQ6lYLw4sfKCFlM5kbNHMWosWUvVA29tWFImCsJ2BRnH4+dWTPe/otDMhuknDMoOppy
	aiNWHC1U33zpzmaRahGGgPETzrXxYAkbNRpFtibVlOj+yTvDU3Itw4pNm9ydue0/YIds
	Kyqw==
X-Gm-Message-State: ABuFfoi0lX/afpa4sY0wiHFVcCapuLpXPHZxmTf74+obvvFQ8uPql5Fj
	Nyey+Ds2mIw9uun49U1+UjE7z4J41CvTOvYMY0xjYUkr
X-Google-Smtp-Source: ACcGV63xoG4UUkxPbJ53Hqo5Ur/riDLvbd36lVqQEnuUTbpzIpsMMoAtzE9wA/CcspYfn5PnQEIvZhXi7yHnxN2glvU=
X-Received: by 2002:a9d:70d8:: with SMTP id w24mr17525559otj.147.1539856318848;
	Thu, 18 Oct 2018 02:51:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkqNs1qEJHk-knxqZ-+P1VSOjgeZt9x=RjMWSV1QUt5J3i-aw@mail.gmail.com>
	<CAJTo0LYGf_waBvUe22FY+vA7s4eNMPfZqH8JUoMGUQqyAiWWcA@mail.gmail.com>
	<CAJkqNs0bzNNuaXEAfWXvKw507iMv+OJ-uhLOr09g5K5gXTPgdA@mail.gmail.com>
	<CAJkqNs3qrO21DyFy6DZYtDs816fR23eyuXCxNL0uVt3Uea3hig@mail.gmail.com>
In-Reply-To: <CAJkqNs3qrO21DyFy6DZYtDs816fR23eyuXCxNL0uVt3Uea3hig@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 18 Oct 2018 10:51:47 +0100
Message-ID: <CAJTo0LbjRpmGW6qx-TBSDat=KScSoJLESU+U8RtmWnwxXkLPZg@mail.gmail.com>
To: tomasz.dziendzielski@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: archiver.bbclass: do_dumpdata - shell format
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
X-List-Received-Date: Thu, 18 Oct 2018 09:52:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, as you've discovered, bitbake variables can have names that are
invalid in shell.  I suspect the proper solution is to treat the -e
output as shell-like, and parse it with a proper parser.

Ross
On Thu, 18 Oct 2018 at 09:56, Tomasz Dziendzielski
<tomasz.dziendzielski@gmail.com> wrote:
>
> So what is the proper solution?
>
> Best regards,
> Tomasz Dziendzielski
>
> wt., 16 pa=C5=BA 2018 o 16:00 Tomasz Dziendzielski <tomasz.dziendzielski@=
gmail.com> napisa=C5=82(a):
>>
>> Yes, I want to source the data files. I'm trying to adapt devtool the wa=
y it's creating the workspace, then I'm sourcing a script with all the nece=
ssary variables and then interactively run commands by hand.
>> I was thinking about the devshell but in devshell variables like ${S}, $=
{B} are not set and developers would need to set it manually. Or maybe this=
 is where we should do the change and inject exporting that variables in de=
vshell?
>>
>> >it's shell-like but not actually shell.
>> So we should not state that this can be sourced by a shell. It's stated =
in bitbake/lib/bb/data.py few times.
>> Or fix it and make it possible to source.
>>
>> Best regards,
>> Tomasz Dziendzielski
>>
>> wt., 16 pa=C5=BA 2018 o 15:00 Burton, Ross <ross.burton@intel.com> napis=
a=C5=82(a):
>>>
>>> Do you actually want to source the data files, and if so why?  As with
>>> the bitbake -e output, it's shell-like but not actually shell.
>>>
>>> Ross
>>> On Tue, 16 Oct 2018 at 13:44, Tomasz Dziendzielski
>>> <tomasz.dziendzielski@gmail.com> wrote:
>>> >
>>> > Hi,
>>> > when using archiver.bbclass the do_dumpdata task is using bb.data.emi=
t_env function, which should emit variables "in a format such that it can b=
e sourced by a shell.".
>>> > The problem is that the *-showdata.dump file can't be properly source=
d, because variables are not in a correct format.
>>> >
>>> > There are many lines like:
>>> > PREFERRED_PROVIDER_virtual/fakeroot-native=3D"pseudo-native"
>>> > The variables with slash are considered to be a directory and the one=
s with dash are considered to be a command.
>>> > Also shell cannot properly set the variables like FOO_machine.
>>> >
>>> > Should it be sourced with some specific shell or is that function wro=
ng and should be fixed?
>>> >
>>> > Best regards,
>>> > Tomasz Dziendzielski
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto

