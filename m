Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web10.3454.1588062580705474989
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 01:29:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=livDhdMs;
 spf=pass (domain: blade-group.com, ip: 209.85.210.52, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ot1-f52.google.com with SMTP id z17so31312234oto.4
        for <yocto@lists.yoctoproject.org>; Tue, 28 Apr 2020 01:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PxvBAo4aQED3pjT4XGW1UwIaVDpmi9iHsebz/joVym0=;
        b=livDhdMsHcr8vAdozDb0vRPvBTh508OmwcPFd1ddV3jL8Ps46W1I4i7LeMPlXhZZ0u
         y/8LfeVrtzClbEWJrT0YOaEWFS/JCcarlkLFliFc5D7Q+/vYR3KNfFKKYQOMCAVyfVEZ
         OXJQGE4PQuqrQ9Oy7UziAyQxny4eimZESeKaDKz2RqEcSrmXQlpj9XXXXehlipbVwyvV
         SNloIE/Y8Vitraj2RET3aSD6dSqTtRZesAnJ0PeD91cK9sKZiGI/yJwg37H2yvgtFRxx
         oU+U3fAEDAnpTlm3/XybifEKxyMzJlH+yJpWeL3AtGphLx7GieqX4TZxwJWoTXpC1zOT
         AMtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PxvBAo4aQED3pjT4XGW1UwIaVDpmi9iHsebz/joVym0=;
        b=YvqvR6yZwIIlny/n2mVK/qIUsIcdgiP8vtzV5azXdIY/yUoA1nvMOg2vmE8XwhT1RM
         Rj+H9dqUatz8REXt8Jk1rcglKzFkW95Bj+DmID6IM8rQECbmw19IPaytvtgexTP7zTue
         gxIrYEfMOK28XuZfNXfEvuU7p9MPCAMYErPTGgNSsmnRQ8tb7E+RL6Ni/bvW6Cz34nsA
         oteXYNiy5QlMxvPy+2Tr0CroBL4mUBMMV38lFH0z5RayYc5HcSx483CfbT3HV/1WCy85
         Fmqm2BAft+4G3WKyACdbr1IxZZNNODldTITse6b/baPppOYA91TvoesnU0qqOJCnELr3
         owiw==
X-Gm-Message-State: AGi0Pub+gNSO9p6ZXi+luphX3+cHsA+xUc4v4yz9aEoEftP1FRxaJDI2
	izFdUnIrEXNgjGX0e9rqOBu/5dzQKy9IBRXmN3trqeFybFCe8Q==
X-Google-Smtp-Source: APiQypI9D7HUIbIhTAsB7t6TGw37umYE2pRYhSVba6TTVwxIy+xpbFENh1pGtyIWAIkw9yy2NYzZEJVz6Ma9Tk29b04=
X-Received: by 2002:a9d:2dc1:: with SMTP id g59mr2887362otb.288.1588062579791;
 Tue, 28 Apr 2020 01:29:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSKre4hC8m=tdiavFSO1GbetceQy-jbWg0kzrMFK7QBSg@mail.gmail.com>
In-Reply-To: <CAA=hcWSKre4hC8m=tdiavFSO1GbetceQy-jbWg0kzrMFK7QBSg@mail.gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Tue, 28 Apr 2020 10:29:28 +0200
Message-ID: <CA+4=imaKgPkYgm-ks8jh0LnTmqovRrMuesXV0RsEmtWs4fmPHQ@mail.gmail.com>
Subject: Re: [yocto] Which recipe for Linux tools to run u-boot command inside Linux?
To: yocto@lists.yoctoproject.org
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f32abb05a455a13f"

--000000000000f32abb05a455a13f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

It depends on the yocto version.  Since dunfell they are in
libubootenv-bin, before that they were in u-boot-fw-utils.

Le mar. 28 avr. 2020 =C3=A0 10:04, JH <jupiter.hce@gmail.com> a =C3=A9crit=
 :

> Hi,
>
> I was told you can run u-boot command inside of Linux, which recipe
> can be used in Yocto for install that package?
>
> Thank you.
>
> Kind regards,
>
> - jh
>
>
> --
> "A man can fail many times, but he isn't a failure until he begins to
> blame somebody else."
> -- John Burroughs
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--000000000000f32abb05a455a13f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>It depends on the yoc=
to version.=C2=A0 Since dunfell they are in libubootenv-bin, before that th=
ey were in u-boot-fw-utils.</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 28 avr. 2020 =C3=A0=C2=A010:0=
4, JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a=
>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi,<br>
<br>
I was told you can run u-boot command inside of Linux, which recipe<br>
can be used in Yocto for install that package?<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jh<br>
<br>
<br>
-- <br>
&quot;A man can fail many times, but he isn&#39;t a failure until he begin=
s to<br>
blame somebody else.&quot;<br>
-- John Burroughs<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" ta=
rget=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=
=3D"http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></=
div>

--000000000000f32abb05a455a13f--
