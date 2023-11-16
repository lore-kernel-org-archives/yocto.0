Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD07CC197A0
	for <webhook@archiver.kernel.org>; Thu, 16 Nov 2023 23:56:39 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.1103.1700178992070124284
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Nov 2023 15:56:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OCJGUhPm;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-777745f1541so85649885a.0
        for <yocto@lists.yoctoproject.org>; Thu, 16 Nov 2023 15:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700178991; x=1700783791; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nnJy9lhqSpBKeJFbKvM/JgiPuXymvlzyh6WsYuf/qYM=;
        b=OCJGUhPmQxQEg85ghCfz00chi5b4rXE+xkhltFR+obuC/IvZXvJIRQ57TriEX0zkeq
         RRvAlCQUd4u2jCrmFfJqAq0kLOOM6VldQZQs3qb2v51SLs7w/DfSqRqWPJNq+JembGzu
         YhiLB3QDMaSYoLHPPp3yeb5NBzX5VRzco+DCcIWSHs1Z73a7NgCL9WjzIyjZCasCHOGL
         g3afu0VPmucrUzXkV5L5XSyAjxDvwdBnQmnVhG3SKoGAIxLvPpYrIoqgAMJCUsqhkxe6
         UbCIinxz6Vb9MnyRZkvLK3Me/TtTMUv+/8vsYEN0GzRVvI+vHHVw2Dv//Ta303uVwVrw
         xm2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700178991; x=1700783791;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nnJy9lhqSpBKeJFbKvM/JgiPuXymvlzyh6WsYuf/qYM=;
        b=O/sq2VKgjFL8sJbWyLbfUEL68UVCvLIzCxrCW96vtlwoeNc777CAUwZYtRQF0vTAIo
         KWtYSSI4C7z+178b6HnUcpwgWrgVsHjB4M9cEy0hB6l8A43gsO2Gv77fb6cbMc1WGfUb
         kmFNOHCQIw/Abg1YVXozlK2EhqS609i0uRm79KzR8X3r2qM097wkc3fG4S6spk/STegI
         E9kPkyOkkkNaTnLk4A1XWiKvUOzJuZWNiiEJrlUhaHqjNCr6tbg+QY2c7orIlSQd22OO
         QSBN5xRdhuhCtfGUWsjABHVXN828CgLjuw0sD0wqiB5f0K6B/czULtfl7PsZ2U2yEq0Z
         R5iw==
X-Gm-Message-State: AOJu0Yx2WCDLxsHdtYFUD+uJh4eVwE8uMJLdR4n7kC+bE0xPM5gyLBoF
	A5d3G1nTRangUNv93PIjtSQ=
X-Google-Smtp-Source: AGHT+IGc6TOwlSitnD0aWn34pRY4FWFWLc4yJ29u5x7ggEO8uRG2RUQ1rsmd85xCz5GZq2hZsOmNqw==
X-Received: by 2002:a05:620a:4587:b0:77b:9a8c:b0ae with SMTP id bp7-20020a05620a458700b0077b9a8cb0aemr14113289qkb.40.1700178990861;
        Thu, 16 Nov 2023 15:56:30 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id c11-20020a05620a11ab00b00774652483b7sm199213qkk.33.2023.11.16.15.56.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 15:56:29 -0800 (PST)
Date: Thu, 16 Nov 2023 18:56:28 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: anthony.t.davies@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override v3
Message-ID: <20231116235627.GA16939@localhost>
References: <20231003004307.93133-1-anthony.t.davies@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231003004307.93133-1-anthony.t.davies@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Nov 2023 23:56:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61711

On Tue 2023-10-03 @ 11:43:08 AM, anthony.t.davies@gmail.com wrote:
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf
> 
> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> ---
>  conf/machine/include/px30.inc   | 2 +-
>  conf/machine/include/rk3066.inc | 2 +-
>  conf/machine/include/rk3188.inc | 2 +-
>  conf/machine/include/rk3288.inc | 2 +-
>  conf/machine/include/rk3328.inc | 2 +-
>  conf/machine/include/rk3399.inc | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)

Applied, with a couple tweaks, to meta-rockchip, master branch.
Thanks!

