Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5BBBE00A8C
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:31:32 -0800 (PST)
Received: by mail-ie0-f182.google.com with SMTP id y20so1494126ier.27
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 10:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=394ofl2f5q085oJ5HeYhVZlVC4Z3Ekhi29E8FM5aH8g=;
	b=TjOBWkJglzmYFNju+vmJ0/+bCuGMRGr/popadeT2flj+10lFuLHzP3Sf2CXqn7zJ2i
	Ge155BhpAWx35HJtUx+Jbv+f9js5rP+g5O3NbDJTl1OdzafKp2FuYl2f1vE2h/vKO75Y
	WQ6l2nDkg+Y0e4F2t28idiuER6I+1NsFjfj3t71Hv9sQ2UBY6Q1RkgSjO+eOGY6UHA/+
	sOUpzhf7Hm6AYiUHLGsoOmBvphl3ICxxTAFqkovjVSI3NFbqIIbQCQcmd/8DKWGgZc0P
	yA8tNE/0MeRpCiKrPOZYrYAA30tAPTSvHpS4LERwJska2B1/KkuGLSDxTHPNaWwcY+mz
	o71Q==
X-Received: by 10.50.20.100 with SMTP id m4mr10681585ige.17.1394044291934;
	Wed, 05 Mar 2014 10:31:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Wed, 5 Mar 2014 10:31:01 -0800 (PST)
In-Reply-To: <60198294855571725c0b3dea2c9b53f3c1b4d7e9.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
	<60198294855571725c0b3dea2c9b53f3c1b4d7e9.1394042358.git.elizabeth.flanagan@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Mar 2014 10:31:01 -0800
Message-ID: <CAMKF1srnQu9DY4qgMpjWHQcgxYnJY=h-POK1ReLKi7hBiA0P4Q@mail.gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 03/27] nightly-world-uclibc: uclibc target
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
X-List-Received-Date: Wed, 05 Mar 2014 18:31:34 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 5, 2014 at 10:22 AM, Elizabeth Flanagan
<elizabeth.flanagan@intel.com> wrote:
>
> This should add a uclibc world build (which will probably have
> some issues at first)

yay ! thanks

