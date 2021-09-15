Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web09.11145.1631725966577364441
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 10:12:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BxInWJPp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id u18so3280708wrg.5
        for <yocto@lists.yoctoproject.org>; Wed, 15 Sep 2021 10:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=LtutC3+e7IT53GYjiZTr3/LzDlzpLwi5sFbwFGaHwIM=;
        b=BxInWJPpkPgRzeT0c8uodMy98DTxhl4zup2dSrYuqeUDnvodtVMYVFNSgu2yuCiXow
         OoJywJoJqZ/QCnmRH3/lNAeGHhmYsk/KyQjpqd4/v1Rt+77mSbfphpX3kygMDphOyVXr
         9L5+0qncdJMgpL51QMp28np4DvoU4NUwRgjhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=LtutC3+e7IT53GYjiZTr3/LzDlzpLwi5sFbwFGaHwIM=;
        b=oRGmn+wh64z7qraOCNeOV2AkOju+JUPy0pTIbtaQ/YGTwYN+Cy0VgJMxVVv2l5xvQY
         vUuUG3edJOuk+kM8687IDfsv49XD2oQ8h8nUXq4SJonssR/knpZIhVxEkW/D9qoY75KA
         gvfXDONI1rBpDZcWi8fbu41mfVyCeB35NOgvJUltROav8SiaKCGI8UsaT3AYVfOnfqxH
         RNeVW0fZ0LIApo2V6kdIjcrs+LddNgs567fAeAUVfsv83thcuWgCGACJkQG4lOAFEUUx
         vMtckILRf8OYCa12HMiorcHaS18njwzFFssoJ+6Gxc2nlQptFkS5RKZxh/2kqHjcsU5S
         mU0A==
X-Gm-Message-State: AOAM531kG+HxappYeYOu1g2Ied6SHTJBg46y3f1euQC40g381YX/0rGn
	5W1ACDv6zku6MHYG/ImQbiFkOP4kQaobAakw
X-Google-Smtp-Source: ABdhPJyuSNJAh8N4n0yyMZ4p0H12ZHLtQdB/yTdaHH1gzKJNJWw+fSyc9ttqFYp8Sx0lid3E6gGh7g==
X-Received: by 2002:adf:e5c5:: with SMTP id a5mr1210959wrn.290.1631725964894;
        Wed, 15 Sep 2021 10:12:44 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:cb98:b99:6df8:dffd? ([2001:8b0:aba:5f3c:cb98:b99:6df8:dffd])
        by smtp.gmail.com with ESMTPSA id g13sm502667wmh.20.2021.09.15.10.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 10:12:44 -0700 (PDT)
Message-ID: <3be57d37402add14f6515b72a9e35bd6209a927c.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.1.11.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Wed, 15 Sep 2021 18:12:41 +0100
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-3.1.11.rc1) was completed on the autobuilder and
is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.11.rc1


Build hash information: 

bitbake: c2a3bda3a29e12472ef7862e424ea1552fab2959
meta-agl: 60344efa7a50dc2548fc4b5d68b5ad4d60c4023a
meta-arm: ce535dfb96de4d2529f091d7d85a7172c626001c
meta-aws: c5164c1a795c21f7caccc3b68bb2e81a55bddb0e
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 6837552365d3cac5f8044a5ae910aa874435f766
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 5c347d8ce425dcb4896e6f873810b8bfff5e4e92
oecore: 49ca1f62cc17c951b7737a4ee3c236f732bc8ebe
poky: 80b8fc829f809ce07809a89a00cec3ee9dc18795



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



