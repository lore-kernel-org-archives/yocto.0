Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C576FC433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 10:57:40 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.3956.1636109860172048543
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 03:57:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XJXHRttz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id
 b184-20020a1c1bc1000000b0033140bf8dd5so6150137wmb.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 03:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=6eZOe+x9sr+alXlONFhhqMQVLOteO1SOQzRUw6jC0G4=;
        b=XJXHRttz86TLUEE3TcSubMOLeDtszFQprNxKKyW/Enjt1/7ghu2gNgJqRu0opnbO1F
         q/SdCL8gPW0cbekhBd6mddqLGqVrIK4Fa8Ci3WywtylYzEILqqWxvb75zb1HvgXl4iqu
         fZkMtjaqLzFZuvOhugsyqEtSFhLkWTfX6bZmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=6eZOe+x9sr+alXlONFhhqMQVLOteO1SOQzRUw6jC0G4=;
        b=GeCQgND4DYGRQ2UoYWYJRGi+ceyhx1TD/BGb/iaQFxWaRyp1BGBcUYU/7/EiWc89Sb
         WnGR90li3ntGg1v7cOCbSZYi4Ca3NMkgFNDhikMXHfB+WBmS82TdcY8b3yH2fbHFo7de
         SgM4rjPrbztDsUkLNCRjE9YAewdoRmVBCoWCvvp4nZTVZLtPfIeEmY8tnaK4tJikZHx3
         Irad10ph+PPPYG7JMS1jeBulcHA7OE0W+fNU9Zi8n/InGfRdLT52/tG+CMC7ky6NUZZ/
         DvA66vRcNSS9LBv1K/WKnBq3G+2Z5QtIGI5obZiP+H81F2YyeVXnIYLfdIN12NfUc/Yz
         cm+w==
X-Gm-Message-State: AOAM533rjyfmli4WLSQhqr7lWi3OLur/FTMbxGU0ByoKJUQNtkVzgpwo
	NHjrzs+RwfozP9gcwBD3uRmbCzBG2fYv6A==
X-Google-Smtp-Source: 
 ABdhPJxCOFyIw/zLEL+Vidjn/VZdpkZR5y4naY8GejHqLuJpOaRz9aKC/ocyG+bGXWCRc+zTkNz/+w==
X-Received: by 2002:a05:600c:4fca:: with SMTP id
 o10mr8181614wmq.175.1636109858384;
        Fri, 05 Nov 2021 03:57:38 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:38e6:15ea:3134:28e5?
 ([2001:8b0:aba:5f3c:38e6:15ea:3134:28e5])
        by smtp.gmail.com with ESMTPSA id
 v7sm7429511wrq.25.2021.11.05.03.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 03:57:38 -0700 (PDT)
Message-ID: 
 <66a7acb9281ca15da0ef81a257c69f32fd7bcf8c.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.3.4.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Fri, 05 Nov 2021 10:57:37 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 10:57:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55246

A build flagged for QA (yocto-3.3.4.rc1) was completed on the autobuilder and is
available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.3.4.rc1


Build hash information: 

bitbake: 0fe1a9e2d2e33f80d807cefc7a23df4a5f760c74
meta-agl: d997986f27e239400cf01e0cdef942cee278ea66
meta-arm: 71686ac05c34e53950268bfe0d52c3624e78c190
meta-aws: cad1c714434fe0adc566006e1e1626b4657bcf40
meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
meta-intel: 76495b60dd915846d2f84d03b9c9cfbb548e9dc0
meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
meta-openembedded: d378e4293d18e374f5d1494a88bfc3caee4d02df
oecore: 0ca080a23c2770a15138f702d4c879bbd90ca360
poky: c40ac16d79026169639f47be76a3f7b9d8b5178e



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




