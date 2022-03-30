Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD74C433EF
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 10:42:51 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web12.5579.1648636969971235817
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 03:42:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Dh6FMzGU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id b19so28614112wrh.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 03:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=IrNJhptruz+dxIgRv0tS3+KTGFUnXi+gy7ZFHvluWcI=;
        b=Dh6FMzGUh/9pSl0lQp/feUt/SgfNn74SMGdlF7SwEQd68XAhWCwJ1G/wPASU0FSiVO
         l+u0XLh+5lO8HfgDgB8cM72gW/ViF2+yJBNJmEvE5z67wQLKXIrcYL7G9uzM0HqvnEjk
         3VDyiGaLHqCuFktAZIvZpZFSu++y3u6LUgvNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=IrNJhptruz+dxIgRv0tS3+KTGFUnXi+gy7ZFHvluWcI=;
        b=vgX6XYpbTUEaLB5lwdDxhGz86/voax3AVh3+4IxVfk23u9DTePtwXCvSbT4SHySTyh
         1est2RBSe3lnlM6OmbIgiJbbK/siKD6QDUtk1PYetbxOEVC627eYejfXcbopLP+suWSW
         ooBR5Cv9q/sSLvdjQw1BIsoiXt11P2AezRqI/i8tBeBi0l6HMnXp2iNPK0TmoIIRoNbU
         Tfdco1dD/SO+QJ1xdHNHVXNCdpUyqYdbPLSBRUWwNJWPxu82R+hK7rQU991Cai4UdY+n
         YY9/Vwu7DptJQv0TPSr1rUTAXOPZ07NPjfuk4FbSmIeRWPNII4NDjeleiNJlEVbIKlPG
         UfYw==
X-Gm-Message-State: AOAM530UsNhEvUgnM0FYFKmLFyWX0BuH3UH12M/AV9t9R3qPFvC6Xlkt
	9YD1IBrlVCpblMDsOoZBoTeNKhWgVO330wSp
X-Google-Smtp-Source: 
 ABdhPJyspZCwFdkwuIr2gMaL4R6WgAOduHIdv3IrlTpnv6fsTLaPUb0VVi3+z/Ilc1/1ZHP6qP6dBA==
X-Received: by 2002:adf:d1c4:0:b0:204:b9d:a840 with SMTP id
 b4-20020adfd1c4000000b002040b9da840mr35711908wrd.285.1648636968165;
        Wed, 30 Mar 2022 03:42:48 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:367f:29cd:9517:5c4?
 ([2001:8b0:aba:5f3c:367f:29cd:9517:5c4])
        by smtp.gmail.com with ESMTPSA id
 i15-20020adffdcf000000b00203efad1d89sm24515712wrs.9.2022.03.30.03.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 03:42:47 -0700 (PDT)
Message-ID: 
 <8afc5cc5da4718e87e0c11b3a6ee8df1cca6a404.camel@linuxfoundation.org>
Subject: SCM usage in source urls and bandwidth
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, Khem
 Raj <raj.khem@gmail.com>, Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 30 Mar 2022 11:42:46 +0100
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 10:42:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56593

[list address fixed, sorry]

We've been having bandwidth trouble with downloads.yoctoproject.org so we did
some quick analysis to see what the issue is. Basically in speeding up the
server which was the rate limit, we hit the limits of the hosting pipe. I'd note
a few things:

a) it isn't the sstate mirroring, it is nearly all being used by downloads.

b) 25% of all our bandwidth is going on "git2_sourceware.org.git.binutils-
gdb.git.tar.gz" - i.e. downloading the source mirror binutils tarball

c) 15% is on git2_sourceware.org.git.glibc.git.tar.gz i.e. glibc

d) OE-Core has downloads.yoctoproject.org as a MIRROR

e) poky has it as a PREMIRROR

What are our options? As far as I can see we could:

a) increase the pipe from downloads.yoctoproject.org but that does come at a
non-trivial cost to the project.

b) Seek help with hosting some of the larger mirror tarballs from people better
able to host them and have that as a first premirror?

c) Switch the binutils and glibc recipes to tarballs and patches. I know Khem
finds this less convenient and they keep moving back and forward but we keep
running into this issue and having to switch back from git.

d) To soften the blow of c) we could add devupstream support to the recipes? We
could script updating the recipe to add the patches?

e) We could drop the PREMIRRORS from poky. This would stop the SCM targets from
hitting our mirrors first. That does transfer load to the upstream project SCMs
though and I'm not sure that will be appreciated. I did sent that patch, I'm not
sure about it though.

We are going to need to do *something* though as the current situation can't
continue. I'm open to other ideas...

Cheers,

Richard




