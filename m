Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6765AE00770
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 12:04:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=EwAIQAOYgr1JOq5Oi7h/m39v3GDxx3/qgvwe5dl+jys=; 
	b=QWXifAUL1DQP54OnUSQg+yUdu1ysEIvUxV2BMN6EoGhW0QIjKYWRnd9CQiGOEvaPRLr90XGKKmiAtvPKKlnhXThwKqT7vEDhzSbDLismJ+Tm2tFNTQohWagKkwofXj9/;
Received: from [109.224.129.17] (port=54199
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1Thn7S-0001vL-5h
	for yocto@yoctoproject.org; Sun, 09 Dec 2012 20:04:58 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <FB68EBDE-D764-47BC-9AE8-3947BC6E7F0B@keylevel.com>
Date: Sun, 9 Dec 2012 20:04:56 +0000
Message-Id: <FE5E90FE-429D-4A5E-B1F9-AF939CD44CA2@keylevel.com>
References: <FB68EBDE-D764-47BC-9AE8-3947BC6E7F0B@keylevel.com>
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
Subject: Re: meta-cedartrail - install to sdb fails to boot
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
X-List-Received-Date: Sun, 09 Dec 2012 20:04:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 9 Dec 2012, at 16:20, Chris Tapp wrote:

> I've built an image using meta-cedartrail and copied the .hdd image =
onto a USB drive.
>=20
> Booting the 'install' label install as expected to an mSATA SSD as sda =
on an Intel DN2800MT board and this boots as expected.
>=20
> However, I need to use an eUSB SSD. The installer detects this as =
'sdb' and installs ok, but the system fails to boot with a 'kernel =
panic' reporting that the root FS can't be found. The grub boot =
specifies:
>=20
> set root=3D(hd0,1)
>=20
> ... root=3D/dev/sdb2
>=20
> Which looks reasonable. The serial console diagnostics "... here are =
the available partitions:" entry does not list __any__ partitions. Does =
this mean that the driver required is currently a module and needs to be =
configured as a built-in? If so, is there an easy way to work out which =
one?


Adding

rootdelay=3D5

to the kernel command line means the kernel then sees the USB boot =
device. It is also sda2 (rather than sdb2, as installed), so I also =
needed to set

root=3D/dev/sda2

Chris Tapp

opensource@keylevel.com
www.keylevel.com




