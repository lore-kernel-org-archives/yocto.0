Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82216C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 02:15:36 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.48386.1698804928684678179
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 19:15:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20230601.gappssmtp.com header.s=20230601 header.b=qK5/UxuH;
 spf=pass (domain: ibeeto.com, ip: 209.85.210.179, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6ba172c5f3dso5678222b3a.0
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 19:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20230601.gappssmtp.com; s=20230601; t=1698804927; x=1699409727; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4vlkSyKqF0eA0xAnrqcaHHfXW4hAgi9OpdR6ESeXuxM=;
        b=qK5/UxuHGt/4Ezevv+OLAaUAdBHMMXyaCHGsT5zjB8I0HtH8cXIPQW5Hwdr6quc1Ug
         sDCJL7zrixxnWSqnNvtlhh6b1CHl85H5RGrdYiDklXEIrx8Q1g6jfXS2EGgJFL3at/D+
         Qj2qm1oejrJBCvtHSekPrIPWN7yQy1Ut+u/GlLkn29T3dR02r0wTvZWQvK8KIWFVDpgF
         jUJO7XvGAPXPZ0LzCnJyGH/0aD2Ydz7256uQ3OfjynObZUQ6rHIFDIgX/v1O/PaqRjWW
         wjem+KM68uDK3zC9m01gtr42dgZt1na+FaJ6TrciAo3l4rvKuFUblpFfJ26L9/+RvGme
         +eNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698804927; x=1699409727;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4vlkSyKqF0eA0xAnrqcaHHfXW4hAgi9OpdR6ESeXuxM=;
        b=SZQxWto8wdye1NRGGmkR8YVVwAwhJObxJfn6hZs9jk64UC7BKqC3Karcr8JDqcUsWI
         yOuLZlKA6uRvRn0xj+vvzpLys33KTu92iHaoisitbFqcGsmiVH5yj8rABCJmG0Ys/CPD
         e7Emqy4Lt+ayhO0XPqt7yWxSFhhgJMfyqXnwuXEogRCSPNwvZwXHH4aq2zzFQsPjy6+1
         vt67GWpUEQib8elFuQxDvH6UeP2X3eO7NQBaKf7dBWDU5l2xtgEit7VM6PMxC35OpAaJ
         tKnT2Ab+M21laSqHHwHfbOYwWEE4ePMXSUjjJJwFwE21cEin19FJQatBRU0AXFqxxaFp
         jOxg==
X-Gm-Message-State: AOJu0YwMN8uGSpSqPNYbB56qayYShoO6Iv3lHh9ZKEKygTX6j9vBR9Ji
	vwe+tiCoudKvCYyUo2WFBglsAvPgeEkSKFbNQrC9CA==
X-Google-Smtp-Source: AGHT+IHXeziWzdV5PWXz4XMtPje+cZxcn4dZAqJMex+h0PK8QCi+Z0xBsW+74w6kbySLPxdx8Dsy1A==
X-Received: by 2002:a05:6a00:1302:b0:690:422f:4f17 with SMTP id j2-20020a056a00130200b00690422f4f17mr13258456pfu.4.1698804926917;
        Tue, 31 Oct 2023 19:15:26 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id i10-20020aa787ca000000b0069337938be8sm251937pfo.110.2023.10.31.19.15.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Oct 2023 19:15:26 -0700 (PDT)
Message-ID: <68139c53-0239-47be-bd72-41fad7c0f5b3@ibeeto.com>
Date: Tue, 31 Oct 2023 19:15:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Subject: Running podman from recipe
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 02:15:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61545

I am trying to run podman to pull images from a registry and repackage 
them using YP Kirkstone.

My build host is Fedora 38 and podman is version 4.7.0

podman is running newuidmap (I wouldn't understand why it does so when 
doing just a 'pull' but that seems to be the case). newuidmap is failing.

I tried two different variants to run podman from a task in the recipe:

do_pull_image() {
     podman --log-level debug pull alpine:latest
}

In this case podman runs newuidmap from build/tmp/hosttools:

| time="2023-11-01T01:49:27Z" level=error msg="running 
`/develop/projects/yocto/build/tmp/hosttools/newuidmap 205598 0 1000 1 1 
100000 65536`: newuidmap: write to uid_map failed: Operation not 
permitted\n"

Checking caps:

$ getcap /develop/projects/yocto/build/tmp/hosttools/newuidmap

has no output, albeit

$ ls -l /develop/projects/yocto/build/tmp/hosttools/newuidmap
lrwxrwxrwx. 1 rstreif rstreif 18 Oct 31 17:36 
/develop/projects/yocto/build/tmp/hosttools/newuidmap -> /usr/bin/newuidmap

Apparently the link does not inherit the caps of the file it points to.


When I use:

do_pull_image() {
     PATH=/usr/bin:${PATH} podman --log-level debug pull alpine:latest
}

| time="2023-11-01T01:50:12Z" level=error msg="running 
`/usr/bin/newuidmap 205783 0 1000 1 1 100000 65536`: newuidmap: write to 
uid_map failed: Operation not permitted\n"

Checking caps:

$ getcap /usr/bin/newuidmap
/usr/bin/newuidmap cap_setuid=ep

which is fine and works when using podman from a shell.

/etc/subuid and /etc/subgid are fine too:

$ cat /etc/subuid
rstreif:100000:65536

$ cat /etc/subgid
rstreif:100000:65536


I am not sure what's going on here and why it wouldn't be possible for 
podman to set it uid map from within a recipe that is run by the user 
who is running bitbake. Maybe someone has an idea?


Thanks,
Rudi



