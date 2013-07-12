Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75892E01445
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 13:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=lFIDz7O0RSsHNUtje/ZjmzvgEllkRV62EnsbpcgDMt0=; 
	b=rcrcIxNw8DQ1LuDpg0NJ7MwK/K4KEfN3ZCssw5Q+T+PpVSqulIT5pTDtIcD2Hh5I7gR6lCiBE9CdB6BAFdXZfecA5W8RzhI1hMEdK6JFkzIblqKJdIKkSZ48w7bU+NQIN8OMlc7TtaGeFKJqhgWeOhlcgaKrYu3k+q46bvAtQes=;
Received: from [109.224.129.17] (port=21972
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1Uxk7m-004Gz9-0e
	for yocto@yoctoproject.org; Fri, 12 Jul 2013 21:39:30 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Fri, 12 Jul 2013 21:39:28 +0100
Message-Id: <6E525492-7C48-4AE0-8F90-C910E194FD41@keylevel.com>
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
Subject: CONFIG_HID_APPLE
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
X-List-Received-Date: Fri, 12 Jul 2013 20:39:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Can CONFIG_HID_APPLE=3Dm please be added to the kernel defconfigs? Apple =
keyboards don't work without it.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




