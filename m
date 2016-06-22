Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EAFBE009C9; Tue, 21 Jun 2016 23:13:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A02E0084D
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 23:13:25 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id k2so6137734vkb.0
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 23:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=590SFT4TaxlCNdr0j3VEQur0AIOrELVyJ59DFlgG4Fk=;
	b=NIPh5wrKB4shG+YPncNxxedCKVxHAjWp4ca2N7bi00DtFcbGhS2PBw+J6bQzFxZh6h
	OmjVGuA1eUWZkYb9HyZPBa/579x8CMxzZKCiy+70vQ2VO2KPXj8Wz2naFsmnOg8IndAu
	EKR5ljIIn7lVqVAKqSjmgkoELkSmCYUP3HoHIS1TZut9H7CrNnnnb0GCzpu8iLu9Wmhm
	Ebh6BeJcAwNQN2wDE7ffDcThSeIKMPv/lLjLgg63IMtO5UlFnN2BUmSxlVPxXISqWFS1
	qlneTdUL2zpirgtlRKljGStqwi4GGiWDWTnHVI6CmkkZ+xFmFT2ZfXcsXx7q3QPEL4rO
	4NIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=590SFT4TaxlCNdr0j3VEQur0AIOrELVyJ59DFlgG4Fk=;
	b=OTW/q8rnbHcKZHKMCh/O9MHMTQ7tHN/jj9VDmxS0BtZls7iNi9yM9gDG2wGMN1vR5w
	ui6NkMxZywHytNSQt7SzD4AVvpxTAV0wFFm+ZUnm6Ock3OtQp31QHcjLBk1Ma3qJW/Oh
	7Byoqqmfx5Y9qWEMQ4W2WCDnDk4wzLVU1WO2Kfa+anlExw0MwwH2pvh6klQbaT6Zpljj
	HLROKCgXbSC99G4EmSMlfNvS/G+IEdn1jEAAUXBV61//+Kq3XXrcJLdyFXV9++trcV6k
	3mYiZUFw3jTGEwjoc/xxg+FXMZ6Yx29ugIRs0WNkxm7x4n7o5R/vZUqcOVnF5HTH/0B5
	lS1A==
X-Gm-Message-State: ALyK8tKBYFG+TEzjBBZ5kx0qMC/uQoHSuUxj7Xr+drdsw9O2WSUCSKhk2FI881bCxy4skZX5MI+by4u4fGq+qA==
X-Received: by 10.31.227.196 with SMTP id a187mr12107486vkh.116.1466576004645; 
	Tue, 21 Jun 2016 23:13:24 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.103.68.65 with HTTP; Tue, 21 Jun 2016 23:13:05 -0700 (PDT)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Tue, 21 Jun 2016 23:13:05 -0700
X-Google-Sender-Auth: XrBW79hJthLU1s_dM7TQog3e0Us
Message-ID: <CA+YB3rapfPf_s6sWGxR+Ya9oCQMnsMp7vPYGDO4n2Ws=-6bm6w@mail.gmail.com>
To: "openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto Project <yocto@yoctoproject.org>
Subject: Yocto Project Developer Day & OEDEM at ELCE this fall
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
X-List-Received-Date: Wed, 22 Jun 2016 06:13:29 -0000
Content-Type: text/plain; charset=UTF-8

Hi all - in case folks are starting to make travel arrangements for
ELCE in Berlin this October, we are planning both a YP DevDay (paid
training event) and OEDEM (OpenEmbedded members & developers meeting).
We don't have venues yet, but these two events will likely occur on
the Monday and Friday before and after ELCE, Oct 10 and Oct 14. We
aren't sure yet which will be on which day, but chances are good that
DevDay will be on Monday and OEDEM on Friday.

I will keep these lists informed as we move forward.

Also, the CFP for ELCE, OpenIOT Summit, and LinuxCon EU are still
open, so please get your talks in. ELCE is here:

http://events.linuxfoundation.org/events/embedded-linux-conference-europe

Please feel free to let me know of any questions.

-- 
Jeff Osier-Mixon - Open Source Community Engineer, Intel Corporation

