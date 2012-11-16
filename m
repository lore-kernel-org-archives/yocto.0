Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52650E0032E
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 10:00:38 -0800 (PST)
Received: from mail-pb0-f72.google.com ([209.85.160.72])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 16 Nov 2012 10:00:36 -0800
Received: by mail-pb0-f72.google.com with SMTP id wz7so1630705pbc.11
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2012 10:00:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=wD718o92RHZd92RxDVYHjZ+VaWYwjZV2KbNhFiOZDwA=;
	b=RYMTX2gJtm4Tmuwh77y8oGfvowNesMZh7TzyyriBeiu8x0UfJPErhkt9kgzhpqB9cx
	F3W1Ual0opwAN2v/SLyhn6+ZOxNbZSagOhy8y1aMdL7TlhzTevxuwNG5D65d2imABzDY
	p3Tix76fBI/3nTQiPHKAlK+fBRrjVef3WornBjkQVDq+WPkOCIVugaVmmBEbmWUL0Ik0
	0vRyZFrTYp4nOD8IcUCtYsJ/9ulKw5BewBtPQ0EF9yKPpfc4ZZNXA7RhLzHKJS7x9vD/
	6QrsOO7yZJg5LqLsT0I/bxnPcyB4L8bVEVPDFevgCxrM8kZShm/Za/Dk6zUCpUCxl++7
	FHjQ==
Received: by 10.68.234.229 with SMTP id uh5mr11423222pbc.123.1353088832865;
	Fri, 16 Nov 2012 10:00:32 -0800 (PST)
Received: by 10.68.234.229 with SMTP id uh5mr11423211pbc.123.1353088832791;
	Fri, 16 Nov 2012 10:00:32 -0800 (PST)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id hs2sm1556196pbc.22.2012.11.16.10.00.31
	(version=SSLv3 cipher=OTHER); Fri, 16 Nov 2012 10:00:32 -0800 (PST)
Message-ID: <50A67F42.2000305@intel.com>
Date: Fri, 16 Nov 2012 10:00:34 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>
References: <CAKL3bWW5ieSi9g9G9QRx7u2rEkoOCqSF6kzLevOdG7LjYxc6=A@mail.gmail.com>
	<50A1F05E.5080602@intel.com>
	<CAHUNapQjLyVS-FWa914ty2Y+NAOLtZ3Y2njWQ1=AEaxX1SfhOg@mail.gmail.com>
In-Reply-To: <CAHUNapQjLyVS-FWa914ty2Y+NAOLtZ3Y2njWQ1=AEaxX1SfhOg@mail.gmail.com>
X-Gm-Message-State: ALoCoQmJgb6piJ8fhuPmC+iglBu6lJd8I+nGd/g9D1uAlx7NfG67Rv8lNgQq2RUyXo7VrRKtDj5+x6TsGvM4I+BHUuiNS4MrWlE0xqNDDddsxUCtr2bSakMDyokTaxxy5C9RmyZ0I5JIazacZYit54e2REIOUsPDFA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Slides from the Yocto Developer Day
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
X-List-Received-Date: Fri, 16 Nov 2012 18:00:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/2012 03:14 PM, Trevor Woerner wrote:
> Thank you.
>
> These are interesting slides. As I was not able to attend the sessions
> in Barcelona, I decided to "follow along at home" with the information
> posted in this thread.
>
> The slides pdf (ypdd_2012_barcelona_intro_hands_on_lab.pdf) describes
> the first line of the contents of the
> meta-ypdd/recipes-ypdd/images/ypdd-image.bb <http://ypdd-image.bb> as
> follows:
>
> IMAGE_INSTALL = "task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
> ${POKY_EXTRA_INSTALL} psplash dropbear"
>
> The _worksheets.pdf modifies it as follows:
>
> IMAGE_INSTALL = "task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
> ${CORE_IMAGE_EXTRA_INSTALL} psplash dropbear"
>
>
> I tried both variations using both today's latest HEAD and denzil-7.0.1.
> Neither variation worked in either release.
>
> If anyone else is following along, I was able to get the latest HEAD to
> work with the following first line:
>
> IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
> ${CORE_IMAGE_EXTRA_INSTALL} psplash dropbear"
>
> For me "latest HEAD" is defined as:
>
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3+snapshot-20121115"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "master:9e0d3c0faa9cc80ce8f2ce0eb31dcd20ef875955"
> meta-ypdd         = "<unknown>:<unknown>"
>
> denzil-7.0.1 never worked for me in any way. At best it would fail with
> some obscure perl problem:
>
> | ERROR: Function failed: do_configure (see
> /home/trevor/devel/yocto/denzil-7.0.1/ypdd/tmp/work/x86_64-linux/openssl-native-1.0.0i-r0.2/temp/log.do_configure.30074
> for further information)
> | Can't locate find.pl <http://find.pl> in @INC (@INC contains:
> /usr/lib/perl5/site_perl/5.16.0/x86_64-linux-thread-multi
> /usr/lib/perl5/site_perl/5.16.0
> /usr/lib/perl5/vendor_perl/5.16.0/x86_64-linux-thread-multi
> /usr/lib/perl5/vendor_perl/5.16.0
> /usr/lib/perl5/5.16.0/x86_64-linux-thread-multi /usr/lib/perl5/5.16.0
> /usr/lib/perl5/site_perl/5.16.0/x86_64-linux-thread-multi
> /usr/lib/perl5/site_perl/5.16.0 /usr/lib/perl5/site_perl .) at
> perlpath.pl <http://perlpath.pl> line 7.
> NOTE: package openssl-native-1.0.0i-r0.2: task do_configure: Failed

The CORE_IMAGE_EXTRA_INSTALL issue must have been a typo I carried 
forward from when the labs were done with the edison release. As for the 
openssl-native failure, I'm not sure, but I'm guessing this may be due 
to a host contamination issue that wasn't triggered with the host OS 
setup we had for the lab computers.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

