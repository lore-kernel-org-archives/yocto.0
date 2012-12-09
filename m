Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AEA7E00294
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 15:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Message-Id:Date:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=7CPa9stHYBWWm35HnbQLBwIdBxOTjWrD9hsTIt26fEY=; 
	b=nD4P20AcYJlu25mzjNAIOeaWTfGjxIvN1O/x1wHrJ2G/DV8mnplu/GY9MlMTL8faLT1YMbkqFYMErtN+Ym6gtM4pUmEuW/zGZOhI1AKGzdJMvFG7XNiB9zIs1otO2sbn;
Received: from [109.224.129.17] (port=16154
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1Thq7c-0002Hv-2j
	for yocto@yoctoproject.org; Sun, 09 Dec 2012 23:17:20 +0000
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 9 Dec 2012 23:17:18 +0000
Message-Id: <93700C12-76D8-4F46-9AAB-B66A9869D70C@keylevel.com>
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
Subject: I think my kernel image just went back in time...
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
X-List-Received-Date: Sun, 09 Dec 2012 23:17:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

In tmp/deploy/images:

1) bzImage had a timestamp of 2012-12-09 21:49 and the file ended =
-20121209214459.bin

2) Cleaned the image and the task it contained (to pick up some changes =
on rebuild) and deleted the image files (.hddimg, etc.) in =
tmp/deploy/images making sure to leave the kernel files intact.

3) Rebuilt the image. The bzImage now has a timestamp of 2012-12-09 =
11:13 and the name ends -20121209105420.bin

This looks to me like the kernel image has reverted to an earlier one! =
It is certainly behaving as if this is the case, because a kernel option =
that I added is no longer in the deployed image...

Chris Tapp

opensource@keylevel.com
www.keylevel.com




