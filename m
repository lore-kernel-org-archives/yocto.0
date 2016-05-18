Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 628B2E00C7D; Wed, 18 May 2016 04:10:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B72B8E00C66
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 04:10:13 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id f89so60067942ioi.0
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 04:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=X024nIZ0lc3U/wMCo4Vd/tyaPH7WCVIX+2h+r38jZRY=;
	b=Wn2LS++DAtcWJfYWrj06q8Rmbn/VW6UEfyLr/ViFGqHR5ujJrqNZVVtmFaAkJmmOIN
	09QiMQ/RryJHC1U2qWnQqWk0Puq2CbLqbRvBGm2VLw7XrFNNsSO1tlIFeU2jclIl1Wpb
	Qo6+PReXAMJu4CVjl4IDkqB0wdDpL++GQ2tu3y8vSOzzSOJvPb9NWWRaXS2YFoTTRrJ0
	lfAEalusjBH2V83ZZt8EEVxFS3gHcgXMcYTierSjtEhXhkjYWgLBHV9OT1q/R4ZagvhK
	jiwPUHjf/UWDaSOnttH/Cm2HMN4fgseWpoT+PjOzyS2/Inn0jwxLxTMpd4Cf7/HDobR0
	d4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=X024nIZ0lc3U/wMCo4Vd/tyaPH7WCVIX+2h+r38jZRY=;
	b=ZTeOoxaga1NVf/TOwmg1D3tj+q7WjmINN5y+3ubDQ85KMVsq+fWQe7FOqggLSI9Z1/
	p4OWJt+7RbGUkSWxNCB6e5rs2NVDVR/8kCSOxWVziSjYhjw26L77kG2nFRYV8lmo1BkD
	wilTxd1VcNKAUyfRwRhYJyAbkglSrM4wvWFNzFM8SwQI6fowwC1J1JlXDvpa1mtF8/+o
	rVvYZXL0wJHhZu2rsMccpw+4rkOazERpKF7fEhP9OelJj/L6e+8kHjTepjCxMmo0yBY8
	pmxFhwEnLY8qiHoroKqZ0xeLWQUovcANYGzwY3Bh47PqWv/jnYKT1BqW1pYQhVQngGUj
	HcZw==
X-Gm-Message-State: AOPr4FVa8I9KmzLkZyrUSTsdxxKUKMctMAU0M0F7fl9zwobPjkSM4/qYXnArJxpFhTKHEkWWlCjqD37w4t3knR1C
X-Received: by 10.36.160.136 with SMTP id o130mr18159711ite.38.1463569812737; 
	Wed, 18 May 2016 04:10:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 18 May 2016 04:09:53 -0700 (PDT)
In-Reply-To: <1463559230.2703.118.camel@aj.id.au>
References: <1463447715.2703.112.camel@aj.id.au>
	<CAJTo0LbX7qrAc5e0OSJzTJ=ish7rLuGzm9LA7LbKF4DK+jy+PA@mail.gmail.com>
	<1463559230.2703.118.camel@aj.id.au>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 May 2016 12:09:53 +0100
Message-ID: <CAJTo0LayTmPkF9qO0SrybbLWVdQh_T7K-+xW_JYAF2K5=nM2fQ@mail.gmail.com>
To: Andrew Jeffery <andrew@aj.id.au>
Cc: Yocto Project <yocto@yoctoproject.org>, OpenBMC <openbmc@lists.ozlabs.org>,
	Patrick Williams <patrick@stwcx.xyz>
Subject: Re: Extending runqemu/runqemu-internal with new machines
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
X-List-Received-Date: Wed, 18 May 2016 11:10:18 -0000
Content-Type: multipart/alternative; boundary=94eb2c04a148caf8e605331be6f5

--94eb2c04a148caf8e605331be6f5
Content-Type: text/plain; charset=UTF-8

On 18 May 2016 at 09:13, Andrew Jeffery <andrew@aj.id.au> wrote:

> Thanks for the pointer. Is this the patchset you're referring to?
>
>
> http://lists.openembedded.org/pipermail/openembedded-core/2016-March/118982.html
>
> A brief look suggests it might get us some of the way there, but I'll
> take a more detailed look in the next day or so.
>

I was actually thinking of
http://lists.openembedded.org/pipermail/openembedded-core/2016-May/121180.html
.

Your use case is exactly what this sort of work is aiming to solve (put the
machine-specific qemu knowledge into the BSP instead of runqemu) so
feedback would be greatly appreciated.

Ross

--94eb2c04a148caf8e605331be6f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 May 2016 at 09:13, Andrew Jeffery <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:andrew@aj.id.au" target=3D"_blank">andrew@aj.id.au</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:s=
olid;padding-left:1ex"><div id=3D":8yn" class=3D"">Thanks for the pointer. =
Is this the patchset you&#39;re referring to?<br>
<br>
<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2016-M=
arch/118982.html" rel=3D"noreferrer" target=3D"_blank">http://lists.openemb=
edded.org/pipermail/openembedded-core/2016-March/118982.html</a><br>
<br>
A brief look suggests it might get us some of the way there, but I&#39;ll<b=
r>
take a more detailed look in the next day or so.</div></blockquote></div><b=
r>I was actually thinking of=C2=A0<a href=3D"http://lists.openembedded.org/=
pipermail/openembedded-core/2016-May/121180.html">http://lists.openembedded=
.org/pipermail/openembedded-core/2016-May/121180.html</a>.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Your use case is exac=
tly what this sort of work is aiming to solve (put the machine-specific qem=
u knowledge into the BSP instead of runqemu) so feedback would be greatly a=
ppreciated.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--94eb2c04a148caf8e605331be6f5--
