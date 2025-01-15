Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0472C02185
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 16:33:34 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web11.26127.1736958811106725330
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2025 08:33:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UmOY/xjb;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6dccccd429eso56155006d6.3
        for <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 08:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736958810; x=1737563610; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jws1k6By47LRMJZXQp/mqCOPjA30CbC9yTHnrnkhwKo=;
        b=UmOY/xjbBBqMZKq9AzRyjnUlKNDzBeyr+BGRhe9uP3KzsqT6PNd8NJEfJ7vmjyMQ+Q
         d7ijUWvo8O5jIA6vu2kCdi9r7FRglGGEq2C/vElG8qA9vTymc1NyOV11Zz4sq4DaeEsh
         W6a5SWZS+Hwd6JQqNLDIr5J9G3553k8OOVNC2pDiaoA3UzwmpWQTsPIthh7pxUCsCctn
         /k/1G1OPD//BaK3IoMDJUB3b+VWwNTE5FE7npFetp8Q7FHA8T8MmvkYIpms+E6Bd5V7h
         oM+NBtZQTdNl4N9VT2xzVd9DwCxuUr6uA0/sPgNoAxRk0NLJwNDWiAhf7REnA4Td43Tc
         9VbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736958810; x=1737563610;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jws1k6By47LRMJZXQp/mqCOPjA30CbC9yTHnrnkhwKo=;
        b=rSkZItplzDmdtfFE5MNVgAnUIy2GyNukmGWrgsKXbxCAVDFMBYwCB5Sb/bfzKAFeKk
         XJqlro4b5E5O0aUShRQf8JHcYE8rDMnnfRfZeEUtEWOoM0pDucfBDQ2bT1UXhjrpvR0B
         NOtfwfvps5R8esdT9L3o03IPGQtAGdmRO5SNnCBjoNJtHveEecM0WirRlldtqkZWpfnL
         Jqi/BBKGX4TrGCkVjhGdhFY+u3b3l3A56a2qzU/1NJOwEOM6byfmeUXQ55j5ePpNQbLP
         zRVPdcbwRimE7bY2seneOJtKOo30aprU/qs7DEwJHnmj4g11sCAenzKdf97s0szPF54T
         qrqQ==
X-Gm-Message-State: AOJu0YzysSxTlHoVghsyz2p42vREQOuESKDSMI7yjrUCXQh/EQBoVvTG
	rrSQfTqhv9ww7Xnu68nROtDIHNcbAVCIFU+OYh+mv8X6EXfMWsk/KpCdwUebuL/i2Taoffmw1q0
	z96+ETMylRv98lBk+M3lDrQ04sLo6rdLG
X-Gm-Gg: ASbGncvGdzN85JNtjLphyrYG5dgqNHyNsmlDlx+rA8gJsxKg1msvshAq7vH2+IrOC7e
	gVWl2bDFmW43nobbP9YW0P0tW5NDGIbFWV50Zx5VuE8w7oJe56nUk/WLwuwNzhJo01BbSsEMJ
X-Google-Smtp-Source: AGHT+IGMGDaBmvm34Sf3OdBR4obbSk9p1iUay3RI2jTnJ1dgbTN5+tETXTjBnP6JH/im2k+Om/1NDI4Ymj+7IRuCoQw=
X-Received: by 2002:ad4:5dec:0:b0:6d4:1425:6d2d with SMTP id
 6a1803df08f44-6df9b2d62b2mr439416746d6.43.1736958808684; Wed, 15 Jan 2025
 08:33:28 -0800 (PST)
MIME-Version: 1.0
References: <29326.1736942916869266807@lists.yoctoproject.org> <1047.1736958228437212707@lists.yoctoproject.org>
In-Reply-To: <1047.1736958228437212707@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 Jan 2025 17:33:17 +0100
X-Gm-Features: AbW1kvZgUT0WOZDt5UN_RKRSgClvSp9ZOsjFL53-QtmSfBalQ59AHvIH5oy_98k
Message-ID: <CANNYZj9hFmjRONtY6Gx5fBsp2UsTn3yMzKOn5uhX4UT5LxWp8g@mail.gmail.com>
Subject: Re: [yocto] [HELP]
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 16:33:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64562

This is a bit puzzling. The values seem ok, but the 'if' statement
still evaluates to true.

First, does /home/build/project/meta-eaton/conf/layer.conf exist?

Can you split up the two conditions in the 'if' statement into two
different 'if' statements one after the other and see which one is
evaluated to true?

I'm starting to wonder what shell implementation is being used here.

Alex

On Wed, 15 Jan 2025 at 17:23, Ganesh Mahajan via
lists.yoctoproject.org
<ganesh.manoj.mahajan=signify.com@lists.yoctoproject.org> wrote:
>
> Tried with echo got the vlaues same as expected but still facing same error.
>
>  fi
>     templatesdir=$(python3 -c "import sys; print(sys.argv[1].strip('/').split('/')[-2])" "$TEMPLATECONF")
>     echo "templatdirvalue = $templatesdir , templateconf value = $TEMPLATECONF"
>     if [ "$templatesdir" != templates ] || [ ! -f "$TEMPLATECONF/../../layer.conf" ]; then
>      echo "templateconf value = $TEMPLATECONF"
>         die "TEMPLATECONF value (which is $TEMPLATECONF) must point to meta-some-layer/conf/templates/template-name"
>     fi
>
> build@ubuntu-bionic:~/project$ source meta-eaton/setup-build-env
>
> templatdirvalue = templates , templateconf value = /home/build/project/meta-eaton/conf/templates/template-name
> templateconf value = /home/build/project/meta-eaton/conf/templates/template-name
>
> Error: TEMPLATECONF value (which is /home/build/project/meta-eaton/conf/templates/template-name) must point to meta-some-layer/conf/templates/template-name
> build@ubuntu-bionic:~/project$ cd meta-eaton/conf/templates/template-name/
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64561): https://lists.yoctoproject.org/g/yocto/message/64561
> Mute This Topic: https://lists.yoctoproject.org/mt/110623411/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

