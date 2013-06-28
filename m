Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39671E01482
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 01:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=Lio5ABp/+bBsO+kNivV0nIgALzXKgFLgNLxZZrknT3Y=; 
	b=S55yM6CMSl4LuQhf7PqEHBSMkLRMkIFjPQXkkjJXFgqxIMEow5hD1+JdqRFls2MBar4aXc8Qi41wF/3wSKRBB+aZcfNOHGytb3OxrXkdHngK8ehJ/c3nafY9yF5z2b9N6bvsbOkQEKUn5EYYRPHkpxJtE3N2CDBBxmJq/L6VoIQ=;
Received: from [109.224.129.17] (port=42535
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UsUT2-000ju1-8x
	for yocto@yoctoproject.org; Fri, 28 Jun 2013 09:55:44 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Fri, 28 Jun 2013 09:55:42 +0100
Message-Id: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
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
Subject: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 08:55:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm experimenting with meta-fsl-arm and I need to use 'master' for some =
of the latest updates. However, when I build I get told that "Bitbake =
requires Python 2.7.3".

My development system is Ubuntu 11.10, which only has 2.7.2 (and is out =
of support, so no updates!) and the "latest" "Quick Start" manual simply =
says that 2.7 is required.

Is 2.7.3 now a hard requirement (in which case the documentation could =
do with a minor change), or is the version test being too specific?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




