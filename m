Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B960E00D16; Wed, 30 Jan 2019 09:08:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0242E00D16
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 09:08:01 -0800 (PST)
Received: by mail-oi1-f195.google.com with SMTP id t204so221882oie.7
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 09:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=VL/gahkgHesS+Fkq/Vg7S6JbZAkeQhR0LNgIodmNmWs=;
	b=gmtVs7ur0QaFBqGp6+G6W8PYiGCJfBEvYh3sX+k/x11JyejABzKE9Xfa+m+sz6v05I
	UjOYSNaRpsAO915Uyh+Dm9geQErTwu5c4lw+2Ym4SDlOeuKxSc5EmNlClyy+c5HSL0BI
	xVugat8JFWOzf+85+WV2mu6OGEuiInQdjfaP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=VL/gahkgHesS+Fkq/Vg7S6JbZAkeQhR0LNgIodmNmWs=;
	b=LyCVJ1m7jTonRjIRSPyZ6uvKJ+q3QUVKJdV+klwkKsS3DJbHENtY7RehVTNva/zrNO
	/3teM5+Yx+3dXfaOIMeYSfcyaqdFvDUc+XNnZX4GPS2IHCqvvll6CAlttKFXjC/nGvFS
	TGCu/B7r6vAhukFoaC4SVoxij/8dYjcJfu8NQB94nb7c4yHpPxatSx4GOF7kOF27xMSo
	/qDE4GeqifTAyHDh3JGqWrDcaYAtHkxfBO1hUAHF1yJw61chyCWeDGuGRJPSyMqfwdUL
	gKy9/CswIEkLMQvt7jp0aranR/7FUHuH49qCzesYJZ8VGL5V6lUKt6aNpX7KwX3ZdJzz
	0ZBw==
X-Gm-Message-State: AJcUukdtNVFTNXvQ2O77hWcXGxfl4oMyP3FyKEgWKJX79EMuMTWFqwM/
	cSkbBi5eZ1cYzKNEpY3ujqxosWQPGUk=
X-Google-Smtp-Source: ALg8bN4Dl3vCIy8IrGEELwfwRBAIqvYsHer4bVjoVIwR5qEM7NwAW1O3VdhZwhM6dk83nXyJzaYQuw==
X-Received: by 2002:aca:cc15:: with SMTP id c21mr12414459oig.208.1548868080795;
	Wed, 30 Jan 2019 09:08:00 -0800 (PST)
Received: from blackbox.Home ([200.68.141.9])
	by smtp.gmail.com with ESMTPSA id z9sm864050oiz.21.2019.01.30.09.07.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Jan 2019 09:07:59 -0800 (PST)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2019 11:07:37 -0600
Message-Id: <20190130170737.5347-2-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190130170737.5347-1-anibal.limon@linaro.org>
References: <20190130170737.5347-1-anibal.limon@linaro.org>
MIME-Version: 1.0
Subject: [PATCH][ptest-runner 2/2] utils.c: Print DURATION after ERROR
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
X-List-Received-Date: Wed, 30 Jan 2019 17:08:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

If a process gets killed by timeout or OOM the output could end
without '\n' so add 'DURATION: N\n' after '\nERROR: ptest-dir\n'.

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/utils.c b/utils.c
index 0813e3c..504df0b 100644
--- a/utils.c
+++ b/utils.c
@@ -382,12 +382,12 @@ run_ptests(struct ptest_list *head, const struct ptest_options opts,
 						opts.timeout, fds, fps, &timeouted);
 				entime = time(NULL);
 				duration = entime - sttime;
-				fprintf(fps[0], "DURATION: %d\n", duration);
 
 				if (status) {
 					fprintf(fps[0], "\nERROR: Exit status is %d\n", status);
 					rc += 1;
 				}
+				fprintf(fps[0], "DURATION: %d\n", duration);
 				if (timeouted)
 					fprintf(fps[0], "TIMEOUT: %s\n", ptest_dir);
 
-- 
2.20.1


