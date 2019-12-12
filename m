Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web09.3208.1576132299922429820
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 22:31:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melangex-com.20150623.gappssmtp.com header.s=20150623 header.b=VYt+2qhe;
 spf=none, err=permanent DNS error (domain: melangex.com, ip: 209.85.208.172, mailfrom: morne.lamprecht@melangex.com)
Received: by mail-lj1-f172.google.com with SMTP id 21so956393ljr.0
        for <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2019 22:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melangex-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=aQor9pqqLqigpRyHKfmFdbTkB4//Wzbn7f0HjhI7zh0=;
        b=VYt+2qhezvKcAeZg6lFvzMi5+Ukdu9NQ6rPnhEFb+fS8wr29Ahxau9sHB1gbkPWpxa
         IMKSlHIl8Mqqgddk0AwUGHKbiigxXslq8vAG0cxL4OKiT9fH3ZFgu/GqhK48j9p2P8ak
         FsuKu7I4aWu9VZkUE/1HOIN0/eyiaXWi4EfBZDEsviTdTZQY1cpO4cd4fA2+3ESP5MSN
         PlKA+Ql8ohxCZbfsD0P6gsLdvIcN//7R1l4OLb6RAUb2enE7bqglbkTxSNkXIV/onOrs
         XR2y18SrWF9p7aePkGWBJzOyKE0fWgH7HrYy+uVxhFxvyOphxTES5Rws58rJyBf7wsMv
         7KbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=aQor9pqqLqigpRyHKfmFdbTkB4//Wzbn7f0HjhI7zh0=;
        b=HUCl0cHUyZ693zJIj3d2OQ9ykeyd9+ECY4KZaeQ0tRcIA2q2szWw3K5a6Z3XpohPiK
         Q/7JQ//ZEg5urxynmmzR4+6SJ0UXC/wUTznnkp+8sSm6nLFW5ZfcwPFIqwxaBC/24w1u
         l6nitFFKVFPsBR1ASb+GDF2eEqYl3OyFxxetdKhhdWjDK4aRMxkybG0HYv6HZnYy/4pJ
         vK3xZLKvKTwZZAZlC/JARe8qoqeJ4n2UkdLoKAxlkf0/eDsodoEDcNpIHuYMWzCPHX0/
         +i3RwLffmHVoBHsSxWnfEIuODKR7hDnlLzz7zSlQ7Tp4pyanbbOOS1TE6EmPiNpZCb10
         Rfsw==
X-Gm-Message-State: APjAAAWf7gU3HZwsM5o3YQ29jsYJCstdBSofX+vOk5L5u3E3YBumKxNN
	LcjfflaNJ3/C3+UhUOyr8z6qIHzTS7U=
X-Google-Smtp-Source: APXvYqyfzobDCslbd7xCM47R2gGZopQWvZq+TEHSvEQtdpp02DTLh2McDibTqCekLgfTwxwG0ilVOw==
X-Received: by 2002:a2e:9596:: with SMTP id w22mr4670631ljh.21.1576132297457;
        Wed, 11 Dec 2019 22:31:37 -0800 (PST)
Return-Path: <morne.lamprecht@melangex.com>
Received: from localhost ([209.203.60.70])
        by smtp.gmail.com with ESMTPSA id t81sm2276592lff.25.2019.12.11.22.31.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2019 22:31:36 -0800 (PST)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Thu, 12 Dec 2019 08:31:33 +0200
From: "Morne" <morne@linux.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Build issue - newbie
Message-ID: <20191212063133.GB2150524@archworkstation>
Mail-Followup-To: yocto@lists.yoctoproject.org
References: <9izc.1576130373846027647.fA8A@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <9izc.1576130373846027647.fA8A@lists.yoctoproject.org>
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>ERROR: Layer microsoft-layer is not compatible with the core layer which only 
>supports these series: zeus (layer is compatible with warrior)
>
>The above error happens when I run bitbake obmc-phosphor-image in Ubuntu 16.04 
>running in VMwarer ( Windows 10 as HOST).
>The above command succeeds when I use Ubuntu native installation.

What YP version are you using ?

Can you verify that you are using the same YP version in both cases ?

		- Morné
