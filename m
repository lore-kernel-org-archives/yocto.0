Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A792BE00D67; Wed,  4 Oct 2017 12:57:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28936E00D06
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 12:57:07 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id y192so14073370pgd.5
	for <yocto@yoctoproject.org>; Wed, 04 Oct 2017 12:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=6JdV/zXzsQUdXXcthTPzj7quHTJ98JgDzAgOyhFCnCM=;
	b=OOEfBDtyX9ERj8iLwhbmuiheqxHgfj9i8CB1asjJY7M+CtN1TsAlcjTBarP4Peo95V
	OH7UTexR5rb/16wM6HN5GgvWPEC2crYj3Vhex4rdYi58JH29UY3PpkZ90Ay0gHXBA5v+
	dvztnX/7Ql/YedqiaiDWQFpN6PPrlxpmXp/pBYrXlObYGtnid/nIMH3CNFKYqcmfebKE
	7BdXd6gxyX8eicdastQyTC1jqisvutGlddwocJVR2Oh+29dlyBpqu1pY1UrZZSEdYbgE
	7viIfW68P58xhvVfDcRuH/3fmwZ+rJiJNsRDXl9ivnWp0jmESXtwaNrEAvXooUwzOEFY
	I9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6JdV/zXzsQUdXXcthTPzj7quHTJ98JgDzAgOyhFCnCM=;
	b=I8hnSaNJx7EpDG3L0tqJi5oIV5ZkR8LXVeJroqlpka5pRId4cfJZOAzQ66nDjAiz9l
	nydNHfRfNP9iLBP/QyaR/qZWzXfTnUz/V8NjLVsOvtxkJi+DgzrwmHlQVdDsOxQi9gmb
	o1DL5E/zhfhKrIs1Nz9X2N2M4LqpypeByvg7IITNb7tpTqdlCZi1wU2I10nnZXOtMScS
	0iL2S9QJDIlNgasfvjDj+bcg1/a/Zy30lQSGbrilj6oe41NdXLJkEPeM/Ft17gNGeHrS
	IdSv+u1kA8K7p/xKdFPBvbKrAjcNNKxgJ6G5GDxpx6lfI+cVe3odemjT58W2lKvxRlsk
	BOgg==
X-Gm-Message-State: AHPjjUgFyObP1Fv09KHZI2rZyYWo7kcCLEeZRedAz5t6KWUqJQoUqqn4
	HK2rqqiG3JHyRq8hgUQsIkmOrA==
X-Google-Smtp-Source: AOwi7QBxSXw8qiHDnIqhfeQh82tkzIkSH8R/5ciJptoKyS6IO1SLta2/twE/GEojMLRMbxyOSdfpeQ==
X-Received: by 10.99.53.206 with SMTP id c197mr19376818pga.440.1507147027005; 
	Wed, 04 Oct 2017 12:57:07 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:d49e:b0ae:9202:32ab])
	by smtp.gmail.com with ESMTPSA id
	e4sm18633515pfa.80.2017.10.04.12.57.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 04 Oct 2017 12:57:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Oct 2017 12:57:04 -0700
Message-Id: <1507147024-2571-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] yocto-linux/4.9: fix typo in filepath
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
X-List-Received-Date: Wed, 04 Oct 2017 19:57:08 -0000

fix idea submitted but Derek Betker <derek.betker@ge.com>

[Yocto 12134]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto_4.9.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-yocto_4.9.bbappend b/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 9702dd4..adda041 100644
--- a/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.8:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.9:"
 
 # TPM kernel support
 KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
-- 
2.7.4


