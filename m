Return-Path: <vdeshpande@ventanamicro.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE755C433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 06:38:44 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web12.8616.1635230315691520322
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 23:38:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ventanamicro.com header.s=google header.b=kDw/rWdT;
 spf=pass (domain: ventanamicro.com, ip: 209.85.208.45,
 mailfrom: vdeshpande@ventanamicro.com)
Received: by mail-ed1-f45.google.com with SMTP id y12so9937083eda.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 23:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=c/TQbwh5lYl/SGctx4gDWIPkjjDgrznoQCaY79Q4jRI=;
        b=kDw/rWdThIVPBGCIka78g9FKYzWSWe7hwTNSZcPSuS7uLs7LzUVxWhTbu1NHJg6/aW
         fTJqNnOzeOkg9JSKgC6V1/DdJw+XNPTxWz7LRLCYkVa54l6jniUuvp0HHS3tWpnisQI8
         D1ezPDPwEENOvJIwGiu0n0u5fHUbmH1O3Nza6nzGuRcjm+lFOdeXF+sAzkmQtmpEvGWp
         yRL6WZ0+Gg582QHoEeoTeFbLMyw9lCd3WfIuYRzWRP4J7liLSHP1Xfmi5x2RF+2m+xhy
         oLBJ5+Dsm46SBCqUf6ZK9+GkW0HQdh9jS2OAGZjK1Pxgs3ZFgdzpOK4CUBk9ySSg2qaT
         Mehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=c/TQbwh5lYl/SGctx4gDWIPkjjDgrznoQCaY79Q4jRI=;
        b=p1qLOllHm7ssWgKEIaM63b1JRK3Ekgu44UlZKoBlQWu6KFV7hL2w3dQgqOo0w8nUed
         4+F8ncP/YTNoaHVTGGmro2/htxkbWGUupDgcP6TTev27ORzpRCJKlPiSCBANgwzgDINg
         Tz7R+kX9AdzcBb41lUrgXWTeVz5ZtAmQdoLcfJHVBAOg0lw0PBEWPVBUOQHOE+ovtRZq
         nzQfzSKdZhyZJZ/L0a1mL3XBFD/VLMW8SkFUhkDlVy/KlXxmsbg6FZ2ybv+eqAIovV8i
         Dn3380LLKdrv5xj+1zK9WhJXsmyfMbm1u4xCYqruY3YVesW5Xv5VWpvWsUcrcy+MzXI3
         Wv2g==
X-Gm-Message-State: AOAM532M/Oi1uU19LDSZBInOqCtCjMWaX3O6RGtabfyadcj8IXdFoGRt
	TEVxFB8Qwk9hitVaKITz3yniTQTOzTho1eUgPVcLWMxhoTPqhIrr
X-Google-Smtp-Source: 
 ABdhPJxSFJedzQ8OIymtPO9TLvj0W52BStSJhaqgvOXymGuIZyRoZU19UCJNTPP4d7Qi9yNNDfM9PonA5EJdOSSK3WU=
X-Received: by 2002:a17:906:258d:: with SMTP id
 m13mr29458917ejb.208.1635230314054;
 Mon, 25 Oct 2021 23:38:34 -0700 (PDT)
MIME-Version: 1.0
From: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Date: Tue, 26 Oct 2021 12:08:23 +0530
Message-ID: 
 <CAF=G1t6TzMZ17y+pokrrCGbT3trH6B+NHMtieoUGbpMcC6WOoA@mail.gmail.com>
Subject: Busybox roofs from yocto
To: yocto@lists.yoctoproject.org
Cc: Mayuresh Chitale <mchitale@ventanamicro.com>
Content-Type: multipart/alternative; boundary="000000000000fedc2505cf3bb91b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 06:38:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55159

--000000000000fedc2505cf3bb91b
Content-Type: text/plain; charset="UTF-8"

Hello

Can you please provide steps to build only busybox roofs from yocto

Thank you.

Regards
Vaibhav Vivek Deshpande

--000000000000fedc2505cf3bb91b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0<div><br></div><div>Can you please provide step=
s to build only busybox roofs from yocto</div><div><br></div><div>Thank you=
.</div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-=
smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Regards<br></div><div>V=
aibhav Vivek Deshpande</div></div></div></div></div>

--000000000000fedc2505cf3bb91b--

