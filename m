Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E8EAE014D5
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 05:09:41 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id ha11so521251vcb.30
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 05:09:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=PbmUxpBaSR4HZMgQZML0D48u9OhZBgh634Y1mUx9qRY=;
	b=CYYxdNzYrE72h+yPLuQSqewXfo0iZPxw9m+bEBmSZbTWN6vBn+U4IunZtDe0ZB66UQ
	pIfd/FtwXYy69j7dSy8htOEUSXFuTmEruOAdkjY+ta21Qe2RJIGsQmyOpu5r652vKga+
	RQepxJ0DnSBgdEgW1AKKET8vECg+agoLCc01cT3ory2ecBRVV9eRGfzBGqlrHaARup0o
	hHg0AGC6p/ARHH1LM3hShkXPMAW+X2YqzQ/RMnCGJs0aNOUwLxTqAGE/U6PmdF8/GuKl
	mzwJoRVgrbGm+p2BZHcUuPTmV3ce0w6wlfiHtzv8LZnxnc7r3PY+hXinKwcxX+0Lqow2
	s0Aw==
X-Received: by 10.52.165.99 with SMTP id yx3mr5283815vdb.34.1366718980248;
	Tue, 23 Apr 2013 05:09:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Tue, 23 Apr 2013 05:09:20 -0700 (PDT)
In-Reply-To: <00da01ce401a$852365e0$8f6a31a0$@gmail.com>
References: <00da01ce401a$852365e0$8f6a31a0$@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 23 Apr 2013 13:09:20 +0100
Message-ID: <CAJTo0Lbf_TOUcuYCJKsqb6n6RfnL6W9+kSmaJWV-A7AszZ5R4g@mail.gmail.com>
To: Andreas Enbacka <aenbacka@gmail.com>
X-Gm-Message-State: ALoCoQkjMYB6GvkbwOISpKLQCkNYgbihp41PFuAtLjpPIE5beYMUHEOJvHPHj9KVaElL7MVCwH/7
Cc: yocto@yoctoproject.org
Subject: Re: Splashscreen using psplash
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
X-List-Received-Date: Tue, 23 Apr 2013 12:09:41 -0000
Content-Type: text/plain; charset=UTF-8

On 23 April 2013 13:03, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I am creating a custom image based on core-image-sato, with a custom splash
> screen (using psplash). I have been able to replace the default yocto
> splashscreen in my image,  however, my question is whether it is possible to
> hide the initial console output text displayed on the screen prior to
> showing the splashscreen?  Currently most of the boot process is completed
> at the stage when the splash screen is being displayed on screen. This is
> because the image should be used as part of an embedded device, and the
> end-user should not see any traces of the underlying linux distro.

Passing "quiet" to the kernel (APPEND+="quiet" in local.conf will do
it for testing) should stop the majority of the text.  A full
splash-from-bootloader is possible if you have a bootloader that
displays the image, and then a silent kernel from there.

Ross

