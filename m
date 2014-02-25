Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9113E008DC
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 04:00:36 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id o15so240504qap.21
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 04:00:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=1q7HFMKUYHrl9aB+Y1N7y35KrszOADR2QRWtn07E+CI=;
	b=U7SZhulVR+1ZBKBeVv4/hcSiB9FWnzoVCc0xURthZXIMH9ixnckLW3z8UUDKpjONfX
	DUhIGoFYDwnUU5U1hr9cFYJaxD2gu/isEI3mbgmo5DBBcH0Mp25NbHtPzqSzQDsTXdWa
	AFrZoMljYgBo0Ar4bP9FxiLI3pDh1QdGtFjyZd/4G8aFPNufmvothXKeAUSHBEp6eFo/
	BXZXboNP/TXLkJD+FbukPN0V9d1svAYntiiQ3pnj3ASIIExRbf5nU3Khg7KDr6UOfUou
	jQJ1eFk3MG/8lNxeHrsQjQMLfOqDGESOipZf0lgtEVdkVEo72E5dtngF9rcY9dM2cTxm
	7hBw==
X-Gm-Message-State: ALoCoQlz1FyVZzH5obqNxHwfyW9dEhm9fmW6UvavOfJQCKtDJp1C9UqiSzRm6LIMlSxMKMaET5PS
X-Received: by 10.140.81.74 with SMTP id e68mr35125786qgd.99.1393329635503;
	Tue, 25 Feb 2014 04:00:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Tue, 25 Feb 2014 04:00:15 -0800 (PST)
In-Reply-To: <1393329130-17062-1-git-send-email-andrei@gherzan.ro>
References: <1393329130-17062-1-git-send-email-andrei@gherzan.ro>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Feb 2014 12:00:15 +0000
Message-ID: <CAJTo0LYU0kgLA-BAUnQ5odLotjSjpPGtw72w8CGT=UKsvQ4pLA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] mesa: Replace ugly fix with PACKAGECONFIG
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
X-List-Received-Date: Tue, 25 Feb 2014 12:00:37 -0000
Content-Type: text/plain; charset=UTF-8

On 25 February 2014 11:52, Andrei Gherzan <andrei@gherzan.ro> wrote:
> +# EGL and GLES are provided by userland package
> +PACKAGECONFIG_remove_raspberrypi = "egl gles"
> +PROVIDES_remove_raspberrypi = "\
> +    virtual/libgles1 \
> +    virtual/libgles2 \
> +    virtual/egl"

Are you aware of mesa-gl?  This recipe builds a GL-only Mesa (no gles
or egl), and is designed to sit alongside binary drivers that provide
EGL and GLES to avoid exactly this sort of hackery to Mesa.

Ross

