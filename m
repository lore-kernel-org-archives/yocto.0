Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91DBEE00AC7
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 01:36:05 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id i7so2277257oag.33
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 01:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fIwzB0tbRlb+PJwlQf0Nzz69JvOtFx6jZg0exgO/G5U=;
	b=aVVGQc8uDH/w+fx2tuCFfmkd9lPidYJWNiHR3FNojeciXtFtoSInE0BjvZJQ9RyUlY
	Cm+m8gA9XRPdOue+Dk20GAWLwirKwcBm5NuDfReOU9N8R+ENiXQLRmPlWX4u2MIsHUk2
	+6y7b3HtbzknUcIVceaEIQIroYGINMiUIVncqFORa5CPieauYxqn1Rgwq5x4/LU3SB62
	YMQkoW8lFR1KKZt95Bl1HQyKgVIiMM+7DfhmA7wYoyr9U9vlMffJQTHHw+CXfkK0BbBF
	BhYCifLLCJm1POw+ACe5FE3X0SaTeESJ4BiegIqGEg6jV55tlCDRouj1bju2OXTaHXVP
	3Vvg==
X-Gm-Message-State: ALoCoQnSwr55HVO2TX6c8eTYpru3DxHonM8qCAoGGjdl5eU66saY1Qv654deFa1gPjzfvjeXe9gg
X-Received: by 10.60.229.228 with SMTP id st4mr5540288oec.16.1394786164757;
	Fri, 14 Mar 2014 01:36:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.182.99 with HTTP; Fri, 14 Mar 2014 01:35:44 -0700 (PDT)
In-Reply-To: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 14 Mar 2014 09:35:44 +0100
Message-ID: <CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
To: Federico Vitali <fede.vitali@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Fri, 14 Mar 2014 08:36:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

On Thu, Mar 13, 2014 at 4:52 PM, Federico Vitali <fede.vitali@gmail.com> wrote:
> Hi everyone,
>
> what should I do to customize and crosscompile a library already distributed
> with yocto?
>

can you be a bit more specific? not sure i understand completely what
you want to do. also how are you getting your distribution? it's
prebuilt and you only have the image or you build it yourself from
recipes?

>
> I see 2 possibilities:
>
> 1. Build and install a toolchain and sysrootfs on local host and untar the
> original library,
>    apply yocto distributed patches and then cross compile ==> I'm having
> trouble here

telling us more about the trouble might be useful. also telling how
you build the toolchain and sysrootfs.

>
> 2. Use the yocto build environment itself, but I don't like this option.

well, that would definitely be the more natural way of customizing
existing recipes. that's what most people would do in their own
layers, generally with .bbappend recipes. it's probably even easier to
do that building your own toolchain/SDK to some extends.. why don't
you like this option?

>
> Does anyone have already customized a library?

