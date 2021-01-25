Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web08.4287.1611616502501689228
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 15:15:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dd2B+mE8;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id u8so16991907ior.13
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 15:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KezOldHU7Ht+WPVPyZ7bR71ZCdWgZmzjPO5Fra9bOiU=;
        b=dd2B+mE8hx/Ht/PV9ohxEDNTiCVeYjkxRCJL0sQaC9q3K0d2pdndRkjHOIrVdliu6U
         kIZ3G1wbVx21p2A3dpKiL603eRDeMxgWe9rRX+P3xdwV4NQMDXzDrtIg13amOp8r0epc
         INScdQNGeoxdeuodBoGh3NHjLU7rgUDebExrJM470BRLggx/CyGtpRpzWvDxCZlDC2dd
         RVOwIsfTLcj4U462Q+4w5Zo2sZHn9KNEO40cDNb0jRwxajLexx0SA9BWRpKf52SHLNBL
         y+OypTm2PfoPL2wNwaQ3+n0scajYF+ojXwA5E8/3Xg6KDa7Gg5DSU0LyTF5zUeVro+T+
         M7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KezOldHU7Ht+WPVPyZ7bR71ZCdWgZmzjPO5Fra9bOiU=;
        b=lF9B9EpG4BUEPSUT/0W0VTIPc9qq2RkVRnXchEAP4184nBO+2K5oGZ8vWuh35e2Cdi
         wGWu6OqQnxa9Ity1egDNO+MUtx6o+nG0XteThy2A15vAcPYMeUSpk3FYVSHPUquzKGPU
         tZqOwtGwlselbebZq5yCCk/tdCNQ9edv38/8y9fU1BD2M8T23Qkuig2lxRfL8Lgf1z4G
         XVvOV4xNl0YmAwPLC7IYPtQ7ephdgrUvnfpeaLlW/IgFevs4yOKj5mGCFQ0TO6/GkFdh
         sWK480iXPKur3umEno9OECBjovquB4ljNvRT3udgaL9fuFuLiz6Nm4Lm/NO/gATo9Mn/
         roHA==
X-Gm-Message-State: AOAM532tBeXxJF4TtXtuREg0h0CfeFo5GU7E+iUxk+DO0c1s+zLrn3de
	CPOOf1SAf16WzJU7cW1J/Fo=
X-Google-Smtp-Source: ABdhPJzzboI/D+O2rtaZ8HyDzOz9qIaTOnwfdCYb8vt2w8ce5bkyoZNbVAc4KTGMG9uHgymkz72W3g==
X-Received: by 2002:a6b:fe19:: with SMTP id x25mr2204849ioh.78.1611616502037;
        Mon, 25 Jan 2021 15:15:02 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id o20sm11608503iob.41.2021.01.25.15.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 15:15:01 -0800 (PST)
Date: Mon, 25 Jan 2021 18:14:59 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] rock-pi-4: Split our variant machinesy
Message-ID: <20210125231459.GB23113@localhost>
References: <20210123210512.20111-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210123210512.20111-1-JPEWhacker@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Is there any way to make this work with both new (4.10, -dev, -tiny, -rt) and
old (5.4) kernels? What if we left the old rock-pi-4 MACHINE for the 5.4
kernel and required one of the new ones for 5.10?
