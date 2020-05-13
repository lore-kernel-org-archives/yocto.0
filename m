Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web12.2244.1589360655954373719
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 02:04:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OxMAMiEg;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id s11so9638563vsm.3
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 02:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hXtuZjgaiKcm/ej8rN7sTDA4cdFSZUpLXhTCkiY43Q8=;
        b=OxMAMiEgfc8omQjDg433mt9XyjNtHE00vLn03WwnkkQZd68wgp5N2kXhy5g0CR+W9/
         02DQjIaZx/CUqCAI28ra8IpBzNulaktq45zzYfXi/MnSJKhGkOWZfFC+zP5R5hZu2yhe
         M+KUI//xyRNEDubt1o/wCPm2go5WKhPaxyJiU/DvOpRYFkNAWzjUN9mfjQP2CuoJdwRK
         KOWqyWM68i/wWVh9hK8WUKCXxJhxv5kIiLO7a1ImjREtvw1/3JUdz4IUz3eRQ/d8oGxW
         mYTxSIoNw4Qs6cOtRfXFSBFX8mCu4a7p8TCh0hxwfJ7oYgPNDRo+o8Xnkb6M70WDh62g
         Iqvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hXtuZjgaiKcm/ej8rN7sTDA4cdFSZUpLXhTCkiY43Q8=;
        b=FtcUTPK3aHXGjgYypcOIHfU8BV4NOY+XgZXN63hMznaEp7j38ikGE5qLmghN7oA1LU
         JyLzReNQN6x3EYOBYb+roHyFi5FFUvtGbP1eD2OmNKbgzQCD5XZewJecRE+e0k3sLhqK
         jjrDR+YCVDu8up8Cmh+Gty5Q7+9ExZk7ofsqrvR6Lq6ApbMwTyw00cdnv97d/BxKBVZC
         RKsBPtT2d5pEyCT4snwoo13qjCcLNrZqgrVtBnj4HRHv1zdyaXI2egNDvmSED/6MGYsb
         0uOm/WwjRufPYTqhAxbHJcu05BIrH9FBA2kL9fL2ftepHmhgx9wSDW9AW4M11CYdVhL6
         aQXA==
X-Gm-Message-State: AGi0PuZ4pqvW4GlfNmARClZQmJvkAIGpIYlvGrx9U6+aCX4pmB3EOesI
	zFuCrFkbJFESg0Rt50esPRKzr6UxfBAf8Chyclg=
X-Google-Smtp-Source: APiQypJ/DgwudFfIUrWVFZfbJrQJTRVetQl6kJXDhHfQYkBIfGMen+73XF7WstYHn/yJk9/ofd208dou+rRGFRjDNLo=
X-Received: by 2002:a67:6889:: with SMTP id d131mr19247184vsc.25.1589360655081;
 Wed, 13 May 2020 02:04:15 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv-+Cgkhu2uTdCThYKU+1X2-Js+TYZOKAtpq763_1KT9Tg@mail.gmail.com>
 <CANNYZj-cQ89zKSMDx7OKsxEs0uoa7kFLTT2i0CPzu4uyK240Mg@mail.gmail.com> <CA+FhBv-vE3ycUT27Xamm2txBQe=g73F_aVL4ALjnhO_GiXceaw@mail.gmail.com>
In-Reply-To: <CA+FhBv-vE3ycUT27Xamm2txBQe=g73F_aVL4ALjnhO_GiXceaw@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 13 May 2020 11:03:59 +0200
Message-ID: <CANNYZj8Bd8nt0GFc-OZdB=d07TTnz6T28wYDx3dXtcGFwVZPnA@mail.gmail.com>
Subject: Re: [yocto] pkg_postinst_ontarget not executed
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004423ff05a583dd31"

--0000000000004423ff05a583dd31
Content-Type: text/plain; charset="UTF-8"

Reading recipes-devtools/run-postinsts/run-postinsts/run-postinsts
and_save_postinsts_common (in rootfs.py) once more, it seems
/etc/ipk-postinsts is only used if there is no package manager on the
target.

If there is, then 'opkg configure' is run directly, and so postinsts come
from some internal database. There is some additional magic in rootfs.py to
mark packages with first-boot postinsts as unpacked, so they'll get picked
up by opkg.

Alex

On Wed, 13 May 2020 at 09:33, Damien LEFEVRE <lefevre.da@gmail.com> wrote:

