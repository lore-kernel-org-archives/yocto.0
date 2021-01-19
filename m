Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.11546.1611065583684063262
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 06:13:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QcDGrk9X;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id y17so19876494wrr.10
        for <yocto@lists.yoctoproject.org>; Tue, 19 Jan 2021 06:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=VS06Wc81dX5MYd4dujm8WVgUZQfQMA38WmwvQiUzd9s=;
        b=QcDGrk9XKwoazI0r4+ctbhg13Ol6Mh4zxz05ybyd640oEMxnjab3OimkROq1qT6UnC
         oOPLx4w9Uz/ihDJ1laNWz+SKsPDfpRtHTmoV6tJc9rv7CNZc3CicMk7Wrc/TQPp0PSg0
         jyZbbB2h1qU6yF6fOiaNRBesVkG4dsZWtY3YQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=VS06Wc81dX5MYd4dujm8WVgUZQfQMA38WmwvQiUzd9s=;
        b=sW2SaTrdDNn/no62lY2UM8RTaIemCV5klBvmpeJu/AKlVn2IrvL4F3n0HtlZqza9WD
         /fL34f+yB+0Pn9sdSVcUUxOiwfq57eEZejqCjk3yahf/po2jylzarjksNezdD0Pm+3OM
         7m6oIWZA0jrefAY2JUmlnRLjvwIooRQF6XvLy1X/2XKKYEdE3uaYsHYE6JJJ1G6l37TW
         QEXGfYUMtnVZTCvsXfgFQZc2y5b0vB9VM71p4NMHsr1jDOVRckFI1c09AovgOMCb9Wll
         wPHFAKxWpRUnlCDKksJOZcGbVnyMlcCqDeS9+L5xye3MMEGGItUWVuWjxrRHAO5/JUP4
         riVA==
X-Gm-Message-State: AOAM530cJsUuzLkmakhsO7ajQaG91NutIdKIaj2UAwcfhxgrrCS9j5Fe
	7FFNvblHCI+zRFbjta2ThvqhUw==
X-Google-Smtp-Source: ABdhPJwdI2AT8VhaB7g1/lvD6rKnyJCyWNszMpnptWuC+7++ljc8gRYInusdK44GWF0d974+tWZS8Q==
X-Received: by 2002:a5d:4cd1:: with SMTP id c17mr4609104wrt.49.1611065582204;
        Tue, 19 Jan 2021 06:13:02 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f7a4:851a:48d5:440b? ([2001:8b0:aba:5f3c:f7a4:851a:48d5:440b])
        by smtp.gmail.com with ESMTPSA id z6sm37395409wrw.58.2021.01.19.06.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 06:13:01 -0800 (PST)
Message-ID: <89f8ba43ed2f9a05d11d13268c03a00769fa30b3.camel@linuxfoundation.org>
Subject: Re: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 19 Jan 2021 14:13:00 +0000
In-Reply-To: <6006e7ef.1c69fb81.32ae6.430dSMTPIN_ADDED_MISSING@mx.google.com>
References: <6006e7ef.1c69fb81.32ae6.430dSMTPIN_ADDED_MISSING@mx.google.com>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2021-01-19 at 14:08 +0000, Monsees, Steven C (US) wrote:
> That was set : export BB_GENERATE_MIRROR_TARBALLS=1

Just to be clear, where did you set that? In a .conf file? If so, you
don't need the export bit. If it was in a shell it probably wouldn't
work.

Also, you didn't answer my other question, did you refetch everything
with that set?

Cheers,

Richard



