Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16360E00D2A; Mon,  9 Oct 2017 03:22:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 850BDE00CD3
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 03:22:48 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id n195so7608005itg.1
	for <yocto@yoctoproject.org>; Mon, 09 Oct 2017 03:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TvIKCIa4BkwhkMPKt5dtKkGsejXXdYJ5dCSB8ucmpPM=;
	b=mmBkFdrRS8rQgWEU5bI/CKCK276sJOwq60ye9GDjy8kHhtWftHXca0ovZ0jZzHKW6h
	NwzYFcjYaId++nJCDWHcZl0xau6f24QOZdHvJpp9syXVpEp0iIl23/5ztA1/hpZN65fb
	Rlk5Nl0CLqq2k+lfIk8EjQHj+YV1sxL5Iho9v6hMJfcEOFqqCu5SoV+FVowEfy1qtfS4
	ruk54VqmeMBeCyz9jWw04SnFkn8z1osfW3OcJS9grKlvxFX4xr4AGDmFCl0/N7CmlSrV
	p7tzszzFaxALIg4j7niq1CujN7u1kQCVEWbi/ajj2lgIl6MPGPfSYnqrKZ9Bm60ShYjx
	MTuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TvIKCIa4BkwhkMPKt5dtKkGsejXXdYJ5dCSB8ucmpPM=;
	b=ts0nDjUMhrgosJe47JAFNkTrfaEmf4Ex7+9y8PplQU4rsR5wi6J6VQW8cKvtATZLfn
	wI5RJTILGozAfsCv7iUZRxfanX5ZezKqLePMv4INzs9vg57HAlzadEH2SUsY1xMuxdVY
	KlABG49UP1aI91g+FoMx+/JXuEDMoTAm3XFZ+F33glNLVNRyGM/9SrWN1AlPbueMZbcl
	OfbipU6FTTEZ5csOfuYBVk3x1z3/gA30ZQgtZZ629L/OPeVTd1/TCJXYnYx1kNQsTfyN
	X+apWrsfY9LG0jF2uY/q52AbE336TkCkUG1gLkiUx6h2VrPJ6sbE/nPRW+3Ea7iRzjWQ
	lXSg==
X-Gm-Message-State: AMCzsaWoQieXkT8rKkoa9YFHDHRS/RivptkCJB/L1Ff9F0MJzZlZAyAn
	XtsY0EkbVjJFNOsfJdDK3wrtOsW8rky7IpTpAawp5g==
X-Google-Smtp-Source: AOwi7QAH3iAd12CyjEQgfr4Hq52Tbn4suTTqlZeL2juNgN8YtF/Pz1umO1+MEyWhOvHgKpuG7/UaYDZdaR3iKcHrCTc=
X-Received: by 10.36.197.129 with SMTP id f123mr14605005itg.27.1507544568062; 
	Mon, 09 Oct 2017 03:22:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.205 with HTTP; Mon, 9 Oct 2017 03:22:27 -0700 (PDT)
In-Reply-To: <CAJ86T=UKUORO7ysPtX1-gUatEuD6ZT32Ji7=NZJ=Wu72q8DAyg@mail.gmail.com>
References: <233e125cbeac4053ad541b2e4b853168@XBOX02.axis.com>
	<CAJ86T=UKUORO7ysPtX1-gUatEuD6ZT32Ji7=NZJ=Wu72q8DAyg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Oct 2017 11:22:27 +0100
Message-ID: <CAJTo0LadPnkMO1h382HvxL52Od9q64DuogXj=FmrZcyVkdzLxQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][pyro] Fast-forward to master?
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
X-List-Received-Date: Mon, 09 Oct 2017 10:22:50 -0000
Content-Type: multipart/alternative; boundary="94eb2c07aab076793b055b1a9272"

--94eb2c07aab076793b055b1a9272
Content-Type: text/plain; charset="UTF-8"

On 5 October 2017 at 23:01, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Thu, Oct 5, 2017 at 1:46 PM, Peter Kjellerstedt
> <peter.kjellerstedt@axis.com> wrote:
> > I would like to suggest fast-forwarding the pyro branch of
> > meta-gplv2 to master. The only change that I see as questionable
> > is the change to mc, but since the change was accepted for master,
> > I see no reason why it should not be acceptable for pyro (even
> > though it is not necessary there).
>
> Agreed.
>
> I'm planning to submit the gmp fix for aarch64 as a backport to the
> GPLv2 gmp recipe in oe-core morty, so the same fix needs to be
> available in pyro too. Fast-forwarding meta-gplv2 pyro currently looks
> safe and in this case maybe better than trying to submit just that one
> fix into the meta-gplv2 pyro branch.


Agreed, done.

Ross

--94eb2c07aab076793b055b1a9272
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 5 October 2017 at 23:01, Andre McCurdy <span dir=3D"ltr=
">&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gm=
ail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Thu, Oct 5, =
2017 at 1:46 PM, Peter Kjellerstedt<br>
&lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kjellerstedt@axis.=
com</a>&gt; wrote:<br>
&gt; I would like to suggest fast-forwarding the pyro branch of<br>
&gt; meta-gplv2 to master. The only change that I see as questionable<br>
&gt; is the change to mc, but since the change was accepted for master,<br>
&gt; I see no reason why it should not be acceptable for pyro (even<br>
&gt; though it is not necessary there).<br>
<br>
</span>Agreed.<br>
<br>
I&#39;m planning to submit the gmp fix for aarch64 as a backport to the<br>
GPLv2 gmp recipe in oe-core morty, so the same fix needs to be<br>
available in pyro too. Fast-forwarding meta-gplv2 pyro currently looks<br>
safe and in this case maybe better than trying to submit just that one<br>
fix into the meta-gplv2 pyro branch.</blockquote><div><br></div><div>Agreed=
, done.</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--94eb2c07aab076793b055b1a9272--
