Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8767AE01572
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 14:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=+kRYmNKoc4tf34kuPh3SXp7TR1KVeFZtLCiiBRo2E5s=; 
	b=Fzp+UlKR26iwaP8S1H2yPWVvisMpvGQmXX9NmJzwzLB/c+8lU3yQ0WpxvBpOEmRfFoDhmGOh99AvX3SyiHQEsyfNr0tmi/zvbbGJzh0rIVIuQzY5wezmEARWQojWg2JB0HyBl1LKehPn5VFQI8M4z+Me9gKFvqsk3iMKlg33wW4=;
Received: from [109.224.129.17] (port=56920
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>) id 1V4dtv-0036XD-5q
	for yocto@yoctoproject.org; Wed, 31 Jul 2013 22:25:43 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
Date: Wed, 31 Jul 2013 22:25:42 +0100
Message-Id: <FDB39166-46D6-451C-9681-89E214958BF3@keylevel.com>
References: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
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
Subject: Re: Network booting
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
X-List-Received-Date: Wed, 31 Jul 2013 21:25:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 31 Jul 2013, at 21:30, Chris Tapp wrote:

> Is there an easy way to have a system boot and load the rootfs from a =
network server?
>=20
> I'm using an x86 system and can have the kernel and an initrd on it. I =
would use bootp, but a lot of end users either don't have this or will =
not allow it to be used. I think it needs to go something like:
>=20
> 1) Kernel loads the initrd and bring the network up (static or DHCP);
> 2) The rootfs image can then be download;
> 3) Some magic then makes this run...
>=20
> This would allow easy update of the rootfs and makes it non-volatile =
(which is good for this project).
>=20
> Does this make sense, or is there a better / easier way to do it?

Looks like http://ipxe.org/ could be what's needed.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




