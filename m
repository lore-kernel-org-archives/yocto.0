Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C837DE00770
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 08:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=vkecAB2rXAfkji+EvHWbtLO2N0RQPFusjeaxYycezGI=; 
	b=CTS0tjado8c6ODJdi6EtEU+QuOpuyEZM/KkcXyCJfFuHySSa8EJ8zSuDfK4R+Y865PgS/r3mOyDhrW0aeY188n/rARnlRGPS9SIv+aJ45tHPsx4wRdiZr6KpmmfUSdTo;
Received: from [109.224.129.17] (port=43292
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1ThjcK-0005Xt-98
	for yocto@yoctoproject.org; Sun, 09 Dec 2012 16:20:36 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 9 Dec 2012 16:20:35 +0000
Message-Id: <FB68EBDE-D764-47BC-9AE8-3947BC6E7F0B@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
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
Subject: meta-cedartrail - install to sdb fails to boot
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
X-List-Received-Date: Sun, 09 Dec 2012 16:20:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've built an image using meta-cedartrail and copied the .hdd image onto =
a USB drive.

Booting the 'install' label install as expected to an mSATA SSD as sda =
on an Intel DN2800MT board and this boots as expected.

However, I need to use an eUSB SSD. The installer detects this as 'sdb' =
and installs ok, but the system fails to boot with a 'kernel panic' =
reporting that the root FS can't be found. The grub boot specifies:

set root=3D(hd0,1)

... root=3D/dev/sdb2

Which looks reasonable. The serial console diagnostics "... here are the =
available partitions:" entry does not list __any__ partitions. Does this =
mean that the driver required is currently a module and needs to be =
configured as a built-in? If so, is there an easy way to work out which =
one?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




