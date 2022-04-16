Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 353C2C63682
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:25:58 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web09.17350.1650105367446911242
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Apr 2022 03:36:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HuLzgCFA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id w4so13188549wrg.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 16 Apr 2022 03:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=EfbKh2/j3vifyvk4qoVIkR6h2vhQnVKZaUFKHpMFdNk=;
        b=HuLzgCFA/2I/rJibirEbeLAtpjtSWkGvLzP3KBkc6vK/SyAlR2B2I4ffHglt9eWqWN
         RdiRgWUVwkPKuAAbJtET/4DvPcZ4mSMPAeo+e38qIgOKUEZxolyD2ywawMSRO0lF1K2+
         nvsuHG+uE2xkQ3A+oO6od8BpC4ddWmwJowKGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=EfbKh2/j3vifyvk4qoVIkR6h2vhQnVKZaUFKHpMFdNk=;
        b=Zl1KOjd9u2ZvbDpFNftNsolmgbconJRbzDQbPUaxcr+Il7soJWnGZdG29ONlAEVmrH
         WPAqd3ssdKDVamNE5dNFRjm9vot6i3h507pbvjh00g2deq/pBedcGG8LHYmkS+keLRg/
         iXg7Q5OOikr+ChWgM6cWrlZDURsXcZIOj7C2s9m4Y2CJAGmvwwWtDS2/TESMJwRVNhTX
         mC4ESuTF1W1iqbtGIKeUmoKUjpgjmK6jMODWAfVf0oNgFmNRA0Ub4dbWtMFL+UihTuQS
         YUGg4vym4sbYMSu2tsKiiQ+WtuEfzRRSz3BucKyUq3WIUtkJOnlyyPpUkZ5tlPGnhts3
         3CbQ==
X-Gm-Message-State: AOAM5336NF2KJ/VYSyafzrrAvAfb8vdIGvPZqYm8vF2nTUbFm0PrB6ia
	XEUCOpgZHBeu4HQc70ooeKeDIw==
X-Google-Smtp-Source: 
 ABdhPJyodpQkEcR7DSBXU2w9sugj8Ht5Z5mKQwHpbFj+Y8alvbhyopS0XiV5mMNQIaI9NTzW7OtQLg==
X-Received: by 2002:a5d:64ed:0:b0:20a:7d81:860d with SMTP id
 g13-20020a5d64ed000000b0020a7d81860dmr2117059wri.104.1650105365867;
        Sat, 16 Apr 2022 03:36:05 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:78b1:67ef:e54f:6288?
 ([2001:8b0:aba:5f3c:78b1:67ef:e54f:6288])
        by smtp.gmail.com with ESMTPSA id
 r4-20020a05600c35c400b0038cbd8c41e9sm10862146wmq.12.2022.04.16.03.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Apr 2022 03:36:05 -0700 (PDT)
Message-ID: 
 <fd6dec02d29f7d2fa2e60afc7c3e4fd4130fa5ff.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v3] Scripts to
 automatically add banner to html files in tarball
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
	yocto@lists.yoctoproject.org
Date: Sat, 16 Apr 2022 11:36:04 +0100
In-Reply-To: <20220415231315.31561-1-abongwabonalais@gmail.com>
References: <20220415231315.31561-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:25:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56787

On Sat, 2022-04-16 at 00:13 +0100, Abongwa Amahnui Bonalais wrote:
> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> ---
>  trial.py      | 44 +++++++++++++++++++++++++++++++
>  trialstyle.py | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 115 insertions(+)
>  create mode 100644 trial.py
>  create mode 100644 trialstyle.py
> 
> diff --git a/trial.py b/trial.py
> new file mode 100644
> index 0000000..bc60433
> --- /dev/null
> +++ b/trial.py
> @@ -0,0 +1,44 @@
> +#!usr/bin/env python3
> +#LICENSE = "GPL-2.0 & LGPL-2.0"
> +#PackageOriginator: Abongwa Bonalais Amahnui

This is heading the right way and I'm glad the encoding change helped. Please
re-read what I said about the header though as the above isn't what I said,
there are at least two issues.

Also, why are you picking "GPL-2.0 & LGPL-2.0" as that seems like a strange
choice for this script. Most of our code is either MIT or GPL-2.0-only. You need
to use SPDX names for licenses. I do also now notice we're missing a lot of
license identifiers in that repository but there are some.

> +
> +# function to append to the content of an html file below the body tag
> +import os
> +
> +
> +content = '''
> +<div id="outdated-warning">This document is for outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>
> +
> +'''
> +
> +def append_to_body(html_file, content):
> +    # open the html file in read mode
> +    with open(html_file, 'r', encoding="ISO-8859-1") as f:
> +        # read the content of the html file
> +        html_content = f.read()
> +    # open the html file in write mode
> +    with open(html_file, 'w') as f:
> +        # write the content of the html file
> +        f.write(html_content.replace('<body>', '<body>' + content ))
> +
> +
> +
> +# function to loop through all html files in the current directory and call the append_to_body function
> +def loop_through_html_files(directory):
> +    # loop through all files in the directory
> +    for file in os.listdir(directory):
> +        # check if the file is an html file
> +        if file.endswith('.html'):
> +            # call the append_to_body function
> +            append_to_body(os.path.join(directory, file), content)
> +#loop_through_html_files('.')
> +
> +
> +# function to loop through all sub directories and recursively call above function
> +def loop_through_directories(directory):
> +    # loop through all sub directories in the directory
> +    for dir in os.listdir(directory):
> +        # check if the sub directory is a directory
> +        if os.path.isdir(os.path.join(directory, dir)):
> +            # call the loop_through_html_files function
> +            loop_through_html_files(os.path.join(directory, dir))
> +            # call the loop_through_directories function again via recursion
> +            loop_through_directories(os.path.join(directory, dir))
> +loop_through_directories('.')

Please use os.walk(). There are plenty of examples in google and in our own
code.

Cheers,

Richard


