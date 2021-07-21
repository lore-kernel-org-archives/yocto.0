Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web12.1867.1626859295295952191
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 02:21:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=J/zxH9Vt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id c12so1400841wrt.3
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jul 2021 02:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=bYEw6Hh7e8vZHmEBMSiddgFlDppwGIfu8cG1oTxY1j0=;
        b=J/zxH9VtluyF6ZLSWEyLfkbGJ+mkQuBpzo2BsVeZVzOXYP7/OPgAQr5rI2Oc4eUwQQ
         WwRNNH+UlyvNblu5+PDDYQBpEmW1TTbnFgQPfciq7jQZv7Km8zBPk3gwljIgd0SRIOr1
         woxPtVaAJ/xvEtd1aMv+HBcrf5Glshf/aW/uM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=bYEw6Hh7e8vZHmEBMSiddgFlDppwGIfu8cG1oTxY1j0=;
        b=dcjHLQ1t2NZf5BydJWy9uK1MxiE/hivIbdzjBHRLBVjARs/bzo2imVYmVf1ynOZx1E
         RARrFu4Cj2NlRaZS+6bzUfdl6VyomnLqVxEyMXnOPAGZFSuUZ/o1jKUjnDnJ/N+iNxkn
         AakrP+bmW58oE257Lz6JvczVs76i9B3RORulQB9JReOwrMwacB6+tEPn3MLrPGo8Vb8I
         TeY9Plet4HjHMvX9oIM8HeFgM8DasR+BDvyS7htOrexJtrWH4uFJKnI5CmHGXH/aB9IQ
         aLyhGn8u3HBXeQcHCdPxPPLp9TrJ5/PGM2itm2zBNPW0sB8gRuir7V1IpCNKwrlnZD2O
         knyQ==
X-Gm-Message-State: AOAM533BkFGIjWHZqQ4M2+Qdwh8/zHKY3iInj+od1gpFiwG9zgEbWhui
	EUeRJBPX+JvDQho3CbRUzMTwnV4/VPR3eg==
X-Google-Smtp-Source: ABdhPJzmThiVnDNMxxqz+MsrN1SvjLoXOb5Z0mUXUghQsiNcOthcIpGlhVVO4/b06wwzwSUWS2qDWg==
X-Received: by 2002:a5d:59ab:: with SMTP id p11mr23637787wrr.74.1626859293618;
        Wed, 21 Jul 2021 02:21:33 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:ca4a:a3b0:9d05:9957? ([2001:8b0:aba:5f3c:ca4a:a3b0:9d05:9957])
        by smtp.gmail.com with ESMTPSA id s13sm26124307wrm.13.2021.07.21.02.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 02:21:33 -0700 (PDT)
Message-ID: <0d1daf3f2a96b7268274674ea37e310b90255312.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.4_M2.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Wed, 21 Jul 2021 10:21:32 +0100
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-3.4_M2.rc1) was completed on the autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4_M2.rc1


Build hash information: 

bitbake: 13e2855bff6a6ead6dbd33c5be4b988aafcd4afa
meta-arm: 9efa3b5683a5dd7ebbf63ff31b889ed589ff7a9a
meta-gplv2: b3fa26bc777ec0136ce189d90123b50f6ee567b9
meta-intel: 94c097a82cf9167fa567c2af80d5e39a3fbbc11f
meta-mingw: 8f3b6e3772879dc2caec8fe249ce277fbb1aa55f
oecore: c4fc226c2e3856b942bb4f57ead21a64c3dc8c0d
poky: 1ad79313a5c3e6a453fbeb44caac5c5bbad46d3c


[RP sending manually as the original failed to get through]
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


