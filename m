Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web09.5819.1623401084224474402
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 01:44:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=B5QKFhRp;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id j2so7436706lfg.9
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 01:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ACyIWySftQCyYdf0tCaciH1+NjukG9sKf5+rPAYD2NQ=;
        b=B5QKFhRp/RFQC+xWEFLYS/zFOS8vgkre3iPCl3CzxoddAtrl6WKmRXRbsT4vm//DVn
         1awcvOJ+HOVN4POJTrTUCqCNPcAjwNYvL8VItIu9HflpzxKWt1EL1MLWi6Hu8NhxQqoR
         n6ZYUfS8q/3ntgOJJIK7+51VCrSwVpb6gUNn3AIiREqR0Z34Cl258ihrMrOblNvDt6z2
         aD49IT3bEX/9RiFhxTxu1ziBBZZdTNPTJQ4cM3GehW7BA5DPwbylzMZcXs7rstPaLZLG
         LlqIV6aJSVVyE1HOZUrqY7ND5l7zmnMVm4Go4Ccq3CZ1/LORZw8AOTo7Vm2XlrnlaNl1
         Me3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ACyIWySftQCyYdf0tCaciH1+NjukG9sKf5+rPAYD2NQ=;
        b=RNe/QIjgawJbsNI5CglR4EKwX+cDlZHO37X+AOHHJwcI3gw22SA4SPS2+LxxBI3bcO
         dCXRoDZNRsOyrXBbPd1SxrMYdu4lB51fZUZCRI5l2c04F+jWp47Qa056Qk9Vk1utUZCt
         xY/mM9pMsxS2onV5qzvEuA3soUhyDtyZdW2Ve7b9upAZOP77ANqZe0EbnLigZfrZxTEz
         s+LdFPje+DdBcCQ64vnN7CHKTBd1vPxdSVQZTxFb3eBSW/T4uuD4OFyEewS3NsaAGbLi
         LBODOOKmzfoc4oRi09WyB/UJ8rHFuuIleBXhFX9P86kPMLy0i+KRhg7I0DSX/gqG5SMT
         yxhQ==
X-Gm-Message-State: AOAM532iLv6vlXX+0mjlBXZ0jazeiQmCw/lo+BqPZrN+urdPpqBFByOr
	CuNdSSfZxddpPiaiCHZUH1CYW3NYssuwWg==
X-Google-Smtp-Source: ABdhPJxshCbDQgbOg1OnFUQlcNZou0Ef7vcG+egbUM1p05X1b9EHKj1m6YATCHNAFRbxawta3ZSp2Q==
X-Received: by 2002:a19:740b:: with SMTP id v11mr2029211lfe.18.1623401081715;
        Fri, 11 Jun 2021 01:44:41 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:b71d:7ae0:b524:c53d])
        by smtp.gmail.com with ESMTPSA id i36sm531010lfv.51.2021.06.11.01.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 01:44:41 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 0/1] Partially fix tests failure with 2.6.0 kernel
Date: Fri, 11 Jun 2021 10:44:30 +0200
Message-Id: <20210611084431.1870665-1-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Transition to Zephyr 2.6.0 broke meta-zephyr test suite. This patch fixes
QEMU Cortex-M3 test suite (MACHINE=qemu-cortex-m3 bitbake zephyr-kernel-test-all -c testimage).

The reason of failure is that the `obj_tracing` test suite has been removed from
Zephyr sources, but it still is referenced in zephyr-kernel-test.inc.

Unfortunately, there are other problems in this area not solved in this path. We'd
like to take the opportunity to report it anyway. The QEMU x86 test suite build
fails because of unimplemented instructions:

  | /build/work/i586-yocto-elf/interrupt/2.6.0+gitAUTOINC+79a6c07536_c3bd2094f9-r0/git/tests/kernel/interrupt/src/direct_isr.c: In function 'direct_isr1':
  | /build/work/i586-yocto-elf/interrupt/2.6.0+gitAUTOINC+79a6c07536_c3bd2094f9-r0/git/tests/kernel/interrupt/src/direct_isr.c:47:1: sorry, unimplemented: 80387 instructions aren't allowed in an interrupt service routine
  |    47 | ISR_DIRECT_DECLARE(direct_isr1)
  |       | ^~~~~~~~~~~~~~~~~~
  | /build/work/i586-yocto-elf/interrupt/2.6.0+gitAUTOINC+79a6c07536_c3bd2094f9-r0/git/tests/kernel/interrupt/src/direct_isr.c: In function 'direct_isr2':
  | /build/work/i586-yocto-elf/interrupt/2.6.0+gitAUTOINC+79a6c07536_c3bd2094f9-r0/git/tests/kernel/interrupt/src/direct_isr.c:54:1: sorry, unimplemented: 80387 instructions aren't allowed in an interrupt service routine
  |    54 | ISR_DIRECT_DECLARE(direct_isr2)
  |       | ^~~~~~~~~~~~~~~~~~

The problem above does not occur in case of Cortex-M3 QEMU tests - `interrupt` builds and passes
just fine. We have not investigated this one further.

Nagesh shamnur (1):
  zephyr-kernel-test: fix Cortex-M tests failure with 2.6.0 kernel

 recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc | 1 -
 1 file changed, 1 deletion(-)

-- 
2.25.1

