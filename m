Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20F17E00B66; Tue, 16 Feb 2016 23:45:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51D51E00B45
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 23:45:37 -0800 (PST)
Received: by mail-qg0-f42.google.com with SMTP id b35so6081288qge.0
	for <yocto@yoctoproject.org>; Tue, 16 Feb 2016 23:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=bZBrQ1L3Mzp6FP2ZNoJUwtdeYLQrKNR7AS1EAQcQUWY=;
	b=pC2WDZOf//dJD0LeMvOpGSa7XETX3kdTUB9+6SXtNfcNOGI+exrSkmNXpvsCI5Okig
	rhu1rZYCOj9q3Qm+NF9JvfMlX8RNay6rzRnSLpkfUkWnrLQg+qW0MjbpkbX/Du+3/dTv
	CYZj6FOfp4uChvDQp9xmy/JHaZdYbiq8piptdnsoHb7MpBWoFiYktVi8v3QVS4K0qicc
	5jOolO9wzlZj9FbdT6p2ud06n6WTcdpFQyPt1vttE1D6zcEW1WcFZ3lYjprbo5oyNGpw
	gk6R5uVtIUUPND4hHd2iPxi3wC0QRLsJep7FuFHKzyC1p3YB7J1Z42+HRKu7vpaXXoum
	EqUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=bZBrQ1L3Mzp6FP2ZNoJUwtdeYLQrKNR7AS1EAQcQUWY=;
	b=fLgQKR0g4ohCjf/V6p0hVFuc0N3oMe6aygzLt/ZiGO50NNya+9WMl7VaZMiiHQ6uwL
	uCI2GZMQrEIKBgebw8T1Pu/K5vHjLUHD+hJ5Ias8zNhOAJxpzNxtsWoKZ8ht0hM2VQvx
	Mwf20FW2RHUqK1K33ueCeK3IM3BZhGL/RKtxXSPyYzFWEto/l3VTV+MiJ9z6oMqBN5cZ
	1ekMHZGFnv/QlAlxTTOePK43CHM/x8fptBc54D3aFR1l/TSRh6N3XiAUegAl7Rc5BSBb
	0hrax9TV/RXzZCRfXrDM658rWRozG7+7G/lCV4J8ivKXVYstCxBDNOkZT4Ncpj9o93x0
	aXRw==
X-Gm-Message-State: AG10YOQUs7ytfBPb6enTHz3c4tCdoDKVNBu73AQUgEngHywU02QZlQP1ENlZtRpK/m6/ZA==
X-Received: by 10.140.195.203 with SMTP id q194mr94779qha.45.1455695136631;
	Tue, 16 Feb 2016 23:45:36 -0800 (PST)
Received: from dvm-wcdcc-khem-002.novalocal (a-96-118-179-135.sys.comcast.net.
	[96.118.179.135])
	by smtp.gmail.com with ESMTPSA id 78sm14863371qgt.1.2016.02.16.23.45.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 Feb 2016 23:45:35 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Feb 2016 07:45:27 +0000
Message-Id: <1455695127-8879-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [pseudo][PATCH] configure: Prune PIE flags
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
X-List-Received-Date: Wed, 17 Feb 2016 07:45:41 -0000

LDFLAGS are not taken from environment and CFLAGS is used for LDFLAGS
however when using security options -fpie and -pie options are coming
as part of ARCH_FLAGS and they get into LDFLAGS of shared objects as
well so we end up with conflicting options -shared -pie, which gold
rejects outright and bfd linker lets the one appearning last in cmdline
take effect. This create quite a unpleasant situation in OE when
security flags are enabled and gold or not-gold options are used
it errors out but errors are not same.

Anyway, with this patch we filter pie options from ARCH_FLAGS
ouright and take control of generating PIC objects

Helps with errors like

| /mnt/oe/build/tmp-glibc/sysroots/x86_64-linux/usr/libexec/x86_64-oe-linux/gcc/x86_64-oe-linux/5.3.0/ld: pseudo_client.o: relocation R_X86_64_PC32 against symbol `pseudo_util_debug_flags' can not be used when making a shared object; recompile with -fPIC
| /mnt/oe/build/tmp-glibc/sysroots/x86_64-linux/usr/libexec/x86_64-oe-linux/gcc/x86_64-oe-linux/5.3.0/ld: final link failed: Bad value
| collect2: error: ld returned 1 exit status
| make: *** [lib/pseudo/lib64/libpseudo.so] Error 1

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
Upstream-Status: Submitted

 configure | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/configure b/configure
index e5ef9ce..83b0890 100755
--- a/configure
+++ b/configure
@@ -339,3 +339,5 @@ sed -e '
   s,@ARCH@,'"$opt_arch"',g
   s,@BITS@,'"$opt_bits"',g
 ' < Makefile.in > Makefile
+
+sed -i -e 's/\-[f]*pie//g' Makefile
-- 
1.8.3.1


