Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77471C4332F
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 17:13:55 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.531.1667754831170747404
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 09:13:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MGa32Feg;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id h12so13013005ljg.9
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 09:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TDexkuU2+hAvUXepGIve8RQQ8/JphYuz/h74NOmvF64=;
        b=MGa32Feg75csOT+rpxmtUQItSbP9+LlM8VVjBG0X3jJCNdPQPzZ4yr15oV5KELJhkR
         slQpBHBaoTrWMWibpDR7XcQVhVbz6FJL9GbdrBT5wh7LTzfwBSe9KEuWg0NJNkD7anQ3
         2HU3s7MMttr6+cY/Z128DRjXsK+xE82tHB+WWj23fje47fxrO1tsvCPOFlYwPmXcpqQL
         pHHGXgZP/oeT33NJpUwWaBiZDfKDMO9prt83OJ7ZD6c9mMzuUBZruEk39gbUTBhRuMQz
         S/sXIhV3whZDh8z49cQOVkw3bzoDsxf266RzyEEkh5/RznhxNR5yoktTwf/Wz1SOgOPQ
         bJaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TDexkuU2+hAvUXepGIve8RQQ8/JphYuz/h74NOmvF64=;
        b=yXxsDcDBKgSyI0q69KIgQadCo3h/TyAkf6swi1OBr8G7YI6sCbd+QahevmAeuhK2Sh
         BvUCcvSOR7uEsiAKWWpBtG9PsTW2VbYXPp+BThg90ZDeNGaPHPXtNMQm/NlJ4ybJYj9M
         ufGYoN/VEgjgTU1nyFV4W7yDVfLLWhpxxwXFWMABBiO8BlwAXHRbftEuamFZk4MjiAo5
         z+rcUBm5NdIhPv8bSJw0v6VGcAo/btwXxDSgNtjwFLX8RLEzvHroKvx/lp+Wr4IbSFCC
         ein7As8PXQSLku8Hy/ifsKBIKNcidpgZZ42+S4q08B+fTr2mNHa4i1tV2DHzW/YDkiD9
         gqFA==
X-Gm-Message-State: ACrzQf3sgTD1NkU5FSYBaOaCRBMGY7AegD34p8YiJ9be2z7wZDYmVnjL
	p9BUpxiH/ASp4fQ85zQxsoG7Ni9mT/gnNsQkQ/A=
X-Google-Smtp-Source: AMsMyM5Ru5YOM1Ks0kdOTQ0Mu/k0BKrTC7kYSF4CueC3hpjPEYlR+I52USvxdnk1IU4hDoVPUE8YUO/XIVPJ3qMQaZw=
X-Received: by 2002:a05:651c:23a5:b0:26d:d196:d04 with SMTP id
 bk37-20020a05651c23a500b0026dd1960d04mr4630385ljb.403.1667754829296; Sun, 06
 Nov 2022 09:13:49 -0800 (PST)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi> <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi>
In-Reply-To: <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 6 Nov 2022 18:13:37 +0100
Message-ID: <CANNYZj9cv7XZ69uMxYzt8JRxQgGMUBLfPJyQ2AdC-yy-W7bQqg@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: Mistyron <ron.eggler@mistywest.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 17:13:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58500

On Sun, 6 Nov 2022 at 17:48, Anders Montonen <Anders.Montonen@iki.fi> wrote=
:
> If your project doesn=E2=80=99t have any special requirements about not u=
sing (L)GPLv3-licensed packages, then dropping meta-gplv2 is by far the bes=
t option.
> The dependency on readline comes from Networkmanager=E2=80=99s user inter=
faces (nmcli, nmtui). If you can live without them, disabling them is also =
an alternative.

I can imagine that meta-gpl2 was in fact added in the first place for
exactly that reason. NM is a red hat project, and red hat has no
concerns for those pesky embedded linux needs. There's no
configuration switch to disable readline specifically. I vaguely
remember that in a similar situation I disabled nmcli/tui for the
product images but kept them in developer images.

Updating readline to a gpl3 licensed version is not an option at all,
as it would result in a product that you cannot ship.

Alex

