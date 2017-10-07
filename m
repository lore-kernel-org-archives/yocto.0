Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9FF2E00C82; Sat,  7 Oct 2017 16:29:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E0AE00B1B
	for <yocto@yoctoproject.org>; Sat,  7 Oct 2017 16:29:01 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id l24so5010746pgu.2
	for <yocto@yoctoproject.org>; Sat, 07 Oct 2017 16:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=syG6Skcj1RVgTWg3hKEjrYEB54yMj8mg6XOiUUOttmA=;
	b=Z4CSR09mQypPXz3tAZ1qsVK7ep/XikvJu5V6vfBh1aRpYVCGYH7CFF7Bu0kQUnEu6Y
	cbi1vXtELL7+sQYRDsNxly/fmo/SzVmQkpML9gGn9emR/v5CwCFD4wxSIgZS1/Pt9kun
	af0w93NPPzwHxqF4axeSGE4TZmiJhpAjrZ99NjhJAPw4MnAjrSUqK3dej4YsjlD/jgRB
	qWH6vH1q/odkqqYnvfFNAIoXBdTXZU4DvhAg5kpuu2wOrlcCuzdJmMHDpiNZgse/fvqZ
	3eGiWrwBuHcUgpeOlFHpU6NBbvDZELx2AREuJVWHOjdhhYhkE23Fj4xqlhYcMcSRLc4t
	N6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=syG6Skcj1RVgTWg3hKEjrYEB54yMj8mg6XOiUUOttmA=;
	b=IzYiebJNjYJ81+E4SuXtHuQvbOciwZd6P6zHtpXHsZW6+cE+ciH8ystx1ETiHqT408
	TFUzeJODZ6rA6QfA7fPDoOwuoQU9vdFjSTkQS50yphbyAU/dJTzxCqe+Ng9d0GwGujmA
	LbvIsUFGiHHvoAppSeVBzvvK6NxgHsIMfoQb0xA3WAE1ktIJ6CBzlw7XkfxKr5+lzpQa
	8TI3v0G2pvtYgtt2nZaM2z8hG1+SnYzolhTfJhbjAxyf2oMQDMbosW+bhYyhlL9PeTUJ
	rQ2fQ7vJ2FnOuNdw5oHEgdp6dUCEu7sGjVcD5ia4r9n3VdRrvsAaCqffsZ6DOiyLYtuY
	iepQ==
X-Gm-Message-State: AMCzsaVNoM3enaI845vHiZjPWMD7spj2C1H+3sBZuDgwzbNwaUaOHCWo
	vFK01UcKop4IXX9ArJLaqJc=
X-Google-Smtp-Source: AOwi7QC4HObjMVOdjMwmSJ5FAKrjfNs83Qhyl6kviSOGK3hfBaec5859qwWR00qhBKytmSQ/sMaLXg==
X-Received: by 10.99.160.86 with SMTP id u22mr5596803pgn.283.1507418940976;
	Sat, 07 Oct 2017 16:29:00 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:b4af:95f:9afa:62fc])
	by smtp.gmail.com with ESMTPSA id
	l85sm9408969pfg.155.2017.10.07.16.29.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 07 Oct 2017 16:29:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sat,  7 Oct 2017 16:28:58 -0700
Message-Id: <1507418938-30831-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507418938-30831-1-git-send-email-akuster808@gmail.com>
References: <1507418938-30831-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] README: update with basic info
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
X-List-Received-Date: Sat, 07 Oct 2017 23:29:02 -0000

needed to pass yocto-check-layer

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/README | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-tpm/README b/meta-tpm/README
index e69de29..bbc70bb 100644
--- a/meta-tpm/README
+++ b/meta-tpm/README
@@ -0,0 +1,4 @@
+meta-tpm layer
+==============
+
+This layer contains base TPM recipes.
-- 
2.7.4


