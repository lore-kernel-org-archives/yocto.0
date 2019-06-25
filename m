Return-Path: <robert.joslyn@redrectangle.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E954E00D30; Mon, 24 Jun 2019 23:54:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_RP_RNBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [217.70.178.242 listed in bl.score.senderscore.com]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.70.178.242 listed in list.dnswl.org]
X-Greylist: delayed 3542 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Jun 2019 23:54:03 PDT
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 490E2E00CF4
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 23:54:02 -0700 (PDT)
Received: from relay4-d.mail.gandi.net (unknown [217.70.183.196])
	by mslow2.mail.gandi.net (Postfix) with ESMTP id CBED83A6870
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 05:28:41 +0000 (UTC)
X-Originating-IP: 50.37.95.192
Received: from xps13.localdomain (50-37-95-192.mscw.id.frontiernet.net
	[50.37.95.192])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 28496E0002;
	Tue, 25 Jun 2019 05:28:35 +0000 (UTC)
Message-ID: <c77b5c42da8261128f45af9a8461ce9f09eb2921.camel@redrectangle.org>
From: Robert Joslyn <robert.joslyn@redrectangle.org>
To: Adi Malca <adim@jfrog.com>, yocto@yoctoproject.org
Date: Mon, 24 Jun 2019 22:28:26 -0700
In-Reply-To: <CAM483UybQzjLoxaa6M25stxwf7xWXa-xW9Q6WxHz=PjwimaT3A@mail.gmail.com>
References: <CAM483UybQzjLoxaa6M25stxwf7xWXa-xW9Q6WxHz=PjwimaT3A@mail.gmail.com>
User-Agent: Evolution 3.30.5 
MIME-Version: 1.0
Subject: Re: OPKG Spec
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
X-List-Received-Date: Tue, 25 Jun 2019 06:54:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2019-06-23 at 16:15 +0300, Adi Malca wrote:
> Hello,
> 
> I'm looking for the current official OPKG spec with spelling and case
> sensitive.
> For example:
> Package: 
> Version: 
> Description: 
> Section: 
> Priority: 
> Maintainer: 
> License: 
> Architecture: 
> OE: 
> Homepage:
> Depends: 
> Source: 
> Filename: 
> SHA1:
> SHA256:
> 
> Best Regards,
> Adi

I'm not sure if there is an official spec somewhere, but the structure
of the packages and server index files can be seen in the code. The
main opkg utility is here: 
http://git.yoctoproject.org/cgit/cgit.cgi/opkg/

The helper scripts are also useful: 
http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/

You can see the structure of the metadata you mention, including
spelling, capitalization, etc, here:
http://git.yoctoproject.org/cgit/cgit.cgi/opkg/tree/libopkg/pkg.c#n552

You can also see it here (perhaps more concisely):
http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/tree/opkg.py#n491

The Packages and Packages.gz index files use these variables. For
example, this is what shows up in the index for busybox on one of my
builds:

Package: busybox
Version: 1.30.1-r0
Depends: libc6 (>= 2.29), update-alternatives-opkg
Recommends: busybox-udhcpc
Section: base
Architecture: armv7vet2hf-neon
Maintainer: Poky <poky@yoctoproject.org>
MD5Sum: c0b45a09adec305b49153133a3392917
Size: 315406
Filename: busybox_1.30.1-r0_armv7vet2hf-neon.ipk
Source: busybox_1.30.1.bb
Description: Tiny versions of many common UNIX utilities in a single
small executable
OE: busybox
HomePage: http://www.busybox.net
License: GPLv2 & bzip2
Priority: optional

Packages can also use SHA256 rather than MD5.

Package: busybox
Version: 1.30.1-r0
Depends: libc6 (>= 2.29), update-alternatives-opkg
Recommends: busybox-udhcpc
Section: base
Architecture: armv7vet2hf-neon
Maintainer: Poky <poky@yoctoproject.org>
SHA256sum:
3ca8d2dd79759fa34bf04a0ee97fef5e354d97da76b03672544f3c4eeef76ac9
Size: 315406
Filename: busybox_1.30.1-r0_armv7vet2hf-neon.ipk
Source: busybox_1.30.1.bb
Description: Tiny versions of many common UNIX utilities in a single
small executable
OE: busybox
HomePage: http://www.busybox.net
License: GPLv2 & bzip2
Priority: optional

I'm not sure if anyone has any package feeds built by Yocto publicly
available, but OpenWRT uses opkg as well, with public feeds available.
For example:
https://downloads.openwrt.org/releases/18.06.2/packages/aarch64_cortex-a53/base/


Robert


