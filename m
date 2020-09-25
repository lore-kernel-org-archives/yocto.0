Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.9662.1601044577491951073
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 07:36:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EYGOP96k;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id o5so3803057wrn.13
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 07:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=3dmhDeN6I82qixthBRhRDKK/qaK++qLR9H2AxcvOxFk=;
        b=EYGOP96kE3fXcf2LoUO2O7rWq6VzbIHYV6Zp3B+ciXagMjkkc8ZZlzsO2r3P/jjXPI
         kGebh9Ty6QJ7wX8J6u3rBoii6RbJtYwaZ/MmirdkmiDWwpZLEAHQRH95LgZOUrjkliye
         W1agc/PXNoN6xR8w11azvZewSzday/OKw08mM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=3dmhDeN6I82qixthBRhRDKK/qaK++qLR9H2AxcvOxFk=;
        b=ROu3i+dDzXGCcQv2agpTSGrqG2qhYJto4AFZfMmiNnEh1iopIsLD/tck7wkgve6bFg
         xDabZES6ZQro/oHnNKGlWes4mkc0kemmdVvpHf//hT7RAB00ztPo5Z9gLY0SLltN83n+
         jDRciVAjlgr7opBn28sNrIjMxUJfu+UflJTOuTTizarDhWjH2qY2kuoLBDmylXcC2Lyh
         R9HycjHc5uoaZtDHuyQh7uBYGWnp/RKP1KhIYBoIT+Yn0kbMgztQUPEcBTg5iUaGhdcM
         +8pXFtf1SIsE8OGVebfdrHEoQqMN5ZGs63Pxwms13yhgTMHy8MEZWlDEFni/bsp5z4p8
         UsdA==
X-Gm-Message-State: AOAM530SQpSj1ftWGTSaNynCB+1H1zFlZDz5r9qu0VMxkv+VrbdAM/Yx
	tlZK7vJ27bq/qbM/miHEgsHCr6oq49mqzw==
X-Google-Smtp-Source: ABdhPJwNZGUEincsT2WmykTVo/QT3y7frqEZLI16Vlcyg/X4WMBMLgyUukm5U/cgZMtX+KRQmvtr8g==
X-Received: by 2002:a5d:4a48:: with SMTP id v8mr4872484wrs.304.1601044575684;
        Fri, 25 Sep 2020 07:36:15 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 4.2.7.5.8.3.b.f.6.2.f.6.c.b.0.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (4.2.7.5.8.3.b.f.6.2.f.6.c.b.0.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:90bc:6f26:fb38:5724])
        by smtp.gmail.com with ESMTPSA id h8sm3038787wrw.68.2020.09.25.07.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 07:36:12 -0700 (PDT)
Message-ID: <032da6fc700a4018bc7e8d86fd188ad6b40fce36.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.1.3.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com,
  ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, 
 richard.purdie@linuxfoundation.org, akuster808@gmail.com, 
 sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com, Steve Sakoman
 <steve@sakoman.com>
Date: Fri, 25 Sep 2020 15:36:10 +0100
References: <20200924111808.4B9ED1A00A2@debian8-ty-1.yocto.io>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

[the original email bounced for some reason, resending to the list]

A build flagged for QA (yocto-3.1.3.rc1) was completed on the
autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.3.rc1


Build hash information: 

bitbake: 18e1957337fd9f06bc673d28dd4f8277321d07bc
meta-arm: c7a1a5f9fd415e3ae1078c2a1d6af9c25e9e6498
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: d7134e86574172784f90117c03a012e0048d8bcb
meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: b39bda4cc62db12c0edfbe489d5a7f5988ede6a9
poky: 012ad10a89a889c21e67c27dc37d22520212548f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


