Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAE6BE0141B
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 03:06:48 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id 10so4443397vbe.5
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 03:06:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=GGFEDcbanLfGC1ISu5l6lxn5l3cWgjx0fDuzOeg1Ms8=;
	b=iKgtN+hHwRxsoON1q9I0jfFY55wkVL5BKTqA+q5qpzj3D1yLyZ5mHguaQetzqOIaks
	8x/Ml7BWWNWTvfRmz577T9BAY4T3b+CzrIPGTP0p87kQESiZXuZG6e3DNHb+6B0W9m0C
	1mkvdqAxAoz0r4NHSLwTI5CTburn2nAZX5uU9lyaDj3gLx5OW48IzF09MtY8bCllp/8r
	JwXm0mY8vmXh4lfA/KsPboTyChPAtFP49ahHXZyZOTB/sary601U31vkyNiQjPHaQ2PF
	epyGkImBeWCX2ca3DmD+X98Hb9cJlaR3KdMQXdA56Y/iIL1qs8k5c+S7IxLQZbVDdwWd
	uPYw==
X-Received: by 10.58.118.70 with SMTP id kk6mr2668219veb.1.1371722808076; Thu,
	20 Jun 2013 03:06:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Thu, 20 Jun 2013 03:06:27 -0700 (PDT)
In-Reply-To: <CAFMfyzLvQfmmpNGAD+8YpP8axv7EX9ev8M-SR9a=z3oMsBB1Mg@mail.gmail.com>
References: <CAFMfyzKMgx_6gJLO13ei7nr3fxaJg0-A3nG0=BCWQk5rH9p4TQ@mail.gmail.com>
	<CAFMfyzK9CusGuo40vWHdrq1dbD2fna-zTrBaiEQccfXUvhuBzg@mail.gmail.com>
	<F7494A5B-922D-43A9-A63B-4F1C83F93E81@gmail.com>
	<1526680.2T1uIfLeRH@helios>
	<CAFMfyzLvQfmmpNGAD+8YpP8axv7EX9ev8M-SR9a=z3oMsBB1Mg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Jun 2013 11:06:27 +0100
Message-ID: <CAJTo0Lb-1D4EY+RLkcs8DybmPSAfm3-r=ZWA=OUyA8BiozNfOQ@mail.gmail.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQlnC0L3+w6oWBAqZwtrGiVf0eLf1jM1PTqAQx7NFzRxGbkAONNBawCIbDscWof24u5JurMm
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toolchain... Issues with systemd (probably)
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
X-List-Received-Date: Thu, 20 Jun 2013 10:06:53 -0000
Content-Type: text/plain; charset=UTF-8

On 20 June 2013 10:07, DAMARLA Satya Swaroop <swaroop.damarla@gmail.com> wrote:
> The udev version to ve installed is 182-r7 bu I dont understand why 1:204-r0
> is trying to get installed..

This is because your deploy directory contains the systemd "udev"
package, which is version 204 and so newer than the sysvinit "udev"
package, version 182.  This is why we say that switching distro
features in an existing build directory isn't supported.

If you delete your tmp directory it will rebuild everything quickly
using the sstate-cache (don't delete that!).

Ross

