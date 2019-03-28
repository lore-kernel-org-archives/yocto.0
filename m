Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 418F3E00D1B; Thu, 28 Mar 2019 11:56:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f44.google.com (mail-yw1-f44.google.com
	[209.85.161.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14D55E00D12
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 11:56:15 -0700 (PDT)
Received: by mail-yw1-f44.google.com with SMTP id c4so15476585ywa.11
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 11:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=9eyGjoDvFQl/DHJ2by/qdpv6ROc1hWyz86B4c2BKt64=;
	b=LgPB4thF22WtZTNgIU+Nc9KZs7O52O6Gs2tWXWo2D7hmnDIjklYIHBCgq7xYYb4zoB
	2oZhwa2ehiuiSDGACvxUWHnpw8cfkoRdXFOKTu6VuKbpbJsgVQI0p6LdZ0DCV3QXtGI8
	HO+Xm4zfCIRCgl+UwhHebFDqEXv2NfTaiyo2x5/g3ykrr59FFxyPtBINhqCVb6yPO9ui
	lj3zUI0EJwpfCV7uItKHH7H8Kmvlaoviyir6GIHSX3gRG5mbClBXGD4FqfdQLGos4loT
	G4I34ghzZCB32tjlphlDNTiU54YdFGH3mVXDyVKg1fodCWciZhZWFbigX8c2JlPllZT+
	VoJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9eyGjoDvFQl/DHJ2by/qdpv6ROc1hWyz86B4c2BKt64=;
	b=Lfzp6smusfLS5pI88/rswKLTUPjPL13BzruY0Q2RpnK+IeP7J1O1/TJes4wFXFPXpc
	5bw22XsU3ituwiAnot3kIb6hg5qND+vWIBpdnJNyVM7qwpvOinDWTzZJAIRF93tPdpGj
	bC4EaBCFjkYl+3HB25AsGn+/EQ417TkqeMCAtQQZGchiffsmu+ORtAU0/XQFfhQeL+6V
	ub0NDP9VuacmBQqc2bHjVsw9xrrU0LGnG4nQA9VfqRUhg8hehkEohCohn0exBT0TvJEx
	OHqSq6OJoDQ4jBfPnwjieFZ6yTFv18oQuy2jdjfXXl2PGB6M4dVV0C4K2nX4r0JdhGx3
	HMFA==
X-Gm-Message-State: APjAAAUvyTbv+5lHDILSo1jfwjx8Vv4kmEbLDof0dHvWRUTP3cxJ3V/m
	FP51qB9zBDFoBDng7mNp8bNi64spdb9fSh/6
X-Google-Smtp-Source: APXvYqzf85222Hp08stzTb+Ad9l+R0wt/jLnSqnk9zxpE0EXeWnFJDqbUH1dwbN59U7bVn42DardoQ==
X-Received: by 2002:a81:430a:: with SMTP id q10mr38176318ywa.508.1553799375203;
	Thu, 28 Mar 2019 11:56:15 -0700 (PDT)
Received: from graymalkin (76-230-155-4.lightspeed.rlghnc.sbcglobal.net.
	[76.230.155.4]) by smtp.gmail.com with ESMTPSA id
	l185sm6985609ywb.21.2019.03.28.11.56.13
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 28 Mar 2019 11:56:14 -0700 (PDT)
Received: by graymalkin (sSMTP sendmail emulation);
	Thu, 28 Mar 2019 14:56:12 -0400
From: Jon Mason <jdmason@kudzu.us>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Thu, 28 Mar 2019 14:55:51 -0400
Message-Id: <20190328185553.5247-1-jdmason@kudzu.us>
X-Mailer: git-send-email 2.17.2
Subject: [PATCH 0/2] clean up machine config files
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
X-List-Received-Date: Thu, 28 Mar 2019 18:56:17 -0000

General clean-up of the machine config files present in Yocto.  Since
this encompasses files that would natively be in the oe-core and
meta-yocto-bsp repositories, I split them into 2 commits.  However,
since they are similar, I sent them in the same email thread.  I hope
this is acceptable.

Jon Mason (2):
  meta-yocto-bsp: clean up machine config files
  machine: clean up config files

 meta-yocto-bsp/conf/machine/edgerouter.conf    | 2 +-
 meta-yocto-bsp/conf/machine/genericx86-64.conf | 5 ++---
 meta-yocto-bsp/conf/machine/genericx86.conf    | 5 ++---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf  | 3 ++-
 meta/conf/machine/qemuarm.conf                 | 4 ++--
 meta/conf/machine/qemuarm64.conf               | 4 ++--
 meta/conf/machine/qemuarmv5.conf               | 6 +++---
 meta/conf/machine/qemumips.conf                | 4 ++--
 meta/conf/machine/qemumips64.conf              | 4 ++--
 meta/conf/machine/qemuppc.conf                 | 4 ++--
 meta/conf/machine/qemux86-64.conf              | 4 ++--
 meta/conf/machine/qemux86.conf                 | 4 ++--
 12 files changed, 24 insertions(+), 25 deletions(-)

-- 
2.17.2


