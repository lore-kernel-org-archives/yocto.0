Return-Path: <cazfi74@gmail.com>
Received: from mail-bk0-f46.google.com (mail-bk0-f46.google.com
	[209.85.214.46]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 15F3EE0034C
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 13:08:14 -0800 (PST)
Received: by mail-bk0-f46.google.com with SMTP id j5so1885263bkw.33
	for <yocto@yoctoproject.org>; Fri, 08 Feb 2013 13:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer;
	bh=MD+1UT00W7ojD6mnCHIdQTrxOGDf+1/CoCYqsjiB8Cw=;
	b=kF1sNKAerZc506TBUz9qOTEgbKgtoNYirOyL6LnASTMqHKCUJNNeFfADhlFyMBF4z8
	NHjgrwCSUW7u1C4Ra0v9MlnWezHwzZrFcyU8D0icGtVM12vhBB88CKudYRcwD85B0XiI
	GBVi2Z4YjwVpcSQTc02tCnie7/ooScn1GhPeX1e51h/CPj5sMG2BqjIgdfGOPtIbLzmU
	mTwa+WH8oH/rEi/PbrjgMQ5oCqcqVqyAVDVI2ZGIf82uM5exSW7weVPHIZa4SmpkNZgr
	G1Rx2EVuIeOE9wvjytKdTrnFmHgIvvOiWR0a4sLYhuhHAuPg/yeZJMPC9yo4X/eBFWjs
	WUgA==
X-Received: by 10.204.148.145 with SMTP id p17mr1889352bkv.136.1360357693169; 
	Fri, 08 Feb 2013 13:08:13 -0800 (PST)
Received: from prime (a91-153-5-47.elisa-laajakaista.fi. [91.153.5.47])
	by mx.google.com with ESMTPS id
	ge12sm10550267bkc.19.2013.02.08.13.08.11
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 08 Feb 2013 13:08:12 -0800 (PST)
Received: from cazfi by prime with local (Exim 4.80)
	(envelope-from <cazfi74@gmail.com>) id 1U3vB3-0003ib-U0
	for yocto@yoctoproject.org; Fri, 08 Feb 2013 23:08:09 +0200
From: Marko Lindqvist <cazfi74@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 23:08:03 +0200
Message-Id: <1360357684-14259-1-git-send-email-cazfi74@gmail.com>
X-Mailer: git-send-email 1.7.10.4
Subject: Fix gtk-sato-engine build with automake-1.13
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
X-List-Received-Date: Fri, 08 Feb 2013 21:08:15 -0000

[PATCH] configure.ac: fix build with automake-1.13


 - ML

