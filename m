Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 782B0CCA46F
	for <webhook@archiver.kernel.org>; Wed,  1 Jun 2022 14:18:06 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web08.8062.1654093078490208771
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jun 2022 07:17:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iAXWRGrW;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id
 r9-20020a1c4409000000b00397345f2c6fso3123055wma.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jun 2022 07:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:content-transfer-encoding
         :user-agent:mime-version;
        bh=cQ+/Yp98AtSocZlu4wr4fcr9OzmFyw5xLn1gfrh7I/8=;
        b=iAXWRGrWzpz/HdguDsXkzfdrNl28vVfcIcYziJ5auoPzeGUfV5iR5Sn81Ucbi1M8+o
         bX8wfUPcTX0hDmbUubd8ArX89hRaG9IR1AYwNodkJpO4X9fxSwukgTcj4pDG2IIn6NOZ
         hjVwgWn+WHtUd61YvWhN71skNv5mWYCBom0qM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date
         :content-transfer-encoding:user-agent:mime-version;
        bh=cQ+/Yp98AtSocZlu4wr4fcr9OzmFyw5xLn1gfrh7I/8=;
        b=mSeNYyHIvJ4aVCXLIJP6sZw/jKBYtmJ6JmfKbanFR5poltGAEG1+OUIujC3JkjOc14
         RNmbcQxGHqayUUxtwjk4D8y2hYJ/uah7yR1GThut7r30X+lrFVLFS74CRu7kbyYI6MV/
         m32fnpvyntSceOWctv2exQsakQ+M8z4EN9ARLI91Cl++gvVaSOZEvZSUXzdvA78nVFp4
         2vFyfW5rx23roLyf1kPPl4cxB7V2Vm/7ZcAyvs+JRn3lm1FFOUnbkHRKf7s9lo5Guvz7
         MHrzPgrTUqgbcFor4MwA5gV00Dgndi6wAz70p1bN9LQsEtDm9nqFkeMSJmNhmJgOaJa+
         /xqA==
X-Gm-Message-State: AOAM531jgUmV4UKupw6xq41O3wbVWbW/zg9jWsOirpS++iz1dZTXxp94
	lXVdBdz6ZvtXDiM4YCS37or5MiAv2LXiP3PK
X-Google-Smtp-Source: 
 ABdhPJyVebZsaBAPN79KJuUz3r/AFywhcnzF75+1C4M8Lk5pMq9sWgMZAhXrapVzMMweGEZ/wy+mfw==
X-Received: by 2002:a05:600c:2053:b0:397:36f3:c95e with SMTP id
 p19-20020a05600c205300b0039736f3c95emr29012749wmg.185.1654093076486;
        Wed, 01 Jun 2022 07:17:56 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ef3f:2828:995f:4993?
 ([2001:8b0:aba:5f3c:ef3f:2828:995f:4993])
        by smtp.gmail.com with ESMTPSA id
 o22-20020a1c7516000000b003942a244ed1sm2088754wmc.22.2022.06.01.07.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 07:17:56 -0700 (PDT)
Message-ID: 
 <a45336b97582ca801e52ce640752b0173306d3fb.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-4.1_M1.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Wed, 01 Jun 2022 15:17:55 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Jun 2022 14:18:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57241

A build flagged for QA (yocto-4.1_M1.rc1) was completed on the
autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.1_M1.rc1


Build hash information:=20

bitbake: 6a346df51b96a6c0e1ee516df36eb0b6c292b063
meta-agl: 3a0b7a965ba370ca1fbe2ca0e2ac3babace5204d
meta-arm: 0c4c33de09aa921cafcea2ad4b7bc0e19f844213
meta-aws: b2f5ef7e724d3a2271ef99d748734578cf8fcb1a
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: ebb8c1c26e57e78563760431a57b6da388b82be2
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 90ff53b8df1e3259cbc201c658a4f3f4dddf3aa8
meta-virtualization: 8e8f59d007ca8d60ec77565663cf6285b8acbbd4
oecore: 18a0c31b3386aa5a04eb8ee8e804c2415a61eaaf
poky: 95066dde6861ee08fdb505ab3e0422156cc24fae


[there was one build failure on qemumip64 on the autobuilder in
testsdkext:
https://autobuilder.yoctoproject.org/typhoon/#/builders/74/builds/5251
we don't have any fix for that and investigation will take time, I
don't think it should block M1 and we should proceed with the other QA]

This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



