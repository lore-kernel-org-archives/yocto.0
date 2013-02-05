Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18886E0146B
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 05:52:33 -0800 (PST)
Received: from mail-qa0-f72.google.com ([209.85.216.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 05 Feb 2013 05:51:17 -0800
Received: by mail-qa0-f72.google.com with SMTP id dx4so403923qab.3
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2013 05:52:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=yIIeBbFiBK5LjARqTXy33WewJvvF9J+7NYSBV76FTWM=;
	b=DBI0B83SsIxHjUBkCuMz0WndR0TRRMY1cveR6Bsc8v7DaTThf+JK7OX8e7zfm8JzkT
	UZQIoLgeq5og7PzXZ/p7ZPC1Mj9ZNkImKjz769CxvZwZ/oaQSSrWxPaZjW3TVOM3ezHV
	8sykH83DYzv7PbzlQjNKdNzi6mZcgOzl41WXsMzHP+Jlvz41ozyP35+t57cLktVrsBEu
	DYJhRzbWmDfJ5ahgJ8G3HQiRqj90+KLM+dQpzy0Ca9yY4jyIgT+0k8f/kA6WC9hU0RbZ
	68MrZbWXmg3UutNsD+8FwQAiU8oFk6ihTn3YWBVeUlbq/5KlL4ATclhS8rSUR4HIQbAX
	Utyg==
X-Received: by 10.58.206.99 with SMTP id ln3mr11367247vec.36.1360072351280;
	Tue, 05 Feb 2013 05:52:31 -0800 (PST)
X-Received: by 10.58.206.99 with SMTP id ln3mr11367230vec.36.1360072351081;
	Tue, 05 Feb 2013 05:52:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Tue, 5 Feb 2013 05:52:11 -0800 (PST)
In-Reply-To: <5110FEC9.5070100@mlbassoc.com>
References: <5110FEC9.5070100@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 Feb 2013 13:52:11 +0000
Message-ID: <CAJTo0La9XGj6kvHG68orgj=sUz3xHfEbPBkzUxqSbAoBtstzKQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQlwIVeic5owkCQDRXyU5lwi/P8heUHVyB1t7BEBxNR6sejEzpuHxBrVWJg0OPkYPeUDxfzxcCZecw1LFlkb9d57Yv2jLyHZC5nAiswSdSHlFjoOFstv2LIRaIHPMxZOX+AZ8/LJCiDOmBBo6n06R8uzuyBg0A==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: pulseaudio madness
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
X-List-Received-Date: Tue, 05 Feb 2013 13:52:33 -0000
Content-Type: text/plain; charset=UTF-8

Hi Gary,

On 5 February 2013 12:44, Gary Thomas <gary@mlbassoc.com> wrote:
> I have a multi-media application/system (built with Poky/Yocto of course)
> that is currently using ALSA for the sound.  This works great but now
> I'd like to be able to share some of the sound resources, in particular
> the audio output (speakers).  To satisfy this, I looked at pulseaudio,
> but I'm overwhelmed by the package choices (there are 120 packages),
> not to mention what to do about configuration.
>
> I don't see any examples (images, etc) that use pulseaudio.
>
> Does anyone have any recommendations on what I might need to install,
> how to configure it, etc, to take over from my simple ALSA setup?

The top tip is the PulseAudio documentation on the web site, that
lists all the plugins and what they do.  The pulseaudio-server package
depends on all of the important plugins, so that gives you a working
PA setup once you've started it.

You might want to have a look at Guacamayo's use of PA, that uses it
and will automatically switch output when new speakers are plugged in
too.    https://github.com/Guacamayo

Ross

