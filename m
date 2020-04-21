Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web11.8786.1587476593947985435
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2020 06:43:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@northern.tech header.s=google header.b=fQ8Cd7b8;
 spf=pass (domain: northern.tech, ip: 209.85.222.174, mailfrom: drew.moseley@northern.tech)
Received: by mail-qk1-f174.google.com with SMTP id t3so14502876qkg.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2020 06:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=northern.tech; s=google;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language;
        bh=Zn1D8wN9xYb6nKWC/SgyvlyA/TVufEXxLhQCL+8aZ24=;
        b=fQ8Cd7b8/UZE4oLOv5tuSks1vnDvSBTqYdxxi2eQIjTGRWfo2hXjaaEvY6PPJauTtR
         Ib8348qrzDqHlFww+0dJFy2sYDHEO7lAoGvOFJWGbl5gjXMMaK06MpG3iQZr3PGQxaoB
         By1VolwLGsxPITYNRDim6+i+8gGKrAjdnUmPfqoqYfZ8vW84gPLSLmAqtifXOzgrMaRG
         ZGIFKkLPu5cs6lu9GDeiH1s1bc+63/XpwdefrSP1mp0g95vEDVV/9FL5iwpBPDCWVU68
         ugH44vrxAzY2coopoUspUqsVhzxcJuviYMfoibulrlmPOa+ImxDVM10ziQG4npyqFitS
         NP/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language;
        bh=Zn1D8wN9xYb6nKWC/SgyvlyA/TVufEXxLhQCL+8aZ24=;
        b=L4OwuRkkyh/kXGIbaG7E5PHzf+JKGKFIdsPYQJ5/vqbce4LI+JE7AYDKbZD2jo5iJh
         7o5AU1haBH91wFdQRTgkaA/Ts158jIPyykLYh/YIn+ub8mybGCA9WTmXa1Myskq5DKm0
         J4brEOmPTIcri5Xmuax+s9vVi/jHFJ3fRPZXYaAcUxsGwHs/W6XkIbrHSHCUj58nffSL
         9czeXOpSDoj5v0cdixKZYpP0y/b9gxSh3bX5+Uz5m1mVwj5YdlCLRN50D07mAJBfCsCa
         xvyzNYonYJXNmwBrPhZepF5nHp5oVkflXcB+pK7hUehVXbt7vdnjusJxXKIWLD5Acfsj
         ih5Q==
X-Gm-Message-State: AGi0PubeSE4DyI6I9Ub/ZDlBYj+IwesHU4xxiGEkyCt2p9RKuAL/ZT1B
	z056mIvkEvBElf6K/AUR8vn2oZnfzEH8NQ==
X-Google-Smtp-Source: APiQypJ0ZZEAXtTPEk0YlQZHmArHF+CfVTDWDCSmeNKpDoDVSqkSdSrANhYZZIpVNLJHlpgPWLPyDw==
X-Received: by 2002:a37:e214:: with SMTP id g20mr20834064qki.374.1587476592525;
        Tue, 21 Apr 2020 06:43:12 -0700 (PDT)
Return-Path: <drew.moseley@northern.tech>
Received: from [192.168.7.36] ([24.214.86.237])
        by smtp.gmail.com with ESMTPSA id o6sm1748066qkj.126.2020.04.21.06.43.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 06:43:11 -0700 (PDT)
To: yocto@lists.yoctoproject.org
From: "Drew Moseley" <drew.moseley@northern.tech>
Subject: Building XFS images
Message-ID: <1dce445e-1744-a50e-94c6-8e8d632ecafd@northern.tech>
Date: Tue, 21 Apr 2020 09:43:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
X-Groupsio-MsgNum: 49195
Content-Type: multipart/mixed;
 boundary="------------D481995DB591B4A699006C7A"
Content-Language: en-US

--------------D481995DB591B4A699006C7A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

I'm attempting to add image type support for XFS images.  The utils are
in meta-filesystems and seem to work just fine.  However, mkfs.xfs does
not have the ability to add files into an image as it is created, which
the other mkfs.* utilities do.  Outside of bitbake builds, I can
obviously just loopback mount and copy using sudo to ensure ownership,
etc is preserved.  It doesn't look like pseudo/fakeroot support mounting
images and the copying with ownership.  Is there a mechanism to do this?


Drew



--------------D481995DB591B4A699006C7A
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=ibDG
-----END PGP PUBLIC KEY BLOCK-----

--------------D481995DB591B4A699006C7A--
