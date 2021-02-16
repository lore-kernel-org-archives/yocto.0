Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web11.9474.1613489642458675799
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=gFhE3RjE;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id E9580B3D;
	Tue, 16 Feb 2021 10:34:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Tue, 16 Feb 2021 10:34:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=EvELrJVzOSv5y
	VIHk1f7sr9sTySV8PjmAe7D4Hfk06o=; b=gFhE3RjEw652zghdw7rSgWvFXGLJk
	0+J6YlBJfJnVDKrr+z2g3iyystNcQfQXf1NUDpiusFEOA///k+1CxnyHfEuMmIHt
	o4463Wqf6TyiS6qlh7kPuebFEUQpBxG2q1DPM0L0XKq/oOse8+jdD45LrvqKLkZq
	EAKEUnIpcacuRtTQnmlVY3DzwX9613YM05LFajOncnMoEpbPXR0DLCb10IAqQDfd
	Y7r3phYOkc7FUrVXx6S/xz47x2o0RXJN2XHrWBvXpg4yOQMMRbu2wm0YEiv3ZKf0
	wMnBs3UcAVvYNDSkQAofbqrq9xGNTzZUU+fdfGEq9Oul0XSl5DFWvoAoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=EvELrJVzOSv5yVIHk1f7sr9sTySV8PjmAe7D4Hfk06o=; b=VHfgRVuE
	z/WSCDMdLrcdFgmPZNvFid3AM5ycZ9lqWCohYfq6xmM3c5i+1fPEViGaMYNzHPVq
	bRHBlwwlZYvv3Oo3y/O2Nd+X1bzhpVwEvNGhb07BUICss3GLLUj6rOLqk+2Lnn3w
	iflhNye50fHTOgYyRjYigWJ9kqM/1UL8QIbEvROAHOaNpsOTrYT1BXwGfoKkDIMa
	X+//nf4hmzKK7vL2W/C3CwlMpynyJrKnvdIgK/bcELB1/oQX9/zAITNbK/faVUFY
	LQD0LJEKkmdyABliBHpTrp7EgpM7f+PLPHNq4T8nMYVzkOamJ5sTfm4M2brrjkkB
	tbDl9gPALepXoA==
X-ME-Sender: <xms:6eUrYHd2g1vji7cwni19rEqwnKUOSLstnKrZ6YoU-Tu8B5Mfl2CDIQ>
    <xme:6eUrYH2KnPypx82m9d-K8fQ-ParXEVPeBbLOEAXNKu-yAH9jTB8CBoCrgN7hvk94t
    FuNaJQhPijyJq5mGks>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepteegieethfekgeevledtveeftd
    ejvdfhieetvdeiteettdfhhfeltdehjeehvdevnecuffhomhgrihhnpegsohgrrhgurdht
    rghrghgvthenucfkphepkeeirddufedtrddugeeirddutddvnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghn
    rdgtohhm
X-ME-Proxy: <xmx:6eUrYGj78FVd9ashNFDKj-2YtD5RpFf2PHnrHyoSQQ-0Xs43knw4aw>
    <xmx:6eUrYIl3YdbhAXd5ve5L4UE-JuXc3kEDZhuYbptf5_ivDCGpGpfHdA>
    <xmx:6eUrYEbi_FCOzIdRZBHN88HuXsnsxKbVDC0DAdD_AhKJ1_l4igV8UA>
    <xmx:6eUrYMKH8RNAgIoYvme8-_LORgq2WNnIDbqV8z2hGkCJuGy72mMRNg>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id EDFD81080067;
	Tue, 16 Feb 2021 10:33:59 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 02/15] zephyr-flash-pyocd.bbclass: Add missing do_flash_usb dependency on do_deploy
Date: Tue, 16 Feb 2021 15:32:57 +0000
Message-Id: <20210216153310.79138-2-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyr-flash-pyocd.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyocd.bbclass
index 04500af..eca30c9 100644
--- a/classes/zephyr-flash-pyocd.bbclass
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -10,7 +10,7 @@ python do_flash_usb() {
         session.board.target.reset()
 }
 
-addtask do_flash_usb
+addtask do_flash_usb after do_deploy
 
 do_flash_usb[nostamp] = "1"
 do_flash_usb[vardepsexclude] = "BB_ORIGENV"
-- 
2.30.1

