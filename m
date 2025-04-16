Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE336C369BD
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 13:26:54 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.19532.1744810008530182204
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Apr 2025 06:26:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BlhRvhWk;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e5dce099f4so8779892a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 06:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744810007; x=1745414807; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xMP4Y2Vv02OJVrLPRpPlmcLjKrc1YV8Z9ESyGhyXCr8=;
        b=BlhRvhWkJi+t+k9u7DnnAF8qcDrXgvOfQK4/tZKojPFB7qzuvkVgzMz6zQp8EVlt28
         aP/R4NXV8lXoca3pPqOSkS9flQludCykvptSJ1kWhb1wM+zK8uQX2mFVzNEgoNmaI+Lo
         azYBTQeFb9e5LG29HV7PsgsfAWWQTKw7xLvm3XaRFtjA21ONVgnYkapd+QuFjwjRLBGY
         kr8p3S0GPvBAPj7NgnME4chek4FxTXGNrf971D5WMpOrYMw2l3kRbr3TbpxVQl4jzqEh
         2wM9glIfgp5VFoPqObsQSM61QdlN58orUy7Km4ElU2ulMQxLTnmEElf9Uq+6qAXdLDIG
         5Txg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744810007; x=1745414807;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xMP4Y2Vv02OJVrLPRpPlmcLjKrc1YV8Z9ESyGhyXCr8=;
        b=jjFkmfFeA6fG+DfbG0uJGzCzPRCc9cmoJ7IDppbObnXxglCpsjlmfeI07L3deGzD1c
         //eUFP5DxDCahWc+2unf8Z3UncLKAZqBrZTzV90nKSg7mGxeCoLjjntoh+IKte9SSVGk
         gd+TrJqzEyQw9HkAUGGPNej5Mdb4bVqeAwJboB10eOl8A77fTP1cQtywVI4S1stNieVv
         gktHK0hEWbrG1fS2MM6cgH+mpbrXwZr4jFjt1C40Ir/FCFnwrfWk+KY+yd9gVN8KSxRQ
         woAdk80Eu7dFdV89Vp8WcJ2RHIuSfwRjULD2rxy3xC1+MF4oRQOzJYzSPyh94+ffZIas
         y0SA==
X-Gm-Message-State: AOJu0YwALoivbrENFL8T4pPSCqjXu0Ojfr5cK3XnS92mecE7b0oq28jz
	DnF69B2tb0jrpd7bicxRkrbgAkHF/zW5WvYHBSpTgCUs/FZ5EuvkNRIN1g==
X-Gm-Gg: ASbGncud1xeD2xX9ukErRQH3SKa2K0wQ1xs2HdTzoFL0cvMZwuRyAkVlz8WbvFulR6g
	j/qDRku2if9nZ55WPWp7iVx+4c/uLIQVuliOlZFMp97630DN88sCMsXE/036qn3FEdcx2bAPNWW
	+GEu2S21izy2MGmbxRxt0EdwqGKU20DjZPLl5GgjK8UZskyjjX94MVjS0knQefNJZRybZ2Rdwkb
	xL7zr6/gdtec7+iI7wxPAyK6fmebLrDoRmHRDc7rQpotqd3HvlK2sGeikTqcWAV5sZk4u2T8ATQ
	5TYgBVD0KFivqOV1vSvRaH7BBaNUtFeqGMBLzCJ1og1BLoAO
X-Google-Smtp-Source: AGHT+IH4CvaMpCM+sox8sYmDBBsRP+fTNimo2NCjY6ZXHxj/B36KdfFmrDQbNjHP0lVnDpf9bDopDQ==
X-Received: by 2002:a05:6402:3490:b0:5e5:bfab:51f with SMTP id 4fb4d7f45d1cf-5f4b6df5c7cmr1755028a12.0.1744810006337;
        Wed, 16 Apr 2025 06:26:46 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36e0ce3fesm8413731a12.0.2025.04.16.06.26.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 06:26:45 -0700 (PDT)
Message-ID: <9f8b626c-d277-4f08-8ac5-ad3baea13000@gmail.com>
Date: Wed, 16 Apr 2025 15:26:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [error-report-web][PATCH] view: fix unquote_plus import
To: yocto@lists.yoctoproject.org, thomas.perrot@bootlin.com
References: <20250416131828.441127-1-thomas.perrot@bootlin.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <20250416131828.441127-1-thomas.perrot@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 13:26:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65189

On 4/16/25 15:18, Thomas Perrot via lists.yoctoproject.org wrote:
> From: Thomas Perrot <thomas.perrot@bootlin.com>
>
> The "unquote_plus" function is provided by the "urllib.parse"
> module in Python 3.
>
> Signed-off-by: Thomas Perrot <thomas.perrot@bootlin.com>
> ---
>  Post/views.py | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Post/views.py b/Post/views.py
> index 3575c1da9854..c0538fd4927e 100644
> --- a/Post/views.py
> +++ b/Post/views.py
> @@ -57,7 +57,7 @@ def addData(request, return_json=False):
>              # Backward compatibility with send-error-report < 0.3
>              # The json is url encoded so we need to undo this here.
>              data = request.body[len('data='):]
> -            data = urllib.unquote_plus(data)
> +            data = urllib.parse.unquote_plus(data)


Looking at this a bit more, while this is definitely a bug, you should
also check the "if" condition. The else branch seems to be there for
backwards compatibility for old scripts, and you want to use the true
branch, me thinks


>  
>          p = Parser(data)
>          result = p.parse(request)
> @@ -96,7 +96,7 @@ def apply_filter(context, items, name, value):
>          if ':' in value:
>              recipe = value.split(':')[0].strip()
>              task = value.split(':')[1].strip()
> -            filters.append(('TASK', task)) 
> +            filters.append(('TASK', task))
>              filters.append(('RECIPE', recipe))
>          else:
>              filters.append(('TASK', value))
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65188): https://lists.yoctoproject.org/g/yocto/message/65188
> Mute This Topic: https://lists.yoctoproject.org/mt/112294515/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

