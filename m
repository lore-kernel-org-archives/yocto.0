Return-Path: <mausvt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7EAC433EF
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 13:11:00 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com
 [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web08.6324.1648559459846515348
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 06:11:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UzA3LXqM;
 spf=pass (domain: gmail.com, ip: 209.85.219.182, mailfrom: mausvt@gmail.com)
Received: by mail-yb1-f182.google.com with SMTP id y38so28810314ybi.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 06:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=1HaRi/P50SA9E3dyKHYPsHOu9mVLxNLY9yBL5NUURtY=;
        b=UzA3LXqMc7h+mAlfYDrYV44kB1hJYWA/Zx91hbnGi0egzDaOyj/of9P/jSjrlmHoea
         x96Ogr7l3wB7vMn683Hie2X5XQGDnPOCYX59cKj7WQh7/VVMFU69JYZpmamrk1RKgUOk
         HdLurwVle/YIB10VblyJ6Zgr2yy4Mn04o3m1/FFQ+Y1GOEPcf9I2Cyu+jwj67OPvNWIm
         aPFsgKx00z1x69zwsUOg62FluIfP1Cp4kVVSbP6B6WQIrAlTXqXOzbDcZxnGDUY+O6t8
         7kex5sirtV3Y2Uw2mr6HjZ5M8mTmmXcC/6nnk/bDvSgnlRlk5FQch55Qc2DjqX5kIk3Z
         JFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1HaRi/P50SA9E3dyKHYPsHOu9mVLxNLY9yBL5NUURtY=;
        b=LKPksFi+SI6+M9FZwDX6LkWqETDhE2XPxfb8702J94lRm8tEvi4mzVFOZJQ1qsFXJ3
         2d5R+Uda+w6OQxM/hItHvsAXfJq9JGmC+A6h5Kf34UIOH1a+wkAm+bea7FQHVqjWGUCW
         DR1Vzauv18OcfOvRJ0rDe4C7IkNg6r03cUMguD2InXDAaV0Y4S13g0VFyU/0Ia6e+1qr
         vGNCXevnGehOqDncZpSTR/GPSNNlXukq8nBDrsD3jt39z11wJZtnfuxbGflggAyNhszR
         qz0fO4uTF+B/PKu1KJRtA5fmx20oQWFvFCEvdz6yoY8efgBgbhmR5gsaTJEMopvGlheh
         IdjQ==
X-Gm-Message-State: AOAM5321X9TzMNFXjvg3s1EihBZnpBI4EhOWsFZAaE7YmfLKHzzeK+lX
	hlgFKFA+WVTHxNBFc06fI34brGzjNDxxFp5T453iYMNVnmoETQ==
X-Google-Smtp-Source: 
 ABdhPJz0S1f57PtXwESUZm82uh15xeg0wX8XSsG4TXFM2QmolkdEeaywv9b0gTiZ2wo0mWg0Y3qxtrfg4Em398mJaII=
X-Received: by 2002:a25:3757:0:b0:633:8752:5612 with SMTP id
 e84-20020a253757000000b0063387525612mr26565341yba.135.1648559458652; Tue, 29
 Mar 2022 06:10:58 -0700 (PDT)
MIME-Version: 1.0
From: Mike Ulan <mausvt@gmail.com>
Date: Tue, 29 Mar 2022 17:10:47 +0400
Message-ID: 
 <CAFWETVK+Q10Fby6WH75FAobmeSc7Sr7ZKuh1mvsuBjgaFisOwQ@mail.gmail.com>
Subject: Yocto poky/meta/recipes-devtool/perl
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ec939a05db5b2876"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 13:11:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56577

--000000000000ec939a05db5b2876
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have the question: is anybody aware that patches in a recipe are not
fully applied?

When retrieved the archive for package unpacked.
=D0=90ttributes of multiple files are set as readonly.

For 5.30.1 https://www.cpan.org/src/5.0/perl-${PV}.tar.gz;name=3Dperl
or for 5.22.1 and 5.22 and 5.20 http://www.cpan.org/src/5.0/${BP}.tar.xz
lots of read only files in archives.

Form  man of Patch behavior --read-only=3Dwarn by default.
So files to be patched with read only attributes remain unchanged.

For override patch default behavior on --read-only, i placed in
poky/bitbake/bin file with name patch and content:
#!/bin/sh
/usr/bin/patch --read-only=3Dfail "$@"
exvar=3D$?
echo "patch wraper readonly fail" "$@"
perror $exvar
exit $exvar

And as a clearly predictable result, the build of perl failed.
To fix problem and apply all patches and particularly my patch to backport
issue for my host environment
I added to perl_${PV}.bb recipe this:
do_patch_prepend() {
    os.system('chmod -R +rw %s' % d.getVar('S'))
}

--000000000000ec939a05db5b2876
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div>I have the question:=C2=A0is anybody=C2=A0aw=
are that patches in a=C2=A0recipe are not fully applied?<div><div><br></div=
><div><div>When retrieved the archive for package=C2=A0unpacked.=C2=A0</div=
><div>=D0=90ttributes of multiple files are set as readonly.=C2=A0=C2=A0</d=
iv><div><br></div><div><div>For 5.30.1=C2=A0<a href=3D"https://www.cpan.org=
/src/5.0/perl-$%7BPV%7D.tar.gz;name=3Dperl" target=3D"_blank">https://www.c=
pan.org/src/5.0/perl-${PV}.tar.gz;name=3Dperl</a>=C2=A0</div><div>or for 5.=
22.1 and 5.22 and 5.20<font color=3D"#000000">=C2=A0<span style=3D"font-siz=
e:13.3333px"><a href=3D"http://www.cpan.org/src/5.0/$%7BBP%7D.tar.xz" targe=
t=3D"_blank">http://www.cpan.org/src/5.0/${BP}.tar.xz</a>=C2=A0</span></fon=
t></div></div><div><font color=3D"#000000"><span style=3D"font-size:13.3333=
px">lots of read only files in=C2=A0archives.</span></font></div><div><span=
 style=3D"background-color:rgb(255,240,240);color:rgb(221,34,0);font-size:1=
3.3333px"><br></span></div><div>Form=C2=A0 man of Patch behavior --read-onl=
y=3Dwarn by default.</div><div>So files to be patched with read only attrib=
utes=C2=A0remain unchanged.<br><div><br></div><div>For override patch defau=
lt=C2=A0behavior on --read-only, i placed in poky/bitbake/bin file with nam=
e patch and content:</div><div>#!/bin/sh<br>/usr/bin/patch --read-only=3Dfa=
il &quot;$@&quot;<br>exvar=3D$?<br>echo &quot;patch wraper=C2=A0readonly=C2=
=A0fail&quot; &quot;$@&quot;<br>perror $exvar<br>exit $exvar<br></div><div>=
<br></div><div>And as a clearly predictable result, the build of perl faile=
d.=C2=A0</div><div>To fix problem and apply all patches and particularly my=
 patch=C2=A0to backport issue for my host environment=C2=A0</div><div>I add=
ed to perl_${PV}.bb recipe this:</div><div>do_patch_prepend() {<br></div><d=
iv>=C2=A0 =C2=A0 os.system(&#39;chmod -R +rw %s&#39; % d.getVar(&#39;S&#39;=
))<br>}<div class=3D"gmail-yj6qo"></div><div class=3D"gmail-adL"></div><div=
 class=3D"gmail-adL"><br></div></div></div></div></div></div>

--000000000000ec939a05db5b2876--

