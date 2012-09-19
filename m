Return-Path: <B38018@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe004.messaging.microsoft.com [216.32.180.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 712B6E013F7
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 14:52:39 -0700 (PDT)
Received: from mail238-va3-R.bigfish.com (10.7.14.247) by
	VA3EHSOBE002.bigfish.com (10.7.40.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 19 Sep 2012 21:52:38 +0000
Received: from mail238-va3 (localhost [127.0.0.1])	by
	mail238-va3-R.bigfish.com (Postfix) with ESMTP id AA9498001C3;
	Wed, 19 Sep 2012 21:52:38 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzzz1202h1d1ah1d2ahzzz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12a9h12bdh12e5h1155h)
Received: from mail238-va3 (localhost.localdomain [127.0.0.1]) by mail238-va3
	(MessageSwitch) id 1348091557579988_7954;
	Wed, 19 Sep 2012 21:52:37 +0000 (UTC)
Received: from VA3EHSMHS024.bigfish.com (unknown [10.7.14.235])	by
	mail238-va3.bigfish.com (Postfix) with ESMTP id 7EF83100046;
	Wed, 19 Sep 2012 21:52:37 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS024.bigfish.com
	(10.7.99.34) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 19 Sep 2012 21:52:34 +0000
Received: from az84smr01.freescale.net (10.64.34.197) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 19 Sep 2012 16:52:33 -0500
Received: from devbox.am.freescale.net (devbox.am.freescale.net
	[10.112.102.32])	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP
	id q8JLqWHF019129;	Wed, 19 Sep 2012 14:52:32 -0700
From: Adrian Alonso <aalonso@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 19 Sep 2012 16:51:53 -0500
Message-ID: <1348091516-4221-1-git-send-email-aalonso@freescale.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <yocto@yoctoproject.org>
References: <yocto@yoctoproject.org>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Wed, 19 Sep 2012 14:56:00 -0700
Cc: florin.sarbu@windriver.com
Subject: imx6 meta-ivi support
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
X-List-Received-Date: Wed, 19 Sep 2012 21:52:39 -0000
Content-Type: text/plain

This patch series enables imx6 target support for meta-ivi based
on denzil branch.

[meta-ivi][PATCH 1/3] pormap: append portmap.service
[meta-ivi][PATCH 2/3] wpa-supplicant: append wpa-supplicant.service
[meta-ivi][PATCH 3/3] layer-management: fix machine search string


