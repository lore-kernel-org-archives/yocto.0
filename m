Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B98CE00D55; Mon, 14 Mar 2016 09:04:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96241E00C23
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 09:04:49 -0700 (PDT)
Received: by mail-ig0-f174.google.com with SMTP id av4so65597612igc.1
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 09:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XMuRUvy5a10OBiOz7QSN6/qi9jENRC/FyKDOZJ/zWYA=;
	b=ky506AZh2l1k3ZHG61JornfnGWlM62ULePK26Makb2pgL937TKMr/qt+BMj+1va/D0
	+7otO6rgytMFLiAMO89El1R8g7qzU4Uc541ykGmcC04nAqMeg9jOoC1DBTne96VM6ZXG
	Mh3rtHRgEe7uHPGaT/kBAq6OakKrk4BI3rhT3F3WSex+RlIAWeUMAnE4AnPkKVYdVKT6
	2WCvZRKygaExGOLUPqZj6Le8L3+ODTt459WcYwnrPdp6Ci+Mm92l4Xl15cArpSnOIx6i
	ftUi2BPyOpWEfOFk7N+4iPqKNna+1cvA4pWO7pQidKmlB62BICn5KfT28AA9FxNIrRHP
	51pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XMuRUvy5a10OBiOz7QSN6/qi9jENRC/FyKDOZJ/zWYA=;
	b=REFc789cb9FmT+ag04WbQT5/TWXw7vCdn8EhoKlUQX3jilucE/Fol6iBK5VtCuyCa2
	IKw0IRyH3lfZ3vtDZqoGkiMK4Kl2eRGFMRrc1SiU2NCu2qchcGIraj5Laa5btDQqAxE/
	hv8Nhn3CqjE9zGly+GI/iii7QzECJduVmcaU4W690kS34SEvMgo+oiIRYn2vVdG3cnmC
	DmCydh+loXlI84e3rk9CFSdM2p/PC2mt64yWtQ3DEL+l9pleHRq+ZH2XFuj8p2+CZP3B
	Fz6uqFC6DpHbimF6ESoUAkxytj1E5KWUXQOE8aVnFQ9D+GUYfeMMFJCAN5NxWR5SoLKG
	Q5HA==
X-Gm-Message-State: AD7BkJKRA5dUo75NEW98HHQZruqltgZIJgkPMUVTAReHsr/ZUcCBfgSnIGl7mvWiN95UNugcIQpMPi/lEWuRa6Oe
X-Received: by 10.50.112.101 with SMTP id ip5mr12931735igb.52.1457971488440;
	Mon, 14 Mar 2016 09:04:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 14 Mar 2016 09:04:29 -0700 (PDT)
In-Reply-To: <CABcZANn3uKqHa--0+tHjgW1gyS9YkVyfq9itEGey+VrBSxfikw@mail.gmail.com>
References: <56E62B99.1030608@mlbassoc.com>
	<CAJTo0LbpdNfED8HiJwFb1u7twEk9HkNtKrZRmB+afo2C-_igXg@mail.gmail.com>
	<CABcZANn3uKqHa--0+tHjgW1gyS9YkVyfq9itEGey+VrBSxfikw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 14 Mar 2016 16:04:29 +0000
Message-ID: <CAJTo0LasYkE914EYNJBv97E1UW_6j-aJ0EnaJxAf9Fm9nzg1fg@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: New message
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
X-List-Received-Date: Mon, 14 Mar 2016 16:04:51 -0000
Content-Type: multipart/alternative; boundary=047d7b3a8458a95f31052e04705c

--047d7b3a8458a95f31052e04705c
Content-Type: text/plain; charset=UTF-8

On 14 March 2016 at 15:58, Christopher Larson <clarson@kergoth.com> wrote:

> You're using the poky distribution which for build performance uses
>> uninative (from 477b8fb), which means that instead of building native
>> dependencies per-host-distribution there's a static libc which is built
>> against to enable native binaries to be host-agnostic.
>>
>
> To clarify, I believe 'static' here is meant to mean fixed, not a static
> library :)
>

Yes, it's basically a nativesdk-libc that everything else is built against.

Ross

--047d7b3a8458a95f31052e04705c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 March 2016 at 15:58, Christopher Larson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div cl=
ass=3D"gmail_quote"><div>You&#39;re using the poky distribution which for b=
uild performance uses uninative (from 477b8fb), which means that instead of=
 building native dependencies per-host-distribution there&#39;s a static li=
bc which is built against to enable native binaries to be host-agnostic.</d=
iv></div></div></div></blockquote><div><br></div></span><div>To clarify, I =
believe &#39;static&#39; here is meant to mean fixed, not a static library =
:)=C2=A0</div></blockquote></div><br>Yes, it&#39;s basically a nativesdk-li=
bc that everything else is built against.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7b3a8458a95f31052e04705c--
