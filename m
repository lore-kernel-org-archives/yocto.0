Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 947CFE0086A
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2014 15:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=iG3AH5GrHENG2b2HINktD/wigGpdpVWIeSwNhwyP9zI=; 
	b=W0opPYHKyH8Ef31riGxwcZqjJgp9zcxVAv3YPFMSO+Bo4EBUbgrJeRFuYf2joR5DiFHutwKofPo3Js0Ouhkb+T5WbFrXO6Ocm7vhkvWY44uw+9/h5rVkQMDTSlUwUOKOfOBR34xH0li9LYPXzpspyruN1fHKgmXOo6eObqzVgG8=;
Received: from [109.224.129.17] (port=25475
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1W3w9d-000Kgb-1q
	for yocto@yoctoproject.org; Thu, 16 Jan 2014 23:15:17 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <77D714BF-7F9C-43E5-88AB-031E57DE8179@keylevel.com>
Date: Thu, 16 Jan 2014 23:15:13 +0000
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
X-Mailer: Apple Mail (2.1827)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp@keylevel.com
Subject: Where's my 'thermal_zone'?
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
X-List-Received-Date: Thu, 16 Jan 2014 23:15:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to find the cpu temperatures on a system running a cedartrail =
image built under Danny.

/sys/thermal has "thermal_cooling" entries (four of which are CPU =
related), but not the "thermal_zone" entries I need to read the CPU =
temperatures.

What do I need to do / add to get these in?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




