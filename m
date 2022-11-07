Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E061C4332F
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 19:16:02 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web08.2111.1667848559493603414
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Nov 2022 11:15:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IBkhV0uW;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id d6so18103048lfs.10
        for <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 11:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E/mEowPn3J70tIZxpf7Gmkf74GdeEpkANfG5SjAtRWM=;
        b=IBkhV0uWmNsQ6htonRYPQx4HjzIbBqoddnI2hzS+12ArSe7sJXR2LizkR2AIqOvoRj
         iCjfG7O4h+aQAbSg9bvKeux1+afkEldgWq071yQ4YDZQWDhQDez+PXQYYspGpQNILeYV
         kIuwrtlu52wrRBwspVY3nIVo2Ll2t/EhcUJW+MOieWyv5CArwu04c8/2cKCy0XXfzhZi
         CKd92ht010Qo1ATh+sPIChredTm1iYwqJPSajgFY5idK4x5xfGcSfR+cFz0eeK/17R3j
         bO9M+p+cbcJQnbsQjsfB+9AKehSSJ9Ddl0SUaCMCXQm93pfeljXwzIDenWmOhDoZh5p/
         qHxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E/mEowPn3J70tIZxpf7Gmkf74GdeEpkANfG5SjAtRWM=;
        b=qDbAvDOuTbSF3F7JlVAEmlukAvEldDnC56MukGUWDEuhDfdz0Z8uiLop5HiUwIJqQb
         sm8tTBSrOZmY44ubX7163qFJM46h4HeiKW44cBQAdr3lXMLDNc+QJjX/e+yTO1UpqkrQ
         EkWyMT7fXf/b87wSfzh9ETSaybpVBuZZylCc+vbIxsrtLE2baKlUkSlQec+awv5XK4qd
         XdX/1bxkNxsxs2kjdTTVZ7p1vtV8OdMGRlTepFkobd2VgyV5GsopllGMV0zty0i9qqWK
         BctaWUesOgnjLoW0Ns49wISfWsx+H9l+gRQgBW8yEOyPJS//BNSwh5JNYFrI6+baIeMb
         cCsQ==
X-Gm-Message-State: ACrzQf3ZZUBxCS/TMGAsiFd8pdLPDRolQlHb90VAKwHS8wKkdBxnyfp8
	NwmXkHlq1UkJvqJyjYDiBeNSNO/uMqLBGmBZaE4=
X-Google-Smtp-Source: AMsMyM7ywxCGr584V1P1LCFF7FsxcAk4MpNn8vw72TSzvGIaJKSYtnfjRKwOzuXbsWoyWeX1OjXXpmsDIRsvc4AYELA=
X-Received: by 2002:ac2:4c8e:0:b0:4a2:7d0d:c7a5 with SMTP id
 d14-20020ac24c8e000000b004a27d0dc7a5mr17831936lfl.367.1667848557588; Mon, 07
 Nov 2022 11:15:57 -0800 (PST)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi> <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi> <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
 <CANNYZj-PtwKFqs+DHCR-CTC86UiVU7p9D=mBNyjG+pes6zeK8g@mail.gmail.com>
 <29069143-19cf-3d00-4c13-a031f61c02d4@mistywest.com> <CANNYZj8Kn7bL8Mk5QdF4tbVyK_7SGUwPAYbs2XqjkAbrpn8Twg@mail.gmail.com>
 <b2693c74-41ba-bbcc-8337-cd2ff343ea8e@mistywest.com> <CANNYZj9WvY-ZM2LSTBcrO5-4FZm99UTMVzOoh=ts-V1HOHs5hQ@mail.gmail.com>
 <30ec3752-bf3c-86e7-a2d9-32d1771ee2f1@mistywest.com>
In-Reply-To: <30ec3752-bf3c-86e7-a2d9-32d1771ee2f1@mistywest.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 7 Nov 2022 20:15:46 +0100
Message-ID: <CANNYZj9GEASMHBfb3py45-sMpcegRMQaPG0Tcf862Ye40D0Mzg@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Ron Eggler <ron.eggler@mistywest.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d073bb05ece64010"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 19:16:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58515

--000000000000d073bb05ece64010
Content-Type: text/plain; charset="UTF-8"

On Mon, 7 Nov 2022 at 18:57, Ron Eggler <ron.eggler@mistywest.com> wrote:

> Exactly, the customer will have full access to the source code incl. the
> complete set of Yocto layers and all.
>

Then your best option is to drop meta-gplv2 layer from builds altogether.
This will update everything to current, compatible versions that are easier
to fix if needed.

Just to be on the safe side, you do need to find out why it was added
though. The reason may still hold.

Alex

--000000000000d073bb05ece64010
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, 7 Nov 2022 at 18:57, Ron Eggler &lt;<a href=3D"mailto:ron.eg=
gler@mistywest.com">ron.eggler@mistywest.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>Exactly, the customer will have full access to the source code incl.
    the complete set of Yocto layers and all.
    </div></blockquote><div><br></div><div>Then your best option is to drop=
 meta-gplv2 layer from builds altogether. This will update everything to cu=
rrent, compatible versions that are easier to fix if needed.</div><div><br>=
</div><div>Just to be on the safe side, you do need to find out why it was =
added though. The reason may still hold.<br></div><div><br></div><div>Alex<=
/div><br></div></div>

--000000000000d073bb05ece64010--

