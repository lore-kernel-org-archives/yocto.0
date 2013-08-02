Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A39EE00405
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 16:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=5uOisT/ZJrHKlIw9xhANMjbN2QSrUMqlQS1VvpmWN+4=; 
	b=CjeVLB64iM32QscFrBu3am/LLtjBT5wzUiXe/qhLTD4MmA3pBrKOg/sU6DVYRBy3Dkooxndq2Hw87aoaBfZYBRSrEyBPaduhIXMO0gHKC4V3mYDYVP92Y/AlKN4TmKgSZUKaby0VE3M9wFdirsaA2KKYHpD2AqxbIHt8a4+HSjM=;
Received: from [109.224.129.17] (port=27753
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>) id 1V5PEq-002nW4-Qx
	for yocto@yoctoproject.org; Sat, 03 Aug 2013 00:58:28 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <A2A1E9C8-2411-4C92-A79A-574B36B535C7@keylevel.com>
Date: Sat, 3 Aug 2013 00:58:27 +0100
Message-Id: <EB2E0AAB-526C-48F5-9CD3-E703ECC75E15@keylevel.com>
References: <A2A1E9C8-2411-4C92-A79A-574B36B535C7@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
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
Subject: Re: How/where/which scripts are run when an image boots?
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
X-List-Received-Date: Fri, 02 Aug 2013 23:58:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 2 Aug 2013, at 22:57, Chris Tapp wrote:

> I'm trying to understand how the various initrdscripts get called when =
an image (Cedartrail / 8.0.2) boots as I need to make a few changes.
>=20
> 1) Do the 'live' variants go into the core-image-minimal and the =
'boot' ones into the rootfs image?
> 2) Where are the called from?
>=20
> I've previously workout out that init-live calls init-install. I've =
made changes to that so it installs to my device as I want. I'm now =
trying to do something similar so I can install / boot using ipxe.
>=20
> Any pointers would be really appreciated.

Update - It looks as if:

1) core-image-minimal-initramfs uses initramfs-live-boot to install =
init-live.sh as init.sh and initramfs-live-install to install =
init-install.sh as install.sh
2) init.sh (init-live.sh) then looks at the 'label' kernel parameter and =
runs:
   a) /sbin/init from the rootfs if label=3Dboot (after switch root);
   b) install.sh (init-install.sh) if label=3Dinstall.

If that's right I need to:

1) Create a new script (init-ipxe.sh) to be installed as init.sh;
2) Create a new script (init-install-ipxe.sh) to be installed as =
install.sh.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




