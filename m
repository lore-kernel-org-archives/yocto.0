Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 633ABE00BCC; Wed,  6 Mar 2019 08:47:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3294E00BCC
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 08:47:34 -0800 (PST)
Received: by mail-io1-f68.google.com with SMTP id 9so10769968iog.8
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 08:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=MJxASj3u1Judr3J6hTCYw0KEAYVvbQWZZixmk37HLTQ=;
	b=oG+MyMm0419WlOm/q/LJDn8qkezrEcBc9otR3nM6rPIzd9FIDWFthfuXA4MscP+hTA
	yEe25WEi5Ueq6bItJ6uhI2Yvu1pdCjytfo4gn3hMu1p37FpQ+sF5G2PDhzHcMh1ixi+X
	XSSz/73g+33S5H371B/rxTBAIHjzg8GbOrPUrZzqwBZ0t1eIGrdDQBXja+PzQGZVZ7xk
	tfiwodAp6COq2Co91MaoqF1cEbH5GRWHAmpI1+coFoA0GK/NdOkUaTIpPQpqlutdDngN
	O2JPgOWNhcBpElyZPHwAjw9NsLV2kDYLkfayUIs0srm0MA4eHOFVQUs+DeKe5REP+MlJ
	xjmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=MJxASj3u1Judr3J6hTCYw0KEAYVvbQWZZixmk37HLTQ=;
	b=fr06Ptu6YH/BCE1DzPbsXqHY14mnR7mv+pV6tLrOgWcdN0RnFQtk3yjgZJmxplsz/3
	Y+I3wSLXe1QAl6oXSvfjwh0OcYhlOo9Cd9xB/K5a+FN6eakjEcf9hdvxKAqEpRt5sA50
	d0tZnS0J6OW9VcjL+/9hlAtN3aE3czn/1lyQco8BbLGHmo7Bnc7y/piCtMvIG05Jkv30
	9rK4MPojNWLxqKvbvzIpd9gpLro52a2+0jLT9u2gW+5GSM/2DsfaXJ5Md/ZiIdeZmDbD
	/k7sbjNTmjxD9msK9KE38ziDjnbdf0LbAkt6tN8IQ+GpK0pnJEKqzJzumTLU7v50w+pU
	kmRg==
X-Gm-Message-State: APjAAAVL23jSrVGfr+IFlBfi9IoZvwnxG9xerPvvWtZt+b1VwMmbBSDe
	y1RDBGhA8STtf2C1L1u84TM=
X-Google-Smtp-Source: APXvYqybQMLAUrdBs0U1ijG0QFYs8UvnjaMJohF//J65Q5zS1znSVEd8OTLWCsq+6Hx7h8Fppj0ARw==
X-Received: by 2002:a6b:5006:: with SMTP id e6mr3822721iob.132.1551890854023; 
	Wed, 06 Mar 2019 08:47:34 -0800 (PST)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.116.254.195])
	by smtp.gmail.com with ESMTPSA id v14sm700227iol.61.2019.03.06.08.47.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Mar 2019 08:47:33 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Wed,  6 Mar 2019 11:47:27 -0500
Message-Id: <bc1e5ba1de6bdcaacbd183c252b9e9354b2809e6.1551890688.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1551890688.git.bruce.ashfield@gmail.com>
References: <cover.1551890688.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/4] meta-yocto-bsp: introduce 5.0 bbappend
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
X-List-Received-Date: Wed, 06 Mar 2019 16:47:35 -0000
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Although the hardware reference boards are not using the 5.x
kernel yet, we generate a baseline bbappend for future work.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.0.bbappend            | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
new file mode 100644
index 0000000000..de5d84db11
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
@@ -0,0 +1,27 @@
+KBRANCH_genericx86  = "v4.19/standard/base"
+KBRANCH_genericx86-64  = "v4.19/standard/base"
+KBRANCH_edgerouter = "v4.19/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v4.19/standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "v4.19/standard/fsl-mpc8315e-rdb"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+KMACHINE_beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine_genericx86    ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_genericx86-64 ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
+SRCREV_machine_edgerouter ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
+SRCREV_machine_beaglebone-yocto ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_mpc8315e-rdb ?= "21aae3b4437eb6eec18804f1bad692030352430c"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+
+LINUX_VERSION_genericx86 = "4.19.14"
+LINUX_VERSION_genericx86-64 = "4.19.14"
+LINUX_VERSION_edgerouter = "4.19.14"
+LINUX_VERSION_beaglebone-yocto = "4.19.14"
+LINUX_VERSION_mpc8315e-rdb = "4.19.14"
-- 
2.19.1


