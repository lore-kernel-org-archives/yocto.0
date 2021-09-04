Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.11287.1630762042360263413
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Sep 2021 06:27:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ye505cXH;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id d6so2069522wrc.11
        for <yocto@lists.yoctoproject.org>; Sat, 04 Sep 2021 06:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=yGgqVWxwbTtJ+VKQ9/mF80jH9GRJEvF2q3hKkKFtmPk=;
        b=Ye505cXH9Ovst2TO5lUusRgQxDaYvfzJaFaWOdLZaM6wWHFCC4Y6ZIj4dI9SXnzgbt
         atkxBgdUgu/UEfGa3UZ1bJ5vDmg/ccaP9p0i5gmgX3WVEZV6TfyMQ9jePduubfP3sXsZ
         XHuXvqwo/WL4vYDeP9O0exeHO+7fnp0ndcHPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=yGgqVWxwbTtJ+VKQ9/mF80jH9GRJEvF2q3hKkKFtmPk=;
        b=RSYLrA4pPR2jST9jWFqm+3Fs+sUDlmmlJawAFp59PA3xMFxfxGy3wPpKN+uWBRZFnV
         Y2wVYUIa66J9rpySE+is4yaD+f/CP13OTuHGdSaU2/DIaLa7kmASXzkS5aAGZ9MR1KU+
         sVMM2CS/ZBCfjkaNI9ymEDJ7W0HXyp3TfSHhUzTrtLxfYWJp22ADb1x3ujQemry0ffwU
         +zP7CbUl8Cz9vN9zKjYIhvcqOogEJeH0uQFUMt+eW356gUWuKuNxHk6i1VmrdYkAYABF
         CwnB9DiS8EKqXGdcX2mcZKaXsD/VVEzy+CBNl8B0SV4GnJRfUA1J7qMwkRD6WuUW4MBB
         MGag==
X-Gm-Message-State: AOAM532+//YtdseJLfD50dHXayg0a61vp+DZA/9r2IHOJT69Aw0NoESb
	UQ+Ghs0wzq7pVMG65v95VXv8Vi+WTEAeuA==
X-Google-Smtp-Source: ABdhPJxM3oZ5UZ4GfbkQg8JIlczUwDXgrcY2Mm6n4OFUk1Hzm+4cCpbgm39qeyRiUVhSY54Oj85+yA==
X-Received: by 2002:adf:9f4b:: with SMTP id f11mr4041678wrg.337.1630762040737;
        Sat, 04 Sep 2021 06:27:20 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:435c:78bb:cd77:df6f? ([2001:8b0:aba:5f3c:435c:78bb:cd77:df6f])
        by smtp.gmail.com with ESMTPSA id g138sm2154156wmg.34.2021.09.04.06.27.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Sep 2021 06:27:20 -0700 (PDT)
Message-ID: <b66cf361bde59cee90598895ba56b3e51862e083.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.3.3.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Sat, 04 Sep 2021 14:27:19 +0100
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-3.3.3.rc1) was completed on the autobuilder and is
available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.3.3.rc1


Build hash information: 

bitbake: 9b2d96b27f550da0fa68ba9ea96be98eb3a832a6
meta-agl: 60344efa7a50dc2548fc4b5d68b5ad4d60c4023a
meta-arm: ba82ea920a3a43244a0a72bd74817e2f00f4a1af
meta-aws: 171aa2cf4d12ff4877e9104b6ec46be54128e3d8
meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
meta-intel: 5c4a6b02f650a99a5ec55561443fcf880a863d19
meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
meta-openembedded: 5741b949a875b07335d4920aefa6defd13ed45c6
oecore: e3a7eaf9fe1420b2525e14f0c0f2936e7818b8a3
poky: 4624b855ed47c5da08953191bfbb39e764ecb343



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


