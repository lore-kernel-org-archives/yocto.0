Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9CDFE01562
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 01:15:58 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id b10so11086409vea.2
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 01:15:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ClxaYDiKO3vEE9rN9ZwGcPqP/JfdJ2859Py9mCld998=;
	b=gKXjc3seEoqzNEpm3SOOHLLfsOFrjFmlryT0MQsuRn9G3LW2EoTM4x301wANRNU7NA
	eVWs6yQj6RJEwBKOq34frW0NgySRtihOVdSm1j+pLJvl5a3f9RwgGSDKr8pdvSuLEyD6
	AAgKJWahJOGyFgEZ8fuURPHzPcSiBnMXdETEI8AV7O6oKuThaJK35nuq3npZt9Lh5dZd
	XFIAidQ+pU1AjGiSvsWgGNG74zyxw14g7GCBfpAXnN1Mu84cjJQKDu0AZvP69OzNvr2q
	v4KE0dnKVb/hPfJPYMcU1r+dCXbG3PJOzGEDhUcC6zSS0p52WXmSPUfxM6G9PIgfX+7h
	SrLQ==
X-Received: by 10.52.21.232 with SMTP id y8mr1098694vde.6.1372234557278; Wed,
	26 Jun 2013 01:15:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 26 Jun 2013 01:15:37 -0700 (PDT)
In-Reply-To: <1372198981.9056.2.camel@empanada>
References: <1372178610-19243-1-git-send-email-ross.burton@intel.com>
	<1372198981.9056.2.camel@empanada>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 26 Jun 2013 09:15:37 +0100
Message-ID: <CAJTo0La+CvK2XBK+4JEcA+-qQ4Ppr8Mf3aRHuov4pR09yq2SzQ@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQkNWSJD3A1Gewfgx4nqhk0O+jauOaSTBmwE7FAT2hVuQ98Pwgh+6SHR4FScg6hcdrtsXpE6
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] intel-gpu-tools: add new package
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
X-List-Received-Date: Wed, 26 Jun 2013 08:16:03 -0000
Content-Type: text/plain; charset=UTF-8

On 25 June 2013 23:23, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Tue, 2013-06-25 at 17:43 +0100, Ross Burton wrote:
>> This package contains numerous useful tools for working with Intel GPUs.  Add a
>> patch to install intel_panel_fitter as it's genuinely useful and not just a
>> debugging tool.
>>
>> Signed-off-by: Ross Burton <ross.burton@intel.com>
>
> Nice addition.

The debugging tools will be useful, but my new 10" HDMI touchscreen is
<curses redacted> and always overscans about 1/2 inch without an
option to turn it off.  The panel fitter tool is the only way of
getting the Intel driver to compensate for that.

Ross

