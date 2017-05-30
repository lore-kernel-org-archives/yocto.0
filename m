Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4983E00B3D; Tue, 30 May 2017 10:15:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59887E00B19
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 10:15:05 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id 19so8592227qke.2
	for <yocto@lists.yoctoproject.org>;
	Tue, 30 May 2017 10:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YfLPFQKwvcqaJmn7X8DtCOCtizAzQqdhFGjtAsyBq90=;
	b=TGNug4J8+sJce52yVUALixhqjyJTIUhv+D9oV+gAZFIPKUTCvUPyTI+RByz/4y3F+4
	kLkJMyXPxeAgF9iuJE0ds8FCE+vFBjQH+zecmPXwjfmikEcE4xJuNbRzOBitsiEVNHx3
	aua5Tp7r2ThUHWPPCndTKqBHi948N8kazLdWxQzU6lg5utT4CoNfxw6FQcBTGjqbD7kd
	Qn5o2Gyy/d7EtZjcLLQhnxoZi4AeHRRnd6A8KlJWrPQIXAe5fvWWnAmhiV37XdJG9729
	hIXI7RoAai/NNY+Adh0JZuxvEbPd2GqW5aZh0cKdx7xIbl5ABUvSIvQmECoMr3y931tx
	SoDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YfLPFQKwvcqaJmn7X8DtCOCtizAzQqdhFGjtAsyBq90=;
	b=LbaX0E65dZYoCVLMRItDSVYUy5tHkOxk/9yVL7dHn1YQ8WsqJLP6aX98swwsY55SVd
	T36UKmApB3Pj6BIcu61d/AcN7Fx4z40B6J5ktSifSO1dkE2QDiOg2imP+ng6cZ+OEDWg
	XCut6uf6u2PZtru6O9lW4ve+YBmRliOyBRVHuENKGPAPC4tnyAFTBqleteFOxvkatIya
	1gPolFpW3WnQaY4ZBfgNQhkb3xBy4MQWQuXLVHcw1Q4VByH5R7g0tO5ycqNSPi1si/TH
	4qyk4bGi9q4k/d8Ir49AEg1kAcxtLrfUJ/NWYjuFf2ZlztXWkNEViefNf2iUOTj18T6y
	0VUQ==
X-Gm-Message-State: AODbwcCYCxF7GGv/60PIQYvAAB/vS9WsGXzNqWQATmBfEcmtgE5FVeg5
	5ChzgUmham0lxklgPeelwSXlb2XiRZ0H
X-Received: by 10.55.115.69 with SMTP id o66mr22456034qkc.120.1496164504383;
	Tue, 30 May 2017 10:15:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.167 with HTTP; Tue, 30 May 2017 10:15:03 -0700 (PDT)
Received: by 10.140.85.167 with HTTP; Tue, 30 May 2017 10:15:03 -0700 (PDT)
In-Reply-To: <CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
References: <20170530075723.18340-1-Martin.Jansa@gmail.com>
	<CAMKF1so+EmqtQFL-GbMyEQtpOOevOjRnqHbzXUvs4eb3m04XLw@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Tue, 30 May 2017 18:15:03 +0100
Message-ID: <CAPyrkgyar=GAr2QkqPe+Tjg=yp=yde_V3MKoXSeKZFb9StCXBw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-raspberrypi] linux-raspberrypi_dev: don't use AUTOREV
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
X-List-Received-Date: Tue, 30 May 2017 17:15:06 -0000
Content-Type: multipart/alternative; boundary="94eb2c050b96cf5d220550c0f1bf"

--94eb2c050b96cf5d220550c0f1bf
Content-Type: text/plain; charset="UTF-8"

On 30 May 2017 5:08 p.m., "Khem Raj" <raj.khem@gmail.com> wrote:

On Tue, May 30, 2017 at 12:57 AM, Martin Jansa <martin.jansa@gmail.com>
wrote:
> * use latest revision in rpi-4.11.y branch
> * using AUTOREV causes bitbake to run git ls-remote on the github.com
repository in order
>   to convert AUTOREV to currently latest SRCREV even when you don't use
linux-raspberrypi_dev
>   at all, just happen to have meta-raspberrypi layer in your
bblayers.conf, that's bad for
>   people who want to be able to build without network access (completely
from premirror)
>

These branches get rebased often so locking SRCREV caused another
kind of problem. what we can do is.

1. Let user like you override the SRCREC via a bbappend or conf file.
so change the assignment to ?=
2. Delete the recipe completely. We lose some of upstream testing.


We should be able to skip the recipe if it isn't selected as the preferred
version and/or provider of "virtual/kernel". I'm out at the minute so can't
look at it now but will try to take a look later this week.

--94eb2c050b96cf5d220550c0f1bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote=
">On 30 May 2017 5:08 p.m., &quot;Khem Raj&quot; &lt;<a href=3D"mailto:raj.=
khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br type=3D"attribution"><=
blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div class=3D"quoted-text">On Tue, May 30, 2017 at =
12:57 AM, Martin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin=
.jansa@gmail.com</a>&gt; wrote:<br>
&gt; * use latest revision in rpi-4.11.y branch<br>
&gt; * using AUTOREV causes bitbake to run git ls-remote on the <a href=3D"=
http://github.com" rel=3D"noreferrer" target=3D"_blank">github.com</a> repo=
sitory in order<br>
&gt;=C2=A0 =C2=A0to convert AUTOREV to currently latest SRCREV even when yo=
u don&#39;t use linux-raspberrypi_dev<br>
&gt;=C2=A0 =C2=A0at all, just happen to have meta-raspberrypi layer in your=
 bblayers.conf, that&#39;s bad for<br>
&gt;=C2=A0 =C2=A0people who want to be able to build without network access=
 (completely from premirror)<br>
&gt;<br>
<br>
</div>These branches get rebased often so locking SRCREV caused another<br>
kind of problem. what we can do is.<br>
<br>
1. Let user like you override the SRCREC via a bbappend or conf file.<br>
so change the assignment to ?=3D<br>
2. Delete the recipe completely. We lose some of upstream testing.<br>
<div class=3D"elided-text"></div></blockquote></div></div></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">We should be able to skip the recipe if =
it isn&#39;t selected as the preferred version and/or provider of &quot;vir=
tual/kernel&quot;. I&#39;m out at the minute so can&#39;t look at it now bu=
t will try to take a look later this week.</div></div>

--94eb2c050b96cf5d220550c0f1bf--
