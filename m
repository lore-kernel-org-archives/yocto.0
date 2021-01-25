Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web11.3836.1611614081830077689
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 14:34:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qne1YCxN;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id x21so29949994iog.10
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 14:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rtnol0BlxZrKSUZpMl2vAOXGxUuthflkxb9B3rbbW88=;
        b=Qne1YCxNv8xBsmYc0Bl8wgMqsodhwnMnqKFMxocqDty6IZ7wOkOb2qm9ekaETG2SRc
         SvJFFb+VSfR9cdxxZA7zvA46ohQD76daKhjvP2AW+VxBWxITWcU4UOsl1MyXWiE5qGb9
         w+WJJC1fveG24iSuk9bMqcPkqtkrI3pqshDBtWv6tCJRX9piZrQKGgYvAhAazE5OGC+u
         VlFkBu9fR5p+bd6de4Pe4cKHnSCVZ8BWPh1l1zmJwxooJ90McNxWp2AVuQHkm7aLYkeM
         HYCeDxW01u4KdvcgqqQ7UeWy9UdbtZcliAgjrNY8V4u8KdIYfKk1FxbEAcxQW+sNFduS
         1bzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rtnol0BlxZrKSUZpMl2vAOXGxUuthflkxb9B3rbbW88=;
        b=AskyTvK9THEUkwCbDnOSv8rOnJijv2grYWwJ3qbQRzx2FDlbGkD6CIQU2e+jhEURiy
         8HfqLQWA6ow4gp3lJvRk3Mn/QlbFj2UOahLFA+4pdx/eGziXC8kBmB3doanZ4Gqyh5ja
         G0CNJZrATe3X4N+4dzuKCFUaMkoyV2q9jCAyoN/L5DWX3Mm5b0KISCTIE9DSC0EXR2Yj
         X1UWto75JHAPgWLQ22x7N8whLnLDN2UaivARkXFUxgqNIv4Exw4F+f8B+4WMMu5KQMfh
         cKzbvc0OahwxaFC7YPJi1mfyHOT++dLm/m7LlWnOtywkZr7NK0layxi3QOZyXYBIZa/E
         7dyQ==
X-Gm-Message-State: AOAM533c11YJBMMed2uXm2ZwKY3bAOBbll2r6DbQLwHOX+fNjSIrwYV5
	VibJ7N1Q2qnQrL+LYWHkKNI=
X-Google-Smtp-Source: ABdhPJwcdGpKilKGivVRrnxs1vP+Sydv9HcwY5p6qlEme3mL+lux4ayhi5NOaRNXOQ3odCx/amxCYg==
X-Received: by 2002:a5d:944e:: with SMTP id x14mr2049125ior.15.1611614081234;
        Mon, 25 Jan 2021 14:34:41 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id d13sm11546266iod.53.2021.01.25.14.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 14:34:40 -0800 (PST)
Date: Mon, 25 Jan 2021 17:34:38 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] linux-yocto: Remove Rock Pi 4 patch for serial
Message-ID: <20210125223438.GA20348@localhost>
References: <20210123210525.20237-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210123210525.20237-1-JPEWhacker@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat 2021-01-23 @ 03:05:25 PM, Joshua Watt wrote:
> Upstream OE Core has moved to Kernel 5.10 which fixed this problem, so
> remove the patch for 5.8

Thanks, I've already pushed a patch for this one.
