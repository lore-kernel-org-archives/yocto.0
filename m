Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02B61E01542
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 04:08:44 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id d10so328496vea.37
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 04:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=OR4xxarg1CThYBE8eGPGLYZXyUvvQS5mX6be5y2OTvg=;
	b=Kix5DltFZEAmJHGTSMqKF4mBxFzwIv46AaVNUeVgDLPlpIwlqkE/pKBAriIIEiXyvl
	/CrqthW+VW9l0yrrktSUWLz3VhkwyUC5Ta/ztzeLNlwl0II/GaWUEa9VgVjRLr2t5hvV
	ygnebdhJ7iV2wueLPfxKU3APiZfOtZvguwwN5TYcWQc796LuxbjThvdIX3PTDP6JUXBY
	XNan6w9DzzpqJkfuyawprsByErkXDEoYuXtHTocD1/fnLhaFYr87SdHn2dBeRUY3SvaI
	kWEfQk+nj7fETwPU9ps9p6F12qfJL3W1gVcYbaqvhHwUMU4/RNYGCqqsDIiiV92jhLEy
	Vo6w==
X-Received: by 10.220.41.84 with SMTP id n20mr671446vce.25.1369134524266; Tue,
	21 May 2013 04:08:44 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Tue, 21 May 2013 04:08:24 -0700 (PDT)
In-Reply-To: <CAAGt+t3GGu+jdCg6AW5xygVKaM3x2AHyw8VCq86O83cRonE9Jg@mail.gmail.com>
References: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
	<CANyK_8ffvTksbu+nT=yAw7-5zV9n6+3dxY0XqiPVt=j5j6+5LQ@mail.gmail.com>
	<CAAGt+t3+aTm5fYopwCjK5ced1MMNBZN__4wKFQsaTKmfy9H+SA@mail.gmail.com>
	<CANyK_8dRpZ1us_mZRvhLk6rCT3xZ4A5dmeAar2D2B0w6ntaZXw@mail.gmail.com>
	<CANyK_8dYMkL8j5nu781+V-LvpiLnExJQ4VLTLoVkMt+ckESSQw@mail.gmail.com>
	<CAAGt+t3GGu+jdCg6AW5xygVKaM3x2AHyw8VCq86O83cRonE9Jg@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 21 May 2013 12:08:24 +0100
X-Google-Sender-Auth: QQwSixwfrVKPCF_kSBflIigEklw
Message-ID: <CANyK_8fpGVGxoi+2f_b6RLWYaoZqj2z2WQ7kbiVZQ+A7-Hbmrw@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Hello world package error
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
X-List-Received-Date: Tue, 21 May 2013 11:08:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 21 May 2013 12:02, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> Hi Paul,
>
> I followed this manual
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_my_recipe_into_Yocto.3F
>
> and replaced my helloworld.bb file.
>
> Sourced oe-init-build and ran bitbake gumstix-console-image
>
> got this error: http://pastebin.com/fxUwQina
>
> Previously, i ran gumstix-console-image successfull but now it breaks.
>
> Any idea about this error?
>

If you run into a missing dependency, search for it on
layers.openembedded.org:
http://layers.openembedded.org/layerindex/recipes/?q=devmem

Does your bblayers.conf point to the relevant layers?

I'm just guessing here, I'd advise including the beginning of your
bitbake output in any error report as that tells us what layers and
versions your using, what the target and host platforms are, etc.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

