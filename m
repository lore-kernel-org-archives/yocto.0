Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
 by mx.groups.io with SMTP id smtpd.web11.11300.1629035785106573400
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 06:56:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BkH+hLya;
 spf=pass (domain: gmail.com, ip: 209.85.221.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f171.google.com with SMTP id j196so1919639vkj.2
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 06:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=47dmp5oP6mqCCADMiQwE7JbDWIuFssNQrG0dXbm3XAg=;
        b=BkH+hLyaCtXagYMokDdwsaM0zzkWYjWD4I2vwihF7QD+/3dX5AHbZ+H8YJkXRFFntU
         5Cj4ulUKPfRS8vU271QtHG1KXhVMvl7f9YOhtZpF35oXsJMPmP+Mvnz1yEs35X3Mo11x
         w+sGIJnslzrKqljkRU7Ey4Fs47t2ajLHBXGw8x45PWv4Z2X7CSo4CWQKV2jiQN2W4r7T
         IY82/4FELSAP4flRr7PtVktMamaDbQBttZ3xCM6hPZ3RhMXTqFZVkmL5kbp2oJr2sZ3s
         XekUH8kWX8ctvrzrq6dYjziAq1IJys70mBNnFo8ny8EhGnUZeqZ8pK7Dx/2E1d0CcroI
         8r/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=47dmp5oP6mqCCADMiQwE7JbDWIuFssNQrG0dXbm3XAg=;
        b=oLQlTT4iSdIOu4qpvdUQl4y9/jDKtqwPlURVo9vUVbalCbOyLvg3T5+vMIeHkrFdMG
         Oxu3Lt+2cvdLYvLbmiak2fEZRbPRXByeSvoqrqHj0cOtzoC3bLMoOxKphJ+4pG8Rf3WY
         RYk7fO/SZrKFXg12QB/nEPKDXQunuaLVPCgxpCtMPGwEFD7Sz6PkVuXV3Ed34QlAChyk
         xwxo9u+AHAiZKxjolT//KbQC6XtCxVAxmXFKFM+TxcLojFHs5O3yu+U1qBOw4X+sfup3
         arlfFTc2dtajc2eOjRMqme/VjafJqaLFJm3LNRoARClKHs25Ob8+oDL6cIU37HVsqJkW
         NaFg==
X-Gm-Message-State: AOAM533AGXpHdujUwqXAH6ILpO2MJX6bzNCOIFGp2ulB+XQLtOOoRpQn
	6qQVXo1p8MogaJqWufZ9Eu2C3/Njfxe5LUKcNkc=
X-Google-Smtp-Source: ABdhPJzKUPjMyctTT9yyayzJK52TUlgCLzYwU6pHAIK2FBZZMcdzbLydFJXgVWDG8LOwjQ7nDe8hDp8pysDP4AkYJ3A=
X-Received: by 2002:a1f:2c88:: with SMTP id s130mr6906513vks.0.1629035784285;
 Sun, 15 Aug 2021 06:56:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210814085644.19989-1-alex.kanavin@gmail.com> <68996294-9080-5139-4b1f-a7a5ead2d831@gmail.com>
In-Reply-To: <68996294-9080-5139-4b1f-a7a5ead2d831@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 15 Aug 2021 15:56:13 +0200
Message-ID: <CANNYZj9UFac76Y0eErc3enMN9yCL1T85pWVB+BrLkzt7Z+k-0g@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/2] auh-config: enable systemd only for glibc
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003fb10d05c999739d"

--0000000000003fb10d05c999739d
Content-Type: text/plain; charset="UTF-8"

On Sun, 15 Aug 2021 at 03:30, Khem Raj <raj.khem@gmail.com> wrote:

>
> Please report the problems to mailing list and we can try to help if
> they do not work with musl. We do support systemd/musl combination and
> try to keep it working
> this will limit testing this combination.
>

This change is prompted by the recent period where musl patches wouldn't
even apply to systemd, which broke half of AUH upgrade attempts.

You need to enable systemd/musl on the autobuilder matrix first, if testing
the feature is a concern.

Alex

--0000000000003fb10d05c999739d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sun, 15 Aug 2021 at 03:30, Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br>
Please report the problems to mailing list and we can try to help if <br>
they do not work with musl. We do support systemd/musl combination and <br>
try to keep it working<br>
this will limit testing this combination.<br></blockquote></div><div class=
=3D"gmail_quote"><br></div><div class=3D"gmail_quote">This change is prompt=
ed by the recent period where musl patches wouldn&#39;t even apply to syste=
md, which broke half of AUH upgrade attempts.</div><div class=3D"gmail_quot=
e"></div><div class=3D"gmail_quote"><div><br></div><div>You need to enable =
systemd/musl on the autobuilder matrix first, if testing the feature is a c=
oncern. </div><div><br></div><div>Alex<br></div></div></div>

--0000000000003fb10d05c999739d--
