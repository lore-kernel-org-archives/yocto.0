Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE5F9E0151A
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 08:00:13 -0700 (PDT)
Received: by mail-vb0-f53.google.com with SMTP id i3so508030vbh.40
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 08:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=N6ZJI9d82P76wdlGut1JzqVYCfnS9ycB/qf3f9hPaO4=;
	b=BCznBoV9DQZv1h1S6Y3q/VMtNkEHccJJikaUSnoUHLBUOPeqazyuWTftam5jH1P5tz
	poVK5aviNdqnkoKKvGEpBEAbPOUhzvxr4TOBEVnodqx9oA5fNUfEyy+2nAh+kE6SJqw+
	QhFPGoL4Jdu3/qPUTcEAcPVAi3DUT2PWemcBrEbbs8NCQQpVYtifHhxht506imhhowI8
	eE62XmNMJ4KGEiYfklnpVq8ibSUe0Gm4l5EdxDvDk9R14WpXDK2qGXKC4NlE6rPArJ5V
	Uu7q/WaTmGIlaxn91JuY4YRdPdtufLLiqGN2BzTth4ihL6h5K8XHBxAb1Fmk7wuNW4PI
	eKcA==
X-Received: by 10.58.220.229 with SMTP id pz5mr1489544vec.30.1365001212866;
	Wed, 03 Apr 2013 08:00:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.134.74 with HTTP; Wed, 3 Apr 2013 07:59:52 -0700 (PDT)
In-Reply-To: <CANwz6nxxMDJ8JK3gH4oNbZA_qUQy4o+02A4JoVzd4dwsUz5vGA@mail.gmail.com>
References: <CANwz6nxxMDJ8JK3gH4oNbZA_qUQy4o+02A4JoVzd4dwsUz5vGA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Apr 2013 15:59:52 +0100
Message-ID: <CAJTo0LbgxU7X7+bkEmMTLyRBGX+RQQYzgnzXQ2yk5o74cgogug@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQlLZ4o2IUEKKmcWjlRwjQxjPFPM4/uBshiG241ogYW8iSJNvV8+xa3muy/wmeR6KIzE7R3i
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: boost & qt-mobility-x11 added to core-image-sato
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
X-List-Received-Date: Wed, 03 Apr 2013 15:00:13 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On 3 April 2013 15:01, Edward Vidal <vidal.develone@gmail.com> wrote:
> What is the correct procedure to add bitbake results to the target?

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage-localconf

Generally you can specify the key packages and the dependencies will
pull in the rest.  In this case "boost" is a meta-package that has no
contents but simply depends on the library packages, so you can just
add "boost" if that's what you really want to do.

Ross

