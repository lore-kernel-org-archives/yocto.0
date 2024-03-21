Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB831CD11C2
	for <webhook@archiver.kernel.org>; Thu, 21 Mar 2024 16:37:53 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web11.1651.1711039072292949881
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Mar 2024 09:37:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=kxllLSC7;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.169, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-607c5679842so12766207b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 21 Mar 2024 09:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1711039071; x=1711643871; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YP9bGrZurov2CH5OtO/1LwWDWjXcCEdzRRgFA9iHgS4=;
        b=kxllLSC7ibD1n6UVpTfTCCtp5QcErfkmsL+SapcMGUF0N2MPZIeFM+MlDDfPEapdej
         OI/+g9hPLrdQzTciYHCxZjxqKbjGSKlGCE6s6w6Ngkw3BzkP70Giqtjf1k7vhVXAzhoW
         qD43dTqbuOh1sZxH8b+Vr16Q3DD+kZfEZrEoXs8nq0ehfwa58SuDw8OntAChbxvWqVsN
         oDiBOQnuRif6jf8NpSb0KghE7IQhL9zrQkvcepa+G1+3XeUg8IjKB6ja44BwJE4ZeA4C
         ikL3Mrv7n/upmDsgZ4hfRBbjanh8vottv/VG6Tjuopzi4wYEqJXjd5K8eXt5MkcIcZLj
         bdOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711039071; x=1711643871;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YP9bGrZurov2CH5OtO/1LwWDWjXcCEdzRRgFA9iHgS4=;
        b=Y59y+wZgLkITMI59NpNQbKCb8nt0n9w49jzT6Esrjvl8zKskMAYVz1324dye0q4/aD
         ecaM8jlG8V5K7o9G30AvGvzT3vrFTeL9lArGpyYj7kaVNcWIHwr/tvdPT9/CW8KgUCzX
         WN+vl6I5PEsla9m5z1QgpTefdJDYN+X093pBXyJq1ppXSbyZAWxQIXUqD+LavrjMPHED
         2D+jMqBuslaNON++pt8EeGz2sRAEgqjzKzNFwlTiuZ1Ht4O6nLko9DvE3Lp2vs3D6c5T
         4GHFMkWhTITlP3H96BzAHGB+r6ha8UKL/+R03zQYKRY34uVk8wtJgc2sCXuBosLdh3aT
         jshg==
X-Gm-Message-State: AOJu0YznfwSJV69bBt9yTn0ywgSdrqXcknY5oj/HYQxnPLM22S6+LT+e
	Aj8W7/gHc8ExOWPWNQfRZ/pXqsZV14WxpdJZfU22N+z+IGEqXTV4cwWBLvXFubrcWaZ0uxSKutF
	ofcwVhKvqNRI+QSKvFWCoayX/zfI9lbmGDz9i6HU6p4UHfLcxRdAopA==
X-Google-Smtp-Source: AGHT+IHsuqmWK1BiHDbggK7JBKdh8tvmuWEJ6bIn/BBPj1Sg/EYFgi2jiy9cZ2ZlMeAdMx+halJm4l+3ABSDxeaLuPI=
X-Received: by 2002:a0d:dd14:0:b0:610:ecf0:a170 with SMTP id
 g20-20020a0ddd14000000b00610ecf0a170mr5580692ywe.5.1711039071259; Thu, 21 Mar
 2024 09:37:51 -0700 (PDT)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Thu, 21 Mar 2024 06:37:40 -1000
Message-ID: <CAOSpxdb=_8337e_QyL_mgMdXKgAjEkp3W5VxEK_kk+p+7ZGzaA@mail.gmail.com>
Subject: Final dunfell release build on April 15, 2024
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Mar 2024 16:37:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62815

If you have any patches you would like to submit for dunfell before
it goes EOL, please do so now!

I'll be taking patches until around April 8 in preparation for an
April 15 build.

Steve

