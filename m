Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B454C433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 13:41:24 +0000 (UTC)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web08.4326.1652362878929458493
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 06:41:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ogt1BOjX;
 spf=pass (domain: gmail.com, ip: 209.85.166.41, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id i20so5385933ion.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 06:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=B0VMvqyuQiaDnsLzfCzUMygEZRWIS5xf8Rptp4JN6VI=;
        b=Ogt1BOjXR3b2c5q5WFgNTGny3nrcGjo5nAoJN59F5aXBZEviy+jyMpD9i6Gxvnb0OH
         7TNxFJPw3F/SfHzNWH8iBOFVqa2lOUwRCxDctLiuy9CTZ2CNC3886y3+n/7rXfBUSEyZ
         HFn2mz8R6Y3bpI9y74zv6HETod4B9YnJP6McFlw2G/BgKMY4qqzeV1GvvIkAq2pl8Dte
         0o4ssD0nzs8xTHT4UrfsHnRqg2UpuiliZzemvhWRrGfjvw8QbFASW/3sVbXeiRfrCpx3
         48EyPznfB71utNYE3B9Nj9r9wW5ES1blYW2FE6a5wXmkvrxYYUkc9iAfELf6REiD3Kif
         eSJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=B0VMvqyuQiaDnsLzfCzUMygEZRWIS5xf8Rptp4JN6VI=;
        b=URSDKZsV6U6SKjVUE/+iqUX2TxIHwMLQ01wXDZBgfQJODkE2c0wwWU0lsR5vseBKcV
         JDRXHGozqZ3tH3PAhRBv1/iZjC7Ln4Z7M90iyRzwmH3ddB+IvC0M+PLFsqRdajPAvpvy
         t26Riff0dMaM4YvJNxAY9YBUDZZkmaEZ5JsvLdwmV695/pUFjBIcIdtQ/HJnO8ETTs7Z
         47XJHA1EoNFmfetvzMrU+oLjbmJFUxbWVKhRpPFMpTYzUYLmk37f17Y2I3O3rUL+NCjO
         eSRnUXT7dRHE3HaWWrVhG2hcZbgMqSC9Tea/5lEpmwrIxAJc4g+7G8vciRJJ7p/8sfTU
         k5fg==
X-Gm-Message-State: AOAM531eYmQB/uo0hwwczTZv5P4drIwoQJ7YemZ53xYD0Ycx8W84RTiQ
	DUFTxnODuradzDRBQQJcQGE=
X-Google-Smtp-Source: 
 ABdhPJz2IRJLhsc2eOax3gZgafgUYY3e2UHgbFI+A7fARgYckuZ6Zmt9yhmcIWc3qlE0tvYThktOxw==
X-Received: by 2002:a02:b890:0:b0:32d:b88d:d09d with SMTP id
 p16-20020a02b890000000b0032db88dd09dmr8354708jam.311.1652362878309;
        Thu, 12 May 2022 06:41:18 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 i3-20020a6bee03000000b0065a47e16f53sm1400549ioh.37.2022.05.12.06.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 06:41:17 -0700 (PDT)
Date: Thu, 12 May 2022 09:41:16 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [kirkstone][meta-rockchip][PATCH] wic: add e2fsprogs dependency
Message-ID: <20220512134115.GA7631@localhost>
References: <20220512094856.1410218-1-Martin.Jansa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220512094856.1410218-1-Martin.Jansa@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 13:41:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57078

On Thu 2022-05-12 @ 11:48:56 AM, Martin Jansa wrote:
> From: Trevor Woerner <twoerner@gmail.com>
> 
> Started seeing the following error in my builds:
> 
> 	 ERROR: A native program mkfs.ext4 required to build the image was not found
> 	 Please make sure wic-tools have e2fsprogs-native in its DEPENDS
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Ah sorry, I saw your message yesterday but was in the middle of something
else... then I forgot. Thanks for the reminder.

Done.

