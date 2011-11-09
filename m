Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB01.domain01.net (STOEXHUB01.domain01.net
	[83.145.59.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AFE4E013B5
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 01:03:09 -0800 (PST)
Received: from ad.chargestorm.se (193.235.91.228) by STOEXHUB01.domain01.net
	(10.12.10.1) with Microsoft SMTP Server (TLS) id 8.3.137.0;
	Wed, 9 Nov 2011 10:03:07 +0100
Date: Wed, 9 Nov 2011 10:03:07 +0100
From: Anders Darander <anders@chargestorm.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <20111109090307.GA5579@ad.chargestorm.se>
Mail-Followup-To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20111107091851.GA3677@ad.chargestorm.se>
	<3423753.SGxEVnGZhz@helios>
MIME-Version: 1.0
In-Reply-To: <3423753.SGxEVnGZhz@helios>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [rpm] Problems with package upgrades
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
X-List-Received-Date: Wed, 09 Nov 2011 09:03:11 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Paul Eggleton <paul.eggleton@linux.intel.com> [111108 17:23]:
> On Monday 07 November 2011 10:18:51 Anders Darander wrote:
> > We have found a problem with upgrading packages on our own image.
> > (Hopefully it'll show up to an error from our side).

> > After upgrading system packages, like busybox, we render our system
> > unusable... In the busybox case, all symlinks pointing to busybox has
> > been removed, and not reinstated during the post-install script.

> > The output from the rpm upgrade is shown below [2].

> > In order to get some feedback, I've reproduced the problem using a
> > sligthly modified core-image-minimal built for qemux86. In the image, we
> > increased the rootfs size, removed the removing of packaging data files
> > and added rpm (dropbear was added to be able to easily tranfser a test
> > rpm to the system). The patch is at the end of the mail [1].

> > Once this was done, the image was built, and after that, we bumped the
> > PR of busybox and rebuilt that package. We transfered the updated
> > busybox rpm to a running qemux86 instance, and tried to `rpm -Uvh
> > busybox-1.18.5-r2`. After running this, all links normally pointing to
> > /bin/busybox are non-existing, most certainly due to problems in the
> > post-install script.

> I looked into this yesterday and there's definitely a problem. I have filed bug 
> #1760 [1] to track it and as described there should have a working fix very 
> soon. Thanks for the concise example that helped me to reproduce the issue 
> easily.

Thanks, for looking into this.

Sounds great that you are close to a working fix!

Cheers,
Anders

> [1] http://bugzilla.pokylinux.org/show_bug.cgi?id=1760
-- 
Anders Darander
ChargeStorm AB / eStorm AB

