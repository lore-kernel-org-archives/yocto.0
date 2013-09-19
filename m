Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B275E015E5
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 18:36:08 -0700 (PDT)
Received: by mail-ea0-f170.google.com with SMTP id h14so3833498eak.15
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 18:36:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=6ERGNtrOXkdzH5z/fjChHQYUgtZWorMRFf7E1JUXYp4=;
	b=PlsDPLf2swnwoV6JXnZXWjmquWBgW16LGIEGBxrkcJRapFAKrSGUeNHh1AgONckHHF
	MeCNsTZwsE/4ejYnYCLZoFVxdc+sBvEcjFCFgmvJ/29+6Fmv2HtmRq5CkYxiCBsZDyjd
	tcf/RpdQGcpW7WQKoZnljZDpwSRZKlpPC0iUHeKP/jVkm62OS35qNCxdkgsBfGcsfGrA
	qkodC8t5KYYNVjPVdVbPnBKJoh1T4rCI9XMWGJdJQ5pWDGvfEZNfyLewwZNQdKO8ozQS
	/TlP9hE30U4BoR2dKs9WVk3xtbu/off0d1VOpYPVymeFdNanX1kWFWKQIuSTgezjzbrt
	Nz9A==
X-Gm-Message-State: ALoCoQl8JJCzlbdltDH8u3hGmJyMEHAKZd0rSV8VXxH5lVaExD/zl2Lptr1Rg4MHUPWD+t4/z02a
MIME-Version: 1.0
X-Received: by 10.14.88.65 with SMTP id z41mr32580912eee.38.1379554567129;
	Wed, 18 Sep 2013 18:36:07 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Wed, 18 Sep 2013 18:36:06 -0700 (PDT)
In-Reply-To: <CAGNsrLDmJDvT3X_7=V+RTiHkG9kZoadXvAnW5WU19EJeO-yO2Q@mail.gmail.com>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
	<CAGNsrLCvcW2WNSfmMm-DLQMxFXC5=rr9Sknj6ECdmuiZc=gHgg@mail.gmail.com>
	<CALmOhgkPb8KC5iCYZ+FWhzcPmZG9Vpr3Zw3CurdtUn7b2L4WYA@mail.gmail.com>
	<CAGNsrLDmJDvT3X_7=V+RTiHkG9kZoadXvAnW5WU19EJeO-yO2Q@mail.gmail.com>
Date: Wed, 18 Sep 2013 21:36:06 -0400
Message-ID: <CALmOhgk_5mSaG4mHWMAegiL6FE8aU27ssW_NOytLYNA-v4GYuA@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Fathi Boudra <fathi.boudra@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Thu, 19 Sep 2013 01:36:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Fathi,

On 18 September 2013 17:52, Fathi Boudra <fathi.boudra@linaro.org> wrote:
> afaics, most distro are using chrpath hack to get rid of it in
> QtWebProcess and QtWebPluginProcess.

That's good to know. For some odd reason (as Martin pointed out) the
chrpath hack in OE doesn't always seem to kick in. In my case it
always fails so I'll try to target the "proper" fix.

> A "proper" fix ins't available yet... it doesn't seem trivial, see
> https://github.com/WebKit/webkit/commit/069ee433aba1ae8ae5107784b22bd6ade830a012

Excellent! Thanks for digging this up :-)

It *appears*, however, that this patch has already been applied to the
sources obtained from meta-qt5's 5.0.2 build (although I can't seem to
verify that conclusively via the ChangeLog). If I look through the
sources the comments at the bottom of, and lack of qt4 specifics in,
Tools/qmake/mkspecs/features/rpath.prf would appear to match.

I'll create a patch based on what Marek had done and see what people
think of it. In this case, though, I'm not sure how to assign credit
(is there a "based-on-the-previous-work-of SOB-type line?).

Best regards,
    Trevor

