Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE558D0C5F6
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 09:25:46 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.8011.1729848339203858052
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 02:25:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AWB7zVUt;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53a0c160b94so2189149e87.2
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 02:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729848337; x=1730453137; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sXuwUviDLNjuBaFGLnQMecZZEslhg0nmftItc6Q7v3g=;
        b=AWB7zVUt7cWajutaPwjtB1yyeQdqvbakJ844ZxYmLv5SToxK0TMq5anZOIBuNJSCPP
         tdhX6bU4z+9ljrXIBjgYWqSl7Zu+hpqBT5Wr8kKiADm4KUICDFVcgaEyAhHLyTdQ1l8g
         qGc2KUh5LgIbVDBmRR7Fl0TOIjaxe041KEDElvgjOQD15XxLanKz1rEUjWdZZQ6T0czI
         X8qRsYoykta3LiD7Wz4NDorTjnaSfm+JQBfMuFX/OBAwg1xWGHYwSebqwUME5rsLNud5
         C8Z6NUSVGeuHg5q17NlX7teH3Rn6pBoM7N0uw8CbCVU0OtpRPoj5arypdBwDbzEob4kt
         epHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729848337; x=1730453137;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sXuwUviDLNjuBaFGLnQMecZZEslhg0nmftItc6Q7v3g=;
        b=U2SLwuEkG5h70rjGUue16GIQ/mQVReM5D5LYygVgS1VQCIedRpXVXvw3TQHebrdhvd
         9C4bjhGwsQHPbXGcBvnykyD64rI+0B89YEVlTdJDPm4m7xGknNamSP2jmiqG0/9XyFmS
         21iatTjNeTDZeS3+iXUqTpS6Qkum0kVHOmL1VieDt6+4Tn+U0WPjWwl+iuSSIzM04byE
         zCtuB3ze9Tavr03r3h9WUW54imjFe+bIQVoBkt/5q+leAzM76rTv10ckER/qI9wXFHsX
         aQ+xdfEVKm+vKUfczn+Vs/iXEl3mx1yOdcxtE4S4nO7DKEVGUn8OPrtoz8uK4aLvVfIo
         Xqbw==
X-Gm-Message-State: AOJu0Ywr7HDKJEnlX8H3qnckUSjQRiBMH6qC5AWrzO2hS7O0WGRlbos6
	r+MG+wsIfb9Xl99y4yKI3TCcoFg2Xxq4lMKcjJJxQ00bVXSErU4PMfpft8l48J0PrHLPJisgTSL
	vh5EVVAILwTa3YkZXYkHEr3r2yS4=
X-Google-Smtp-Source: AGHT+IEvruSUTl/GeE2+njVcMThIduKk6cf7Eqg9zSPYzLBX7uj34ew8hQ5g7hOGgjrJ1Z33lw6HxdU0gs/QuVv+S2Q=
X-Received: by 2002:a05:6512:3082:b0:536:796b:4d94 with SMTP id
 2adb3069b0e04-53b1a36195fmr5761780e87.41.1729848336994; Fri, 25 Oct 2024
 02:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-o3-EKuAr7eg=+MWPJJJ-gAsw+WDC7ua-tWxT6KffuRg@mail.gmail.com>
 <31642.1729848103619250450@lists.yoctoproject.org>
In-Reply-To: <31642.1729848103619250450@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Oct 2024 11:25:25 +0200
Message-ID: <CANNYZj-dV0yju36AhSXKpKaHRf0yXfZ1mikvuC47P-hb5jtgFw@mail.gmail.com>
Subject: Re: [yocto] How to add postinst and prerm scripts to a recipe?
To: hchanuy@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 09:25:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64124

Why? prerm would work just the same and there are examples in meta/:

pkg_prerm:${PN} () {
        sh run-my-prerm-script.sh
}

Alex

On Fri, 25 Oct 2024 at 11:21, Uy Ha via Lists.Yoctoproject.Org
<hchanuy=gmail.com@lists.yoctoproject.org> wrote:
>
> That works for postinst, but what about prerm? It is run only when the package is removed in future so it cannot be done at bitbake build time

