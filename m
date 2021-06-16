Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web09.107.1623864844474182152
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 10:34:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Op2hJ6fY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id c18-20020a05600c0ad2b02901cee262e45fso2138739wmr.4
        for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 10:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=SVGElVchV5/rI9aq1Eksq7VPado1nfp9ZWm2d+YA3VY=;
        b=Op2hJ6fYfAQFq0dvFxzS1O6T7kvpNJ0h/BjI9A8SMNFqP864dQ2XyC+ZzdqFUD/bxg
         FNPE3PNVBa8bGdSqpUsnNKQlCrAs5bvLmcVEzqhHMQcDGH85oHVboG9WLDA2U/71tPJa
         kbINxBYVRKFRNOqDFtl7GFS1rxKqH4ihc1Axc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=SVGElVchV5/rI9aq1Eksq7VPado1nfp9ZWm2d+YA3VY=;
        b=Tz7ffOd+dwUnMks+au7g2Awgy4/ihoZ+ytg+VZmKOyx3t8BB3WCDmwCkBZgqPJrN8u
         TmUto/6ZzSKi4q1Ar9oYCIVkpydZ7del9oBJZ8Slq6T6cL3yp2AP4aV3A28ynha141F0
         qoqBDaXXYinwrvBl1ECoxkQPBw+HDqRy0Uj3gxllR6FKf68mt6p2wzQvFopyr/AH6mNs
         2rbeesnDjRvOrmZq5hh7KQpWf3hCNN0pxybsVSz+cq+wsay8R6iyZAy3s1ug807UWGhQ
         E0TCkZ7j9nfyL8FMHlXFldJC3bDfJ2MqeZUoduZ3udw7JaYPhKEjuDy+WQqfywxkIxgc
         OUTw==
X-Gm-Message-State: AOAM531/yAWartnsPtU4RfGkJMlChbbS3PDj32HSBcWkJWh7XmYEb+n1
	QxVhM0EWXSuJ2RmEE7jDAgl06A==
X-Google-Smtp-Source: ABdhPJw6yG6jg+xo4TFPLWs9381+aVNtcVvj4UIgotFEdMizsOaL6L6ieNS6xwE4b7aZ93Y+d19anw==
X-Received: by 2002:a1c:1dd3:: with SMTP id d202mr184653wmd.78.1623864842761;
        Wed, 16 Jun 2021 10:34:02 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:31b6:9a4e:bc39:a574? ([2001:8b0:aba:5f3c:31b6:9a4e:bc39:a574])
        by smtp.gmail.com with ESMTPSA id e17sm3084229wre.79.2021.06.16.10.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 10:34:02 -0700 (PDT)
Message-ID: <6a3aa522ba366052f6170e20f615d9a3d25265f6.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] summarize_top_output.py: add script, use it and publish summary
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: sakib.sajal@windriver.com, yocto@lists.yoctoproject.org
Date: Wed, 16 Jun 2021 18:33:58 +0100
In-Reply-To: <20210616084334.35144-1-sakib.sajal@windriver.com>
References: <20210616084334.35144-1-sakib.sajal@windriver.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-06-16 at 04:43 -0400, sakib.sajal@windriver.com wrote:
> summarize_top_output.py is used to summarize the top
> output that is captured during autobuilder intermittent
> failures.
> 
> Use the script to summarize the host top output and
> publish the summary that is created instead of
> the raw logfile.
> 
> 
> 
[...]
>  if jcfg:
> diff --git a/scripts/summarize_top_output.py b/scripts/summarize_top_output.py
> new file mode 100755
> index 0000000..0606a34
> --- /dev/null
> +++ b/scripts/summarize_top_output.py
> @@ -0,0 +1,132 @@
> +#!/usr/bin/env python3
> +
> +import os, sys, glob
> +
> +# constants
> +top_header = 7
> +top_summary = 5
> +max_cols = 11
> +
> +# string substitution to make things easier to read
> +subs = {
> +    "/home/pokybuild/yocto-worker/" : "~/",
> +    "/build/build/tmp/work/core2-32-poky-linux/" : "/.../POKY_32/.../",
> +    "/build/build/tmp/work/core2-64-poky-linux/" : "/.../POKY_64/.../",
> +    "/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/" : "/...GCC.../"
> +}

One quick question - the above assumes an x86 target machine using those two tunes. 
Should that be wildcarded?

Cheers,

Richard


