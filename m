Return-Path: <jan.vermaete@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCDCC369AB
	for <webhook@archiver.kernel.org>; Sat, 12 Apr 2025 05:58:25 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.5521.1744437495374826177
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Apr 2025 22:58:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ak+5IWMT;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: jan.vermaete@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cec5cd73bso18987545e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 22:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744437493; x=1745042293; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KXyLmqn1gm0FOSmsYmMAhZ8BmAqJ4xxNbcA25OSj44Y=;
        b=ak+5IWMT3EXUdwaRbHmXF31KnaEHv0GsD81obvZTQ1jjvz1fR9CwH6Wa0DvcPImVDE
         WISiHogy8eKMlbMN/ooBGd/lwZOSb0oA77TYzOrUUs2NLaWIKX30jry44IxSKqc9sBvD
         Hb1nUfzST7V18OfNx1VpbvAgIzhWFvkS7qbeufilQiXNfUAwLvRcvyLe+rnRcg8nKO+H
         oUKAXIBpclTKMDTfllJkKLBXXItKKDHiUlpOwTImFOShwAZd8xvpOISbzna89MlWDrof
         L4eqScS5F7wZrT1an5Fng/3RG2tRSigznNrJz6phQm/XRsfSusE71yFiZR5FosIK8+XX
         t1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744437493; x=1745042293;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXyLmqn1gm0FOSmsYmMAhZ8BmAqJ4xxNbcA25OSj44Y=;
        b=FBBm6uqbD6PLVn7STwW/jhog5AHvGJ2JugyUz00A8mtggo4zqaCvRdz9ZZPx3j0OA4
         v5PxFNzMdxdf33wbfChcymMfz0ocgHezHXq6d85nngcaEAzuMUsAeW8WKqSHY97Yu9TG
         S/5yMXt3a0KBKOfZsGyot6Lwob78FVeoxVM4YxiF61EvP1uf6RE6ev1TnRx0y9ymZs0S
         9IMtX+NwivLbyZyY101Iby0n+V0BFCHmptnozr4t8hlC+NRLMfHNG55DcV4a8+Wuvg6T
         QqKAFGGxvnwGjCydC5ayuS+xDEELCdpCK4lJ1jdVPUAR9GzzGTsegQs6CRLlRBRj3UGf
         vb6w==
X-Gm-Message-State: AOJu0Yw87+H59dvu42uklml3UqFhZ7zUOJddlaIAYAENq9ru/rpwFknv
	4nwy71KvUhYeLAKUfQWGJvEagf0nXko5Ha6WSQplnkQ++6AE9txx+hn4zQ==
X-Gm-Gg: ASbGnctzTksOCiPAxNGREMRB4sHlTaRTcKpja2ccX0xRlOQGceHrm/27TeH8zwm2GzE
	uE4QZJvNCyoa8PODz41p/H2hVw4Ns8OsBRlE/TPSZWekFEpBxNFiCuac+2+kVv644QL+sW56NwV
	KlrmlzcS8qKeRre1Ux8FWge3uRuhFyvtTG2InaInSchiOFTrs3dUKnjuydwz200BNXqBhyu4JNS
	WcA65GnbWD9aYPc1jpV/fFtYVP6e97RTHRclHez59A3B8ME8RavFhGJxA0Dethda0lJHM9RjUfj
	c99XXGUjzFvOKtfnEeIAhItbPdRcVuaUFtOpZ+FtHmbjq2TfNAK1EHigdeSEuwjxPbsnjB5cxNV
	ogQXdqg+xS9I2I0ZzWDh8SSTjCw57rVnk46ATCX1Zt8IaRtU=
X-Google-Smtp-Source: AGHT+IE+v8MSVoscu3WK1+eXrH9SmK9B6cajcipFXSrh6H9awjctwtC5SYZjsFEyVabir2Vbrvt+wQ==
X-Received: by 2002:a05:600c:5008:b0:43c:ec28:d301 with SMTP id 5b1f17b1804b1-43f3a9aaf7fmr41708425e9.26.1744437493138;
        Fri, 11 Apr 2025 22:58:13 -0700 (PDT)
Received: from localhost.localdomain (ptr-fij45qxfjq4wdzn5ard.18120a2.ip6.access.telenet.be. [2a02:1812:512:2c00:46dd:e6f7:688d:78b9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f2338d802sm111642125e9.1.2025.04.11.22.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 22:58:12 -0700 (PDT)
From: Jan Vermaete <jan.vermaete@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Jan Vermaete <jan.vermaete@gmail.com>
Subject: [meta-raspberrypi][PATCH] doc: added raspberrypi5 to the list of supported machines
Date: Sat, 12 Apr 2025 07:58:05 +0200
Message-Id: <20250412055805.3647089-1-jan.vermaete@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Apr 2025 05:58:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65148

Signed-off-by: Jan Vermaete <jan.vermaete@gmail.com>
---
 docs/layer-contents.md | 1 +
 1 file changed, 1 insertion(+)

diff --git a/docs/layer-contents.md b/docs/layer-contents.md
index 3882339..78d66e3 100644
--- a/docs/layer-contents.md
+++ b/docs/layer-contents.md
@@ -11,6 +11,7 @@
 * raspberrypi3-64 (64 bit kernel & userspace)
 * raspberrypi4
 * raspberrypi4-64 (64 bit kernel & userspace)
+* raspberrypi5
 * raspberrypi-cm (dummy alias for raspberrypi)
 * raspberrypi-cm3
 
-- 
2.39.5


