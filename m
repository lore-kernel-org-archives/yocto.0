Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C81D0E0086E; Tue, 26 Jul 2016 08:00:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3338FE004F1
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 08:00:43 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id j124so15621411ith.1
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 08:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GXvsNKaDI2TdLOs2tv77y+myq67X2wwUuuen1bDbjYw=;
	b=HEQEmNEhh+ozM563Oq+2h2Bbb3HImOirgB69vXpEJZrkY+Mw4p2XWClaoCQGmqh1DT
	Etsqs0FMD3BC7kJzid0zgp6Q+0hj0SjXBp589CmnuxFqBgjpH2+ftittzY5zCmFnE3Fq
	Jagk569nS4P65I99bZleu+Kzsi28evjYjtZ5wQfn/rCxyb6rNlX3rwMlANkg+iHODPGA
	J4po3859Yq9QXkpyg941xiBRmNPzusqGZkPmkOqFMRChFztNSo9/KQjF1K+qSVw6g5df
	nV9YjbUtx3bugYdMuPK6dK0h49Ny4QynaEfsXNwZOB4Z3gXd+GFFY30qQjdzCVvrg0oM
	CXNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GXvsNKaDI2TdLOs2tv77y+myq67X2wwUuuen1bDbjYw=;
	b=fdnhaBZK59lQLrUY6KLOP0zRCbPyo83IDHcTMS3Gi9zlrfYmt8oXrxmf98XUMdecaC
	j/CHCFg00+Sfz2QM2NbsX9+lyGzhX4xZuJfqTef+k18lV/CR+ufAlc0fhH11+o/ifZIh
	3uGG+BBTAMhBv11M5uENj2FG6N50FtQYPQd8Vs9jztfRFIpsx3wDW2mLY+VcM5yELVB3
	fmyTfTT3gYuUwexG0VPQyDerc9MifDdWc0FBzFEXQwWaOZg9fq6UCYm71zIn35Qs3Aoz
	YHDHBHFRAWDc4suM7TR0ysHjvEWmxwXwSSid3GFjBMZoQIKSOaKx7vIBUPlZbSVK4cFO
	t/SA==
X-Gm-Message-State: ALyK8tLHab8JjEq6CnB1CHc+K9xpWb5WogR3dHqmTX0b2UCQwQPUsSDDYw1Ax2J8njJgQP4x6D/ndQIxSp5jqf09
X-Received: by 10.36.20.75 with SMTP id 72mr69126397itg.83.1469545242748; Tue,
	26 Jul 2016 08:00:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Tue, 26 Jul 2016 08:00:23 -0700 (PDT)
In-Reply-To: <57977A50.7080102@mlbassoc.com>
References: <57976F16.8010700@mlbassoc.com>
	<CAJTo0LYOYF=czvyC4HzhbuP1zFaQv2jwrXz82tmnoG3rnuxQBg@mail.gmail.com>
	<57977A50.7080102@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Jul 2016 16:00:23 +0100
Message-ID: <CAJTo0LZAx=6dZnZ=zqYVOhrfF2EFOZiV_5ue-Wc8wneDH+sTGQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: python3 on build host
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
X-List-Received-Date: Tue, 26 Jul 2016 15:00:47 -0000
Content-Type: multipart/alternative; boundary=001a114469422d114605388b2a5a

--001a114469422d114605388b2a5a
Content-Type: text/plain; charset=UTF-8

On 26 July 2016 at 15:57, Gary Thomas <gary@mlbassoc.com> wrote:

> Yes, this is just what I needed (except I had to build my own because my
> box is i686)
>

Oh good, next time we have a bug which only appears on 32-bit build hosts
I'll ping you. :)


> Looks like this SDK doesn't actually contain a full copy of Python, just
>> the pieces to make what you have in the SDK
>> work (theoretically, at least).  This is why we add python3-modules to
>> the buildtools-tarball, so if you want your SDK
>> to ship its own complete Py3 runtime then add python3-core
>> python3-modules to it.
>>
>
> What would be the best way to do that?
>

I think SDK_RDEPENDS += "nativesdk-python3-core nativesdk-python3-modules"
should do the trick.

Ross

--001a114469422d114605388b2a5a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 July 2016 at 15:57, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":33d" class=3D"a3s aXjCH =
m15627b6224119469">Yes, this is just what I needed (except I had to build m=
y own because my box is i686)<br></div></blockquote><div><br></div><div>Oh =
good, next time we have a bug which only appears on 32-bit build hosts I&#3=
9;ll ping you. :)</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 id=3D":33d" class=3D"a3s aXjCH m15627b6224119469"><span class=3D""><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
Looks like this SDK doesn&#39;t actually contain a full copy of Python, jus=
t the pieces to make what you have in the SDK<br>
work (theoretically, at least).=C2=A0 This is why we add python3-modules to=
 the buildtools-tarball, so if you want your SDK<br>
to ship its own complete Py3 runtime then add python3-core python3-modules =
to it.<br>
</blockquote>
<br></span>
What would be the best way to do that?<br></div></blockquote><div><br></div=
><div>I think SDK_RDEPENDS +=3D &quot;nativesdk-python3-core nativesdk-pyth=
on3-modules&quot; should do the trick.</div><div><br></div><div>Ross</div><=
/div></div></div>

--001a114469422d114605388b2a5a--
