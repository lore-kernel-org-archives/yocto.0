Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C04BE008A6; Tue,  3 Feb 2015 04:01:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.41 listed in list.dnswl.org]
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9218FE0086F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 04:01:37 -0800 (PST)
Received: by mail-qa0-f41.google.com with SMTP id bm13so33401889qab.0
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 04:01:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=o5hCYy0MQh3r6k60Py4fhQPVWZgkTmhCvy7+Oiw97G4=;
	b=ckA9mfCFvfZqNrIOrk4DIBFjJA6ojHi60uBBhqQShhYNgsqLo97gkEbB6X50RWkRLC
	qsvo9dlJg7Ox27SPhAHOwYSGpsfzYJq9VXXqGi0DvQB6wLgziO8/hcx35LUgJoHCx/bo
	RDoY5GulMB+Q+jg9J6nS/01Kiiccawk26NcCAqM4KprqC2yff+gu6yTsQPljDrjXk+X5
	9SFBPcUMhhrIk6g0GshVR93TgqjU5sf9u7j+wjB2vtUf5N7OpvmnTewmPVH2I3uIkh9z
	wZTPyzoBdZawkegT+Eh9vA+BkCuhJ4FbBAqrQ7mbSlzry2vyWtD/eAL5PrbMtHa3+Y5o
	kpqg==
X-Gm-Message-State: ALoCoQn2Jw8v43FIMhf7GET7T5kRhYAsauj0jiwkB6oBXSEzx77bVx48OIuuxuhQIEI2MNzZZN7I
X-Received: by 10.224.12.19 with SMTP id v19mr50389456qav.22.1422964896813;
	Tue, 03 Feb 2015 04:01:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 3 Feb 2015 04:01:16 -0800 (PST)
In-Reply-To: <2359761.Daau3xpYjF@peggleto-mobl5.ger.corp.intel.com>
References: <30DC4EDFD798C94083F3E083754532CC73DECC32@G08CNEXMBPEKD02.g08.fujitsu.local>
	<2359761.Daau3xpYjF@peggleto-mobl5.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Feb 2015 12:01:16 +0000
Message-ID: <CAJTo0LbUzTD=k=L14xex50ArEmZJZm3HxXLDMU5bm=Mwt3o7bg@mail.gmail.com>
To: "Bian, Naimeng" <biannm@cn.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFC]provide native recipe for every package
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
X-List-Received-Date: Tue, 03 Feb 2015 12:01:51 -0000
Content-Type: multipart/alternative; boundary=089e0149cadc33f926050e2dd5e6

--089e0149cadc33f926050e2dd5e6
Content-Type: text/plain; charset=UTF-8

On 3 February 2015 at 09:55, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> Assuming what you mean is BBCLASSEXTEND = "native" for every recipe, I
> don't
> think we want to do this. There are a lot of things that should simply be
> provided by the host rather than us building them; we need to be selective
> about what we build as a workaround for the host not providing a suitable
> version.
>

Also, simply adding BBCLASSEXTEND="native" doesn't magically work all the
time. Options may need to be changed, dependencies altered, and so on.  By
making this opt-in someone has to test that it actually works.

Ross

--089e0149cadc33f926050e2dd5e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2015 at 09:55, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":438" class=3D"a3s" style=3D"overflow:hidden">Assuming what you mean is=
 BBCLASSEXTEND =3D &quot;native&quot; for every recipe, I don&#39;t<br>
think we want to do this. There are a lot of things that should simply be<b=
r>
provided by the host rather than us building them; we need to be selective<=
br>
about what we build as a workaround for the host not providing a suitable<b=
r>
version.</div></blockquote></div><br>Also, simply adding BBCLASSEXTEND=3D&q=
uot;native&quot; doesn&#39;t magically work all the time. Options may need =
to be changed, dependencies altered, and so on.=C2=A0 By making this opt-in=
 someone has to test that it actually works.</div><div class=3D"gmail_extra=
"><br></div><div class=3D"gmail_extra">Ross</div></div>

--089e0149cadc33f926050e2dd5e6--
