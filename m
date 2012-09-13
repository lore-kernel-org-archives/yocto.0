Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 297E8E013DB
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 04:04:11 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 13 Sep 2012 04:03:56 -0700
Received: by oagn16 with SMTP id n16so2283272oag.35
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 04:03:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=UNM6yfB7NI1BocC15+u9IxwZ/CfA9cjsYUnbhu+YtJg=;
	b=HZfH+If/s68gpFrolpQbj0icKumuYvpwRrexEyEDkCdU58ijkrJu9zFMHSJFaVs8Qb
	EdyGeDAmt6zTTk+Tlh+pSDuXYC5PQt6+8LD91gJYmiTAT5x9P0Gm1z4W+s61hL4Fwxkj
	XHiIWuMLCYKvGFG6aJi5sojcaZ+uARh6CnZvpta4glBaL29YuKEOSiM4SWdus3lgPuEf
	uD3i31/8nneBC/cnfDIG6wqeem1j40kojljTfVP9sBV+VIVJVPIGZFLQpttZIbf6Q23N
	LGKk7wpF3DoUVdtqUBTlT4mjcoRJroesEUzbXsx5gmZoD5ogQGpN153oERkvcVszwZaV
	7Eqw==
Received: by 10.60.29.72 with SMTP id i8mr1550920oeh.26.1347534235463; Thu, 13
	Sep 2012 04:03:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Thu, 13 Sep 2012 04:03:34 -0700 (PDT)
In-Reply-To: <718DB276-4C65-4925-B1E9-3EFEA0B8B4B7@keylevel.com>
References: <718DB276-4C65-4925-B1E9-3EFEA0B8B4B7@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Sep 2012 12:03:34 +0100
Message-ID: <CAJTo0Lb3wH6UQ5SY5mF9seq2cK2k-FguRhvTbASkYBqGTc127Q@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQkAZk9x4KFmzqzjcRiNS5S6ZUK0PYICW7Yix74cR9BkctHWbTEFOWJffsAtKkYvgyr/fQ87
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Denzil / Cedartrail / EGL/GLES under X
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
X-List-Received-Date: Thu, 13 Sep 2012 11:04:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Chris,

On 10 September 2012 19:56, Chris Tapp <opensource@keylevel.com> wrote:
> I've managed to get to the point where I think EGL is up (no API errors r=
eported), but if I try anything on the GL side (e.g. glClear to get the bac=
kground color) I'm not getting anything showing on the display when I call =
eglSwapBuffers().

GL or GLES?  GL on Cedar Trail is very limited , you're heavily
recommended to use GLES.

> I'm not sure how to configure my build to use the cdv-pvr-driver libs rat=
her than the MESA-dri equivalents either. Both provide libGLESv2, etc., but=
 I want the cdv-pvr-driver versions in the final image. However, cdv-prv-dr=
iver doesn't seem to have an include directory to use at build time, so MES=
A needs to be there as well. Is there a PREFERRED_PROVIDER_virtual/libgl va=
lue I can use?

This is a bit of a mess at the moment, and I want to sort it, but it's
a complicated mess.

Building against mesa-dri shouldn't be a problem as all GL
implementations have the same ABI, assuming you can get the
cdv-prv-driver package installed and not mesa-dri on your image.
Preferred providers only work for built-time dependencies, so assuming
that you're having problems with getting mesa-dri out and
cdv-prv-driver in the image you'll need to use something like
RCONFLICTS and RPROVIDES so that the package system uses
cdv-prv-driver instead of mesa-dri.

Ross

