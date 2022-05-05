Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2824AC433F5
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 20:03:30 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web08.1387.1651781009379778586
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 13:03:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=T5TZjaug;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id p189so3280462wmp.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 13:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=id05YIwSX5uwpe9pfKv7cKEuvaM9z10in6QMn/mrASg=;
        b=T5TZjaugcITdeoC2wrH3/nzZkizi8AQpQwlEtUB5ti25lF+opS75NwVFNX+eW9bNDc
         NzmRG815MajyhWQ0AWprJpIl/GIythSd216fckH8HM4jkvXYbOyUrhjXBivNJLbFzh+P
         rXuCFiZI71iAnaiNuZDjIkx3BLkQ2K0h7caYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=id05YIwSX5uwpe9pfKv7cKEuvaM9z10in6QMn/mrASg=;
        b=Px5un0RvLwTCyZgTlkKVAeiA9+QFllgmwTLh4MK6LMLdQZ4xdcR+C55EsHTM+miuN/
         4ZE2o6G3Cmf/q93KdbwiySZ0SSw7dJk4w6jqiI5p6XxzBAMllaEQiQf6FxDxhmCLZr3c
         DCTBfo/paVv9hu20dK7LdFUa9WrCTZiMR6Nmtk821skXIC3Typy2p4kTVOIWlE9+AjUb
         V4kgxMhmeaa54j52G8JkSMgyzOWM5nLPSz96I0hcoNiXk3LrV0JNdu9udk7Dmz5+pIrl
         jHE4Dyhu2/hvcLx8CC9yV68ByFmobVU8+rjLaRw3za6ERjm48YI8vkZry5IprRCriDCC
         h/9g==
X-Gm-Message-State: AOAM530+BhjPZHSeSAm+Tcvafb/X5QauEfYbusxLX9XAu+JKBlxRK7ua
	Km80fy6NJ/SDHgoW6k2wxi2Ccg==
X-Google-Smtp-Source: 
 ABdhPJzWpQ4uxtEFohwBCkD7EXVMCMSUJdlulcofy8y+K3Xpd5uctNS97VevzjH7EDw0LDTIon1GHw==
X-Received: by 2002:a7b:ce08:0:b0:394:32df:2ae6 with SMTP id
 m8-20020a7bce08000000b0039432df2ae6mr6382072wmc.184.1651781007779;
        Thu, 05 May 2022 13:03:27 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:28a1:bf56:60b5:b14c?
 ([2001:8b0:aba:5f3c:28a1:bf56:60b5:b14c])
        by smtp.gmail.com with ESMTPSA id
 q9-20020adfea09000000b0020c5253d8desm1972308wrm.42.2022.05.05.13.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 13:03:27 -0700 (PDT)
Message-ID: 
 <ddac85a4c2c087e8fedf8064126f3f19764e7a59.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v13] Add a banner on
 the old documentation docs. Script to add banners to the old docs and
 outdated dunfell docs
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
	yocto@lists.yoctoproject.org
Date: Thu, 05 May 2022 21:03:26 +0100
In-Reply-To: <20220504110852.8489-1-abongwabonalais@gmail.com>
References: <20220504110852.8489-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 20:03:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57007

On Wed, 2022-05-04 at 12:08 +0100, Abongwa Amahnui Bonalais wrote:
> 
> +
> +def add_banner_old_docs(dir):
> +    exclude = []
> +    for root, dirs, filenames in os.walk(dir):
> +         # exclude banner for 3.1.x upward as it is an LTS release and is still supported
> +        exclude = [ name for name in os.listdir(dir) if name.startswith('3.1') ]
> +        for d in dirs:
> +            if d in exclude:
> +                dirs.remove(d)
> +        for filename in filenames:
> +            if filename.endswith('.html'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    current_content = f.read()
> +                with open(os.path.join(root, filename), 'w') as f:

This is definitely getting there, thanks!

One small thing, shouldn't we write the files with the same encoding as we read
them?

> +                    f.write(current_content.replace('<body>', '<body>' + html_content))
> +                    f.write(current_content.replace('</body>', last_div + '</body>'))
> +            if filename.endswith('.css'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    css_content = f.read()
> +                with open(os.path.join(root, filename), 'w') as f:
> +                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
> +add_banner_old_docs('.')
> +
> +
> +
> +
> +def dunfell_docs(dir):
> +    dunfell_banners = []
> +    for root, dirs, filenames in os.walk(dir):
> +        dunfell_banners = [ name for name in os.listdir(dir) if not name.startswith('3.1') ]
> +        for d in dirs:
> +            if d in dunfell_banners:
> +                dirs.remove(d)
> +        for filename in filenames:
> +            if filename.endswith('.html'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    current_content = f.read()
> +                with open(os.path.join(root, filename), 'w') as f:
> +                    f.write(current_content.replace('<body>', '<body>' + html_content_dunfell))
> +                    f.write(current_content.replace('</body>', last_div + '</body>'))
> +            if filename.endswith('.css'):
> +                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
> +                    css_content = f.read()
> +                with open(os.path.join(root, filename), 'w') as f:
> +                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))

I think Quentin also mentioned that these two loop functions can be merged
together to form simpler code with a condition in the centre section?

> +dunfell_docs('.')
> \ No newline at end of file

We can add a newline at the end to avoid that.

Cheers,

Richard



