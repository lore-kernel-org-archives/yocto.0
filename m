Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web10.3793.1576137340864353399
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 23:55:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melangex-com.20150623.gappssmtp.com header.s=20150623 header.b=B+sJ9fX2;
 spf=none, err=permanent DNS error (domain: melangex.com, ip: 209.85.208.177, mailfrom: morne.lamprecht@melangex.com)
Received: by mail-lj1-f177.google.com with SMTP id a13so1144675ljm.10
        for <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2019 23:55:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melangex-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=z2H5vYNWkjygDPxqycaACy4VZ4s9AmfzPVm2VdkzyeQ=;
        b=B+sJ9fX2uNa2uXCS+2ie20wLR/4G/UX5BwtZ+enWg5xWTJtsHoN9SuaEHGNyhr3g2R
         9jfs7jroDYMTFc0FcfNt15jxOiuLewxIYSDk7djM8RfF9zHWdC889focfhgSAkvgp9b5
         9dZ39i6pUryc5h93OCdE+jcnXTw7MT5K0aXaVvyoq9BEIxRYozcvR19fLLtHxxxNcXSn
         RVE8vGrTU1vOcjFpSUcKG7oclUl4wZA7KJ8kDypUWRjgUuR29cTfFOkdvfaw+NUl66Tq
         +VDwMsUNKfPZnouWaW1Sf2H+/r9fqPNZ/zodJYdDe6k8CzgSnpHDpCJPBBZeL81Senlv
         Lxag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=z2H5vYNWkjygDPxqycaACy4VZ4s9AmfzPVm2VdkzyeQ=;
        b=TUCxxKHmioWA/CJyamxW1dC1XM/jX4Hs8dc/qgqPB+uPtVfX5HKsIuWFuFrshF6nen
         x4ajkUE+3vBu5jxY4SVDWmfquPBEnv7z2x7eFrnkNhySFKZduWhBXDaLTGHiFqN9oFFZ
         bV58xMWey0QY8/Pm5tPPw7bbuj3R+k/wmTaJ14FRg5HfoQUrTJsiG4nvLE8Wr1Drmrzs
         5nxTuTulIfZ2RFA/33KCCGewc/ie/xQ19pL5VXHYdAKs2mnu9Jy/gSo5o/A5Jq7PZxr2
         qXJ8bxZS03E1xSOtdfeKfskACBWuSK3qVptboyrD0tdQjKOTgl2jkYsbq4PRy+bz9A9s
         RPug==
X-Gm-Message-State: APjAAAUz2j1JlzTB+yoOpt7do8O1e7gDFl5RcKsgiO32laAW9h/dJJ/r
	1IYMfXxvmbTYyv87GFv+l6Wqh2qs4rw=
X-Google-Smtp-Source: APXvYqyrDHHFUA2BYru7yruO1cB3y7xLTa3RidpaHVVwSVr2/mAck6wYiy0776SSsSfxKaTluu93sQ==
X-Received: by 2002:a2e:9755:: with SMTP id f21mr5007169ljj.23.1576137338442;
        Wed, 11 Dec 2019 23:55:38 -0800 (PST)
Return-Path: <morne.lamprecht@melangex.com>
Received: from localhost ([209.203.60.70])
        by smtp.gmail.com with ESMTPSA id k24sm2904270ljj.27.2019.12.11.23.55.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2019 23:55:37 -0800 (PST)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Thu, 12 Dec 2019 09:55:33 +0200
From: "Morne" <morne@linux.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Build issue - newbie
Message-ID: <20191212075533.GA2176140@archworkstation>
Mail-Followup-To: yocto@lists.yoctoproject.org
References: <20191212063133.GB2150524@archworkstation>
 <17498.1576132929851005393@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <17498.1576132929851005393@lists.yoctoproject.org>
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>Please let me know how to check YP version.

In the directory that you checked out the git repo, open the following file:

poky/meta-poky/conf/distro/poky.conf

At the top of the file it will show DISTRO_VERSION and DISTRO_CODENAME

I suspect that you are using different branches of the git repo in the instance 
where it works, and the instance where it doesn't work.

		- Morné
