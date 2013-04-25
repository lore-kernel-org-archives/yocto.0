Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01415E01496
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:25:31 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id p12so2718552vbe.15
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:25:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=hMPJLxDhNBbkfIVh7EoMLKFeYe1uI6ozQ8rhbKJWvb4=;
	b=M2NkhElx7zf3IiljH8Y10axD5oZdAnpjt+VTQ4N207dsbetLr0Z7MB07cFAuhFR687
	+mbOwF51n71TTpCCA+jreZw2KFRp2rkho09DwFwU5LplCk3ZSpZmkK+aNAJMFUCYfTGy
	b9lrDwwraGW3WK4/bYFC3namzHbGwbtQZkU9Q240WokukNHSamReujuNaMs20vNCB5Kp
	IC/6dS3KPJ9Dw1jLXOvnSOwsgsV+BGQmHp4UDbvO9NDw3++No65hivTguUdPINTK2x6n
	GFqV/vDZXljArkvY9KgmY4sZWo9QxSkrEjp/yTyrkcjkjsWAzZqQdAreHM+i4wJas1kn
	ow/Q==
X-Received: by 10.52.158.163 with SMTP id wv3mr23237732vdb.82.1366899930993;
	Thu, 25 Apr 2013 07:25:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Thu, 25 Apr 2013 07:25:10 -0700 (PDT)
In-Reply-To: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
References: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Apr 2013 15:25:10 +0100
Message-ID: <CAJTo0LbzYsOdZ_We_q6VsdfgrdGU9syaRDyXJxe-eu_tAjS0Mw@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
X-Gm-Message-State: ALoCoQmbBupdiaI1S8XG00IGU2EgmyjMkdYxlfAoWgds+JTI8v304ZX8vMLGcjUslu56jfyzB7ty
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Finding/Generating Rootfs Package List
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
X-List-Received-Date: Thu, 25 Apr 2013 14:25:32 -0000
Content-Type: text/plain; charset=UTF-8

Hi Jon,

On 25 April 2013 15:10, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:
> In my current situation, I have a small read-only image where I can't afford
> to ship pkg data, and wanted to gather this info on the host side of things.
> I assume this information is tracked somewhere in the poky build directory,
> but I'm having some trouble finding it.
>
> Could someone kindly point me towards this information or the documentation
> section(s) that I may have overlooked.

In tmp/work/[machine]/[image]/[version]/ you'll find
installed-pkgs.txt and complementary-pkgs.txt, which should be exactly
what you want.

Ross

