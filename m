Return-Path: <tnatanan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D556EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 16:42:18 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web11.16572.1687452134767572773
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 09:42:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=So64kZT9;
 spf=pass (domain: gmail.com, ip: 209.85.222.43, mailfrom: tnatanan@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-791c27bb91dso610570241.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 09:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687452133; x=1690044133;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V4isRI+C+qpQMxTfsqWI6jWLwcO4UztcRshPvEWHOMY=;
        b=So64kZT9N9ontVqVmRFYccCa4VMrqGwi3c6zCPbkBfdt9yRLUMxy9DjkoYCvr2ZAVf
         UX7HzslxJZmcST/uoaU0Z+u/LxX47oINNnbNoK1/Tv/UnKiRO+f4dFjC7+h/ayZw3+R5
         lAI5QNf+ysLFdaPMWJNFXAGFTuLfDoREj6h6ctK0iBbdZt8xcEHy2vL0VLXN5GoFdj0z
         uwT+mPfjIfj/hUj/9KDBh3hB3CIgvp2BLNVeMtx7NKt11juwEkykAKfjzbQCS63rhtE+
         GvveLxffaa0MXnPIvLeBNMbmVRqzXkB2QTIPTQNqVsnc+/hh1gX+SBGO7zxeEmOLr6BY
         Huvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687452133; x=1690044133;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V4isRI+C+qpQMxTfsqWI6jWLwcO4UztcRshPvEWHOMY=;
        b=NTAvATquU10VM86kH6TrYmEYfvvf8GOzJlPQPr6wQUj3xqiZKkjnj5mutuxtdNNX6q
         VcYkri5cTUlLKaHIvtBeALaKdR7/Pl14e67mVV5kopOH70dxFdiOUSjLnKuLG9P8tx0H
         i/uzbBQZGf+NY+tJ7uVxKJ2MQx9DAxqfnwyXfILEL9oKxpYIx1MtQN8JcwmVHhpHXlY/
         6VreukFes1OzMWau4Tx9aEePE6RAZ66swZ4iVa002ly26mWQZO70sZRtqiQLsKTcWcZb
         Xvrk6G9P8jQmkLdtUuHe910ou8mHfVIV8kVjY+J9fTzaqJ0ttnhsRC4/SYioxgOIWiF2
         k3Ww==
X-Gm-Message-State: AC+VfDy3/SayLBTaDiLwbKRmiNG5uDjVnnulcr/Xg9blM8sjNGLUUvv8
	Hck7n4LwpDUOOYad0Rv/EiQb0S9cNJr2xLPJXCq+g0MOhMI=
X-Google-Smtp-Source: ACHHUZ6CSfU1siv7ZxFNueMxBECj+tE3zQhQEOksuBelq/p8MDzE+sX3YjddXFCdy8Q9SpgpM3M3J78IHwUGqQHvfts=
X-Received: by 2002:a05:6102:238f:b0:440:92b0:b640 with SMTP id
 v15-20020a056102238f00b0044092b0b640mr4589219vsr.14.1687452133607; Thu, 22
 Jun 2023 09:42:13 -0700 (PDT)
MIME-Version: 1.0
From: Natanan Tirasukvongsa <tnatanan@gmail.com>
Date: Thu, 22 Jun 2023 23:42:03 +0700
Message-ID: <CAPoeDCY0r1L93=Ygfq7f+TCUiW9x5iib9TqV27jY9jLLtMptsA@mail.gmail.com>
Subject: Ask for help
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ffcec205feba90c9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 16:42:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60407

--000000000000ffcec205feba90c9
Content-Type: text/plain; charset="UTF-8"

Dear YOCTO Project Team,

I would like to ask about the YOCTO version. I am a beginner developer.
Now, I use Ubuntu 22.04 LTS and Raspberry Pi 4. Which YOCTO version is
compatible (if it has long term support, it's good!!) ?

Sincerely yours,
Natanan

--000000000000ffcec205feba90c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto" style=3D""><span style=3D"font-size:12.=
8px">Dear YOCTO</span><font color=3D"#202122"><span style=3D"font-size:12.7=
px;background-color:rgb(248,249,250)">=C2=A0Project Team,</span></font></di=
v><span style=3D"color:rgb(51,51,51);font-size:14px"><div><br></div>I would=
 like to ask about the YOCTO version. I am a beginner developer. Now, I use=
 Ubuntu 22.04 LTS and Raspberry Pi 4. Which YOCTO version is=C2=A0</span><s=
pan style=3D"font-size:12.8px">compatible</span><span style=3D"color:rgb(51=
,51,51);font-size:14px">=C2=A0(if it has long term support, it&#39;s good!!=
) ?</span><br style=3D"font-size:12.8px"><div dir=3D"auto" style=3D"font-si=
ze:12.8px"><br></div><div dir=3D"auto" style=3D"font-size:12.8px">Sincerely=
 yours,</div><div dir=3D"auto" style=3D"font-size:12.8px">Natanan</div></di=
v>

--000000000000ffcec205feba90c9--

