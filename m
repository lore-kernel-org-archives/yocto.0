Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06AE9E016A3
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 14:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=il0FRtuu5X5M5wcheYmWF6wtvUE8w7eLF0KSYCLbYfI=; 
	b=romQaNOxziLkOzmTL0zveNFNDruio84unhfJA/9ZpQwObGb6zJCeegEH3YdXpFWD3mqIX6pP3sgOVDE5HI+RqKvde8H1kFKBk+U03XkTzSL2DiCHs/t6Zv+2x0KZeEFyzQWbSHXaApcwbmVI6M+8PS+ph/fPqtPZMKF6tLO0BXQ=;
Received: from [109.224.129.17] (port=38054
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>) id 1VTecL-001lII-8H
	for yocto@yoctoproject.org; Tue, 08 Oct 2013 22:14:57 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Tue, 8 Oct 2013 22:14:56 +0100
Message-Id: <E66D35B0-015A-4D4E-A9E6-52811C237330@keylevel.com>
To: "yocto@yoctoproject.org Mailing List" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Subject: Intel Cedartrail BSP on ASrock DN2800MT v Intel DN2800MT - why won't my system start?
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
X-List-Received-Date: Tue, 08 Oct 2013 21:15:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I have been using an image built using the Cedartrail BSP on the Intel =
DN2800MT board for a while now without any issues, but this board is no =
longer available.

The ASrock DN2800MT is supposed to be a drop-in replacement ands boot =
from a USB drive using the live image that gets built, provided the =
LVDS/VGA fix noted in the README added.

However, it doesn't work with the boot process we are using. We use the =
same initramfs and rootfs images as the live image, but boot from a =
server using iPXE. It is this boot that now fails, resulting in the =
system powering off!

Can anyone give me any pointers to what might be going on? The BIOS is =
different, and I think the problem may be down to UEFI. I've not had =
much to do with UEFI, but I've noticed that the live image has a UFI/ =
directory - do I need to replicate this in some way?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




