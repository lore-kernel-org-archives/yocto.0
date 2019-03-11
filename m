Return-Path: <filipjares@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F106E00CCC; Mon, 11 Mar 2019 07:30:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (filipjares[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7B0AE00754
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 07:30:29 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id t124so14861wma.4
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 07:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=4qe4qnhwpUC6GqmZyh+qjuxFsVX3AeF7ssExgpopSeI=;
	b=LV0Y1m567Lc/3VJ6xUXSK9+CGJa7g3YfiNFwBfPFedvaLbmT5uZ4KvwwGBuTlimB4p
	jsEuQsYjCmTJQZ4L25rIZQ1TAvh9103vcc40paoFVlJlkZTuc4/YMkxYuEyww7TLtOjv
	S1j77xXYl/FJHltjT3ckC++gweO4Ehqz1z5M8H06B1+85wcfiYqvOEarj9Nh7MkUqSMo
	8BXRij3R8ipxQyjE5XNOWkUzBynk07TUyybgN9VoYL8qiHYwIEXSqKpkdGEF4UF+txaO
	2gTuvYbQNfbhMj/L6h/EKJHvTtB8kfAvEKN4ijCNkBczjtzg+LEOn7EZFoMjBF00rN/6
	SREg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=4qe4qnhwpUC6GqmZyh+qjuxFsVX3AeF7ssExgpopSeI=;
	b=XTwCXreZxVifcm2C+nkh2V++jQ8s1xIapbO+wHQKEJK4No78FQdCimSSP7Tyn1ecY1
	IsCIxgzZ6OU8pR/x0HyE845Y36iHIR052rlldjODWQ0wawNIQ3vvdVWGHnbk6fitZAiM
	8bQ65xkzU8jTzQdas5hSfFOZR4bqjGMbwAYFT+suiLhsQObIWiW9gG54jiBxzpDsTuCV
	Qgg3sDv0UPfCHg/FjQbYSJ4WK+NjuTx1nTpDbbCMz2NeAYi+GGAZyZo7WJc+v+SHDshq
	nECZVD7dN8r8VSteOJ0FtVSpD3L9ppsD0B+TQirGg2GkrTBBk2Sd1KPIT5gr3WoTtXTY
	fYVg==
X-Gm-Message-State: APjAAAXuc8OyzlfOa/kH2NtwZn8VVcdkRgiNuhELjIhXQM1DbsU1GYIF
	93NIPCinDpH4TvKvCUDCK+h7UReD
X-Google-Smtp-Source: APXvYqwzcquUveqjoxo6TxqyBrjLnWvAaUZDglvCEEtkuTFXj0mS6kJLMlicXJzBUA3YM9CLezdtHQ==
X-Received: by 2002:a1c:c019:: with SMTP id q25mr17014955wmf.113.1552314628265;
	Mon, 11 Mar 2019 07:30:28 -0700 (PDT)
Received: from PC1007453.cc.certicon.cz (c-006.certicon.cz. [90.183.112.6])
	by smtp.gmail.com with ESMTPSA id
	f1sm11921388wmh.44.2019.03.11.07.30.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Mar 2019 07:30:27 -0700 (PDT)
From: =?UTF-8?q?Filip=20Jare=C5=A1?= <filipjares@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Mar 2019 15:30:23 +0100
Message-Id: <1552314623-15702-1-git-send-email-filipjares@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 11 Mar 2019 08:28:17 -0700
Cc: =?UTF-8?q?Filip=20Jare=C5=A1?= <filipjares@gmail.com>
Subject: [yocto-doc][PATCH] ref-manual: fix copy-paste style error (`SRC_URI`)
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
X-List-Received-Date: Mon, 11 Mar 2019 14:30:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The update fixes a copy-paste-and-forget-to-update-everything error
in the documentation of the `SRC_URI` entry in the Reference Manual.
The `maxdate` paragraph just repeated what is there for the
neighboring `mindate` paragraph which was incorrect.

What is documented (and patched) here is implemented in the
`should_apply` function in `meta/lib/oe/patch.py`.

Signed-off-by: Filip Jareš <filipjares@gmail.com>
---
 documentation/ref-manual/ref-variables.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 3ffa92c..b49fb25 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -13798,7 +13798,7 @@
                             </para></listitem>
                         <listitem><para><emphasis><filename>maxdate</filename> -</emphasis>
                             Apply the patch only if <filename>SRCDATE</filename>
-                            is not later than <filename>mindate</filename>.
+                            is not later than <filename>maxdate</filename>.
                             </para></listitem>
                         <listitem><para><emphasis><filename>minrev</filename> -</emphasis>
                             Apply the patch only if <filename>SRCREV</filename>
-- 
2.7.4


