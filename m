Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBBC1E014AA
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 02:18:43 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id 11so3570228vbf.22
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 02:18:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=MA9r88ZUay6GpLkPyYLcVkqFoRwqbL86lmaaITr73uA=;
	b=cXANAmK04MKmYlS+HwGtLFbf6CT9Y3IYZJcGLxOJGG3RCJuH1l0QCttLkBgYC+yusU
	Vf6y2257PPI0be6vN2EF9TSUFZZJ4KWhxlWzKmkancJUezl31BLeNtiXb6/X6PJ4g2Sn
	JwzmKYFwyy2ZdFtKx+OQIBB/3pAlsSqZ+zZshi0V5HSST8dHwUz5ifHI8Rv1YThKSb8J
	jc5QZqEY/sxYSBrQC2fxetyYjN0ZTKMkZOUNta0lmtZlXEvQ3tw9vxRJbW5+hGHtLQiy
	O4s/DEuiyBtZvvw0W+9csqqa5mB7XGpoHi6UHUZf1HsYPdxC0XdZHaZ6692wAPflVFdU
	6jnQ==
X-Received: by 10.58.214.231 with SMTP id od7mr6060831vec.44.1365412723126;
	Mon, 08 Apr 2013 02:18:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Mon, 8 Apr 2013 02:18:22 -0700 (PDT)
In-Reply-To: <003701ce3434$f487d750$dd9785f0$@gmail.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Apr 2013 10:18:22 +0100
Message-ID: <CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
To: Andreas Enbacka <aenbacka@gmail.com>
X-Gm-Message-State: ALoCoQltk1h0H45IJ/C7TMIUyVHCiCLbuZh1AxBc0Fn3Kl/XxVauMTdWFwvF5SsJrMw3oiTfEBXy
Cc: yocto@yoctoproject.org
Subject: Re: Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
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
X-List-Received-Date: Mon, 08 Apr 2013 09:18:44 -0000
Content-Type: text/plain; charset=UTF-8

On 8 April 2013 09:42, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I have experienced some problems with getting the USB mouse and keyboard
> detected in the default core-image-sato Yocto image, built for the Intel
> Emenlow machine (with emgd graphics). X launches successfully to the Sato
> desktop, but I get no response from the mouse or keyboard. When I from
> terminal execute grep -i mouse /var/log/Xorg.0.log from terminal, I get the
> following output:

Attaching the entire X log instead of grepping for phrases that you
think are relevant would be more useful - in this case the module that
X should be using for USB input is "evdev", not "mouse".  Check that
you've got the xorg evdev driver present and that the server is
loading the module.  It's possible that the permissions are wrong on
the input nodes in /dev/input.

Oh, and what version of Poky  / oe-core were you using - 1.3 or master?

Ross

