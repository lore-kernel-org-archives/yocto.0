Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 238FDD41D68
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 07:50:15 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.81621.1731397812093019975
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Nov 2024 23:50:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QmZLDAgL;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c948c41edeso7309172a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 11 Nov 2024 23:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731397810; x=1732002610; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0xjFTj7wBItF6R69np5ZqelxEGm0c+VZXSvNloWtTc=;
        b=QmZLDAgLLU4lfAjLMSqzs/Ie/K5yTmrKrAN/YuBL5wRaNGpbt1VWQcZlJPlI3PT41w
         G5zMYaP5Uvk508vbbcJEEKS5AX4xhuD6Sx1PYEeF9GbHmzRcsrC8ea5qZH/rX+5rO4gE
         At7XanopYzc7+wM3FmSxsE3I8fbaYZGGikw8xLVVYXIqWhnidXjrBoaEU+6fynYFkZgG
         xg2bpLWvASYYfCPXu7JhrOPihfiXUBGRj9yIW04RzgdPiya7Z3QvBtrz1ELMrlSKE6LT
         91NRVexc+5rrFyPVJLu9atGkrjrFrAnljKaouRBZl4xl1DC53Sa+V+JKkxpk0YQqO29c
         sdAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731397810; x=1732002610;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a0xjFTj7wBItF6R69np5ZqelxEGm0c+VZXSvNloWtTc=;
        b=t+4NglaCOVpLj//JEz//2JDZ+P0OGCcl3Z4VsoXJ818mw2GwlM+avegJEKMLpfm2im
         NAwICANdY300yOZckQVAGK5X7J9/3dOt74UwbpNJZu+CtLuuW2jBdmvPGugIExKLBtaW
         10c/IHU7nDcXHqWOlkbcxIhI6mgcevZC3GYCgHaW0ie1ID7IyW3E9TLqXetBgq5dVNDI
         ndd7PT8RgdZt8fVYvlNWo7fgeemb/jb9rTFVD0NiszyT29jXydtLbOSUjF9apTNOzaki
         Pui2g7yjKg883CVlLQ79dNzNf/cGEp9/H94ccvnH+zx7Nedb8i6zXzuaf4ZrUYAj6EAE
         i8Rg==
X-Gm-Message-State: AOJu0Yxy7S9a0kKG8yTwv2YRq9BOmLnxuN5wJyy2WM3cY/a0Erd4guQn
	BdzYq0wzCqN6x6/fBjk+uSoH9m2yJWmY2fZ2xLJC8RQZQbXPUqjf89M6PQ==
X-Google-Smtp-Source: AGHT+IEvEyibNcPQdfCpj9FG0piyR7vCgJl/mSvWXcOAK54ZPwmlfByxKz9Yk5We0l26KJqOmbZ3zg==
X-Received: by 2002:a05:6402:2794:b0:5ce:c9d3:9fdc with SMTP id 4fb4d7f45d1cf-5cf0a323015mr12793362a12.16.1731397810117;
        Mon, 11 Nov 2024 23:50:10 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf3137125bsm2441265a12.3.2024.11.11.23.50.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2024 23:50:08 -0800 (PST)
Message-ID: <68e7b3be-48e9-4801-910a-51b0d136fc01@gmail.com>
Date: Tue, 12 Nov 2024 08:50:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Id: 'weston': no such user issue Disable is required
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
References: <qdwm.1731305083820940791.ZN0b@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <qdwm.1731305083820940791.ZN0b@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 07:50:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64261

As a first step I would check where the error is coming from: check 
systemd/init scripts/units starting upon login, /etc/local.d folder, 
.bashrc, and other usual suspects.

Once you have it, check which package/recipe provides that script (e.g. 
"opkg search $FILE_PATH" or "dpkg -S $FILE_PATH" or whatever command 
your pkg mgr is using).

Once you have the package/recipe, either remove it from the image if you 
don't need it, or check in the recipe how to remove the offending commands.


