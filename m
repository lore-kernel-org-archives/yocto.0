Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 500EFE00B60; Thu,  8 May 2014 12:54:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK
	signature from author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from a180.4uh.net (unknown [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0620AE00B47
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 12:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=yb+xF93XFh8uWj7+zxL2l2ptJltKGUFyJWcjYNB9bmo=; 
	b=S5S2xclN9b9m1/+8S1Vv+kqgm1mKEM5DB+RqMdfgJWIByj7K5OSfYJDlV0DqFjP59Mj0lsOb4CA7XF8IsaMzPh2piDWEEl44ecrnyRt5NbpSvsKJdpZmuw9Nmvpe0LqhcxAZEFG5cOIqyScq/hkC/5Yfo2/eaKA6CpKfpvRYjbA=;
Received: from [109.224.171.0] (port=45595
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1WiUOn-003PzC-CR
	for yocto@yoctoproject.org; Thu, 08 May 2014 20:54:35 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <6710F7A1-6564-49CC-AE7C-1544633E5D84@keylevel.com>
Date: Thu, 8 May 2014 20:54:35 +0100
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
X-Mailer: Apple Mail (2.1874)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: Does Yocto need some "LTS" releases?
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
X-List-Received-Date: Thu, 08 May 2014 19:54:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've had a few potential clients ask how security updates and general =
patches are applied to embedded products built using Yocto.

If they're really embedded, then the only way to to this is by replacing =
the rootfs - especially when they boot read-only.

A second complication is when support for a BSP gets dropped so later =
versions, which generally include updates and patches, can't be used.

It feels to me as if there should be some "LTS" releases which =
developers could focus on when choosing a version.

Or is there already some way of doing this that I just haven't spotted?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




