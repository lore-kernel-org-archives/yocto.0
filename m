Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web12.37252.1585230525588775840
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 06:48:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@izotope.com header.s=google header.b=PjnnCZRO;
 spf=pass (domain: izotope.com, ip: 209.85.221.42, mailfrom: mcampbell@izotope.com)
Received: by mail-wr1-f42.google.com with SMTP id h15so7848132wrx.9
        for <yocto@lists.yoctoproject.org>; Thu, 26 Mar 2020 06:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=izotope.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Sq2Htcc3QX2FR4Vg+S0pXocxtX3LtEGa7JxOCb/WJgQ=;
        b=PjnnCZROQ+WxjAT3uB1Lw5zBLGV/HYRJoh9ZUos6inMJwmnp/xCZl6CfSsB3PEd2JH
         BxRntdFaXzsqFTHb0ENnf2ufxW0ToCyZ7W/ly/mEovTcI8Wm1oH3OeBhJNLnpYN4pXVn
         CJO4pAVtRXB7BBKptYEFR6SziE0F+oLr/+rOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Sq2Htcc3QX2FR4Vg+S0pXocxtX3LtEGa7JxOCb/WJgQ=;
        b=Z2e2wVxr+tELuDDfoq4qeA8tEHEnrFHjj9rQjj88vMtihGXi/rfXE2BEvextY3K2I3
         3ET8p4od6GKyROZqU2pNx+mJ05D+YI+oisJj7NZgkiXNQU1L2AmmVShTrYon44tQUmK/
         IwjyCmxlhkI8klTuTOwWICtmc9+nKD1XMizofWTYwdU4WNOTiGj5j7ksv7Qfmrd/okez
         aPtPjGP/qCRR9DTIfwA7I2B7BVbdnTsqy7/Xnhh+VmNA3Idjk57nuRhxxktl87jZ9M+X
         TEmwgRD1miq9YgLD8DPS4fdNTtX760Dvmz3XFB7UgjYUfAdx0BtWj5hdfObJzKnHuhov
         1UCQ==
X-Gm-Message-State: ANhLgQ0qJGRgKfc8tZ6NR+CTTb0pVZCx7Ok/0EQM0SlSpIkkPLv6BIS/
	twuJw3DD+26mieku26VlYxuLnC08KiT6HJzgVYeVHszwZM5EzA==
X-Google-Smtp-Source: ADFU+vsKFldTy6Kf/53zdXjT1/+0iOj9KSE1Ui1bxZ0MX7D6SNIjQ0xOQqAdDCKvRtaQEZg4C64QENs0aYhMgXTXqaU=
X-Received: by 2002:adf:fd44:: with SMTP id h4mr7127157wrs.177.1585230523610;
 Thu, 26 Mar 2020 06:48:43 -0700 (PDT)
MIME-Version: 1.0
From: "Matt Campbell" <Mcampbell@izotope.com>
Date: Thu, 26 Mar 2020 09:48:32 -0400
Message-ID: <CAMDowVVL9L=ScNR49vG3fnHCTiYHsp2OHLi2xTZWE-gvetDWmw@mail.gmail.com>
Subject: Best way to mask bbappends based on Poky version to have a layer support multiple versions of Poky?
To: yocto@lists.yoctoproject.org
Cc: Huzefa Mandviwala <hmandviwala@izotope.com>
Content-Type: multipart/alternative; boundary="0000000000003f4b9a05a1c23e9b"

--0000000000003f4b9a05a1c23e9b
Content-Type: text/plain; charset="UTF-8"

HI All,

We have a layer where we want to concurrently support two releases of Poky.
There is an issue when we have bbappnds against recipes that have
different versions in the two poky releases. for instance, imagine recipe
foo that is version 1.0 in Zeus and 1.2 in Dunfell. If we had a bbappend in
our layer `foo_1.0.bbappend` and tried to use our layer with Dunfell,
bitbake will error out saying that `foo_1.0.bbappend` has no base recipe.

The question is: how do we dynamically hide that bbappend only from
Dunfell? Or, why is what we are trying to do not really the right

