Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95F49E00ADB; Sun,  5 Mar 2017 19:55:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE66FE00ACD
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 19:55:15 -0800 (PST)
Received: by mail-lf0-f65.google.com with SMTP id y193so10633137lfd.1
	for <yocto@yoctoproject.org>; Sun, 05 Mar 2017 19:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=w8C4m0doozzley3nRvrV/DW3XON9AVkhm6fD67vEIF8=;
	b=kieccqm3csBXjMwRwmgVkOevPZ02Br/KOYE0rsPgQoLIc1l2fM8WRzEYCDsGcIUZwt
	9QRWS+xYABDxqirjCBQ2/3tBEHi2oQfU9LvtrEmUxRc3YerUPSBzqhJuhZC7y1R3FLFK
	DCJdb7kGx399FnsitYeYo8JlBRTtYWpByT6Jw8nJNskkWxJrkgbUje6Dtb8VjbWFAuk1
	4pWWXLutG3C2c4n6olqpBx6g29LE3bQSDxLjMHgXVDMZ+34u15MF7DdUdmA3152W+H5q
	AfSMYGNbS1amrYpu1Wd/sN/5VvGTyPFBvdGG2cfD1nZZncxVv5+H4X3y/meHf3fKD6Vr
	SH8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=w8C4m0doozzley3nRvrV/DW3XON9AVkhm6fD67vEIF8=;
	b=Rt6b3zq/AP6u0YDf/TqKxU+pBwWlRPRD+MYJBQz6eYyJANy9OXe8V0D3evqWohwKWk
	5XZ20KirlZEcnF/WdMKRbRvGJIDIsCGx8HKIVatH0bkCgSuZIGoYzFb8OdbgTVvVV45w
	8WJRSb6H/m+mZbnHE/ABKph4+qfSBOQcdZ0nTnfIQ9DGOma0YbW0i/6x0izBF+lYsUpA
	7I4JQeWmktLwBA73wK6zujOk0X13ALqsjNF6MZswKW6de3W777+ptO7GdS0Vtt9hPNEK
	+8Wt35rXnrk8gXAAKQ708Y8+YUTJESrBeoJh75rVyKyq2PwlFu4qMrDGib1K4t13qBT/
	V4Ug==
X-Gm-Message-State: AMke39lLHVt9Y0nhOLhakfU/rj+IVTHHU0pMxn8wLvAjrQZX4wSXBcGaRUze/NBS89RsAyf9qQcqrqVZKCm5dg==
X-Received: by 10.46.77.150 with SMTP id c22mr4528930ljd.114.1488772514489;
	Sun, 05 Mar 2017 19:55:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Sun, 5 Mar 2017 19:55:14 -0800 (PST)
In-Reply-To: <5376807.ONOkBILuBt@peggleto-mobl.ger.corp.intel.com>
References: <CAF1M0z6T9MxDSPtDrvafKJJsnGgfnYYrOOztwE6emECPUO73iw@mail.gmail.com>
	<5376807.ONOkBILuBt@peggleto-mobl.ger.corp.intel.com>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Mon, 6 Mar 2017 09:25:14 +0530
Message-ID: <CAF1M0z4EXWkmOXm285fpe0VV2+MKPOCDfMYGbzAuzhB-gPDuew@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Issue: SDK
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
X-List-Received-Date: Mon, 06 Mar 2017 03:55:17 -0000
Content-Type: multipart/alternative; boundary=94eb2c1abc02e0abcb054a07dc3b

--94eb2c1abc02e0abcb054a07dc3b
Content-Type: text/plain; charset=UTF-8

Thanks Paul, for putting the correction.

On Mon, Mar 6, 2017 at 1:20 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Monday, 6 March 2017 6:09:06 AM NZDT SatyaNarayana Sampangi wrote:
> > I am trying to develop the application using SDK, everything goes fine,
> but
> > when it comes to compiling it is failing.
> >
> > The details are given below,
> >
> > [Satya]/opt/poky/1.6.3
> > source environment-setup-cortexa8t2hf-vfp-neon-poky-linux-gnueabi
> > [Satya]/opt/poky/1.6.3
> > ${CC} sample.c -g -o sample
> > /opt/poky/1.6.3/sysroots/x86_64-pokysdk-linux/usr/libexec/
> arm-poky-linux-gnu
> > eabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot open output file
> sample:
> > Permission denied
> > collect2: error: ld returned 1 exit status
> > [Satya]/opt/poky/1.6.3
>
> This is a pretty straightforward error. Either you have a file called
> "sample"
> already existing with permissions that do not allow your current user to
> overwrite it, or the directory itself does not have permissions set
> allowing
> you to write files to it. Either way, you probably shouldn't be doing your
> work with the standard SDK in the SDK installation path - create a new
> directory somewhere more appropriate (e.g. under your home directory) for
> your
> source code and build your files there.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--94eb2c1abc02e0abcb054a07dc3b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul, for putting the correction.</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Mar 6, 2017 at 1:20=
 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@li=
nux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Monday, 6 M=
arch 2017 6:09:06 AM NZDT SatyaNarayana Sampangi wrote:<br>
&gt; I am trying to develop the application using SDK, everything goes fine=
, but<br>
&gt; when it comes to compiling it is failing.<br>
&gt;<br>
&gt; The details are given below,<br>
&gt;<br>
&gt; [Satya]/opt/poky/1.6.3<br>
&gt; source environment-setup-<wbr>cortexa8t2hf-vfp-neon-poky-<wbr>linux-gn=
ueabi<br>
&gt; [Satya]/opt/poky/1.6.3<br>
&gt; ${CC} sample.c -g -o sample<br>
&gt; /opt/poky/1.6.3/sysroots/x86_<wbr>64-pokysdk-linux/usr/libexec/<wbr>ar=
m-poky-linux-gnu<br>
&gt; eabi/gcc/arm-poky-linux-<wbr>gnueabi/4.8.2/ld: cannot open output file=
 sample:<br>
&gt; Permission denied<br>
&gt; collect2: error: ld returned 1 exit status<br>
&gt; [Satya]/opt/poky/1.6.3<br>
<br>
</span>This is a pretty straightforward error. Either you have a file calle=
d &quot;sample&quot;<br>
already existing with permissions that do not allow your current user to<br=
>
overwrite it, or the directory itself does not have permissions set allowin=
g<br>
you to write files to it. Either way, you probably shouldn&#39;t be doing y=
our<br>
work with the standard SDK in the SDK installation path - create a new<br>
directory somewhere more appropriate (e.g. under your home directory) for y=
our<br>
source code and build your files there.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--94eb2c1abc02e0abcb054a07dc3b--
