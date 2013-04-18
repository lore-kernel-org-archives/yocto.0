Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8690EE014E0
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 04:42:36 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id h11so1818724wiv.4
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 04:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=WDq4xWVLqBexLzSBVVnM+9r0r0cBEhnMPj6Rq/yui8Q=;
	b=FkV233l5p63UKmH9lCBF38pJXMaM1Px2q5eKBrF03KP3yp2ckjDcMPHtoh1BHMsYfV
	w9+NPEYcOQOvmGsJLIAqWROHzYZVdqAUJvtZeIio9bskGV6TEOWkS54l7+XtSZ+2a1hy
	o+EZE7wbBHkTlu4kpkVGdpAlR4JcpN35NxkMSbVQ898h2UEeoxnx3MTPmzXmDkeZ45C0
	JG6s0DCk5aqhE1tgBw0KeJM7ZLMfyTazIxuUcdzcAO9gMTySfwUO90xuyzSjZraLnT2i
	6/UCzPwMBpBA39gRu6Ki2BU2n9qBMuPlydm1XKbAnXzkNnNO5JqRA11TAtz5nnlV+/UO
	w2cQ==
MIME-Version: 1.0
X-Received: by 10.180.80.3 with SMTP id n3mr17386491wix.20.1366285355149; Thu,
	18 Apr 2013 04:42:35 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Thu, 18 Apr 2013 04:42:34 -0700 (PDT)
In-Reply-To: <CA+gsK-pdGWseY5mcf3naYoFaqLieXFaVazNWQ9yo5BZEDuSm7g@mail.gmail.com>
References: <CAHUNapTBjAg2U6p3nk8E_dtrJAcJ3BJ-EFYvsCtQ2R71dtGRwg@mail.gmail.com>
	<CAHUNapRTY=2TtCSFE=OJz_iGwuaJHKv8iHsL3VrJ=jKXSCf=SQ@mail.gmail.com>
	<CA+gsK-r=iE4CmnUXb79J-T5g6dy5csKZNNpMu5=SnFM4WBdKbg@mail.gmail.com>
	<CAHUNapS_dMQnpqCFMLqyGrbch0SQbJZc4aSVxFk+SRO9mU=2rQ@mail.gmail.com>
	<CA+gsK-pdGWseY5mcf3naYoFaqLieXFaVazNWQ9yo5BZEDuSm7g@mail.gmail.com>
Date: Thu, 18 Apr 2013 07:42:34 -0400
Message-ID: <CAHUNapQqzgLsC7HDyvARLDb=gJ3X6QxWLnHND69duBXBLKybGg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: Could not initialize SDL(No available video device) - exiting
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
X-List-Received-Date: Thu, 18 Apr 2013 11:42:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Apr 18, 2013 at 12:50 AM, Rudolf Streif
<rstreif@linuxfoundation.org> wrote:
> Removing sstate triggered a rebuilt of qemu-native which also includes
> running the configure task again whose output sets the switch whether or not
> Qemu is built with video support. Apparently the first time you built it it
> could not find libsdl-devel on your host but the second time it could. But
> of course I cannot tell you why that happened. Do you still have the logs?
> Did you install libsdl-devel between the two attempts?

Unfortunately the logs are long lost; I clean out TMPDIR quite
regularly (but retain sstate). This makes perfect sense and is most
likely what happened; I probably noticed I was missing libSDL-devel
when I built qemu from git by hand :-) In any case restoring my old
sstate and doing

    $ bitbake -c cleansstate qemu-native
    $ bitbake -c cleansstate nativesdk-qemu

cleaned everything up for me.

Should YP be trying to build its own copy of libSDL (with the -devel)
if it finds some part of libSDL (i.e. the header files) is missing
from the host? This is almost like a "host contamination" issue, no?

