Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web12.4271.1574929963693667018
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 00:32:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iwuNtFSn;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: aj.ci.01.239@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id e28so3331013ljo.9
        for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2019 00:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=4BOQ46eoJQAmZnzcHlMCdz01LNHw21uDxApvbD8Vnf4=;
        b=iwuNtFSnP32Dn1kcBQMEbFyCbw1FPUS2DkW2fYmQ2o5ZCXWtJvdRTO4FC8CplpKv38
         Ztf6e5AUNpvM6Hse7bUrCxwcVJ5O/6MtsrAjtUtvcVUbAVmKlkQPLJC/TRaOEMY4oL06
         Rq0IMehq4plJFvpU9ysHu5DUqQSH83JqNFK9LDVMRTfWsJ82CRBiSMWtcMfJ5hLZzfKF
         iT1XSSlduGB0Lp9UcXWTVyMUbrCisTVt7YRGtiseKWVVkUJedto4fjm7QSANN30tPeCL
         RU2Znr4cQTqSYSD2kgBUI7lEmxQoVl66SI5UxFQMy1OePxE5AdhfCKuFyDT/rsg6jfd8
         9HFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=4BOQ46eoJQAmZnzcHlMCdz01LNHw21uDxApvbD8Vnf4=;
        b=MSDXqRaQf8AqEoqJA+T2fuo6O1fSOQMfp66AvUMBXjK1YAntVZq6ergcpp7TrIl6t5
         0HDuZfEvrwNbA/iMa5WUV2APKoLrjszWHmAb/4n7xh3Hc97ItzRafPuvGPnbU/GocjGa
         x/z+dOukyxGlffjKD6ZP0/4DY3KDqVxl6VfXo4dBa1BT+A5hZZQHws8UkQ5mugnPKpa6
         Wk8piW4o5Iny/+MoJsOIzDSTijnEA0poPLWNQciswb5DyW0ZqSDKqa/0hrwWZGiGGUdQ
         QKJwEB0UtSW8DEYEaemQnqYvGCfkfk0BCxxDw5UbiWD8YG3wdZZJE/DtD1wxk+BOcQAM
         fapw==
X-Gm-Message-State: APjAAAUT9gVG6MhVGv13o5f4BTt4tTKhyvbEUgUpTR5/KVPwsEhBTzvh
	smEdyJqRUe+gyfOLIEtu337wAZUU3Lq7UtRnehY1uAo=
X-Google-Smtp-Source: APXvYqxLARBjzei2jLlqQxJjLxoO3/3baTTTPVLALDlYUmfuhKcMCdyX4kj6+y3xLLPznEXwRTJYaAm4xvt8C48xSxI=
X-Received: by 2002:a2e:9a41:: with SMTP id k1mr7821320ljj.235.1574929961340;
 Thu, 28 Nov 2019 00:32:41 -0800 (PST)
MIME-Version: 1.0
References: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
In-Reply-To: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
From: "Aj Cit" <aj.ci.01.239@gmail.com>
Date: Thu, 28 Nov 2019 14:02:29 +0530
Message-ID: <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com>
Subject: Re: Yocto Image Build for NXP i.MX8M
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e45351059863f447"

--000000000000e45351059863f447
Content-Type: text/plain; charset="UTF-8"

I've followed the instruction from the yocto project:
https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctoprojectqs.html


till the bitbake command. However, I'm getting the following error:
ERROR:  OE-core's config sanity checker detected a potential
misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Do not use Bitbake as root.


On Thu, Nov 28, 2019 at 12:29 PM Aj Cit <aj.ci.01.239@gmail.com> wrote:

> Hello,
>
> I'm trying to build a Yocto image for NXP i.MX8M (4 core 64-bit A53s). I
> am getting some error when I execute the bitmake command.
>
> I'd appreciate if you could guide me with next steps. Any Guide or url
> will be helpful.
>
> Thanks
> Ajith
>

--000000000000e45351059863f447
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>I&#39;ve followed the instruction from the yocto =
project:</div><div><a href=3D"https://www.yoctoproject.org/docs/3.0/brief-y=
octoprojectqs/brief-yoctoprojectqs.html">https://www.yoctoproject.org/docs/=
3.0/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a>=C2=A0</div><div><br>=
</div><div>till the bitbake command. However, I&#39;m getting the following=
 error:</div><div><span style=3D"color:rgb(255,0,0)">ERROR: =C2=A0OE-core&#=
39;s config sanity checker detected a potential misconfiguration.</span><br=
 style=3D"color:rgb(255,0,0)"><span style=3D"color:rgb(255,0,0)">=C2=A0 =C2=
=A0 Either fix the cause of this error or at your own risk disable the chec=
ker (see sanity.conf).</span><br style=3D"color:rgb(255,0,0)"><span style=
=3D"color:rgb(255,0,0)">=C2=A0 =C2=A0 Following is the list of potential pr=
oblems / advisories:</span><br style=3D"color:rgb(255,0,0)"><br style=3D"co=
lor:rgb(255,0,0)"><span style=3D"color:rgb(255,0,0)">=C2=A0 =C2=A0 Do not u=
se Bitbake as root.</span>=C2=A0=C2=A0<br></div><div>=C2=A0<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Nov 28, 2019 at 12:29 PM Aj Cit &lt;<a href=3D"mailto:aj.ci.01.239@gmail.=
com">aj.ci.01.239@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br></div><div>I&#39=
;m trying to build a Yocto image for NXP i.MX8M (4 core 64-bit A53s). I am =
getting some error when I execute the bitmake command.</div><div><br></div>=
<div>I&#39;d appreciate if you could guide me with next steps. Any Guide or=
 url will be=C2=A0helpful.</div><div><br></div><div>Thanks</div><div>Ajith<=
/div></div>
</blockquote></div>

--000000000000e45351059863f447--
