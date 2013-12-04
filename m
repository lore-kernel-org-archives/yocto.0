Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0112EE00784
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 08:00:58 -0800 (PST)
Received: by mail-ve0-f175.google.com with SMTP id jx11so12310836veb.34
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 08:00:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=X00x0I0yAmlui77JpC2xwy2AKYBEDFmyQb3g+B03Xks=;
	b=D8uC+AngaHbzfkugizJKMnm9ygCVWExBG2Wc/R013iUUplofYyrbycUPjVfDBz40cm
	VVttwRuyEPiagFay3JJc0QMF+klyEI2Y7lAtIodT67e/IW5BgaeitHEE2smAzkmuVZ2i
	6UVf8ZH43aUQXyjAAESgQTbxTc5Al2ct+QaOASA/skSDPJiHwYF97VpxqvdNsSb7efI4
	BYediXQdXfVzu0h+j9Quqo6e5eA6xpScpbWiTbgJL70RMoTWexigFLMD3wgqAnT9ofcu
	yGbtgk8c0zsRp6uCAIV8S4hESOCVwjr64QchXfQTNADGsSoiTKa7Kmf64pJ7w2KD9vdA
	6Vxg==
X-Gm-Message-State: ALoCoQnGtjjyN4ykzgLqI5o3tBgusV1+VCWEzdA+DIVMHrtb5jMfRGQxJf7QJxCqBZFXak/YDaSa
X-Received: by 10.58.254.200 with SMTP id ak8mr60246328ved.12.1386172857129;
	Wed, 04 Dec 2013 08:00:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 4 Dec 2013 08:00:36 -0800 (PST)
In-Reply-To: <CAHyyKNmEUenS3_a2jkbBjU_ugbHB+JwZ=za3H282Z2U=S2jk8g@mail.gmail.com>
References: <CAHyyKNmEUenS3_a2jkbBjU_ugbHB+JwZ=za3H282Z2U=S2jk8g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Dec 2013 16:00:36 +0000
Message-ID: <CAJTo0LbWJd35XTufRN2NuKsY0EeY0qffpn-Q6xkZrGQZb-OBdQ@mail.gmail.com>
To: Alex M <0xf777@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build GLX extension?
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
X-List-Received-Date: Wed, 04 Dec 2013 16:01:05 -0000
Content-Type: text/plain; charset=UTF-8

On 4 December 2013 15:54, Alex M <0xf777@gmail.com> wrote:
> XSERVER = "xserver-xorg \
>            mesa-driver-swrast \
>            mesa-driver-radeon \
>            mesa-driver-r200 \
>            mesa-driver-i965 \
>            mesa-driver-i915 \
>            xf86-video-intel \
>            xf86-input-vmmouse \
>            xf86-input-keyboard \
>            xf86-input-evdev \
>            xf86-video-vmware"

You should consider using the variables defined in ia32-base here
instead of replicating the boilerplate - in particular you didn't
install xserver-xorg-extension-glx.

Ross

