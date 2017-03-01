Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94152E008D0; Wed,  1 Mar 2017 12:33:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4763E00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 12:33:15 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id n11so8760041wma.0
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 12:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8LhLPhsh9d2JviMbaXENF8w4tsBPZNgh+tak23Pce64=;
	b=coGWY4mzvcBMv9piNgxYki5Wf7+fVw4r4tlKM2ggOwEyWAizLFJuc0LjT8A0ce9ych
	0Q5ol6ocVBEkwHiGLcNSnCYLMDl6V2bM3nDZmOZ6qcnXjEfBkOwbNrbYxzcOd5RH41gA
	ludn+zZ3SqBvQgK8w+JsrB2eZVTaxNYNYYx50hRxzgeGJ/DJwhTAi6Y4L5mAFswoIlry
	Gbv+alEPARx9O6+k1Ky8D3UnUoV7c/ChmxlIXk+zGES2h/Ym6/l2DgvvYuXOFJI4bYsp
	PCmnA/fQk7Ay7868XJZC2AojuwR4+5j9TwgV0G8gT4hjBFa3Z5DJJzB7Fml6jpAEAbmo
	EYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8LhLPhsh9d2JviMbaXENF8w4tsBPZNgh+tak23Pce64=;
	b=Z+EA64O8HO/PEmkHXcwtnUnm0a4XdVhEsvG4FcKbWZvscQXJAG4KrmlbNiDCdwrJIE
	nx4f8phWMGMASIuVT5zr3kRUlkrzl4rLHtC0eBBfrQzh/W6AsGAutVW2QkKvkROItyq+
	aLRi3goZFj5HBRpbSm10yTQP5rZQFP4qa1+/umlSum9b0VF0GpOCeAHPYmHr26rdQZ85
	xbvK2xRv6rj34YhO8mGhWN5q6tmbrkMukyuOR6Kf3LZSb8pmyER7/51sK1fYcIm2ZzdB
	h9Am7jP4f26dtJKxa1YCE7QflUFDEpbKK1Ncs8c2GUn5LIQoQFwvd9JNvcLz1vOL8hOv
	i2Vw==
X-Gm-Message-State: AMke39m2swq0Yz75r2PwEyoXFzpb2WHfXwGrt8nJ1TGNeIrJsOI2CivcUrlg1d6RgQ4EZIgvDX16Dxbu+Nag/Q==
X-Received: by 10.28.8.130 with SMTP id 124mr4814460wmi.65.1488400394264; Wed,
	01 Mar 2017 12:33:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.174.82 with HTTP; Wed, 1 Mar 2017 12:33:13 -0800 (PST)
In-Reply-To: <b6c806a0-1196-4e70-9b1f-12fee1c7ef5f@mvista.com>
References: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
	<b6c806a0-1196-4e70-9b1f-12fee1c7ef5f@mvista.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 1 Mar 2017 12:33:13 -0800
Message-ID: <CAJ86T=VeFuhgGmwFZDpb0o8QRpS15gCokcR8rRg62n_n=kVN3g@mail.gmail.com>
To: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BBMASK not working for me?
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
X-List-Received-Date: Wed, 01 Mar 2017 20:33:17 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 1, 2017 at 12:15 PM, Jeremy A. Puhlman <jpuhlman@mvista.com> wrote:
>
> On 3/1/2017 12:06 PM, chris warth wrote:
>
> Can anyone suggest why my BBMASK is not working?
> Maybe I'm not putting it into the right file?
> Did I construct the regex incorrectly?
>
> In my conf/bblayers.conf I have,
>
>      BBMASK .= "qemu"
>
> This basically concatenates qemu to what ever is already in BBMASK. It is a
> regex expression so you want to treat it as such.
> You want to likely do something like:
> BBMASK .= "|(qemu)"
>
> OTOH, qemu matches anythin with qemu in the path. You likely want to use the
> full filename:
> BBMASK .= "|(qemu_qoriq.bb)"

If you are using Yocto 2.1 or later, it's safer and easier to
construct BBMASK as set of space separated expressions rather than
trying to append to a single regex. e.g. in this case:

  BBMASK += "qemu_qoriq.bb"

> Then I wipe out the cache by deleting the "tmp/" directory.

There's no need to wipe out sstate or tmp to test this. If you try to
build a recipe which doesn't exist or is masked, you'll get an error
regardless of whether the recipe has been built previously.

> Now I would expect
>     bitbake -n -c fetch qemu
> to give a 'Nothing PROVIDES' error.
>
> That is not what happens.   Instead it still completes normally.
>
> I am trying to ignore recipes like
>      meta-freescale/recipes-devtools/qemu/qemu_qoriq.bb
>
> Thanks in advance for any help.
>
> - Chris
>
> --
> Jeremy A. Puhlman
> jpuhlman@mvista.com
>

