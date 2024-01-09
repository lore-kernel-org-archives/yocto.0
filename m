Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5793EC46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 12:04:00 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.14889.1704801834650679009
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jan 2024 04:03:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DI2zBfNp;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: hassanchattarki@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50e7abe4be4so3527704e87.2
        for <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 04:03:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704801832; x=1705406632; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nbi41hegzq25zMRpXKgAjeZV+x6kTAXQt5iCCvUtC00=;
        b=DI2zBfNpNLVqv3PDMU0LA37NFUFIPRb3wV0FuBy2AAalIhQ7vS4nhTWfjGFp7Xy/A6
         8XmCowqwhD7/Guwhf3otgHooB6+b2PifSJrQaE1BjFewm9XnCNMVxOri6HFioSi2bXAv
         VeSMGjPo4W7RCpWQu4ZyCaA0UjEGfvV14Gz0Mo/CMOvM+9eiBx3b3Wl11cfVP+J28gRt
         SxE2KWdotYxNOThhs2NLCBiz7UgmanKmsaaMmADC6jK6Np06v2RqXXBeOkxk7/U279UT
         5klNTVNnYWngtVvkHwo9XxzxID8+f7Q10o0hUxmJ6FdZwF3Lmtlfe/ODNWXR2QVFr5ft
         LsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704801832; x=1705406632;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nbi41hegzq25zMRpXKgAjeZV+x6kTAXQt5iCCvUtC00=;
        b=KJNTrNeedCypuDcrPXrMfBrLcIq7FWP5OhAm0tgJbcFcC6CqDVY2Mt43dS6cmQzjdX
         ladyPbqr9/0qk9/pdf5X9h2eIEZxUFmbZc2P6X3xzrIvZFNf1a1Ggod80MGzShy60Imo
         eg0fo1FLPab49ywQO7D3s498OJrJ4p5jehBx/7uT0ZjLW3Y5LjAh2GF4ymTdYEVolDum
         bl04RpllGOC8zAdN5ze24RfbOc1FOCpkXpHpmODn5THXYmJPDD1ywBSjpCRDzCnObZQ9
         v6Uf5R2qVczsFLysFViTe73nsTg81hgQ9ywkSjSvdIPph0wP7qEXXUuiNhgr3A6wsgn/
         KKuQ==
X-Gm-Message-State: AOJu0YyB9COZWTqsmLAxKP4+RsNL18QSjcNLh8qAH3BOEIi70audBiy8
	JYmkrXKwh+eefNpdX68Pswp4QE8g6woPJB27jYXY1LohzgY=
X-Google-Smtp-Source: AGHT+IFBg9+m1uW6kLccoovg9xqdY6gPxCmsuyTHrWxOqTHNIMPiNH71XBy04g5MNOuwPmU1EfaHmd58jOLhA/juL/M=
X-Received: by 2002:a05:6512:98b:b0:50e:a859:1423 with SMTP id
 w11-20020a056512098b00b0050ea8591423mr2167473lft.91.1704801831921; Tue, 09
 Jan 2024 04:03:51 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Tue, 9 Jan 2024 17:33:40 +0530
Message-ID: <CAPJWBni=AhRSKRT5NjSyirmm6e8y5497XKjBJUfE+MAXv9yfxg@mail.gmail.com>
Subject: Menuconfig saving erased after bitbake clean
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009aabb6060e821b13"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 12:04:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62117

--0000000000009aabb6060e821b13
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I open menuconfig and add/remove some features, save and exit.
If I build using "bitbake linux-meson" the built image has all the features.
However If I use "bitbake linux-meson -c clean && bitbake linux-meson" ,
then all the menuconfig modifications are erased and the default
configuration is built.
What to do.


Thanks
Hassan

--0000000000009aabb6060e821b13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I open menuconfig and add/remove some fea=
tures, save and exit.</div><div>If I build using &quot;bitbake linux-meson&=
quot; the built image has all the features.</div><div>However If I use &quo=
t;bitbake linux-meson -c clean &amp;&amp; bitbake linux-meson&quot; , then =
all the menuconfig modifications are erased and the default configuration i=
s built.=C2=A0</div><div>What to do.</div><div><br></div><div><br></div><di=
v>Thanks</div><div>Hassan</div></div>

--0000000000009aabb6060e821b13--

