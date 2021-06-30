Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web08.3923.1625048871117622151
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 03:27:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MYll/Xw7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id m18so3004080wrv.2
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 03:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Yw0W6lF40Lnv061FhC+mzcQLm6kJf4ejkwR8fsY+Cng=;
        b=MYll/Xw7oSWLnFFV9/n4mxGy0eNOC/DPuL72QFMigTpHrS/5AtTpBtejFQniZ+mSHJ
         sOfnw+nMXVeOToOlD4ALJhX+wAK18H59hTF1wRjD5ww73yZgp505un9m55fnKr7ECr6N
         DcVP2yFvQTDZwYvzV+ngip6b2iC09KdcsLNaM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Yw0W6lF40Lnv061FhC+mzcQLm6kJf4ejkwR8fsY+Cng=;
        b=b22tzj32qpAOJ15IaHyxl8rfjEYIXmi8iHQVKquByHyWf/Fe0NMYXNYFnS9sBRsVI4
         o4e6GS72J4vgspFIqxsId55RjYEjM2ml1FP9CdOoKGxMPP28sbX5yag0NFRnYvN4zrGg
         fQXMi1mGX36WywJbTcJPlkMBxDXNQ0r3pzvV64F9i8P27tOQ2x47HJVYh08SNBQ5XwUH
         me5ia5ud6rWfZDXBQxZfzA73OpSwFznongwSoqLNsEdJlNeCq3wM+jZdlypx643hkS6q
         nkPIvDaetX7hSBQAPrPMAAvPNId4rQR8c8wIKlOtwMU3tK+wbnMDHmFaLFjvqpIdOx46
         vvyw==
X-Gm-Message-State: AOAM532tKVKYaW4hNyjHZSeDLusdfw/VGOxEiLul4zJ2Fb0v3t+wyPsq
	i1UEdvpMv1yKlX5+5oFrBbw9827+zvCDQg==
X-Google-Smtp-Source: ABdhPJxkhbKFWDNL8g4O712oETzUTY2SggaamhtebX3q10m/Pt+HiS1vm3cP8DAJy2W9LZ0ILQjdKw==
X-Received: by 2002:adf:fcc5:: with SMTP id f5mr39120892wrs.83.1625048869712;
        Wed, 30 Jun 2021 03:27:49 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:fa9c:ff43:b5c6:d04f? ([2001:8b0:aba:5f3c:fa9c:ff43:b5c6:d04f])
        by smtp.gmail.com with ESMTPSA id o11sm5885608wmc.2.2021.06.30.03.27.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 03:27:49 -0700 (PDT)
Message-ID: <21ec4938ff2819f413d5467e5100139853066e51.camel@linuxfoundation.org>
Subject: Re: [Yocto] Launching script at the very end of the image process
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Cardaillac, Yann" <yann.cardaillac@vaillant-group.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 30 Jun 2021 11:27:47 +0100
In-Reply-To: <AM9PR09MB4705620C5A070E882117D91DCA019@AM9PR09MB4705.eurprd09.prod.outlook.com>
References: 
	<AM9PR09MB4705620C5A070E882117D91DCA019@AM9PR09MB4705.eurprd09.prod.outlook.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-06-30 at 09:33 +0000, Cardaillac, Yann wrote:
> I’m switching from buildroot to yocto and trying to figure out how to do the equivalent of a
> POST_BUILD_SCRIPT.
>  
> Indeed I want to format the images built in a specific format for latter use and CI needs.

In OE, the equivalent for that is probably the image types code.
See http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/classes/image_types.bbclass

You can define your own custom image types to extend the system. Some of our defaults
are quite simple (tar), some are quite complex (wic has its own bbclass).

> I’ve also tried to use IMAGE_POSTPROCESS_COMMAND without much success since it 
> wasn’t running at the proper moment.

When is "the right moment"? :)

Cheers,

Richard



