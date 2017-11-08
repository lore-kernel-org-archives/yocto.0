Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 359F9E00D4C; Wed,  8 Nov 2017 08:24:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87CABE00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:24:56 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id u132so3942655ita.0
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qpKvZMVMn3Ibst9M4vjs2NzAi8EG0F+xlx7vQkW/IJA=;
	b=BvuOfRNkIkpe3KPX38CEoPVEU4s6Q99/Uoi3ZEdqnnYY1HrYodNQG5q6FevGZg+80m
	zk3QzJhQBQDXGr6WkD6xDkdxK/r9dppIFqUOSX6j2gsxLEL6aBhDv7XvkroomhjjL1pK
	hXk+iGwdXxmYNJTYO3tL0dFou7v7T8eIjy+L/Y3GX8oW5TmeXrX5xX/lwpMRmUMUMPN0
	R6qT56a3fV4VuOyvCEGWJqxkhRTd19n8r+K7u0lCvRRjgPUonaF51MHegVor/2+Zo8bt
	1kd3LGckVNW7z5CrItmU1vXtpncOFCWhnqyXSg0//Nm575GZ2pGSOtkoHDYzIx/NwPwS
	pHoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qpKvZMVMn3Ibst9M4vjs2NzAi8EG0F+xlx7vQkW/IJA=;
	b=EhszuhhaSDZLzXarZi1+pzJYCxb3v/14VylZm+EpgUBr+UapQZlOLtwUOk8+BQpELU
	CmoMiWXOnSyYsoUxsCGYlUqfMXlVZJO6CJxnqvU+2+ttUWe/lYhkdcQY4Dyv0Be7NdQW
	jCyDATTNDuHnaLMUoO6rB79vitpQBOOzebbACTKoq4qvKrt85LP1daPf44CVLxuhF2HN
	mwrJgwN5nETVB/azPx8yq/UuW7My2EySeJQrd8uzb8TOmxkViaCCTyGMFEWAs2w00Jse
	4ifJyjsJ6dbTHzpc2sym1sJNyQAfRgiCsQKiPA/pKa4u35xndhkUR1oOZBmQdpx8Zkoz
	csgg==
X-Gm-Message-State: AJaThX6lAA2H7ufE9vLkK0oQdaX5/VFtMxG4QGWfQHIkMQNhSvK2jH4V
	ljiZ6iA6vIw4qQWU/DAZfFwnoMK3+GFQBTJM5kUn1w==
X-Google-Smtp-Source: ABhQp+T4RpVX1hUZoItHLs1Z1MZlF8jTTQ9ik10Zw2hOv+tBKwJ1bmopezcyJ4uEMCv5Fkpm2RYAeQaKPuApaqQ3S7g=
X-Received: by 10.36.81.21 with SMTP id s21mr1478586ita.144.1510158295335;
	Wed, 08 Nov 2017 08:24:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 8 Nov 2017 08:24:34 -0800 (PST)
In-Reply-To: <CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Nov 2017 16:24:34 +0000
Message-ID: <CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 08 Nov 2017 16:24:57 -0000
Content-Type: multipart/alternative; boundary="001a113a7146bf9bcf055d7b20a6"

--001a113a7146bf9bcf055d7b20a6
Content-Type: text/plain; charset="UTF-8"

The autobuilder does about 50 builds a night using pure poky and we don't
see this, so again: what recipe and what errors?

Ross

On 8 November 2017 at 16:22, Jerry Lian <jerry.lian@gmail.com> wrote:

> I am not talking about my own layer or recipe.
> It happens even when I run the demo QEMU/beaglebone builds.
> (I just download poky, and make NO modifications)
>
>
>
>
> On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <eas@sw-optimization.com>
> wrote:
>
>> Most likely a dependency problem of the package which fails w/ exit code
>> 1.
>> Check the dependencies in the recipe and w/ Yocto's bitbake it self.
>>
>> Cheers
>> Eric
>>
>>
>> Am 08.11.2017 16:49, schrieb Jerry Lian:
>>
>> I am not sure whether it is a bug or an error: * Quite often, bitbake
>>> will fail before finishing, with message like: ... task failed with exit
>>> code 1... * But if you rerun bitbake, it will continue to build. * So
>>> sometimes I have to rerun many times for finish one build ---- annoying!
>>> (by the way, my CPU can run 16 threads)
>>>
>>> Any idea to clear this annoying bug? thanks.
>>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113a7146bf9bcf055d7b20a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The autobuilder does about 50 builds a night using pure po=
ky and we don&#39;t see this, so again: what recipe and what errors?<div><b=
r></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On 8 November 2017 at 16:22, Jerry Lian <span dir=3D"ltr">&lt;<=
a href=3D"mailto:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"i=
m HOEnZb"><div dir=3D"ltr"><div>I am not talking about my own layer or reci=
pe.<br></div>It happens even when I run the demo QEMU/beaglebone builds.<br=
>(I just download poky, and make NO modifications)<br><br><br><br></div></s=
pan><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 10:56 AM, Eric Schwarz <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimization.com" target=3D"_b=
lank">eas@sw-optimization.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">Most likely a dependency problem of the package which fails w/ e=
xit code 1.<br>
Check the dependencies in the recipe and w/ Yocto&#39;s bitbake it self.<br=
>
<br>
Cheers<span class=3D"m_-5461088350158078915HOEnZb"><font color=3D"#888888">=
<br>
Eric</font></span><div class=3D"m_-5461088350158078915HOEnZb"><div class=3D=
"m_-5461088350158078915h5"><br>
<br>
Am 08.11.2017 16:49, schrieb Jerry Lian:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I am not sure whether it is a bug or an error: * Quite often, bitbake will =
fail before finishing, with message like: ... task failed with exit code 1.=
.. * But if you rerun bitbake, it will continue to build. * So sometimes I =
have to rerun many times for finish one build ---- annoying! (by the way, m=
y CPU can run 16 threads)<br>
<br>
Any idea to clear this annoying bug? thanks.<br>
</blockquote>
</div></div></blockquote></div><br></div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113a7146bf9bcf055d7b20a6--
