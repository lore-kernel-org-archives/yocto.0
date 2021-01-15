Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web12.620.1610748319232700183
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jan 2021 14:05:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=ZX27K47P;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.179, mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f179.google.com with SMTP id 186so13239884qkj.3
        for <yocto@lists.yoctoproject.org>; Fri, 15 Jan 2021 14:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZbPyxUoc59/UhEjs5SFitimJuUKUaLeuQKhZpJpmqAc=;
        b=ZX27K47Pid/0gcP0sZC8WqoMAAjHcwdFJh+usGiaPM4EEOlHgYs8RpJI58xzpia0Yp
         b1u+JLe2+tPIElqTe2O3dW5b7kR1nh6XJBUn/R1C4voZYhuDfQ9UNdimpH9mNZQIUbhc
         HDZpI+mWwdPplD4gvDXry8kcE5A7BPo/CwI84KxlzSJDNlIVasu4Z5y3+twwdmKgIrWo
         b5fKpY5aTPFIW90NDmR+u3mVoG1gVL3Z8MNMPtEE6bl/1EC8rdvs4lnBACDVkyrG3i8X
         uUupp791lNxOFUNM7OenvyBqXOlRcaQZKIjNqBoI+3iDUdi4+Ll6TFpNViMaZZ1pKiOf
         8VhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZbPyxUoc59/UhEjs5SFitimJuUKUaLeuQKhZpJpmqAc=;
        b=rpzRM/nbQpZvTl7quF+nm6vWdyy4ejhgkz+pG2boDzAt5MsMDjDiMo5HHb6DSI9a2a
         Imd5DIDVpvyhmpuNuI/bMDKP8mmHNjsMTGV0UF3eus+gLf9IpYPgtEYu+Px337qRPOkg
         zbHY+JtfKYS80MuzLL56VPblU3E/3lafkyapkywnVM3/BONNmyPPasPTxdWx5xr0CBM0
         b/EJjNXdHQ4HKp0xDJoCnHwEX+5p+VjvJdQbIawwBzGzPH3m/XVh/jHkgm6lG0qy4Rp6
         o0xf8ASE9tcqsFwgzsi+mTLHAzHEVx7UzP26ylgXscR3qXPrEmxL8yjQ6ec+NYUwYb4G
         7ZlQ==
X-Gm-Message-State: AOAM533XhjX5KxqQNYT7aCkNJ9kRL3/WlUV1HcD85eow5xv0n/s1958g
	/XuzU+GxLZOmOWAZ2Ux8ek7A9pMmHuM9dhyvOHar6w==
X-Google-Smtp-Source: ABdhPJwYz/FxpbLgRMfUaH6dCqBQW1wzQOuVQbV9tJPKfbZHSM7Vd5GEDbimTJX2i/305FCQrVyt6l6YozL8fpvIDqU=
X-Received: by 2002:a37:9b95:: with SMTP id d143mr14264847qke.215.1610748318234;
 Fri, 15 Jan 2021 14:05:18 -0800 (PST)
MIME-Version: 1.0
References: <CAOqi=Cu3t04-UnFFUoCCeKcPS+c02Y=+pwo5o-SKGoWbGo9VZg@mail.gmail.com>
In-Reply-To: <CAOqi=Cu3t04-UnFFUoCCeKcPS+c02Y=+pwo5o-SKGoWbGo9VZg@mail.gmail.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 15 Jan 2021 23:05:07 +0100
Message-ID: <CAMjhiJiEZiYC_X3rhxC4XyTKei1Ymy4m8czNBsquM_F1jVKvQw@mail.gmail.com>
Subject: Re: [yocto] Can't Build Read-Only RootFS
To: Dave Tucker <theaethereal@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000054d28205b8f79188"

--00000000000054d28205b8f79188
Content-Type: text/plain; charset="UTF-8"

Hello Dave,

On Fri, Jan 15, 2021 at 10:40 PM Dave Tucker <theaethereal@gmail.com> wrote:

> ERROR: core-image-minimal-1.0-r0 do_rootfs: The following packages could
> not be configured offline and rootfs is read-only: ['sysvinit-inittab']
> I've not been able to find any information on this issue and am not sure
> how to proceed.  Could someone please point me in the right direction?
>
> I copied that error report into Google. Maybe you are hitting a similar
case to this?

https://www.yoctoproject.org/pipermail/meta-xilinx/2018-January/003638.html

Regards,

Leon,

--00000000000054d28205b8f79188
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div>Hello Dave,</div><div><br></di=
v><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Jan 15, 2021 at 10:40 PM Dave Tucker &lt;<a href=3D"mailto:theaetherea=
l@gmail.com">theaethereal@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><span style=3D"box-sizi=
ng:inherit;display:flex"><span style=3D"box-sizing:inherit;word-break:break=
-all;margin-left:20px;margin-right:12px"><span style=3D"box-sizing:inherit"=
><span style=3D"box-sizing:inherit"><span style=3D"box-sizing:inherit"></sp=
an></span></span></span></span><div><div style=3D"box-sizing:inherit;overfl=
ow:hidden;width:1992px;height:20px"><div style=3D"box-sizing:inherit;displa=
y:flex;padding:0px 12px;white-space:pre-wrap"><span style=3D"box-sizing:inh=
erit;display:flex"><span style=3D"box-sizing:inherit;word-break:break-all;m=
argin-left:20px;margin-right:12px"><span style=3D"box-sizing:inherit"><span=
 style=3D"box-sizing:inherit"><span style=3D"box-sizing:inherit">ERROR: cor=
e-image-minimal-1.0-r0 do_rootfs: The following packages could not be confi=
gured offline and rootfs is read-only: [&#39;sysvinit-inittab&#39;]
</span></span></span></span><span style=3D"box-sizing:inherit;height:20px;m=
argin-right:25px"><span style=3D"box-sizing:inherit;font-size:0.875rem;disp=
lay:inline-flex;font-family:AzureDevOpsMDL2Assets"></span></span></span></d=
iv></div></div><div>I&#39;ve not been able to find any information
 on this issue and am not sure how to proceed.=C2=A0 Could someone please=
=20
point me in the right direction?</div><div><br></div></div></blockquote><di=
v>I copied that error report into Google. Maybe you are hitting a similar c=
ase to this?<br></div><div><br></div><div><a href=3D"https://www.yoctoproje=
ct.org/pipermail/meta-xilinx/2018-January/003638.html">https://www.yoctopro=
ject.org/pipermail/meta-xilinx/2018-January/003638.html</a><div><div dir=3D=
"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
 style=3D"color:rgb(0,0,0)"><span style=3D"font-family:-webkit-standard;fon=
t-size:medium"></span></div></div></div></div></div></div></div></div><div =
class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Regards,</div><d=
iv class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Leon,<br></di=
v></div></div>

--00000000000054d28205b8f79188--
