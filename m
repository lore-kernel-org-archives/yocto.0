Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62A2EE00D4E; Wed,  8 Nov 2017 08:23:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC6CE00D42
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:23:57 -0800 (PST)
Received: by mail-ot0-f169.google.com with SMTP id u41so2736588otf.12
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=m6lVFICZMkhsa9uiGWUgPRnh8E+XtSsoIU/6brVC93k=;
	b=JEbam+akJzhMBuCS90W7UWmEpRUbNnlDMenkerw8RneUb496nsyDqwTW18TqB1eGN7
	RUUk2+7IpzBI80/npVwYcFdm2847M2nSLZAYBvuLu9Mbxj0iZVe4rKT26uolForydCnm
	vHB3r3yKwEcN+lUC6msRpzQv07xsVc2b6c1ni+syEuA1QmtmCkFF0RSpGeqww8X6rCjA
	0GalMD8J9d75QLpmutfyqr3YZDXvPNBIlqJtlLaAIUkVJ+55GM9PVprBfvVgjrxXnU3O
	5yzIqmuNiziXVcGl1CR1Zx872GuDYZzY/cSVZ6jWL2ymvfjaIQ6idX9VRGldEWMxu5E3
	90Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=m6lVFICZMkhsa9uiGWUgPRnh8E+XtSsoIU/6brVC93k=;
	b=bpE+GmSlajsQRjZl8oVrSno7ZTBGDfpEUw4x4y2BZznT6mmoxfva3ad8+D1dO/l11M
	ge52xmhn/TWJFLD++6Xaplwn684SNqn6h86cxTjUdfYmLLCEtExDxVfXUi1JedVawA6U
	QOMTG83tzTwR4R8G9rmQV4ThUoviIq2b+Alute2TVeyduDNVccKHm6VP5KJUQ4qn3LWc
	jm+DYYt2508PLlumbJmSuVE0RWPU0zyF9hbWDVfwN+LPKKHlmp0/czo6nU7enaA+3Dgg
	FfTvjOOKvqtWPEHiv1FZjrOJ1G3GatYH/VdZWvq0eRXzPcZhgDpjoiQRjMWrFvObt3FS
	D63g==
X-Gm-Message-State: AJaThX6/B6TLNV/wLzY7bVFrk7bOsIOJpICf2ayyi3kVvrGq82Jrsc3V
	a613hjlyNrumFwIR9Joku+itBIn7I7QAVqtTyWHJCml6
X-Google-Smtp-Source: AGs4zMY48tlhUmiqGRm0UYa8BSkTzmY/7queXv7EbF8YwGIouwVA0XSWFOR+3N8OXpzs4HtzMdEmykcAXMomkvsj5/Q=
X-Received: by 10.157.68.232 with SMTP id p40mr720541otg.199.1510158237104;
	Wed, 08 Nov 2017 08:23:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 08:23:56 -0800 (PST)
In-Reply-To: <CAJTo0LYdYRBPqKaAPgnzJy=rxKPDYDsPV-Bko2aD64EtGJT2fg@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<CAJTo0LYdYRBPqKaAPgnzJy=rxKPDYDsPV-Bko2aD64EtGJT2fg@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 11:23:56 -0500
Message-ID: <CAE0QtjO=G=39TGZ1j7WjJG9=Yc562NOhSwFF3JMxmmGSOCWwBA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:23:58 -0000
Content-Type: multipart/alternative; boundary="f403043c4d1c4700f8055d7b1dfc"

--f403043c4d1c4700f8055d7b1dfc
Content-Type: text/plain; charset="UTF-8"

I am not talking about my own layer or recipe.
It happens even when I run the demo QEMU/beaglebone builds.
(I just download poky, and make NO modifications)




On Wed, Nov 8, 2017 at 11:21 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 8 November 2017 at 15:49, Jerry Lian <jerry.lian@gmail.com> wrote:
>
>> I am not sure whether it is a bug or an error:
>> * Quite often, bitbake will fail before finishing, with message like: ...
>> task failed with exit code 1...
>> * But if you rerun bitbake, it will continue to build.
>> * So sometimes I have to rerun many times for finish one build ----
>> annoying!
>> (by the way, my CPU can run 16 threads)
>>
>
> If you tell us what recipe is failing, and what the actual error is, then
> we may be able to help.  Generally this is a bug in the makefiles that the
> recipe is building and not a problem with Yocto itself.
>
> Ross
>

--f403043c4d1c4700f8055d7b1dfc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am not talking about my own layer or recipe.<br></d=
iv>It happens even when I run the demo QEMU/beaglebone builds.<br>(I just d=
ownload poky, and make NO modifications)<br><br><br><br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 11:21 A=
M, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.c=
om" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr"><span class=3D"">On 8 November 20=
17 at 15:49, Jerry Lian <span dir=3D"ltr">&lt;<a href=3D"mailto:jerry.lian@=
gmail.com" target=3D"_blank">jerry.lian@gmail.com</a>&gt;</span> wrote:<br>=
</span><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span class=3D=
""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div=
><div>I am not sure whether it is a bug or an error:<br></div>* Quite often=
, bitbake will fail before finishing, with message like: ... task failed wi=
th exit code 1...<br></div>* But if you rerun bitbake, it will continue to =
build.<br></div>* So sometimes I have to rerun many times for finish one bu=
ild ---- annoying!<br></div>(by the way, my CPU can run 16 threads)</div></=
div></div></blockquote><div><br></div></span><div>If you tell us what recip=
e is failing, and what the actual error is, then we may be able to help.=C2=
=A0 Generally this is a bug in the makefiles that the recipe is building an=
d not a problem with Yocto itself.</div><span class=3D"HOEnZb"><font color=
=3D"#888888"><div><br></div><div>Ross</div></font></span></div></div></div>
</blockquote></div><br></div>

--f403043c4d1c4700f8055d7b1dfc--
