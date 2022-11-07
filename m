Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FCCDC4332F
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 08:28:20 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web09.1219.1667809683987245557
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Nov 2022 00:28:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZLPlwpkv;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id j16so15680052lfe.12
        for <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 00:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jRYIviHL5uTT/dxPsXGqHZ2j3w6+ZQCtEhAC6qCT+JE=;
        b=ZLPlwpkvGzeufUTgbOs/WScxF9JEZV4JAm3kPuU9uTXo2hHYAcjvlLQcpISi77dPAg
         64hXDKIPn8M8Wa/MwkybV8wJ9xW+jP7Ah+PDc4oK6tbY6jo029hhyxZ76mRbdC7XJauf
         ibUlS2JDEVdj4hF29AujJXD9l8uhDG4mXZlp4t9z70SWgCDXGi+0karYrKMSqwDPFxhh
         quUV6n5VD1GgVQdxGXY+zDMFHh+lJz6dOcUD0WLfR+MhZGRi2srdYeUCYKJ5QvhhK1rd
         dQ7PZugF6Vg6XITK1igPI49cWUYHHM0Rtali6kqLej+/H0BXsirYmxCjiRO9TIMWJK4r
         ZRQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jRYIviHL5uTT/dxPsXGqHZ2j3w6+ZQCtEhAC6qCT+JE=;
        b=CiIqfTK+4ZOKCbcPi44kxyb4FARhyrUjtMbRcQv0GYZ8ciaN9AO8n4xl93DsIDMyC3
         C49i88xIhKx4GtS2YxwTr0IjG9npUxi8FhdKpDmengbPK0b9N77m5jPiRNFp+6azIMdn
         6ZsICXGzCu6X4YpvVQfHeLqdEhxn8/RGaIzcMx7k0kmFLdNN9Whp4OjEK007YL8yCLgM
         fu0yl7ycbS9Nwm8yttnaT2Lf5F7sfXJ0pZB4WDw1snlHrQyaQKV4Rm8uKct6dXSHM4ty
         heLV3ZQ/9w8Y80WfN7CU59CGRSW6sgWZWxcgW5D7qbANEd54RB9y5ZGPCt5jt47oBtsJ
         dcWQ==
X-Gm-Message-State: ACrzQf3MgEpfzHSdPE7Yx0cLracD499OSrlC/IBow9h2Hykq+E7W5P4f
	lsi5Eq2hM604sRyGubDvAVIXTRBO9PhhNT+CY94=
X-Google-Smtp-Source: AMsMyM4TR+y9UgUjmpkxnj7fkdsLE1u0b9FGHfJKUjb1ubC63Nfmy7NbLb0jguuhecOUxE9iwMTiv/A016T2CWemqkk=
X-Received: by 2002:a05:6512:230b:b0:4a9:39f4:5793 with SMTP id
 o11-20020a056512230b00b004a939f45793mr358094lfu.131.1667809682078; Mon, 07
 Nov 2022 00:28:02 -0800 (PST)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi> <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi> <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
 <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com> <29069143-19cf-3d00-4c13-a031f61c02d4@mistywest.com>
In-Reply-To: <29069143-19cf-3d00-4c13-a031f61c02d4@mistywest.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Nov 2022 09:27:50 +0100
Message-ID: <CANNYZj8Kn7bL8Mk5QdF4tbVyK_7SGUwPAYbs2XqjkAbrpn8Twg@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Ron Eggler <ron.eggler@mistywest.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 08:28:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58509

On Mon, 7 Nov 2022 at 02:35, Ron Eggler <ron.eggler@mistywest.com> wrote:
> > Are you going to ship what you're working on to other users, or is it
> > just experimentation?
> The intent is, that's it's going to be shipped (but with full access to
> the sources)

If you're shipping anything that is under gplv3 you also need to give
the recipient users a possibility to change the item under gplv3 from
the source code you have used to build it and install their modified
version to replace yours.

Are you able to fulfil that obligation you have under the license?

Alex

