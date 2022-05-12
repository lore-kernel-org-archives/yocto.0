Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79A9C433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 14:00:14 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.4514.1652364007605342309
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 07:00:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EyVdGVMc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id
 r188-20020a1c44c5000000b003946c466c17so2559464wma.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 07:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=RRbIvm8aNdyngPcnKwBOYsgDYd/YRhRtSD3Hc7aHLZU=;
        b=EyVdGVMcHLC9GK+JSrsx+dXpLpd+UpPtsHb//mYNK/JClv0//10GSB8LFHnc+KgD2W
         +xjxZ3XB1yXTQd5hbc9k21kUvPLJkQpj9tadVlfM8BzCfsd9cjdoAMCez27C3UgMzHd4
         t2zB4FOSoOrR/kmpj/Mr2Fc49cV4hAT8ux6JU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=RRbIvm8aNdyngPcnKwBOYsgDYd/YRhRtSD3Hc7aHLZU=;
        b=2ANl1KJx/7aba+/iZIGpCU9987XxdbVhUyvLjOrfybiY5HUAsBJ+iWEjaN/JeceMLR
         gaJxdwW1SPBCW/hpPAkXCwjhv5PEp/J49QazixnmdwK6VW7Gki6ptN+mprsBrI49zJHi
         Xd9cembULgKTJpHkd+h+4S2JpGo08/hbvRIaIrOSEQTmSrexEVzACe4H1CPArZZCDy3R
         1KU+kRFLvmHWJuF3+Om4nwC67Nj/2uEtIYEHW7dAsjY0eQOvZStPRb+K206aFSmVzGIn
         xdtQ0OO1x7RrsBjTOvahPmAk9GFlLHDsT6fLOlpassodhBrVygOefkoPg8j5CN0s44qR
         IMWw==
X-Gm-Message-State: AOAM530Rvur6pDm1nLfCeBLk0+oXPUUCjZOic9xlINkcfHI9jwBBumIi
	iu/fDa3lBHjxLCtrb0Fyiu9qEw==
X-Google-Smtp-Source: 
 ABdhPJz5oF5pbhxOpZ2KrCb9QqukQ8FztmMj09iVN5XqUAu6POQV08op1DCmGFHtoeKlOnJ5bPrZeA==
X-Received: by 2002:a05:600c:1c95:b0:394:709f:a0db with SMTP id
 k21-20020a05600c1c9500b00394709fa0dbmr47181wms.82.1652364006032;
        Thu, 12 May 2022 07:00:06 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a764:742e:164b:b1fb?
 ([2001:8b0:aba:5f3c:a764:742e:164b:b1fb])
        by smtp.gmail.com with ESMTPSA id
 h22-20020a1ccc16000000b003942a244f44sm2788510wmb.29.2022.05.12.07.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 07:00:05 -0700 (PDT)
Message-ID: 
 <3c1ed3ef2264b657c3dce0e4e29a3bdbc03e27ba.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v16] Add a banner on
 the old documentation docs.
From: richard.purdie@linuxfoundation.org
To: Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>,
	yocto@lists.yoctoproject.org
Date: Thu, 12 May 2022 15:00:03 +0100
In-Reply-To: <20220512123326.29424-1-abongwabonalais@gmail.com>
References: <20220512123326.29424-1-abongwabonalais@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.0-1ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 14:00:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57079

On Thu, 2022-05-12 at 13:33 +0100, Abongwa Amahnui Bonalais wrote:
> Script to add banners to the old docs and outdated dunfell docs
>=20
> Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> ---
>  scripts/docs_add_banner.py | 84 ++++++++++++++++++++++++++++++++++++++
>  scripts/run-docs-build     |  2 +
>  2 files changed, 86 insertions(+)
>  create mode 100755 scripts/docs_add_banner.py
>=20
> diff --git a/scripts/docs_add_banner.py b/scripts/docs_add_banner.py
> new file mode 100755
> index 0000000..0de70d0
> --- /dev/null
> +++ b/scripts/docs_add_banner.py
> @@ -0,0 +1,84 @@
> +#!/usr/bin/env python3
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
> +#
> +#
> +# Script to add banners to the old docs and outdated dunfell docs
> +#
> +#
> +
> +
> +import os
> +
> +
> +
> +
> +
> +html_content_dunfell =3D '''
> +<div id=3D"outdated-warning">This document is outdated, you should selec=
t the <a href=3D"https://docs.yoctoproject.org/dunfell">latest release vers=
ion</a> in this series.</div>
> +<div xml:lang=3D"en" class=3D"body" lang=3D"en">
> +'''
> +html_content =3D '''
> +<div id=3D"outdated-warning">This version of the project is now consider=
ed obsolete, please select and use a <a href=3D"https://docs.yoctoproject.o=
rg">more recent version</a>.</div>
> +<div xml:lang=3D"en" class=3D"body" lang=3D"en">
> +'''
> +
> +# the class body and the last_div are used to make sure any .body proper=
ty existing in any css file is not overwritten
> +last_div =3D '''
> +</div>
> +
> +'''
> +
> +css_replacement_content =3D '''
> +=20
> +  font-family: Verdana, Sans, sans-serif;
> +
> +  width: 100%;
> +  margin:  0;
> +  padding: 0;
> +  color: #333;
> +  overflow-x: hidden;
> +  }
> +=20
> +.body{
> +margin:  0 auto;
> +min-width: 640px;
> +padding: 0 5em 5em 5em;
> +}
> +#outdated-warning{
> +text-align: center;
> +background-color: rgb(255, 186, 186);=20
> +color: rgb(106, 14, 14);=20
> +padding: 0.5em 0;=20
> +width: 100%;
> +position: fixed;
> +top: 0;
> +
> +
> +'''
> +
> +
> +def add_banner_old_docs(dir):
> +    for root, dirs, filenames in os.walk(dir):
> +       =20
> +        if root.startswith('./3.1'):
> +            html_replacement =3D html_content_dunfell
> +        else:
> +            html_replacement =3D html_content
> +           =20
> +        for filename in filenames:
> +            if filename.endswith('.html'):
> +                with open(os.path.join(root, filename), 'r', encoding=3D=
"ISO-8859-1") as f:
> +                    current_content =3D f.read()
> +                with open(os.path.join(root, filename), 'w', encoding=3D=
"ISO-8859-1") as f:
> +                    f.write(current_content.replace('<body>', '<body>' +=
 html_replacement))
> +                    f.write(current_content.replace('</body>', last_div =
+ '</body>'))


This is really close but still not quite right. You're adding in two
copies of current_content here. It needs to be:

 f.write(current_content.replace('<body>', '<body>' + html_replacement).rep=
lace('</body>', last_div + '</body>'))

so that only one copy of current_content is written.

Cheers,

Richard

