Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6165E0141B
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 03:23:31 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id gf11so4566278vcb.25
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 03:23:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=8TcOoTZ0DpCVdDpD6UmA+++LRIat6OprUmY+7QdTRfc=;
	b=HDDYiPj6n0yZYiKcOLr77SFKiGhz+WYPPtqMsoV0jAkf2zhMFekiWUpp/HH+y2cLuw
	eOTySydRNphULY8G7VQPCuWpIS8pVNIOuhVA3L+M3ezNZfVfX5779W2rh2tmeSN57Ce7
	Ga6N4C/y2/AQcnqxwX2w1hiyJpTUJS3Zit8ZqUE5IsPyXLt4eYm3CQ+tzrSXWulIh9ha
	3r3oZSlya1IbAhyS3gw2hX4HDrluBhBnalfZ9w2HFU0OpBaY4Opw3fdItxNpp9U0R7IZ
	SMEBKBKPOnlTihSOvtyXnso8mIRXgWEBPennNdBqUPkHHf/y5IfBvXvBf7DhaPgvDAdr
	bL0g==
X-Received: by 10.220.1.9 with SMTP id 9mr2380833vcd.37.1371723811008; Thu, 20
	Jun 2013 03:23:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Thu, 20 Jun 2013 03:23:10 -0700 (PDT)
In-Reply-To: <CAHyyKN=uJoee1pchKtEMbKT8paYrwiewrPKS8wWZQ5g5RHwpSA@mail.gmail.com>
References: <CAHyyKN=uJoee1pchKtEMbKT8paYrwiewrPKS8wWZQ5g5RHwpSA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Jun 2013 11:23:10 +0100
Message-ID: <CAJTo0LYQ+K6LU9BbakmgZASmFaPY2mKrAb-E=VthA3m+XPr_kg@mail.gmail.com>
To: Alex M <0xf777@gmail.com>
X-Gm-Message-State: ALoCoQkKUe0i7UxbfOyBE8qou0UkpIA5QswLuGKwU/Q7mfcEWLSfs7+hLvOYlIbX88u89ttLSv5g
Cc: yocto@yoctoproject.org
Subject: Re: core-image-x11 works on QEMU and not on real hardware
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
X-List-Received-Date: Thu, 20 Jun 2013 10:23:33 -0000
Content-Type: text/plain; charset=UTF-8

On 19 June 2013 13:33, Alex M <0xf777@gmail.com> wrote:
> I just built core-image-x11 and able to run it on qemux86, but all my
> attempts to run image on real hardware with nVidia GTX465 or AMD
> HD6320 - failed. In X11 logs I see errors about GLX module.
>
> What I should do to add GLX and OpenGL 2.1 3D acceleration with Mesa
> and opensource drivers for nVidia, Intel and AMD cards at the same
> time?

Details of the errors are always useful.  We don't have a machine
(yet) that supported nVidia or AMD hardware out of the box which is
why it's probably not working very well, so you'll have to add the
Mesa drivers to the image yourself, such as mesa-driver-radeon or
mesa-driver-nouveau-vieux.

Ross

