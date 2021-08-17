Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
 by mx.groups.io with SMTP id smtpd.web09.39956.1629210805014691006
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 07:33:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=M03CXmvC;
 spf=pass (domain: gmail.com, ip: 209.85.167.181, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f181.google.com with SMTP id t128so32208575oig.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 07:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=mL7iZskAGngBz3OHqfmbwzJ446bEmC+WZUR88xa72Qs=;
        b=M03CXmvCcSru2l1aesszSFNTgVwTqjlff9VXdIdXD/nWXP68oZY2vlYxyKWU26AH0g
         b/sNPysoivg6F49roHmjvffRPy41aNin0Jbdr3UmTekhDOgGSui3r2bGYqkRcbtBTfMP
         zyVJ6jxexzLthfYZHRBtv/9dLYL30NlD5S3rQE6+CSXsCPavj3uuoGaPBmkCYh5/WnFv
         sn9zLVlODAtp/xiJ6bfyUI5P0YkkNgcqBdRaaLtR9kVvw9RoJ6CKLv+PzFIzyaHH+4sC
         aNDRq7pOLmYp8KRKX2h1CKd+bo6Q+eXYFNB0GEKbLJjek7Ujg4fR3LlC4YxE1FPX17Fz
         /NYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=mL7iZskAGngBz3OHqfmbwzJ446bEmC+WZUR88xa72Qs=;
        b=IHwfvJibuPT8CVAI1BG7PcKDcjY0YzN2p3UbXh3IDggCknfZbR/fLcqn9bX8NnU8ZW
         Cn5HkIQh4OT+4WiGpNUvE3MBF7hA53+o13xqbJ1XFDEQzoT6Gfe5gf6JyHtR5jduwuWS
         aiRcM7Z88QXSHcAKeOQ9SeeWSTFQb+36kgftPZAHPmeo2Q04nF3FjyXIBQg9pOqOYmX3
         FcmrdaFa8S4Oo++DfJzpSGYVQ2FOPg7aE/dUV5Cw7eAbYaJW2w22H07Jq8pqt660M/du
         v7z6IzU5aR0xXIKb78r4+XBzqvZMTdA65Uabx69vto3GZIziVfQIn4XFIytdB2Urgf0f
         85VA==
X-Gm-Message-State: AOAM5329z9rW9w8KrSGM9aCJy7GFflFoA9NGgSTduCmxD7WOqwGlrwBO
	kAe3Piku70kX8SV87h4U6gdE7RaaA0FHaQ==
X-Google-Smtp-Source: ABdhPJzA4Tr6lv2NRqqQnf1MmosIo9OpsIF/huh2IaD8NpCoobHHl5LJRu1s/iNQGOWWUNApf8P1MQ==
X-Received: by 2002:a05:6808:2197:: with SMTP id be23mr2740681oib.161.1629210803936;
        Tue, 17 Aug 2021 07:33:23 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id s12sm408402otk.21.2021.08.17.07.33.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 07:33:23 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-mingw] [PATCH v2 1/3] protobuf: static link tools when generating sdk
To: Sinan Kaya <okaya@kernel.org>, yocto@lists.yoctoproject.org
References: <20210817140742.3110-1-okaya@kernel.org>
Message-ID: <23ff22c9-a250-fd2c-c199-8392d331596a@gmail.com>
Date: Tue, 17 Aug 2021 09:33:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210817140742.3110-1-okaya@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 8/17/21 9:07 AM, Sinan Kaya wrote:
> Dynamically linked protoc.exe is failing as follows:
>
> [libprotobuf ERROR google/protobuf/descriptor_database.cc:641]
> File already exists in database: google/protobuf/descriptor.proto
> [libprotobuf FATAL google/protobuf/descriptor.cc:1371] CHECK failed:
> GeneratedDatabase()->Add(encoded_file_descriptor, size):
>
> Switch to static linkage per upstream recommendation.
>
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>   recipes-devtools/protobuf/protobuf_%.bbappend | 1 +
>   1 file changed, 1 insertion(+)
>   create mode 100644 recipes-devtools/protobuf/protobuf_%.bbappend
>
> diff --git a/recipes-devtools/protobuf/protobuf_%.bbappend b/recipes-devtools/protobuf/protobuf_%.bbappend
> new file mode 100644
> index 0000000..b53b22d
> --- /dev/null
> +++ b/recipes-devtools/protobuf/protobuf_%.bbappend
> @@ -0,0 +1 @@
> +EXTRA_OECONF:append:sdkmingw32 = " --disable-shared"

Apologies, this should use the :mingw32 override, since it's not 
*specific* to the SDK, but MinGW in general. Anyway, I fixed this up for 
you since I wasn't clear; this is in master-next and I'll get it tested 
shortly