I found BBFILES_DYNAMIC which is _alomst_ what we want, but only allows
filtering based on the presence of another layer, not the version of Poky.

Right now we've got a solution using Python inline variable substitution to
set BBMASK conditionally based on the poky version. (Side note: it looks
like you can't do anonymous Python in the layer.conf file which I couldn't
find any documentation about).

# Things to mask from zeus
BBMASK += "${@ ' '.join([ \

'meta-izo-modus/recipes-devtools/libedit/libedit_20180525-3.1.bbappend', \
        'meta-izo-modus/recipes-devtools/lua/lua_5.3.4.bbappend', \

'meta-izo-modus/recipes-extended/logrotate/logrotate_3.14.0.bbappend', \
        'meta-izo-modus/recipes-kernel/linux/linux-yocto_4.18.bbappend', \
    ]) if d.getVar('LAYERSERIES_CORENAMES') == 'zeus' else ''}"

This isn't the cleanest, but it does work.

I'm really curious if there Is there a more canonical and clean way of
achieving what we are going for here.

Thanks in advance,
~Matt
-- 
Matthew Campbell
Senior Embedded Systems Engineer
mcampbell@izotope.com

iZotope, Inc.
www.izotope.com

--0000000000003f4b9a05a1c23e9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI All,<div><br></div><div>We have a layer where we want t=
o concurrently support two releases of Poky. There is an issue when we have=
=C2=A0bbappnds=C2=A0against recipes that have different=C2=A0versions in th=
e two poky releases. for instance, imagine recipe foo that is version 1.0 i=
n Zeus and 1.2 in Dunfell. If we had a bbappend in our layer `foo_1.0.bbapp=
end` and tried to use our layer with Dunfell, bitbake will error out saying=
 that `foo_1.0.bbappend` has no base recipe.</div><div><br></div><div>The q=
uestion is: how do we dynamically=C2=A0hide that bbappend only from Dunfell=
? Or, why is what we are trying to do not really the right=C2=A0</div><div>=
<br></div><div>I found=C2=A0BBFILES_DYNAMIC which is _alomst_ what we want,=
 but only allows filtering based on the presence=C2=A0of another=C2=A0layer=
, not the version of Poky.</div><div><br></div><div>Right now we&#39;ve got=
 a solution using Python inline variable substitution to set BBMASK conditi=
onally=C2=A0based on the poky version. (Side note: it looks like you can&#3=
9;t do anonymous=C2=A0Python in the layer.conf file which I couldn&#39;t fi=
nd any documentation about).</div><div><br></div><div># Things to mask from=
 zeus<br>BBMASK +=3D &quot;${@ &#39; &#39;.join([ \<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 &#39;meta-izo-modus/recipes-devtools/libedit/libedit_20180525-3.1.b=
bappend&#39;, \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;meta-izo-modus/recipes-=
devtools/lua/lua_5.3.4.bbappend&#39;, \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;meta-izo-modus/recipes-extended/logrotate/logrotate_3.14.0.bbappend&#39;, =
\<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;meta-izo-modus/recipes-kernel/linux/l=
inux-yocto_4.18.bbappend&#39;, \<br>=C2=A0 =C2=A0 ]) if d.getVar(&#39;LAYER=
SERIES_CORENAMES&#39;) =3D=3D &#39;zeus&#39; else &#39;&#39;}&quot;<br clea=
r=3D"all"><div><br></div><div>This isn&#39;t the cleanest, but it does work=
.</div><div><br></div><div>I&#39;m really curious if there Is there a more=
=C2=A0canonical and clean way of achieving what we are going for here.</div=
><div><br></div><div>Thanks in advance,</div><div>~Matt</div>-- <br><div di=
r=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr">Matthew Campbell<div>Senior Embedded Systems Engineer</div><di=
v><a href=3D"mailto:mcampbell@izotope.com" target=3D"_blank">mcampbell@izot=
ope.com</a></div><div><br></div><div>iZotope, Inc.</div><div><a href=3D"htt=
p://www.izotope.com" target=3D"_blank">www.izotope.com</a></div></div></div=
></div></div>

--0000000000003f4b9a05a1c23e9b--
