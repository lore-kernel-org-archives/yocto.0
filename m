Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 479DDE0097C; Thu, 20 Oct 2016 00:54:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.179 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73356E008E4
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 00:54:33 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id q7so43538654qtq.1
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 00:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/Lr4wIfvPIQPFx3B8tl/jp6YnRNUuMliPn9rtih4o4Y=;
	b=Wqk4dJ2KlI5fZRES3aMrKYRzd4ccVty6bw/MY9JxPqTz9VsB/9ELoqA/CCop1LALod
	o1rOmmTKgmGSs/MELdcut56Z1Qssqii+/5aT7u6JY5I16YejqSvPZCjnOcx5Bc8GasN/
	P6ifwBKyafgvgOLasHsDsdhhlG/+hMhXIN00loqSr5TpoYZ9zs3y1xLLX/98jpbpQwqr
	Se1wwClGZJKK6iADg4bGSNGRUgYNHZ9RZrY5EJNogAB4F28FixeK0ahpKUsAbY6fQv5L
	421I+NJ+2w6poMXq/mwEoO1jtDeubb1zF9aE1/ltInQ/GH8MXWGFteDfuvjkVvyXHTlC
	Rkgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/Lr4wIfvPIQPFx3B8tl/jp6YnRNUuMliPn9rtih4o4Y=;
	b=LNZvfXh8nh5avOOBZvfGcRxJuBi1Vgdmf5rtAbW3oGFPOMUlTc9dL0oGfbo2HPbwnn
	AuY3fNrCs0wd9GMadxVzNe7CNhX82+pvC4ByJ8k5kdZszx3bivVL+WMTvxyQykc50uCT
	q+1QvCvl090dD5jpKaq6iQ5eno5y62Ah8mHqUlo9tP+CGz4w0JOq2FMA/yK3ejbmbUfS
	alFEUwmkG+MWbmZUC4lnOCuP2Pz4/Lnx0eSi2irqVnC906xb3zHKVBnnaJJHJdJ3nAcq
	byZC9tJRZftnzMyZQH2goTpqX2BYPtftk1efxw6SPJPnaXzhanXA0eWRnWkrlN5iHhg9
	etrw==
X-Gm-Message-State: AA6/9Rnvpeb9Vs2HS5RoTbaIosaMHrvtsrI02ZOhnXkwFfMC+7YDS4aS2yMHSwUynIPMfG59O9FJHWdPh00gOVuG
X-Received: by 10.200.40.91 with SMTP id 27mr10361017qtr.135.1476950072305;
	Thu, 20 Oct 2016 00:54:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Thu, 20 Oct 2016 00:54:11 -0700 (PDT)
In-Reply-To: <CAHiDW_H8L8qeu2b0YedQo3WHswA4xtJD35BRFBumWVFWGnO+iQ@mail.gmail.com>
References: <KL1PR0601MB13175BBDFAD7F68C9822C148F8D30@KL1PR0601MB1317.apcprd06.prod.outlook.com>
	<CAJTo0LaEWJdfY0b-rHkoNc0kxCU2-rGr5C-thBQapbswe_9XLA@mail.gmail.com>
	<CAHiDW_H8L8qeu2b0YedQo3WHswA4xtJD35BRFBumWVFWGnO+iQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Oct 2016 08:54:11 +0100
Message-ID: <CAJTo0LYRG7UJMRhTj2ARKKT2RAfXTojAwzz8unRHv2zMUCnkrw@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Nick Wareing <nick.wareing@aranzmedical.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install mozroot-certdata package on a read only root file system
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
X-List-Received-Date: Thu, 20 Oct 2016 07:54:38 -0000
Content-Type: multipart/alternative; boundary=001a114158686946a5053f473cfe

--001a114158686946a5053f473cfe
Content-Type: text/plain; charset=UTF-8

On 20 October 2016 at 07:59, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> You'll have to extend the recipe to run mono inside a qemu, there are
>> plenty of other recipes that demonstrate how to do this (fontcache and
>> gio-module-cache classes come to mind, although they also use intercept
>> scripts to avoid running qemu more than once).  Basically, use the qemu
>> class.
>>
>
> Why qemu? There's a mono-native which I would expect to work unless the
> certdata is somehow platform specific (?)
>
> There's also an additional problem that came up on stack overflow:
> mozroots.exe is hard coded to output to a specific file so that would have
> to be fixed as well.
>

Erm, yeah.  Next time I'll think for a second - of course mono-native
should work!

Ross

--001a114158686946a5053f473cfe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 October 2016 at 07:59, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extr=
a">You&#39;ll have to extend the recipe to run mono inside a qemu, there ar=
e plenty of other recipes that demonstrate how to do this (fontcache and gi=
o-module-cache classes come to mind, although they also use intercept scrip=
ts to avoid running qemu more than once).=C2=A0 Basically, use the qemu cla=
ss.</div></div></blockquote><div><br></div></span><div>Why qemu? There&#39;=
s a mono-native which I would expect to work unless the certdata is somehow=
 platform specific (?)</div><div><br></div><div>There&#39;s also an additio=
nal problem that came up on stack overflow: mozroots.exe is hard coded to o=
utput to a specific file so that would have to be fixed as well.</div></blo=
ckquote><div><br></div><div>Erm, yeah.=C2=A0 Next time I&#39;ll think for a=
 second - of course mono-native should work!</div><div><br></div><div>Ross=
=C2=A0</div></div><br></div></div>

--001a114158686946a5053f473cfe--