> Thanks Alex,
>
> When I do a factory reset, the system detects as a first boot and the
> script is executed.
>
> > cat /var/log/postinstall.log
> Configuring test-deployment.
>
> One thing which puzzles me: the /etc/ipk-postinsts directory do not exist.
> Not in the image recipe folder, not in the image file which I mount to
> check the content before flashing and of course it's deleted at the end of
> run-postinsts
>
> rootfs.py:
>     def _save_postinsts_common(self, dst_postinst_dir, src_postinst_dir):
>         if bb.utils.contains("IMAGE_FEATURES", "package-management",
>                          True, False, self.d):
>             return
>         num = 0
>         for p in self._get_delayed_postinsts():
>             bb.utils.mkdirhier(dst_postinst_dir)
>
>             if os.path.exists(os.path.join(src_postinst_dir, p +
> ".postinst")):
>                 shutil.copy(os.path.join(src_postinst_dir, p +
> ".postinst"),
>                             os.path.join(dst_postinst_dir, "%03d-%s" %
> (num, p)))
>
>             num += 1
>
>
> package-management is in my image features so I understand nothing get
> written.
>
> So who temporarily creates that /etc/ipk-postinsts?
>
> Thanks,
> -Damien
>
> On Fri, May 8, 2020 at 6:15 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> On Fri, 8 May 2020 at 11:32, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
>>
>>>
>>> If can find the postinst script in
>>> /var/lib/opkg/info/test-deployment.postinst and execute it.
>>>
>>> Since test-deployment is a new package, I would have expected
>>> pkg_postinst_ontarget to be executed
>>>
>>> How is the first boot detected on a poky image? Is there a way to detect
>>> if .postinst scripts haven't been executed?
>>>
>>
>> The scripts to be executed  are written into /etc/rpm|deb|ipk-postinsts/
>> and executed by
>> meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts script
>> (which is started on first boot as a service).
>> Then they get deleted.
>>
>> Alex
>>
>

--0000000000004423ff05a583dd31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Reading recipes-devtools/run-postinsts/run-postinsts/=
run-postinsts and_save_postinsts_common (in rootfs.py) once more, it seems =
/etc/ipk-postinsts is only used if there is no package manager on the targe=
t.</div><div><br></div><div>If there is, then &#39;opkg configure&#39; is r=
un directly, and so postinsts come from some internal database. There is so=
me additional magic in rootfs.py to mark packages with first-boot postinsts=
 as unpacked, so they&#39;ll get picked up by opkg.<br></div><div><br></div=
><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, 13 May 2020 at 09:33, Damien LEFEVRE &lt;<a hre=
f=3D"mailto:lefevre.da@gmail.com">lefevre.da@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Than=
ks Alex,<div><br></div><div>When I do a factory reset, the system detects a=
s a first boot and the script is executed.</div><div><br></div><div>&gt; ca=
t /var/log/postinstall.log</div><div>Configuring test-deployment.<br></div>=
<div><br></div><div>One thing which puzzles me: the /etc/ipk-postinsts dire=
ctory do not exist. Not in the image recipe folder, not in the image file w=
hich I mount to check the content before flashing and of course=C2=A0it&#39=
;s deleted at the end of run-postinsts=C2=A0</div><div><br></div><div>rootf=
s.py:</div><div>=C2=A0 =C2=A0 def _save_postinsts_common(self, dst_postinst=
_dir, src_postinst_dir):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if bb.utils.contain=
s(&quot;IMAGE_FEATURES&quot;, &quot;package-management&quot;,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0True, False, self.d):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 re=
turn<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 num =3D 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 for p in self._get_delayed_postinsts():<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 bb.utils.mkdirhier(dst_postinst_dir)<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exists(os.path.join(src_postinst_dir, p=
 + &quot;.postinst&quot;)):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 shutil.copy(os.path.join(src_postinst_dir, p + &quot;.postins=
t&quot;),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.path.join(dst_postinst_dir, &quot;%0=
3d-%s&quot; % (num, p)))<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 n=
um +=3D 1<br></div><div><br></div><div><br></div><div>package-management is=
 in my image features so I understand nothing get written.<br></div><div><b=
r></div><div>So who temporarily creates that=C2=A0/etc/ipk-postinsts?</div>=
<div><br></div><div>Thanks,</div><div>-Damien</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 8, 2020 at 6=
:15 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" targ=
et=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Fr=
i, 8 May 2020 at 11:32, Damien LEFEVRE &lt;<a href=3D"mailto:lefevre.da@gma=
il.com" target=3D"_blank">lefevre.da@gmail.com</a>&gt; wrote:<br></div><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><br>If can find the postinst script in /var/lib/opkg/info/te=
st-deployment.postinst and execute it.<br><br>Since test-deployment is a ne=
w package, I would have expected pkg_postinst_ontarget to be executed<br><b=
r>How is the first boot detected on a poky image? Is there a way to detect =
if .postinst scripts haven&#39;t been executed?<br></div></blockquote><div>=
<br></div><div>The scripts to be executed=C2=A0 are written into /etc/rpm|d=
eb|ipk-postinsts/ and executed by <br></div><div>meta/recipes-devtools/run-=
postinsts/run-postinsts/run-postinsts script (which is started on first boo=
t as a service).</div><div>Then they get deleted.</div><div><br></div></div=
><div class=3D"gmail_quote">Alex<br></div></div>
</blockquote></div>
</blockquote></div>

--0000000000004423ff05a583dd31--
