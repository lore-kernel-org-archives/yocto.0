Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 273BAC02183
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 04:45:46 +0000 (UTC)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
 by mx.groups.io with SMTP id smtpd.web11.14204.1736916341897056006
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 20:45:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Sn3nap0U;
 spf=pass (domain: gmail.com, ip: 209.85.166.174, mailfrom: chuckwolber@gmail.com)
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3ce6b289e43so26474785ab.3
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 20:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736916341; x=1737521141; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nRsXqokxSDZR92x4XTDcENEawO/qeDH27lBZBJQRiu4=;
        b=Sn3nap0UV3wlrI3JnnOpUI64hPsSa6cX7a9yjWKuOBdefvLBEziAbcBAQkpJlJ4cNT
         H2xZEJmZ5AhGRawUE91ofXpVHuqOWXTDW7DQU5jQ31ylaUmCu+XLHCP3mveDDwv5VtIh
         or2qJX0hRRvVRyGcVNe8eK7EKbxxk6VWSRdNif71WABCRUcbD19tGrwFZJH2+5Cj7fMq
         XzmQ+L6GtkA7qxnKg1QrHr41RtJU2OKnJlkfHSFgYJfXJ4jUSotVV+2llsAdT68qqp2F
         Ar+VbvUP9AszSXTnRmaynGqc2Z9MFsmY4vs+8E1IzxKBvygyLeQnjbplUfgFD3apMI2g
         86CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736916341; x=1737521141;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nRsXqokxSDZR92x4XTDcENEawO/qeDH27lBZBJQRiu4=;
        b=cH5O5hJTgXY/M2IgqNzJTMN/KfNdSQlvV9qjqcw9FWOOjQXNAWQHOYJpW7dhqLko6l
         8y3zmxL5g6glpLEh9sLn5WbpcNEvmVtxprG0Yw+2iidHz5Fnc2HDoLumXEKdF8A5fJek
         OKBVIZH0Hw1ctLkx/HUzVZ/6GFFEAGw1gJt49PoCmtzD7VmGjGU51DzbIjeh6KLINsFi
         MAoBET0fcdGLCMIOPWxIgHbGFkz8mN4Ixq+jrz4Qi9MML4Y2KZEWf9333nmgdaqUIpo/
         HhnJ4tmnLk0JpLI8+wjyllZ2nkth/KUmhftczb4tHO8awBtrjPDRIBgwCbpOoiII0IUQ
         ENDQ==
X-Gm-Message-State: AOJu0Yxc5bFXn0Aa4kg+Tn9fx1xsi9TwhGummOu1Vu9KhBPf3jkcxkoS
	nKN3Ub8YvHfeyhEIVRBewbEQJVeHdR2fz3UVGLJ5WgBpjQPl/H2qLb827rGTWo8fazKHyg5Crol
	VfBNdGz735CztTVlVl/RS/xHF7xPOVA==
X-Gm-Gg: ASbGncvXz7Y2UCZYKZp5nTyfg8Z/vrD1yKoPhpjITJ/1oldiA1e+U/4y7TGcAcizlR/
	ouC+NUuZ/+EWf2+fWgZgvemfuI0SIs4yZSNcdTowcZN78/5xQycSGfxufkthXmsY+K9pYew==
X-Google-Smtp-Source: AGHT+IHTKSeiiwXpNSlkpUjEG+i3LVbmPMcTOMMNCpU+3uMzH3QWjz6XGgL5JRH0EQpJesKSiXBUFzvQohJkN6mM+ZI=
X-Received: by 2002:a05:6e02:1fc7:b0:3ce:7968:ead0 with SMTP id
 e9e14a558f8ab-3ce7968eba7mr77474855ab.18.1736916340771; Tue, 14 Jan 2025
 20:45:40 -0800 (PST)
MIME-Version: 1.0
References: <jPRi.1736916185149826561.kkVl@lists.yoctoproject.org>
In-Reply-To: <jPRi.1736916185149826561.kkVl@lists.yoctoproject.org>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Tue, 14 Jan 2025 20:45:30 -0800
X-Gm-Features: AbW1kvYuA8xg_JzKiFvQNtAFRTqtyJnbhj0WjzfYz11nM33zlwDK7wwtXpMNHPg
Message-ID: <CAB=6tBSXDvWEfgXbecM5=+w-f79ajoF0U6CXPQxAaZ_mQpCZOg@mail.gmail.com>
Subject: Re: [yocto] Scarthgap
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
Content-Type: multipart/alternative; boundary="0000000000007f1611062bb7591f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 04:45:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64552

--0000000000007f1611062bb7591f
Content-Type: text/plain; charset="UTF-8"

On Tue, Jan 14, 2025 at 20:43 ganesh.manoj.mahajan via
lists.yoctoproject.org <ganesh.manoj.mahajan=
signify.com@lists.yoctoproject.org> wrote:

> I want to upgrade my yocto version from dunfell to scarthgap-5.0.5, can i
> do it directly or need to upgrade to each version in between  dunfell &
> scarthgap?
>


You can do it directly.

..Ch:W..

>

--0000000000007f1611062bb7591f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>On Tue, Jan 14, 2025 at 20:43 ganesh.manoj.mahajan via <a href=3D"http=
://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ganesh.manoj.maha=
jan=3D<a href=3D"mailto:signify.com@lists.yoctoproject.org">signify.com@lis=
ts.yoctoproject.org</a>&gt; wrote:<br></div><div><div class=3D"gmail_quote =
gmail_quote_container"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:=
1ex;border-left-color:rgb(204,204,204)" dir=3D"auto"><div><span style=3D"fo=
nt-family:&quot;Source Sans Pro&quot;,Helvetica,sans-serif;font-size:15.12p=
x;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:left;text-indent:0px;text-=
transform:none;word-spacing:0px;white-space:pre-wrap;text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline!important;b=
ackground-color:rgb(255,255,255);color:rgb(34,35,31)">I want to upgrade my =
yocto version from dunfell to scarthgap-5.0.5, can i do it directly or need=
 to upgrade to each version in between=C2=A0 dunfell &amp; scarthgap?</span=
></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div=
><div dir=3D"auto">You can do it directly.</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">..Ch:W..</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;pad=
ding-left:1ex;border-left-color:rgb(204,204,204)" dir=3D"auto"><div dir=3D"=
auto"><span style=3D"font-family:&quot;Source Sans Pro&quot;,Helvetica,sans=
-serif;font-size:15.12px;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:lef=
t;text-indent:0px;text-transform:none;word-spacing:0px;white-space:pre-wrap=
;text-decoration-style:initial;text-decoration-color:initial;float:none;dis=
play:inline!important;background-color:rgb(255,255,255);color:rgb(34,35,31)=
"></span></div>
</blockquote></div></div>

--0000000000007f1611062bb7591f--

