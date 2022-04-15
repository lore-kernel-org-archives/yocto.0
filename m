Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642F9C5518D
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:25:55 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web12.12470.1650057449290822707
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Apr 2022 14:17:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fSa/kpRb;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id q8so5297569wmc.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 15 Apr 2022 14:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=F6C5u1CEwiM/+wOBW2ND4JBe9mHpncuyvdWMeW+whFI=;
        b=fSa/kpRbpn6MyxRSaNn5ypExcEsFXkw7hlSbFlwrXSPHq474+C8J8rvDy4p3TFGHcd
         y/8gHnmYoWflXEKhx+Tyt+K2zIfAlujQWaqTq/pKEWQ9dDDBnuz8wBl8r1T8lt267Em7
         af03Gx49SQeKwjbdclgyDUTpRrcbItpI+61bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=F6C5u1CEwiM/+wOBW2ND4JBe9mHpncuyvdWMeW+whFI=;
        b=mbn6El7Kvnms2yRUM0Ej8e8U2clxWK9ZMyJWydxth24V3jaF/hITkrRGeCLkh4l5wR
         +a5bQZxfrXffDYxKeipFz2emeMq4P0Lt783UayVozJRbs9lRaELgAaCltNrJ6QoShUD6
         Iufmd9Rcg0K4dXP0buiMPELGOCecnGlLOsghh39Y1erji2CcefAvWobaB64o/J+Ij/h4
         pjrxpjO5mC/En0Q31FlbuLzSHC6B8uZ9qXArJsh6T3/xQSrux8PqgdHg4kqkN4JgU+QE
         OM7PWSM/ngV79lfOzmQTaag8cde1RHcarCHp+0WeMmMk22f5kLOi7qPyeBbBuxjKeNWk
         9q+Q==
X-Gm-Message-State: AOAM532XwGQZLcLiJAcwgPD9h+mc/Mo0FIzbNM9ayzZUrwgjFs/BBLjJ
	/scjuEwsjEQfgEGdRtT7YApaTA==
X-Google-Smtp-Source: 
 ABdhPJxjGPlLRozvXdagn4zVVXcAxwOymx0XtKpJcqlLa490gjA7JD2XgKBfl2UwXvEMGFfU1M5BTw==
X-Received: by 2002:a05:600c:2211:b0:38e:bc30:e6d2 with SMTP id
 z17-20020a05600c221100b0038ebc30e6d2mr4727738wml.114.1650057447530;
        Fri, 15 Apr 2022 14:17:27 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:78b1:67ef:e54f:6288?
 ([2001:8b0:aba:5f3c:78b1:67ef:e54f:6288])
        by smtp.gmail.com with ESMTPSA id
 w17-20020a5d6091000000b00207a89b952asm4808244wrt.77.2022.04.15.14.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 14:17:26 -0700 (PDT)
Message-ID: 
 <04f336fc82a310608e554dbd89027f54a705bdb9.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v2] Wrote python code
 to automatically add banner to outdated versions of yocto-docs, pointing
 the user to the latest version.
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
	yocto@lists.yoctoproject.org
Date: Fri, 15 Apr 2022 22:17:23 +0100
In-Reply-To: <20220415144353.44823-1-abongwabonalais@gmail.com>
References: <20220415144353.44823-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:25:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56784

Hi,

Thanks for the patch, this is definitely moving in the right direction. I have
some review feedback.

Firstly, you need to make your first line of the commit messages more succinct
(which translate into the subject line of these emails). It needs to be short
and fit one line, preferably under 60-80 characters.

On Fri, 2022-04-15 at 15:43 +0100, Abongwa Amahnui Bonalais wrote:
> The main issue I am facing now is how to go around the "UnicodeDecodeError:
> 'utf-8' codec can't decode byte 0xa0 in position 99: invalid start byte" for
> the html script and the "UnicodeDecodeError: 'utf-8' codec can't decode byte
> 0xe9 in position 158: invalid continuation byte error" for the css script I
> get after the script has edited some of the files in the folder containing the
> outdate versions, but it works perfectly in all the other directories I tested
> in on.
> But this error comes after some html and css files have successfully been edited by the script.

You also need to line wrap commit messages.

0xa0 is a Non-Breaking Space (NBSP) so I suspect the files aren't in utf-8 but
in something like latin1/iso8859-1. To see if that helps, try using something
like open(html_file, "r", encoding="ISO-8859-1").

> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> ---
>  trial.py      | 38 +++++++++++++++++++++++++++++
>  trialstyle.py | 67 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 105 insertions(+)
>  create mode 100644 trial.py
>  create mode 100644 trialstyle.py
> 
> diff --git a/trial.py b/trial.py
> new file mode 100644
> index 0000000..d96bef5
> --- /dev/null
> +++ b/trial.py
> @@ -0,0 +1,38 @@

Python scripts should start with:

#!/usr/bin/env python3

They should be followed with the author/copyright and license information,
preferably an SPDX-License-Identifier.

> +# function to append to the content of an html file below the body tag
> +content = ' <div id="outdated-warning">This document is for outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>'
> +
> +def append_to_body(html_file, content):
> +    # open the html file in read mode
> +    with open(html_file, 'r') as f:
> +        # read the content of the html file
> +        html_content = f.read()
> +    # open the html file in write mode
> +    with open(html_file, 'w') as f:
> +        # write the content of the html file
> +        f.write(html_content.replace('<body>', '<body>' + content ))
> +
> +
> +
> +import os

Imports should be at the start of the file after the headers.

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

Python has a handy directory walking function, have a look at os.walk().

The other script would need similar tweaks to the above comments.

Cheers,

Richard




