Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web12.2855.1602109419234689697
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Oct 2020 15:23:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=T5dIOoY1;
 spf=pass (domain: gmail.com, ip: 209.85.210.194, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f194.google.com with SMTP id f19so2283264pfj.11
        for <yocto@lists.yoctoproject.org>; Wed, 07 Oct 2020 15:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yTti7fH5ujj5ID7c2ty7uby1DrUxa+2UNSNMYmjYXEo=;
        b=T5dIOoY1LSWbrkEMnD0r94TUqcZvZDBfDEXStNad66255T4ekVA9DXVdhvfU9RsJyT
         DDrpRLgwLfStMf3/qMhVxneyjclh1WZgUmt3nEQVPhlleWCzrshASe02QyXDjJ3jdrwN
         hbPgZESfFtxVDuLga/C8DJTaZIzb5AXZt29rfTEhCh6D8nUfNHczu4xE70i4s2YgFPJE
         y85NdLDQNEHwj1EYV5EahNfW5/ZLXoP1yDAji7M8G9SBRsmeW3ouJa+ovAEnZKl5lyQ9
         POK8mOIJ03nF8evYi97xkK8FGyBw1oGImQAA/aU8hlPjFzHSFJGxfYKRRlfXf7j7+GMS
         rOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=yTti7fH5ujj5ID7c2ty7uby1DrUxa+2UNSNMYmjYXEo=;
        b=bMdUGyo1TC7p90djk23/aJ01gKLjd4pVMtPQcsYiBQm2d7EQN7KCPiGPxAV/MHfdTE
         J/53ojp+qu4jwkbiBlgg2WXTeDmGPMECF++CvcPCuFU3dp0zwPPk0UBdxnVJ6kPQiqPN
         6CH+BHDtFWK9eR8B9Z68JiG/oU75Oa2nk+uI1mp5xnUBkUrFT3wOrdFUsgzeXfKwTsCD
         F2FPcGZ9ThKJFxWlg/MuH5WCRuKcCtGfMYEFoGHWEH/O4EIehT3xKPaCMlviNrdAhK5+
         f+NK9FGGLtigQlPVciqCwm9+w7lHtr0rSIVY0AIQwJAbdbxTbPrB522vpK5iizkM+qV+
         ap3A==
X-Gm-Message-State: AOAM532HlW0Sa1FZWkPV6Wv4GTKjrr1LHHbOybX+HvFJk9soNlxkw8Qt
	tgJEsq06SBPbwnqA8kjUqtqNLCugNtkZNg==
X-Google-Smtp-Source: ABdhPJwE3y6lo0rJ076lrrvn5FSOW3jo4TmdYPji9ZPVQCTlRcsHTjBlR53yUg4bbg/2p9tPKKpk8Q==
X-Received: by 2002:a17:90b:490:: with SMTP id bh16mr4577757pjb.214.1602109418185;
        Wed, 07 Oct 2020 15:23:38 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:f80d:4abb:99ae:980? ([2601:646:9200:4e0:f80d:4abb:99ae:980])
        by smtp.gmail.com with ESMTPSA id u69sm4912053pfc.27.2020.10.07.15.23.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2020 15:23:37 -0700 (PDT)
Subject: Re: [yocto] Perl populate sysroot fails (yocto 2.0.3)
To: "Varangu-Booth, Valen" <Valen.Varangu-Booth@christiedigital.com>,
 yocto@lists.yoctoproject.org
References: <CAMKF1srdJXNyWMBvQx1pjxN25a4ChSNpAGmnLE8ZvMLNnR+zUw@mail.gmail.com>
 <3019.1602095767259762860@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <72d6a6c2-68f0-bf5f-e0c4-3b3b7f5bb582@gmail.com>
Date: Wed, 7 Oct 2020 15:23:36 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <3019.1602095767259762860@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 10/7/20 11:36 AM, Varangu-Booth, Valen wrote:
> Thanks,
> I've managed to narrow the problem down to samba - it has perl at 
> sysroot/dest-dir/usr/lib/perl5.
> However for the life of me I can't figure out how to force it to run 
> after the actual Perl recipe. I've tried adding DEPENDS += "perl" in a 
> .bbappend file (which bitbake-layers show-appends recognizes) and just 
> directly editing the recipe.
> Neither seem to make it stick. The first run right after the change 
> works (since it's able to use the cached perl, and waits to rebuild 
> samba) but subsequent runs (once samba is in the cache) always fail.
> For now I'm working around it by manually purging samba from the cache 
> after each run, but it would be nice to solve this properly at some 
> point as well.
> If anyone has any tips on where to look next to force the build order, 
> that would be great.

perhaps adding something like below to samba bbappend might help

do_populate_sysroot[depends] += "perl:do_populate_sysroot"

> 
> Thanks,
> 
> Valen
> 
> 
> 
> 
