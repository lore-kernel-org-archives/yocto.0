Return-Path: <raj.khem@gmail.com>
Received: from mail-yx0-f174.google.com (mail-yx0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 266E3E0129F
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 17:26:35 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxp4 with SMTP id 4so264402yxp.33
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 17:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TnaDk6l1UtmaQpNDA6zeVtdKGqGNMmdSQ1pZ83CSVDo=;
	b=bXM62acWVb+ZcaFaLXUD4749wAHZzVh3ukMb6X4JnK5wxa3qAG2hucxJ0CbM/fD10S
	VNSIrflBWZK/3vDjUbPa2x2ywuTL8m88ZnwX2n7FuFfEwPNFwkqRsteKkkc8f5faD003
	xz2HgQTgX4eXKdTL7Dggl7geaSQZIBn+MQbXY=
Received: by 10.68.17.193 with SMTP id q1mr12418223pbd.98.1318551992235; Thu,
	13 Oct 2011 17:26:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Thu, 13 Oct 2011 17:26:02 -0700 (PDT)
In-Reply-To: <D03B2E35-B463-4120-8B97-D52C736B7D56@keylevel.com>
References: <D03B2E35-B463-4120-8B97-D52C736B7D56@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Oct 2011 17:26:02 -0700
Message-ID: <CAMKF1sqBeaNSGNzGK=vqr9aVG9KOq60YxuqZ1QAXaib0Wua_NA@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding mp3 support to gstreamer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Oct 2011 00:26:35 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 13, 2011 at 4:36 PM, Chris Tapp <opensource@keylevel.com> wrote:
> I'm trying to add mp3 support to gstreamer.
>
> I've got a task that RDEPENDS on gst-meta-audio. The image produced includes
> gstreamer, as expected.
>
> However, there is no mp3 decoder included. I've tried setting:
>
> COMMERCIAL_AUDIO_PLUGINS = "gst-plugins-ugly-mad", but there was still no
> mp3 support.
>
> I then tried adding an RDEPENDS on gst-ffmpeg. gst-inspect -b showed this as
> 'blacklisted'.
>
> So, I then tried gst-fluendo-mp3, but I get a "nothing provides" error at
> build time.
>
> What do I need to do to get mp3 decoding added to the image?

what does COMMERCIAL_LICENSE has in it ?
You might want to see that package is part of this variable or not

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

