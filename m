Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A7D9E009CA; Mon, 16 Apr 2018 08:03:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98FF6E0084A
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:39 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id b5so2854359pgv.5
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=6uPEUX1JFU0xDsah5iUiMejJmknXO/O5dKJpcoAiQ34=;
	b=a6hwuk45OS63IW9Xf+ltgTbd61XCEoYq647zFKA4TjTUIfnfly07mjauICQNng8VNB
	ckTzjset/wtjuOuaKb6NEB5v2yXNEZltCG5U4x2wQ7P+vbVmP1cR6jkEPX+WXP/YPtUJ
	UDBV2TNHU0DTBd7lywOeMbIEuymuQlT4jIx2HrwSCLJTeyQ011JZkt54AlmBcJe0u1b6
	Flxx6hsp2/suBgubskUaRM5mVT0V0bqDCioAuj7QmrNWs5wUF30cOZaFaNQ5+wRxUfPS
	tXwhUMnQyqajMolwkLTQVWhFZ6Zqz0MIj6sn9k+Mvdx26xxdcZPqqfTRgxitR49gLdB5
	csKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=6uPEUX1JFU0xDsah5iUiMejJmknXO/O5dKJpcoAiQ34=;
	b=clwZxQJXsGc+JFKIgzptssZS8eBarfocCnQckPsD7npTSoFIMlCRVSKRijN9tJItfy
	405+6cM6t3c5UnYSrH83ukH+JTqqAZwPBgjdDKixgZ3jcQyy5eOjA8ySdhhxbwobodMd
	gSDEU+riM3nm9avYuG7oUgyxBHIabSD4onemVKU61Z8xEDOogyV/56XO76YpFEPFVgsq
	XzGLL/cmr92buVWssVLB2ZZEY0dGe+xP+2+PafIBaeYd/iwOWtrSEPCQ26ByDEqNiExT
	u8GIaKxKUr0wlUB4pIq5FG7CT69OzB0lQi7cRRSgOj9n9FvibcbTfmOXTl+upHCWq6Sd
	hA5g==
X-Gm-Message-State: ALQs6tDdAIKQAFatNDsvJEiUFkaHJcdQ3kckY4DFG11oAut8XM3u9WLS
	5L5M49f3LoB7kANtApVuv+Vx7w==
X-Google-Smtp-Source: AIpwx4/EhWUxPxyv2MJZgRFoULEvHJh/BkmiK42RgTu8KtASVgO6NtK9Ks0qRirmAJ5QOSSQ/Lu5VQ==
X-Received: by 10.99.159.25 with SMTP id g25mr12950886pge.288.1523891019368;
	Mon, 16 Apr 2018 08:03:39 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:846b:ecf3:2137:c7c5])
	by smtp.gmail.com with ESMTPSA id
	y7sm26865116pfi.185.2018.04.16.08.03.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Apr 2018 08:03:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Mon, 16 Apr 2018 08:03:36 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 16 Apr 2018 08:03:29 -0700
Message-Id: <1523891014-31583-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH 0/5][RFC] CGL cleanup
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
X-List-Received-Date: Mon, 16 Apr 2018 15:03:44 -0000

I understand some of these changes a harsh. This set of changes allow this layer to pass the 
yocto-check-layer. This is one of many options to address passing.
 

Armin Kuster (5):
  meta-cgl-fsl-ppc: drop layer supporting old kernel
  Corosync: remove recipe its in meta-networking.
  makedumpfile: remove as its in meta-oe
  iscsi-initiator-utils: drop bbappends
  meta-cge-common: Add README

 meta-cgl-common/README                             | 138 ++++++++++++++++++
 .../corosync/build-cleanup-configure-ac.patch      |  57 --------
 .../corosync/corosync/corosync-docs.patch          |  37 -----
 .../corosync/corosync/corosync-notifyd.service     |  13 --
 .../recipes-cgl/corosync/corosync/corosync.init    | 160 ---------------------
 .../recipes-cgl/corosync/corosync/corosync.service |  26 ----
 .../corosync/corosync/fix-define-semun-union.patch |  20 ---
 .../corosync/corosync/groff-desc-path.patch        |  12 --
 .../recipes-cgl/corosync/corosync/notifyd.init     | 120 ----------------
 .../recipes-cgl/corosync/corosync/volatiles        |   1 -
 .../recipes-cgl/corosync/corosync_1.4.8.bb         |  88 ------------
 .../files/alias-powerpc-powerpc32.patch            |  18 ---
 .../recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb |  20 ---
 .../iscsi-initiator-utils_%.bbappend               |   1 -
 meta-cgl-fsl-ppc/conf/layer.conf                   |  14 --
 ...p-inherit-auth-capable-on-INIT-collisions.patch |  41 ------
 ...erpc-Fix-64-bit-builds-with-binutils-2.24.patch |  80 -----------
 .../linux/linux-qoriq-cgl-prt_3.12.bb              |  36 -----
 18 files changed, 138 insertions(+), 744 deletions(-)
 create mode 100644 meta-cgl-common/README
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/build-cleanup-configure-ac.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync-docs.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync-notifyd.service
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync.init
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/corosync.service
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/fix-define-semun-union.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/groff-desc-path.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/notifyd.init
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync/volatiles
 delete mode 100644 meta-cgl-common/recipes-cgl/corosync/corosync_1.4.8.bb
 delete mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
 delete mode 100644 meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
 delete mode 100644 meta-cgl-fsl-ppc/conf/layer.conf
 delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/files/Fix-CVE-2014-5077-sctp-inherit-auth-capable-on-INIT-collisions.patch
 delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/files/powerpc-Fix-64-bit-builds-with-binutils-2.24.patch
 delete mode 100644 meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq-cgl-prt_3.12.bb

-- 
2.7.4


