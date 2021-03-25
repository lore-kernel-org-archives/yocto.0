Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web08.8526.1616681053454966728
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 07:04:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=M6kB1bjK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id c8so2384734wrq.11
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 07:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=JMOKciZbxTkIRviSJPiazugug3++winaOJicDuWy+Xw=;
        b=M6kB1bjKTrSe86h52LvvfK+hnnpZqGNSu5+tWyYVAxjduYGQYeLMfFFwOQT0KtNNfn
         M/CSOAjgXJ0daEltOg8QPIMQ8Kb0+iA5Prcbq/1k601oUHQtVNpJkUEIZ9yoE29Lv22B
         jT2iMjI7Nd7it/y5PynRChRRBBTZqhJQ5BTgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=JMOKciZbxTkIRviSJPiazugug3++winaOJicDuWy+Xw=;
        b=RuP0wtolRkULet5jV4C9Q05g8I/0Ou40fe0QcbTcHiNeOqjsLMhOBISUL0BrZCqE+N
         EALnDTouXSt+tRrSAk8KP76GnsD4OjyGvldUm+lPoXiOIqcel0y24+wkzeCqiWptXHMz
         QrFsnVdfUi5HB4CP+23HgiL/zhNKRlpdM6xIUg8vhiBY59d3AzruyeuXIuOFFJTYgoJM
         nWM7oYeeTeCv20ZCuD1dt7tjeTzTWnSaLgA2BxjIK/wWmq7Pt1BjiOl0zkYqQGk2SeaP
         wULSKP7CBzjTNyNIV/PQbDH8zUb+YMarWXSBgZ2OuAdiv+8D7a6mzSwIMNxDGy01BeNJ
         /VKg==
X-Gm-Message-State: AOAM533PqfrA3PhjMWZT8n7J+f6GbtQP1mFd2NTl+oD0uHUOp6W/am25
	0NcBvSxp2in7mQjFrRAM2jWPfy7aE0PZMQ==
X-Google-Smtp-Source: ABdhPJxo2+EcD7R2m7aHIhIxdId7Hqinx8+ivC1US0peY57o6zaEU9ky3c6p+pYAWwwCXi7XXqfHNA==
X-Received: by 2002:a5d:63d2:: with SMTP id c18mr9113632wrw.277.1616681051944;
        Thu, 25 Mar 2021 07:04:11 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:6a6e:24cd:b165:9075? ([2001:8b0:aba:5f3c:6a6e:24cd:b165:9075])
        by smtp.gmail.com with ESMTPSA id h62sm7988730wmf.37.2021.03.25.07.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 07:04:11 -0700 (PDT)
Message-ID: <1e63adb5b11f29a2413de79c69012d52dfa0aea5.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell 07/23] scripts/generate-testresult-index.py: Use bulma css to improve the look of the index
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>, yocto@lists.yoctoproject.org
Date: Thu, 25 Mar 2021 14:04:10 +0000
In-Reply-To: <7b3d9d7f821620d3e0549b0f2834f8c2e0b04065.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
	 <7b3d9d7f821620d3e0549b0f2834f8c2e0b04065.1616625264.git.steve@sakoman.com>
User-Agent: Evolution 3.39.2-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-03-24 at 14:39 -1000, Steve Sakoman wrote:
> From: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> (cherry picked from commit 4b8eab92ee1f68ec8cd680c62e40b17006fa6efc)
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  scripts/generate-testresult-index.py | 34 ++++++++++++++++++++--------
>  1 file changed, 24 insertions(+), 10 deletions(-)

I'm torn on this and the other generate-testresult-index patches. These
are only ever run from the master branch so in the context of dunfell,
they don't matter. Equally, they therefore don't hurt anything...

Cheers,

Richard

