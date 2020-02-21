Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com [209.85.219.68])
 by mx.groups.io with SMTP id smtpd.web11.12342.1582307680179234745
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 09:54:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SEUOv2mz;
 spf=pass (domain: gmail.com, ip: 209.85.219.68, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f68.google.com with SMTP id o18so1365530qvf.1
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 09:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Jk9vG+VIr+C1GGl8juINcvwpWbcphD6yREv09cHlH9Q=;
        b=SEUOv2mzA/9dPyfv855LpKzrnK0WC5cAipYkkcoqlMBbmAsIJwxmgfNo0QzMvyJ1II
         ZbLnzuyC39lSvuObEXZY0oLyFTQINkv2mH64LkwRbU5GCrJdgPaq4lyoh3IUNtdF+Btf
         2LtiaR/becDru2/so47ShEjTUehRjnuiOjbqFGD3O0bJpP87XLxWDoxodUj5B2LT8AqW
         v3033k2Pjpr6Pltd48l0HeBlO00V7mUxwz/DS+hGqm30AtAvp3X+MCwKjTq5E6j4goHZ
         zkElsuxIw7KLM29YvYI/0jKN2y6IozkXMoZg3ANtWfw2eILXcweUnu+daEVw/ktHmBAU
         hC4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Jk9vG+VIr+C1GGl8juINcvwpWbcphD6yREv09cHlH9Q=;
        b=pF76vf/m/CJM95QFLOrmgSfNrTxEMlPxyzkhp77HY6FXgo4ZWeQ1Z5g1RoCJ1SxSnJ
         501bpHDiprFS6/6rjUlqVOwqSVKYP6WAk7Rq4/HJvdaOppX/5pt9SqZUyICIi2P8C/qx
         l9/3XNTRWwaBZ5Xt04bNNunaejYi6ydmLrzFhdc5gYYwGIWpxfczfAhLyMr9snbklwxQ
         uq57yly0AIu2AppthWGP69vpjKvWnAkWjNZbuJjwy12AwnBbRqgHjaWBvum3FZM9Hb0M
         LIVnxd9pw8HXXBl/N19+gra5ciQYrtaHNVHN6FtQc7jijvmDzTRY51XSp/qLycgzvt6v
         Sj1Q==
X-Gm-Message-State: APjAAAUR4YCrzVYa14c1Omh8ZhuHBCNg6QrJfRDfSO5x36eKyvwfnlC1
	6Q2yyqA0qod0ZxDWLLccJJs=
X-Google-Smtp-Source: APXvYqxDPT8UavClBK0tYpYuNRqTAZI1rO2w9l65j+EsODHd48FJv0kQs9VgZ4fvsEySkdRAPVFRFA==
X-Received: by 2002:a05:6214:38c:: with SMTP id l12mr31506026qvy.224.1582307679253;
        Fri, 21 Feb 2020 09:54:39 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com. [174.113.11.95])
        by smtp.gmail.com with ESMTPSA id c17sm1769770qko.134.2020.02.21.09.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 09:54:38 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 0/3] poky/yocto-bsp: update default kernel and drop old bbappends
Date: Fri, 21 Feb 2020 12:54:34 -0500
Message-Id: <cover.1582307331.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Hi all,

This goes along with my series to oe-core. Once that goes in, this bumps the
default and drops v4.19.

Cheers,

Bruce

The following changes since commit e4be65a39aecd10e31991879114856c2784ecd69:

  qemu: bump default reference kernel to v5.4 (2020-02-20 09:27:05 -0500)

are available in the Git repository at:

  git://git.yoctoproject.org/poky-contrib zedd/kernel-yocto
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (3):
  poky: bump preferred kernel to v5.4
  poky-alt: bump LTS kernel to v5.4
  yocto-bsp: drop 4.19 bbappend

 .../include/poky-distro-alt-test-config.inc   |  2 +-
 meta-poky/conf/distro/poky.conf               |  2 +-
 .../linux/linux-yocto_4.19.bbappend           | 23 -------------------
 3 files changed, 2 insertions(+), 25 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend

-- 
2.19.1

