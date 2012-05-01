Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC0C1E0030B
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 08:33:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q41FXSDe003682
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 1 May 2012 08:33:28 -0700 (PDT)
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 1 May 2012 08:33:28 -0700
Message-ID: <4FA00247.8030705@windriver.com>
Date: Tue, 1 May 2012 10:33:27 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:12.0) Gecko/20120420 Thunderbird/12.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
In-Reply-To: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
Subject: Re: bsp experiences
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
X-List-Received-Date: Tue, 01 May 2012 15:33:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 5/1/12 9:21 AM, Frans Meulenbroeks wrote:
> Dear all,
>

...

> Also went to conf/machine in my bsp and changed it to use
> tune-ppce300c3 instead of c2, and created this include file by copying
> the c2 file to c3 and renaming all references to c2 by c3 (as these
> were the only changes when comparing the oe classic c2 and c3 tune inc
> files.
>
> While building core-image-minimal, building the kernel failed because
> recipes-kernel/linux/linux-yocto_3.2.bbappend had some references to
> mpc8315*. Replaced these with mpc8313*. (not fully sure if that is
> fully sound though; anyway I need to hack the kernel part anyway).
> And now, while typing this, things are happily humming along, giving
> me time to type this message.
>
> Next step is probably see if I can run the executables created; if so,
> move on to adding my own image recipe, and see if I can get that
> going.
> After that hack the kernel recipe (so it uses my own defconfig and
> device tree, and add our own drivers).
> I'll write a followup email if there are things that could e.g. be
> avoided by updating the docs.

Once you have verified that the e300c3 binaries are functional, please send a 
your updated tune to the oe-core list... or if you prefer send it to me and I 
can review it and submit it (with your permission) to the oe-core list.

I'm interested in keeping the tunes updated as much as reasonable for a growing 
list of supportable cores.

BTW isn't the e300c3 a hard-float (standard classic PPC floating point?)  If so 
be sure to change the TUNE_FEATURES to fpu-hard.

--Mark

> Frans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


