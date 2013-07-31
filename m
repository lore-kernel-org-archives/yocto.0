Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A552E002E2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 13:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=9+8r51v0JlfotCy9PXg2Ynqf2NcNQmIZK+LrcOYSnEM=; 
	b=SeqJI5oL3B6jTHhwHGNGK5tJarX2uMtrITxUmAdPxb2oCIgflOuDh9ctGcmZCYEhZbgpsaY0eVxJQntkfVOjdtZ/e0c1DiAdgbWJg7WFSoID7l8pqCapkgOxxC3z9R5jmJj0E0BkwwsDAhqFP31SLAzdP60QusNVPl5fZHql4xs=;
Received: from [109.224.129.17] (port=20741
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80.1)
	(envelope-from <opensource@keylevel.com>) id 1V4d2U-002vTV-AB
	for yocto@yoctoproject.org; Wed, 31 Jul 2013 21:30:30 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Wed, 31 Jul 2013 21:30:28 +0100
Message-Id: <DFD53149-25C0-410A-A5E3-FD95F38E907B@keylevel.com>
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
Subject: Network booting
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
X-List-Received-Date: Wed, 31 Jul 2013 20:30:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Is there an easy way to have a system boot and load the rootfs from a =
network server?

I'm using an x86 system and can have the kernel and an initrd on it. I =
would use bootp, but a lot of end users either don't have this or will =
not allow it to be used. I think it needs to go something like:

1) Kernel loads the initrd and bring the network up (static or DHCP);
2) The rootfs image can then be download;
3) Some magic then makes this run...

This would allow easy update of the rootfs and makes it non-volatile =
(which is good for this project).

Does this make sense, or is there a better / easier way to do it?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




