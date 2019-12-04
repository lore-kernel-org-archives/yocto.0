Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.657.1575443892752725122
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 23:18:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melangex-com.20150623.gappssmtp.com header.s=20150623 header.b=oDYbe80z;
 spf=none, err=permanent DNS error (domain: melangex.com, ip: 209.85.208.181, mailfrom: morne.lamprecht@melangex.com)
Received: by mail-lj1-f181.google.com with SMTP id e10so6810404ljj.6
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 23:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melangex-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=KOKUmQA/9oWWCKNFzcKOammtJuGKQRWWBV8Qgcnr9rU=;
        b=oDYbe80zRE/DtGrehhI9YlMKm/QxP7M+6lLQNdh0q9SwSPHgH5MSlfRwEnPHp0eb/O
         o7JnzVOxp0FXWH+UAqgZ9pKiUnEKfiSHg17mrSGFh5wS3sj6AJa4u2yNvDwfwE9SOgFi
         BwBqyeCEdzLy+WIjeU71Lzf0kVoWQAP4CtwxQq5ZQA3fJCP6RUXfxEL4TuFdiw2+56bW
         f8TD9mvsRRHlQw5oTolTIGWTK1G5F1HsSMzRE6Lq7+MicXu0IJsRWa1ygf1n73u2p585
         x3KG4QhGxTqu2mvCOqsJ3LREkCfev8SlBKpapkTZblM2Jua+GsJX9gi+FIp4x11FpYut
         t31Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=KOKUmQA/9oWWCKNFzcKOammtJuGKQRWWBV8Qgcnr9rU=;
        b=C74P23gy6mC5CXlki23OCBuTlbeREYWAWWcNcDRopaZMqG95sy7DfQz0vPc2Gsj4wc
         V8/cmI7Vr+n2GF8MjMG2r2Mvtf3N6iMalBwupmtWfreHCF6Y5udOYjthmThQTZ4HfBgg
         z9cwCfcT3Ybwb/jPh++i2cLJ3n4qUFJE4BPEmr91Su4xHEHaaKnTXj1ea1GoUjjzV70L
         x393R1yWKwCpAU3U1ySaQvJlH1XvQ0IZE2unSS06U64IWH9/JtDZuHggrCXqZ/EX4Gpx
         sWT560/WKJdXqtky4Rdm6Jrr76LGqVvxNtKo6fS9ZQ0/ZgHr88UUHkS99ywsc2Xmjhpw
         tznw==
X-Gm-Message-State: APjAAAXISezAmNBeyCOQE8r8vCM6NMJXXmBvhwQU+N1zDke726LSr74I
	oRvv1XTTIfdCTVXqxATDv6XyTBHq7+A=
X-Google-Smtp-Source: APXvYqygFwxxAF6wydgRaXCqycjZLvpJ+kVMZElpGWRlp/isi20glhL4NuNdUP5vuJLrSqyhB+w4ZQ==
X-Received: by 2002:a05:651c:cd:: with SMTP id 13mr998811ljr.63.1575443890348;
        Tue, 03 Dec 2019 23:18:10 -0800 (PST)
Return-Path: <morne.lamprecht@melangex.com>
Received: from localhost ([209.203.60.70])
        by smtp.gmail.com with ESMTPSA id 144sm2722745lfi.67.2019.12.03.23.18.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 23:18:09 -0800 (PST)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Wed, 4 Dec 2019 09:18:04 +0200
From: "Morne" <morne@linux.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Message-ID: <20191204071804.GA132527@archworkstation>
Mail-Followup-To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <Rp01.1575302414514166788.jCsI@lists.yoctoproject.org>
 <20191202200153.GD1625@archworkstation>
 <MRXP264MB0807D883F3D9EC4C43CC23D385420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
 <20191203085102.GE1625@archworkstation>
 <MRXP264MB0807FCAAB8A4877A750DCA4785420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <MRXP264MB0807FCAAB8A4877A750DCA4785420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.12.2 (2019-09-21)
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>I've got 1 YP image with tftpd and another one with tftp-hpa daemon
>I'd like to merge these 2 YP images embedding the both tftp deamons in a single 
>YP image, Is it possible ?

I suggest having a look at the relevant recipes at the openembedded layer index.
You can filter per yocto version. Check if the either of the two recipes list 
any conflicts. If not, it should be possible, although you would have to make 
sure you config them not to listen on the same port.

https://layers.openembedded.org/layerindex/branch/master/layers/

		- Morné
