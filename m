Return-Path: <gizero@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6B60E0137C
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 05:04:05 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so107336qcs.35
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2012 05:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=7r7PJVkuy+glzhNZ2vkxIE5ITO3fa/0LzJWhOx0QTjE=;
	b=MHwH7zeeSChOYY9z5IzeCHInRqX79JojzN3WX20wIpr5PtrUfYR2RB3q9SZL4IS2GJ
	sz3ILNSeuYDUyRwV+LMj2Oak8K0KwyUO3lvyh6t8b70wsbdnow1GXYTu2M18nEYYK7oj
	20iAPj0h2fSh3BjACdQk2009mrng65V9JqXu3rUCryIDu2ZWCvCtjZNvE1csXEMO8ZAu
	sT5IgCSxxF9XgWE7TPdyZ6AKcgKqjYaNloJavnajkmHPN9Kb7naWsej8d3wXfkp+U2GZ
	tjXUny77pB0qBbPc74/1ZL3CtnsF4WAdYnb1/p6KvD4xqnvXfGTW3VKW4NpIad0ISm97
	rTXw==
MIME-Version: 1.0
Received: by 10.224.98.3 with SMTP id o3mr21804410qan.62.1333541044614; Wed,
	04 Apr 2012 05:04:04 -0700 (PDT)
Received: by 10.229.157.199 with HTTP; Wed, 4 Apr 2012 05:04:04 -0700 (PDT)
In-Reply-To: <4F7C1F1F.4070806@r-finger.com>
References: <4F7C1F1F.4070806@r-finger.com>
Date: Wed, 4 Apr 2012 14:04:04 +0200
Message-ID: <CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Cc: yocto@yoctoproject.org
Subject: Re: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Wed, 04 Apr 2012 12:04:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Tomas,

On Wed, Apr 4, 2012 at 12:14 PM, Tomas Frydrych
<tf+lists.yocto@r-finger.com> wrote:
> Hi,
>
> I am trying to get Yocto image built from yesterday's master
> (Linux-3.0.23-yocto-standard) to boot on the NAND-less version of
> BeagleBoard xM, but the kernel panics with:
>
> ----------------- console log start ------------
>
> Waiting for root device /dev/mmcblk0p2...
> mmc0: new SDHC card at address 1234
> mmcblk0: mmc0:1234 SA04G 3.67 GiB (ro)
> =A0mmcblk0: p1 p2
>
> VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
> Please append a correct "root=3D" boot option; here are the available
> partitions:
>
> b300 =A0 =A0 =A0 =A0 3858432 mmcblk0 =A0driver: mmcblk
> =A0b301 =A0 =A0 =A0 =A0 =A0120456 mmcblk0p1 00000000-0000-0000-0000-00000=
0000mmcblk0p1
> =A0b302 =A0 =A0 =A0 =A0 3445942 mmcblk0p2 00000000-0000-0000-0000-0000000=
00mmcblk0p2
>
> VFS: Unable to mount root fs on unknown-block(179,2)
> User configuration error - no valid root filesystem found
> Kernel panic - not syncing: Invalid configuration from end user prevents
> continuing
>
> -------------- console log end ------------------------------------
>
> My guess would be the problem is the card being detected as 'ro' (line
> 3), but I do not know why that is (there is no lock switch on mmc cards).
>
> The card itself is fine, it's the original card that came with the
> board, the original Angstrom demo boots fine from it, and yocto kernel
> 2.6.37 also used to boot.
>
> Tomas

Looks related to the comment I wrote here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1892
I have a slightly different failure with yocto 1.2 beta snapshot (same
kernel) but seems related. Needs more investigation.
Anyone else having problem booting on beagleboard xM? Seems something
wrong happened after 1.1 release...

Andrea

