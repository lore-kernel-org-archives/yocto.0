Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE799CCD199
	for <webhook@archiver.kernel.org>; Fri, 17 Oct 2025 22:46:34 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.5414.1760741189220728018
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Oct 2025 15:46:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20230601.gappssmtp.com header.s=20230601 header.b=h5/qTmrZ;
 spf=pass (domain: ibeeto.com, ip: 209.85.214.174, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-290c2b6a6c2so19721045ad.1
        for <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 15:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20230601.gappssmtp.com; s=20230601; t=1760741188; x=1761345988; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=G2g+p0lqSyRfCsjWPclp3kOvI7WziRgenWWXtLRjdVM=;
        b=h5/qTmrZ+fB3yUVaTRT5qLhgGyMy4vEYk7n4NqO6TYRtzDTsvql/b7Oo6MgYL82nC9
         BvoyLnIV1vfNHEburOP91ad2nb+0+px6Fh+D471TKMqWxFJG0zEZHdpqvtpH6QoWrj+o
         Jx7jX2UaPrrH47Pu8zclMnyQu4bMJ3di5KZ/PWyJRXDz+2KxB00Ogr7dByViuXdsS8Oq
         7MrL9pKwqz4TXYRkD6DCtsFhSNc7mc1ET414V1yQ8cE19FOAni/DI/RG+TetpI7mHIn5
         HKze272TXDl68u4i1WK/dbu6MXlhOoCfnw7BDga53lQg2LsjesMW8F/25YsXnfRws9qr
         aBLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760741188; x=1761345988;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G2g+p0lqSyRfCsjWPclp3kOvI7WziRgenWWXtLRjdVM=;
        b=n4rh1PgkXsrfubnroLAZYGUE3e471Zxiox7yeEyiKhu4wEgg1EgOWP/L2uENA/c1gd
         fISmrNYANDth6fu56WS6emh+rcEihxYZ40jE/UGYNPzgriW91f9Z+Y8sVg0vqfjL/+Lw
         cQ/CMqucT7GwrLFBQMhHRUkjGn5OaAgLixpjZea0MxmtThcNsHvXmgZf/ruup1CE+Qr/
         W9Sy3/GZBTkM3xkIjZjQbsWz720RXKXsOV/Vifnx0TAblA0rBkVSBXwfg9BCOOAAUtgO
         zha6azqXbJ9eTkUzeY88DMuXZtF8myOWql5+TH7rS7ZVEPHSmD9zfSOzk9IaDZ3p9QYW
         B7PA==
X-Gm-Message-State: AOJu0YzEDEb3hpxLeg0bC0BuXUQNcoBCyMBXqt4Mn42TMSLcyjVDJVnV
	nRHKsnBuwJO5NS3Pi8Ns74W6Zuq+G9uuFydMI/vjZLT816qPlGI3Efnd7G+ti9esCjTcolJz8aT
	QJ/twDV4=
X-Gm-Gg: ASbGncuGjgF7b0BDl+wi8IvbjgI/3SB6Al52uNtzQbNCihVoaTdmly9RgEtkffIUiYt
	4kM3XVPYjBHd8xQbkHhIYBEV1xgEYaokHlIU1oknXXEcx2+5LUKkLHnIi48nJazgPsKUrjlSIfH
	AYHFD6q4t/csX//yhD3kgwHdvsoluPipukcdCtVv16yRlashoW0VmRYcGi0IzkvUW8+hTRPGVQi
	oONXCCC2aCHiI7DW5extlYm6FISuRUm5bQ/XrApIYPscLlYoUw96WD1BKflFo5m2eLJ9nObxu86
	OKjD0TGOrru8++0fH9wEjx41W7mSTWLrV1fnNnK9JW17NS7WTnws9pqsotBwv4LHB6ALTlooRtM
	77yE/gGEKm1r28zkEy6HhtZM7/Rw8uq++/LNfm9BLy6UE6qEuA4QhLf+3IRQ7//fQuJTPnsDTAp
	4X418x8LRoRRWOl92GZ+Jk6t5xZD8V3N3zM1bbu3NX4dxqqyM46sZDxQma4OSH1pPxsgtI
X-Google-Smtp-Source: AGHT+IHQyGGmVTKvlZFWlcMZAf7DSx8E86cWxWmQXDDRlK6RMtXTrtol7XZcpVG/0KV1/qmd17DRYA==
X-Received: by 2002:a17:902:d501:b0:28e:7fce:667e with SMTP id d9443c01a7336-290c9cbc6d2mr75791955ad.17.1760741187981;
        Fri, 17 Oct 2025 15:46:27 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d18:7704:3e2d:8a15:4ac7:6ed8? ([2600:8801:8d18:7704:3e2d:8a15:4ac7:6ed8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246fd7675sm6429715ad.26.2025.10.17.15.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 15:46:27 -0700 (PDT)
Message-ID: <bc34e5fa-52a4-4183-92be-649be7cae3c9@ibeeto.com>
Date: Fri, 17 Oct 2025 15:46:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Find the cause of a hash mismatch
To: yocto@lists.yoctoproject.org, joerg.sommer@navimatix.de
References: <7utrehskj27ezeuntfbceonitdthhgpcefbavn5djcq26axbtu@d4t2npburtu7>
Content-Language: en-US
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAHNKlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvzsBNBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
In-Reply-To: <7utrehskj27ezeuntfbceonitdthhgpcefbavn5djcq26axbtu@d4t2npburtu7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Oct 2025 22:46:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65952

Hello Joerg,

On 10/17/25 1:19 PM, Jörg Sommer via lists.yoctoproject.org wrote:
> Hello,
>
> I have the problem that Bitbake tells me
>
> ERROR: When reparsing /build/…/hcpu-image.bb:do_rootfs, the basehash value changed from fdd865f9c6dc6cafdb8bf9889cfe2299fc8aa4fd2de39156556ae539fad55430 to 72b5f3ee3ec9d16cf4d1ac67cc445577778893044d0fa7de6072ccfd0cc3b11d. The metadata is not deterministic and this needs to be fixed.
> ERROR: The following commands may help:
> ERROR: $ bitbake hcpu-image -cdo_rootfs -Snone
> ERROR: Then:
> ERROR: $ bitbake hcpu-image -cdo_rootfs -Sprintdiff
>
> When I try this I get many messages like this
>
> ERROR: Bitbake's cached basehash does not match the one we just generated (/build/…/hcpu-image.bb:do_rootfs)!
> ERROR: The mismatched hashes were fdd865f9c6dc6cafdb8bf9889cfe2299fc8aa4fd2de39156556ae539fad55430 and 72b5f3ee3ec9d16cf4d1ac67cc445577778893044d0fa7de6072ccfd0cc3b11d
> ERROR: Taskhash mismatch f30533c7b6414e9bce8ae48a1c4a1bc426f6731b67ff4e840d0ffa25c931039d versus a85ef1dc5e75a38df2c8474316532ca315be6e2ef0977c466d74b0e2a9190718 for /build/…/hcpu-image.bb:do_rootfs
> Writing locked sigs to /build/locked-sigs.inc

It probably happens inside of this file locked-sigs.inc you are 
including with the image recipe. It probably does some operations that 
assigns variable data e.g. dates, times, etc. to a Bitbake variable. 
That would change the signature hash of the recipes meta data.

[...]
> How can I track down the cause of the hash mismatch? Any help is
> appreciated, because this problem persists and it drives my crazy.
>
>
> Thanks in advance, Jörg
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65951): https://lists.yoctoproject.org/g/yocto/message/65951
> Mute This Topic: https://lists.yoctoproject.org/mt/115814322/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [rudolf.streif@ibeeto.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
Rudolf J Streif
CEO/CTO
1.855.442.3386


