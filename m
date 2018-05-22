Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55311E009CF; Tue, 22 May 2018 07:47:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8545E006B4
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 07:47:56 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id e78-v6so18779515iod.0
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 07:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Z12I1/JXxiniT4xrXYp6qBt1m/eoeALX8PSl1hrIq58=;
	b=sP1C46195Ns8O002mCqMSc6mUkN6Cko6uQC3pjyQSu24ldWYr1te1kMj0JxIG63zof
	KR8Ler+mEZmxeJa63BbFibHo7/VKAsUCkX4F/ClnnaiUCyiG8rcslbYv/DE46gojYbOp
	le0/FaJk27pVjvkzWVhgkBLIjbS+SQIqKfJyu/dtouHE2q98SzIeE4o2Id7H0rRNtoWt
	InA1Fm74VE/GfcJpeT4wA48z8c+WSLRr8ZrFvJN0U+FGcnn531Ts+tWoNbYRoliPIgJ6
	nqJBIBEU/vlFGeHfoiV8IlpyK14pYh5eYbfx//SyP3NRGJwT8pMQRrb1lWyUB6SzAv0q
	LB7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Z12I1/JXxiniT4xrXYp6qBt1m/eoeALX8PSl1hrIq58=;
	b=iE5txZTre+6gw3oqkGjtMUgoYlwPlx5WA1R5V1++jjhdW9Du+RMeoNE3j/IC71fm3t
	GMFITyhrYkusf6ATp0DkrQ8QOnOvg8Kx9SQrJuPL/FrOn9d7gaXzjM70LzKRHFRwUHdc
	2NhCXyznLbpXlHA4Lw3i1G9msKa6tlbG2WXwaAwVXoJ3YB4fipL85j3OeccxkvXO4+IK
	tpTuMq5wQi4pTnx3/9hVoz5m8bLvYdFXOYQZhfTHiuanxAWV/nInBOqtDiO5sAZsYKHR
	ANycUuyglD9AHrNl4Fr2sW1qZARhjl7P4taH1I0d2X9I8I5RXQpAWSqykXC9iUvMIMXN
	fXCg==
X-Gm-Message-State: ALKqPwfFD7JzO6DQhLhuzLjjQc4qXMCijsaZ2wXu4J2qtZ5eMG1idC0h
	iIDJfWeVe1u+6F1I6d4I1MvH
X-Google-Smtp-Source: AB8JxZra6ub2shiODwCAO9+GnzNNri/25hQ77Q/A0SsYc1JFvV7E3mKZVfTyhu6beDOrLGv8Y58roQ==
X-Received: by 2002:a6b:8065:: with SMTP id
	b98-v6mr24685225iod.281.1527000475794; 
	Tue, 22 May 2018 07:47:55 -0700 (PDT)
Received: from localhost.localdomain ([216.21.169.52])
	by smtp.gmail.com with ESMTPSA id
	e2-v6sm9040583ioh.23.2018.05.22.07.47.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 May 2018 07:47:55 -0700 (PDT)
From: George McCollister <george.mccollister@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 22 May 2018 09:47:12 -0500
Message-Id: <20180522144712.8403-1-george.mccollister@gmail.com>
X-Mailer: git-send-email 2.16.0
Subject: [meta-selinux][master][rocko][PATCH] selinux-image: fix labeling on non-seclabel mounts
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
X-List-Received-Date: Tue, 22 May 2018 14:47:57 -0000

Use -m to prevent non-seclabel mounts from being excluded from labeling.
After the following commit setfiles will no longer label files on a
mount other than / if it doesn't have seclabel listed in /proc/mounts:
https://github.com/SELinuxProject/selinux/commit/f2e77865e144ab2e1313aa78d99b969f8f48695e#diff-2de9aefdd8fc5bc6a8740533e5d1cc2e

Signed-off-by: George McCollister <george.mccollister@gmail.com>
---
 classes/selinux-image.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclass
index 90ead2f..5174dc5 100644
--- a/classes/selinux-image.bbclass
+++ b/classes/selinux-image.bbclass
@@ -1,6 +1,6 @@
 selinux_set_labels () {
     POL_TYPE=$(sed -n -e "s&^SELINUXTYPE[[:space:]]*=[[:space:]]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
-    if ! setfiles -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS}
+    if ! setfiles -m -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS}
     then
         echo WARNING: Unable to set filesystem context, setfiles / restorecon must be run on the live image.
         touch ${IMAGE_ROOTFS}/.autorelabel
-- 
2.16.0


