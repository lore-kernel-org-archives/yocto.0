Return-Path: <vvavrychuk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFF97E00D14; Wed, 27 Mar 2019 13:34:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vvavrychuk[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9535E00BAF
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 13:34:33 -0700 (PDT)
Received: by mail-lf1-f68.google.com with SMTP id a6so12379332lfl.5
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 13:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=Xoa9uacb+A6uRPpnNrN6q14Js2Cvm6WXStyti+iF8QA=;
	b=hqti3y8sOkYPA7SH0soJ36IR5JnkESSt+yvTPhQcFqNDp3NCWu8m6oAhKyLMnt3zz/
	vxBl1paG63K0Q1mcl5w1ETOMQubS+/mDteebhmd38Htzcz91dQfPDxCqz4wtrs/QU7LV
	8/HdY38ZAIsQbIL4J32sr/osnIv0/TeGOP3RC51K0hUA5CfFfgD1IjocQuNY8maB6tuy
	CMkXLPaCfs7/gco4Bex42sfT+RXS+GHc1Yc/yschJityQnnNa4DYTmkDS4WJGny4Zu+5
	ZnHDbzvWhp6+cqPBUN7S77H22zrGwjXbM7KIe31HLc4wXBxOJQDSQR7x9QpnTBjDa3rf
	L7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Xoa9uacb+A6uRPpnNrN6q14Js2Cvm6WXStyti+iF8QA=;
	b=B9rQzGx8prTI1EnSXn6zFyl8kdt7Fdc180xQ3Jpqx8t0KsPzAJ+uRi9irLXNJStaeJ
	DgchOn2TMfdS3N7PrO250Ezaipe3Tm8Q+9epiC2Ps3Hn4DiY//H/OVddAuKdc2ZDH4Dw
	MHtOKdxUhWtk1jnxb3DjzJjOl2mdKUv+DQM7t0rpgV94T5BGQDrDM0jnzsJcBEdATukg
	PTa2oy3zWIAd3z+x94KHFPlNhydLiiCOVXuy5LD1oeV5NN2fJ99+wRIBwp8lkONGPQly
	cGMUry50a7MYeMuU5qxai5fBFGoniFn+OOYYRHhP7VSpW9pf/qCyLk+EuOfJXsOEyM7w
	7NsA==
X-Gm-Message-State: APjAAAW32xX1y5JOvwQQk0w55ttbo38Bh4ZiDp+8oEtepnBPwvGEyJlA
	CvjlGRsdpXglELu2zLumfIiw+7zj6/0=
X-Google-Smtp-Source: APXvYqwJQGGT2UavvYO7Tx/RAgP4UxfN6AX0Kl6XIbBNi5UbakE0a97EfrJDM2DBIwLHnlmHY1G9bg==
X-Received: by 2002:ac2:44a6:: with SMTP id c6mr11498308lfm.31.1553718872298; 
	Wed, 27 Mar 2019 13:34:32 -0700 (PDT)
Received: from localhost.localdomain ([185.219.78.166])
	by smtp.gmail.com with ESMTPSA id 26sm4790079ljo.4.2019.03.27.13.34.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 27 Mar 2019 13:34:31 -0700 (PDT)
From: Vasyl Vavrychuk <vvavrychuk@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 27 Mar 2019 22:33:28 +0200
Message-Id: <20190327203328.10623-2-vvavrychuk@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190327203328.10623-1-vvavrychuk@gmail.com>
References: <20190327203328.10623-1-vvavrychuk@gmail.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] ref-manual: Mention that staging class is enabled by default.
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
X-List-Received-Date: Wed, 27 Mar 2019 20:34:40 -0000
Content-Transfer-Encoding: 8bit

This information is present for all other classes inherited by base class.

Previously it was mentioned for staging class to but then it was gonne.

Signed-off-by: Vasyl Vavrychuk <vvavrychuk@gmail.com>
---
 documentation/ref-manual/ref-classes.xml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 22659821bc..8f301e81ae 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -3376,6 +3376,11 @@ This check was removed for YP 2.3 release
                 </para></listitem>
         </itemizedlist>
     </para>
+
+    <para>
+        This class is enabled by default since it is inherited by
+        the <filename>base</filename> class.
+    </para>
 </section>
 
 <section id='ref-classes-syslinux'>
-- 
2.20.1


