Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 091A1E00770
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 13:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=lbZCEaynoWws84TYs6ENfwXJMqykt+AK1HJ45+U5VBI=; 
	b=g56PhtxO3IfmC8MCdWY3jIsBnCl89ksGuIpJb9cIJq3AO/taVBC0F8FPdyut/mPCS5awYSr6O+2ot/6htWea5HvzRC3zmod3AntHGYuWkMaFdK4AF9pCQl/n0V6ES01v;
Received: from [109.224.129.17] (port=53102
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1Thoav-0006uS-Jc
	for yocto@yoctoproject.org; Sun, 09 Dec 2012 21:39:29 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 9 Dec 2012 21:39:28 +0000
Message-Id: <6F94DE12-515D-47A0-BDC6-9491AFD6849F@keylevel.com>
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
Subject: meta-cedartrail - where is grub configured for 'install' option?
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
X-List-Received-Date: Sun, 09 Dec 2012 21:39:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I am trying to change the 'install' behaviour for the meta-cedartrail =
image so that the installed system has a different grub.cfg file. Is =
there a file I can bbappend to achieve this?

image_live.bbclass refers to the 'install' syslinux label that triggers =
the install, but I've not been able to get from this to how/where =
grub.cfg is created.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




