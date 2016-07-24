Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0782E00C66; Sun, 24 Jul 2016 15:36:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=unavailable
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1595 seconds by postgrey-1.32 at yocto-www;
	Sun, 24 Jul 2016 15:36:15 PDT
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89563E00C37
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 15:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=Mime-Version:To:Date:Message-Id:Subject:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bF3w3UvFWYq3YgnDLrMYRGqPxOHfyTj+ZtU6bvceNFM=;
	b=t7iFCcyoZSlwhRj5TNXYXDlKi1
	LjMqqjtXoe70L+uKfMEl7DLWcuFxn49L4zSUq7BuBY5KZ1K77FK1L9mCFLXb5DlZabFw688AveKV4
	+Y7poMXobt8LQkPK1mSJmyNolvMhjWpGc1lhm/CRJ5c2HDsibklmH0YNnwaVYSdFLTbc=; 
Received: from keylevel.plus.com ([212.159.18.174]:3782
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <opensource@keylevel.com>)
	id 1bRRac-0028Ht-5T; Sun, 24 Jul 2016 23:09:38 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <829C58DE-3920-4E09-836C-2B75E0836725@keylevel.com>
Date: Sun, 24 Jul 2016 23:09:44 +0100
To: Yocto Project <yocto@yoctoproject.org>,
 meta-intel@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Kernel bug 109051
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
X-List-Received-Date: Sun, 24 Jul 2016 22:36:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m using the meta-intel =E2=80=9Cvalley-island=E2=80=9D BSP =
under =E2=80=9Ckrogoth=E2=80=9D and think I may have run into =
https://bugzilla.kernel.org/show_bug.cgi?id=3D109051.

I=E2=80=99m using a J1900 (listed as affected) and the system locks up =
totally (running a graphics-based application) after an indeterminate =
period.

Using the scripts referenced on the related bug page for comment 437 =
(https://bugzilla.kernel.org/show_bug.cgi?id=3D109051#c437) appears to =
resolve the issue.

Is anyone aware of this and/or know if it will be fixed within the Yocto =
kernel tree?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


