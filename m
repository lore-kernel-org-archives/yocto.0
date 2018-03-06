Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98D06E00E43; Tue,  6 Mar 2018 15:13:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2285CE00AF2
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 15:13:44 -0800 (PST)
Received: by mail-it0-f49.google.com with SMTP id u66so991378ith.1
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 15:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wQ9JMehNFrGpOsgf03ZZv52YFhAI/y5uizt+S/zsukg=;
	b=GEmqfCsonT0e7VsY7f2c01ggFYKkTcc8mPM/zfYL1g/zkrfgy9Ai33PE1/hjhH8XzU
	5BkVmYXs6H1/NPDX2wA2BYXdMhnm+1N3jFuWHbq/swI/DML84mpLPZUwdel9Vt7pqX1E
	xfLjz5+bsQLOGbJmb8clr0+BgZV9CaW0hHB3QMxsNJ4lTtDmzoYaIEAM3XAXwt2WGvMT
	lizGXlC+7ZbgnzMs8EeZ2f6v9rDhpEdTBC7FU4Y91paEa0zGBdOsoUc1fNoJFcVhJZ/g
	jTyAmnNr2A69Jearvna+O9rS8h/5M1NzGJXnjdLuOPhlvAjaw9uhi7NV5yteiDDx6yc6
	s16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wQ9JMehNFrGpOsgf03ZZv52YFhAI/y5uizt+S/zsukg=;
	b=oKs8c3L0lCUHCio0EuOTn7NlDnGiZZ6uNuArJYe5ANzEOIDssLpZYDeK1u53kezVoZ
	CI0Yu5+28iCE2MCy7ySe/DHqeoNo+5fhZ5fgwdrIfP4bwxeWS98S6/LN8OR5pei6/jb7
	tpCTkGXEl9SKN9/tushy7YqMuEstqRqu6758fqYiZK+Yl0f9GOXbeb2lCqhB6u9jeYLu
	mzeMIPXznhhlbs8GjRpI4xx+hd9H20Qq26khZY14orwd/BbFqQ6o7OUt/sxqn++O0lf0
	7Sm2SYbsmvL+3SpbH1M/pPYMzweCohGqCK5HH7sqMBV5pn1IVqDLRtCTv4D+XoNj7TsG
	3FJg==
X-Gm-Message-State: AElRT7H2VniiDMOMQ2552y8jMnQUcxCxB8UaVzaEQYte0yd0KFLiHmtv
	a2Smp5urSEd3n4vG106JOdK2TgzNssmjHaR7bdAvaA==
X-Google-Smtp-Source: AG47ELud2CWv4Dzf9u7MTZ+oD5GX8y01UFgMi5ypi8SB3rsZoNtvZktH/wcfvw8KsCZ7p+wN4GHYUEhytbIhwq+eDBI=
X-Received: by 10.36.185.24 with SMTP id w24mr20139278ite.127.1520378024367;
	Tue, 06 Mar 2018 15:13:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 15:13:23 -0800 (PST)
In-Reply-To: <CAFzUWGkdc0G3yXx3miOWRnKtax472LLYPjXm=uoyH3_CZ7tLkA@mail.gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
	<CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
	<CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
	<CAFzUWGkBGD__BLGC2RXwbo6npoqMT7krRPseT1Ax-9H9PNmVJQ@mail.gmail.com>
	<CAJ86T=Wvf7G6PMXBPXf+X=cbc6o6GbeTsr+pGPQzS-i9hMzKTw@mail.gmail.com>
	<CAFzUWGkdc0G3yXx3miOWRnKtax472LLYPjXm=uoyH3_CZ7tLkA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 23:13:23 +0000
Message-ID: <CAJTo0LZnZva5gWgP-19HMKsrM+Y3s1Jt10NA9fsbirmv4HT1dw@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 23:13:45 -0000
Content-Type: multipart/alternative; boundary="f403045d9a501137db0566c698a0"

--f403045d9a501137db0566c698a0
Content-Type: text/plain; charset="UTF-8"

On 6 March 2018 at 22:12, Giordon Stark <kratsg@gmail.com> wrote:

> Hi Andre,
>
> I tried without
>
> FILES_${PN}_append = "${includedir}/open62541.h"
>
> and got a QA error about a file installed that was not added to a
> package.... I don't understand the ${PN}-dev here, and I'm not sure how
> packaging works in this context - since it's not clear to me which files
> get installed and which don't... except for when a recipe that depends on
> this breaks because it can't find the header file.
>

The cmake files should also be in the -dev package.   If I were you I'd
remove all FILES_* lines from your recipe and just add:

FILES_${PN}-dev += "${libdir}/cmake"

If you get QA warnings from that then you can use bitbake -e open62541 to
see the data store values.  Search that for the FILES_${PN}-dev assignment,
it's initial value is from bitbake.conf and has ${includedir} in.
Something else must be incorrectly overriding it.

Ross

--f403045d9a501137db0566c698a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 6 March 2018 at 22:12, Giordon Stark <span dir=3D"ltr">=
&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com<=
/a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Andre,<div><br></div=
><div>I tried without</div><span class=3D""><div><br></div><div><div>FILES_=
${PN}_append =3D &quot;${includedir}/open62541.h&quot;</div></div><div><br>=
</div></span><div>and got a QA error about a file installed that was not ad=
ded to a package.... I don&#39;t understand the ${PN}-dev here, and I&#39;m=
 not sure how packaging works in this context - since it&#39;s not clear to=
 me which files get installed and which don&#39;t... except for when a reci=
pe that depends on this breaks because it can&#39;t find the header file.</=
div></div></blockquote><div><br></div><div>The cmake files should also be i=
n the -dev package. =C2=A0 If I were you I&#39;d remove all FILES_* lines f=
rom your recipe and just add:</div><div><br></div><div>FILES_${PN}-dev +=3D=
 &quot;${libdir}/cmake&quot;</div><div><br></div><div>If you get QA warning=
s from that then you can use bitbake -e open62541 to see the data store val=
ues.=C2=A0 Search that for the FILES_${PN}-dev assignment, it&#39;s initial=
 value is from bitbake.conf and has ${includedir} in.=C2=A0 Something else =
must be incorrectly overriding it.</div><div><br></div><div>Ross=C2=A0</div=
></div></div></div>

--f403045d9a501137db0566c698a0--
