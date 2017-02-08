Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3B7BE0093F; Wed,  8 Feb 2017 13:47:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87FABE006C6
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 13:47:29 -0800 (PST)
Received: by mail-oi0-f65.google.com with SMTP id x84so12023918oix.2
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 13:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=4viYiHs/hgSbk/PMChCywnSw8tb88xmHO6PRX7Pz830=;
	b=nECPmQ9/RuCRZOUv1hQ/Xv43ha5sktilGCQkBsCS+RwvLltcw+Vpjs9sWCiANIT9sx
	SyVj4IJvt02nH3unauSs8Y0xeXuODHfKprTGAzHpfxfglQejkVmij8+iKLObdCH3GLUK
	Cih9ZstrDajTtv0fws/3np5tYxBwWHDw36lkCJCaEcLiCfxKgiRSyOiGUEFH8BSj4M1A
	a4TsNKEM11fTkt8bOo0ALb3in0rhxItxqSw4zXdx3M7HwzA1q8C9vn6j+CWty1cMm4Nr
	GqMGadOqmhuptV/HUy3IZ34cxCq1JZ/md6zcF3C3DCEzG/AV4OTBVDlPax78YoDR1XVo
	WWXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=4viYiHs/hgSbk/PMChCywnSw8tb88xmHO6PRX7Pz830=;
	b=ABUa7pNL6SOw05Z4tDVkUsU0sar/TnVngw8pgHi/9IdxIFZOvv21AdeFXvwQk+jp7G
	WDTEc5hswbNcQTLTb59EfsSD+sxtZprOzEr5zAt3h03o5qZduSfYVWlBKhongTebLfVN
	uIxTU8YXKYeelRxxKqtMjmcw4Mxd4D/2FF9pAxj2m1x2nI1vvcyejBYqm32fhLw72ow2
	FhdyyNKyAfPxgm4q1Ugp8HF0moat7zKtT/Egfng7rJJ7ARbyjZffPa30p/QrdfAlK6//
	8bJrTxS8UUumWw+0LBZiZVgJk9WpYhPZKMPZeseecaAlEF+9eDhrUpJ+kpko4BNW8/zZ
	B+FA==
X-Gm-Message-State: AMke39n+F1vTyB3YW8aIEhWxbeih9BK4cZR41B8kHJgrjjp+D5hs+bYwhykNqgAPJthr8gK3RHpzcO3DgSB1pA==
X-Received: by 10.202.196.87 with SMTP id u84mr12989068oif.44.1486590448260;
	Wed, 08 Feb 2017 13:47:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.202.46.8 with HTTP; Wed, 8 Feb 2017 13:47:27 -0800 (PST)
From: George McCollister <george.mccollister@gmail.com>
Date: Wed, 8 Feb 2017 15:47:27 -0600
Message-ID: <CAFSKS=Po+3vFyVdqriDFqtgM8qr6VLi8aWQVc95SmH2XPMxQ2g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-selinux] image labeling not working
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
X-List-Received-Date: Wed, 08 Feb 2017 21:47:32 -0000
Content-Type: text/plain; charset=UTF-8

Is anyone else finding that selinux_set_labels no longer sets selinux
labels after everything selinux related was upreved to 2.6 in early
January?

setfiles appears to be excluding everything in the image rootfs directory.

Regards,
George McCollister
Software Architect
NovaTech LLC

