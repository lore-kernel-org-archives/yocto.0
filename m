Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web09.10960.1630762000543403378
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Sep 2021 06:26:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SsffzVak;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id j17-20020a05600c1c1100b002e754875260so1403133wms.4
        for <yocto@lists.yoctoproject.org>; Sat, 04 Sep 2021 06:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=DBfrzRQ4XK3Ip8vcmj1V0y3tXYcCHd112cNPLO3AI94=;
        b=SsffzVakeohDpzbFNTnRmaZiX4gavpoytI+6hC2Z+OFvnNU+D8BnHPSngAF5rTu6zI
         +VwOY5/42FhBiKpLBWXyYlKVC2lx4VgR5cuxCe1Wa4B7k/DkEhdP5dvFq/XA0hKrMCW7
         B6P7D2cMBuEyMdSFzUrKZYAbKoPbuTdzdXjnw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=DBfrzRQ4XK3Ip8vcmj1V0y3tXYcCHd112cNPLO3AI94=;
        b=oGStO6QOmM2PVUp1blAhbkzi8YoWUY4c2/Jd3q6zHnaRBnp865BOsoQAjVZEtYJOlv
         6n1UeUyYJzInxsNN7OAn0yVLKCanY5IDOPasaK319DKMHJf0zuof+QOlgKdxdtggZ5Rs
         h7EiWJSqx4aCtRONKJQ1AhMjtq1/6pnNJKuxLx1pwlkwLUP0CLXeGnDuST69unY5HDXC
         EKfQIatfPItQ6Hv28vc7I5qztMt33jK7NmJNsAg2N0cNYNKvoLLqsgGwgPdZf1vrOrkd
         rv9Oj+d7w40DTxU56fdwXh6X+oQ7cDZQNNX0cDXdymuqD9O8Jxgo/h9yNfv9osEnM3Zj
         XhtQ==
X-Gm-Message-State: AOAM533kj9lLqgXQ+YQocTLKw6rkODnu+a34Rbmd9AV4B8ox99DY62j3
	CwrSehElmUGqjfB0r8GwUJGleVnJVAg3XQ==
X-Google-Smtp-Source: ABdhPJx0Ea0pKU9vw1z2GO3W5W7yfCLpT2Q4mRhKVdJPKNB5FXSL1y/aGJoY7Q+rR+CY0lnOEYw/Ug==
X-Received: by 2002:a7b:c190:: with SMTP id y16mr3161446wmi.158.1630761998619;
        Sat, 04 Sep 2021 06:26:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:435c:78bb:cd77:df6f? ([2001:8b0:aba:5f3c:435c:78bb:cd77:df6f])
        by smtp.gmail.com with ESMTPSA id g3sm1535610wrh.94.2021.09.04.06.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Sep 2021 06:26:38 -0700 (PDT)
Message-ID: <1e259a6e721b585979f81366408ed6570616441b.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.4_M3.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Sat, 04 Sep 2021 14:26:35 +0100
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-3.4_M3.rc1) was completed on the autobuilder and
is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4_M3.rc1


Build hash information: 

bitbake: 0a11696e0898c3c5108e6d7c5ad28da50e00ea66
meta-agl: 60344efa7a50dc2548fc4b5d68b5ad4d60c4023a
meta-arm: 46e8fc6a67efbcc357cf507b903a3e3e133c78f7
meta-aws: 32ae20566a39454ab0ba4c80c23a32ed7c14dcaf
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: cb1bf2bdc1b20f76fde8b291a12b361a4bc2511e
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: 1511e25cea69b98bf2778984d7a649dad5597878
oecore: ffb886497390d4de2631bda671f2f631bc0bc7be
poky: f2728d3ec8c0589e02e9a3ce7cf8aca902cae0a3



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


