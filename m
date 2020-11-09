Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.9620.1604917785058501014
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 02:29:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Mcq8iWD6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id p8so7291124wrx.5
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 02:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Kf7TpbcVRf/i2lfSdtSg2goE1B3WPxV6wLeP+bOKMr4=;
        b=Mcq8iWD6aa/66SSQvvod+Igmc+zP/EYO4JXOUPkBhvTFldwQGLcgmrF5x80roDe4Ve
         2UuMsdfqc0mvmivfETDDWB2YCanT6WMlklGtI0zUO+teU96NvpmkyeJ6OYQs4rkfJFK9
         HefzSxMYAMbb3EBMmqQQ1/a+5qNoXh3ckVztU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Kf7TpbcVRf/i2lfSdtSg2goE1B3WPxV6wLeP+bOKMr4=;
        b=Ep23GzeuafZ/twCsRDCib4INsV5goO9Bb1pHJFHlNqg246WKgUet9q3eW1YIRIq/Zr
         wDMg4K7XCoq/gY0Chhkkv039t3m/RaK7QJCHIyUF7Na2R0OmOAB4RLeQzYcwnzC3h4sk
         6dTrJi3FmoWzK8SDWV8LdoZeGm+WPJZ1b43k82K+sLPQxHvRRKgAr8TvaLxsJmNe9iZS
         SWZDZmKJBhn3gMYEgvzyKdP1NZz+6E770vdu+Bf7Ec2ZpwYIdUVFyep/7Xie79CbbD0a
         GOJczPvVNlI2ZBiP6KIFfz+90v/sjvGA/rUS7jg1kIztH134L1P3MgDYquIBUJLGO7SA
         M3mA==
X-Gm-Message-State: AOAM530cLVUqaDMSfJtytHUxqu19KbCrt5QU1QlsWeQO24vzlvAbOG+n
	lAHTPCKB8cGKdhyCoIy6elHOZA==
X-Google-Smtp-Source: ABdhPJyOpPAbBJZY3xPcZg7a7L7tXNRVCZHWqvPisfzFGPPhPun0g3FW69clumqmlDF6kVzcDSM2Iw==
X-Received: by 2002:a5d:50d1:: with SMTP id f17mr14264223wrt.264.1604917783596;
        Mon, 09 Nov 2020 02:29:43 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 2.f.3.d.1.3.3.a.9.f.d.f.a.e.5.a.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (2.f.3.d.1.3.3.a.9.f.d.f.a.e.5.a.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:a5ea:fdf9:a331:d3f2])
        by smtp.gmail.com with ESMTPSA id t13sm13270867wru.67.2020.11.09.02.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 02:29:43 -0800 (PST)
Message-ID: <b504fe001583540869b29df943ec1b0a2e2cc385.camel@linuxfoundation.org>
Subject: Re: [yocto] Why python3 is build native in yocto ??? #python
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Ross Burton <ross@burtonini.com>, william.jacob@sama.com.sg
Cc: yocto@lists.yoctoproject.org
Date: Mon, 09 Nov 2020 10:29:40 +0000
In-Reply-To: <CAAnfSTuEHgJGJ2c2pOg4Lp+QTnQHHLDAEGkwBL9JC-4ekkm44Q@mail.gmail.com>
References: 
	<CAAnfSTu8N11SfDGCpPN=hsQNL-ahG6WMf62EK_-56iqMzzKVng@mail.gmail.com>
	 <2541.1604655255009585774@lists.yoctoproject.org>
	 <CAAnfSTuEHgJGJ2c2pOg4Lp+QTnQHHLDAEGkwBL9JC-4ekkm44Q@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-11-09 at 09:14 +0000, Ross Burton wrote:
> DEPEND on python3 and python3-native then.

Note that whilst the python headers and library will be in recipe-
sysroot, the python3 binaries will not. This is because they're
designed to run on the target, not the host you're building on so we
don't bother putting them there.

Cheers,

Richard

