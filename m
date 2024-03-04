Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AB5C5478C
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 15:42:30 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.102162.1709566942042519245
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 07:42:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20230601.gappssmtp.com header.s=20230601 header.b=CCeFLlSC;
 spf=pass (domain: ibeeto.com, ip: 209.85.214.179, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1dcc7f4717fso46226625ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 07:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20230601.gappssmtp.com; s=20230601; t=1709566941; x=1710171741; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0hNzxuI5IimnD+94zgOlMv+isI9PHvHDTehWZIRSvgQ=;
        b=CCeFLlSCE9sABp8g5Bruky+aVMJaqZEZLyOvwUlz2QXqbS6fmDqukVXy67QU94dUkC
         OD3zWebzK1VicsO+3M5H4RIEV7pSUzIJ2LrijQYBU772C+TZtnbOrA+dclUwMDe3W4Wt
         9pgP+X4Q8obvapdS+e9V2i/g7ttjeX7eiDqhue+fVbcanzbgVEbenP0TB7gRg7D6UGBK
         zsd9yF2tNfXo9PkJYQjsBJ7RzBM3C1CYVhY1pNvGIxnNnH/5+zJUPhzsFAbCuy4XrI++
         tr58m9CXwZfsn9Q+3GeGJtGWbiOkkqhTdrDl7X1AAIXqKMieUU3S7ZQRpJoYaN8zAPL3
         H1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709566941; x=1710171741;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0hNzxuI5IimnD+94zgOlMv+isI9PHvHDTehWZIRSvgQ=;
        b=KAqgNSTXbHJlDNuNmw+lua5tMw3OzlEcYJXpAmsf6oq/ACiYXHtqFqtS6ZF2j/08fo
         NEnn6mOtLwpUC87AO53SXG2AFiIfW/SwHpCmkxazn7Vc2vDcS8oeRqWGp5D1kUdYzLA/
         Dj/xN5AoO1aAQpLU0z8WN7ukCZAGo5av/stE21mDLCDU62HMvJpRYUAaAEnpyQ0v+d8L
         qkI2sjNM3hTG9xLJlLHspioLNEM18ESrAUT5yQNvtU4vIs07fLL1Kg45dnokiIKIEHFa
         RJICqh/zgbcjf/o6GD7MgHMueiZyklt2nTTbx9EoLA0Juv/U4vZOKW+hMSyGTQmUEW8G
         c4yw==
X-Gm-Message-State: AOJu0YzYKAJkty9gwvWtEW9z8VijSsnEOcJrba8L6AwPKHoBGbzweQet
	MK/nBVv9gSLsidR6u0DN4pQoMEtapr+0btnyH25I7CG7YT6qC5q0YtkXUsJ9iv6o8G5AD4cms8O
	d
X-Google-Smtp-Source: AGHT+IFA+EiCZYYwfXtvVTltpkRtBEujJ1dWQk/RxaIV1m5IbU8BhAVD9Qj/iprnYk2T6ie5t6++6g==
X-Received: by 2002:a17:902:64d7:b0:1db:65a3:e17f with SMTP id y23-20020a17090264d700b001db65a3e17fmr10539766pli.6.1709566940152;
        Mon, 04 Mar 2024 07:42:20 -0800 (PST)
Received: from ?IPV6:2600:8801:8d00:d804:cd39:5769:28bb:21e2? ([2600:8801:8d00:d804:cd39:5769:28bb:21e2])
        by smtp.gmail.com with ESMTPSA id im15-20020a170902bb0f00b001db5c8202a4sm8801072plb.59.2024.03.04.07.42.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 07:42:19 -0800 (PST)
Message-ID: <f71d1245-7db7-4e22-bd3a-d31006d7f054@ibeeto.com>
Date: Mon, 4 Mar 2024 07:42:18 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Bundling an image artifacts into another image
Content-Language: en-US
To: yocto@lists.yoctoproject.org, lorenzo.arena@powersoft.com
References: <sH98.1709546292003941347.n1Jf@lists.yoctoproject.org>
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
In-Reply-To: <sH98.1709546292003941347.n1Jf@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 15:42:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62671


On 3/4/24 01:58, lorenzo.arena via lists.yoctoproject.org wrote:
> I'm currently trying to set up a production system for a board based 
> on the Raspberry Pi CM4. I'd like to be able to build a kernel with 
> bundled initramfs which allows me to flash the on-board eMMC; such 
> "flasher" image however should include the artifacts of another image 
> (which would be the "real" image, so the output wic and bmap files). 
> Is there a way to do this? I can build this two things separately but 
> I'd like a single build step which allows me to get the full "flasher" 
> image
Yes, that is possible. I have done it many times. Create any scripts, 
systemd service files etc. you need to automatically install the image 
to the eMMC with recipe, create a recipe to install your previously 
build system image, create a minimal root file system to contain the 
necessary artifacts.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62660): https://lists.yoctoproject.org/g/yocto/message/62660
> Mute This Topic: https://lists.yoctoproject.org/mt/104719133/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [rudolf.streif@ibeeto.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
Rudolf J Streif
CEO/CTO
1.855.442.3386


