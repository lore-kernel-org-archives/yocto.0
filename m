Return-Path: <matthew_stanger@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1ADEE00AA2; Mon, 20 Mar 2017 10:35:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.176 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E6EE00B3E
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 10:35:07 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id p189so45618222pfp.1
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 10:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=grZG/H/4YDgDuBB7YLCGeJjsaSGccuz3Ri9ZMvYcgFE=;
	b=fcpWc9L7gp+xup+29V28mw1pQm/jF2yylsQsWDpfzl+/Y9tTUACRNRgjQcmg7cMVZC
	bUGj0PLJOCPxDPwSq9V0XJufoOUwxD1hmU7vxrAAWujSRWxmokwRBmYCIPZUc9+n9Btc
	wS1RbCHDDHkK4EsGg9ToJDq6uqAQmAq7UngVypj+QNWx0TMMdxJfN8YW1XsY8PMJ4GRw
	HcvmUFieKQgjVN+sIHNyyaZ6VwwtrXbU+lCx9gpLabqcf8aGj0Q8+1Iul9xp6eQHQoZ6
	hsa52rQmF72UmCyg+ftrKnN3BFESs7H4URlYy2jYDfSG04801fD71nyAcG6DO4p9mR4K
	7YQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=grZG/H/4YDgDuBB7YLCGeJjsaSGccuz3Ri9ZMvYcgFE=;
	b=I1fNaCaQDXN85jCT0X79InhDXjfjXqu12zHY5cD6Vh8I5gwZ3NLf99qpw0msMRrvIi
	qV/GdI2EvumeWX3ra2W80RfCkpfQC24NBsubxfWZG2mWpU+oKdcqRifxf9LskouYjlZ7
	8ZkoonGQ6MwCQro9+odHSLXf5I2HmRXABuhyL1X0KEIQKB3Ohuz+iTeYKJNKZmFWxPov
	HOyFtT/B8uViczrwoJDuI5jmgRB2q/X8kYEUUjoqBchButEuq5TqpPN9m0Uie06kwAsg
	PLeKrjfSVueuTGb1s3ySkFVdjB5WnAy3Be4DowqqTpaFXVNdOv8m+xZg26YcNcX8CYag
	amsw==
X-Gm-Message-State: AFeK/H1b8OKB8PcaSHH4dzDEVBAMGB7/zdjc6aBeSVysZyJxnabAj1Fgllvf5CLo6XdRf+1YqJUBwCnrXopXVMnl
X-Received: by 10.98.196.221 with SMTP id h90mr34104508pfk.149.1490031306895; 
	Mon, 20 Mar 2017 10:35:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.153.146 with HTTP; Mon, 20 Mar 2017 10:35:06 -0700 (PDT)
In-Reply-To: <4fe5a241-b774-aef8-da55-6fae5d4285fb@mlbassoc.com>
References: <CANr77M3+k7=+wux_zbMZ6juG-ppTpCgfqJ13fQ1L+XYB=9ubjg@mail.gmail.com>
	<4fe5a241-b774-aef8-da55-6fae5d4285fb@mlbassoc.com>
From: Matthew Stanger <matthew_stanger@trimble.com>
Date: Mon, 20 Mar 2017 11:35:06 -0600
Message-ID: <CANr77M3w1YZVVaMgm_gQWG0YG3fBEQvT22xg5Lf_upCtyxb7pQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Bumping all packages versions
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
X-List-Received-Date: Mon, 20 Mar 2017 17:35:22 -0000
Content-Type: multipart/alternative; boundary=94eb2c11d256c0c79f054b2cf259

--94eb2c11d256c0c79f054b2cf259
Content-Type: text/plain; charset=UTF-8

No.... Thanks I'm a rookie :)

On Mon, Mar 20, 2017 at 11:22 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2017-03-20 16:52, Matthew Stanger wrote:
>
>> Hi,
>>
>> I'm running Yocto 1.7.1 and was wondering if there was a simple way to
>> roll/bump all package versions. For example in
>> every .bb I want to bump PV = $version higher. I'm trying to do this as
>> we've designed our headless system to update
>> using opkg but now we are struggling to find a simple way to update
>> package versions, we're trying to stay away from
>> manually doing it as there is a lot of room for error when touching so
>> many packages. First, is there a way to brute
>> force bump all package versions and 2nd is there a way to only bump
>> packages that have changed code (like auto git hash
>> diff or something) without manually bumping the PV version in the .bb?
>> What is the proper way to handle you distro's
>> versioning at the package level?
>>
>
> Are you using the PR server?  That's pretty much what it's for.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c11d256c0c79f054b2cf259
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No.... Thanks I&#39;m a rookie :)</div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Mon, Mar 20, 2017 at 11:22 AM, Ga=
ry Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><span class=3D"">On 2017-03-20 16:52, Matthew Stanger wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I&#39;m running Yocto 1.7.1 and was wondering if there was a simple way to =
roll/bump all package versions. For example in<br>
every .bb I want to bump PV =3D $version higher. I&#39;m trying to do this =
as we&#39;ve designed our headless system to update<br>
using opkg but now we are struggling to find a simple way to update package=
 versions, we&#39;re trying to stay away from<br>
manually doing it as there is a lot of room for error when touching so many=
 packages. First, is there a way to brute<br>
force bump all package versions and 2nd is there a way to only bump package=
s that have changed code (like auto git hash<br>
diff or something) without manually bumping the PV version in the .bb? What=
 is the proper way to handle you distro&#39;s<br>
versioning at the package level?<br>
</blockquote>
<br></span>
Are you using the PR server?=C2=A0 That&#39;s pretty much what it&#39;s for=
.<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
------------------------------<wbr>------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------<wbr>------------------------------<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c11d256c0c79f054b2cf259--
