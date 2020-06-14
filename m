Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web12.22811.1592111308825743619
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Jun 2020 22:08:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Md7x6Vi0;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id n2so5424789pld.13
        for <yocto@lists.yoctoproject.org>; Sat, 13 Jun 2020 22:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:organization:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ca3H7pfEPwtIo4+CxbQzdcRjrpYN+A38RxXq9+oRFpg=;
        b=Md7x6Vi0Pf1zC6x9EGSgXuL3PGJKt2Mzr/bjweHD9Et//EfFokFv4sudHBsb0L6YA1
         ufFD6eOcUYm60HSAgQWTIxk1TCCLU0MsHECtp/wHv6vCjSjH7aAfbXVeRgXmWBw86NeP
         nSW8fGuFxsCxAbbbQ54pVY2i0AhZtuCsHPfAlmaKg/MjK6iNPyaYzkcTFb60Ct//XTzU
         uJRkdNC8Wx6vntoZ2yCS1P4Npihv0DOsbz8vXgWt2Y3fDGDHPHUc2cx8FijpxovCMAww
         83zp2sWAqK3Ls7lTK8bhsGZMFCJ9KLf9Gw/6AX0mBRc8dccfBCihdnlR3C7zInUY+GZi
         tWoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:organization
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=ca3H7pfEPwtIo4+CxbQzdcRjrpYN+A38RxXq9+oRFpg=;
        b=b5cw1qg/3AEjf3DR28l0iWghJeNLUP4aqV/WFOzvJoR+nGl4jzggIsK65LSFOeSEvO
         hMr4lTbmwJBGSJUTn5MaJhtX7hIMjAb5P4/e5xZIcdRNUDZLECMIhBuYNdt3RY1YNJxi
         qGkNnRejLuS1W5OFV1vRxC+Hh7lUydbbwk47tnAF/GP+7xLnKARh1j7LR2QGMykja6PC
         aR1K2giGKSU5A41JZjdSBnBqPsF8a+xgKvnRWGJFqc9RGWT4sRMaTP4tajcvlCa1WUbw
         eLqWrR+AKto4Aq5rE6NOEGHl61M1dwGXdw+ORKiuFxWLDHIvW8etJL21an4QF5dqze34
         r5pg==
X-Gm-Message-State: AOAM53333ktazxlwBPteQFH0zAVnVYD6byKCXkeD0t7QCTCHQtPDjAoI
	+XB9blils4S2kau7litNSSoEpHlaoh4=
X-Google-Smtp-Source: ABdhPJyGdb/lZ6wVoAah9MdDOT3Ac+q/64Sy7LaSkNNR10IBlRBMXl+0UQoPwAlbSnyPI0y4lk1qFQ==
X-Received: by 2002:a17:90a:64c9:: with SMTP id i9mr6179491pjm.135.1592111307699;
        Sat, 13 Jun 2020 22:08:27 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from tyche.localnet ([2601:646:9200:4e0::b468])
        by smtp.gmail.com with ESMTPSA id 12sm10271750pfj.149.2020.06.13.22.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2020 22:08:27 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: MikeB <mabnhdev@gmail.com>
Subject: Re: [yocto] Dunfell busybox NFS mount fails to build
Date: Sat, 13 Jun 2020 22:08:26 -0700
Message-ID: <2846920.tVNd4TQEIe@tyche>
Organization: HIMVIS
In-Reply-To: <p9vd.1592089619874670888.VyFF@lists.yoctoproject.org>
References: <p9vd.1592089619874670888.VyFF@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, June 13, 2020 4:06:59 PM PDT MikeB wrote:
> I'm trying to build busybox on Dunfell with NFS mount configured
> (CONFIG_FEATURE_MOUNT_NFS).  The build fails with the following.
> | util-linux/mount.c:253:11: fatal error: rpc/rpc.h: No such file or
> | directory|
> |   253 | # include <rpc/rpc.h>
> 
> Reading online, later versions of glibc no longer install rpc headers.  Once
> suggested solution is to configure glibc with --enable-obsolete-rpc.  I
> tried that, but then the build fails as follows.
> 
> ERROR: tcp-wrappers-7.6-r10 do_prepare_recipe_sysroot: The file
> /usr/include/rpcsvc/yppasswd.x is installed by both glibc and libnsl2,
> aborting
> 
> I also tried adding libtirpc as a dependency to busybox; no luck there
> either.
> 
> Can someone give me a workaround for this problem?
> 

Obsolete rpc is really not supported as you can see but if you are using it 
also ensure libnsl2 is not used either.
remove libnsl2 from tcp-wrappers dependencies
 
> Thanks.




