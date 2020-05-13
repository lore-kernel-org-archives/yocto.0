Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web10.1528.1589355188480172744
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 00:33:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eBEOu+Sb;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: lefevre.da@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id y22so3766200qki.3
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 00:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CZpQE7c50+uJHhcueyMUZ6NL+oAg6NG2G8kQ3mIqdM4=;
        b=eBEOu+Sb4NLhzPJgQ6Cf0oz0XP6bdWcQJGx953M7b7raw70cPAtho0QfiC+YN0IJY8
         evTtLBTVSzBfEcO/yaSNaJoNP4gnyK3Ri4TXENfc8n7XwWtvR3KMRVP3zwCGe0eo1G2+
         PhDxYKY7WZmNOWdRY4PY3hzlVs2/1CHOz6gIKiX7EwAuO6AHNraPGN7dAYXTpwkP1a5i
         +ZTdAmHoZVcYos7xkT0Zep9oib8Oua/amaRVjj8oo9iaj2we4LyC7bWSlcp7XqeYU9Wl
         oux86N5/FKHnZ9hlW5FQ+ga0mdRZvwm1xSz9EZfZ1+eQEhD21WZUJ3VaI5oZshoBP0cY
         POXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CZpQE7c50+uJHhcueyMUZ6NL+oAg6NG2G8kQ3mIqdM4=;
        b=GMqHqdm7oC4PHyS4l9Y+tH250G1mmAaWMLdEC+83wHLsgnfYWioHFRmLRx8hXXW5ZM
         +DIOQZ0O0tabsnF+JFCi1BRGRBKPYtUkikZr54R8tYLj1jvWxqcN3kQScQrtU/d832B8
         sVD651a1lqBxSd3Z/OmUwyIKClo/CMxhbf73oCKqQs4SEnaoAJLJibEd/xr0OzCApj1+
         wOTjt7ktfbCkS7ZBveRjbnlXVgcNB6Fi7pIVMXEdVUuqt6HPQ7zTsAsKDHviDbRSlEFq
         PQ9wmVLEjT/Z+J0u5yUnT+XEHosGJNFvsfCENVXQxkgSVhBXLSiRONdxrBSeUbo9y5Lh
         mnlA==
X-Gm-Message-State: AOAM530juqOfzBA1Up5yC4cOa/YkOAL0jWtpjhWX/YmioXgw77BPM4cS
	ca3ltoYC/NucboVQvsoBzWBDDTtdMiNV8hHZQw==
X-Google-Smtp-Source: ABdhPJwE/m33iJdnuQ4Q72lsg+sfsE2n3coyt9QbNSRQtE7pdGQap7NG3Wn10+71McJIqevYwSx6err1rdpFqLDobqY=
X-Received: by 2002:a05:620a:634:: with SMTP id 20mr10490308qkv.15.1589355187629;
 Wed, 13 May 2020 00:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv-+Cgkhu2uTdCThYKU+1X2-Js+TYZOKAtpq763_1KT9Tg@mail.gmail.com>
 <CANNYZj-cQ89zKSMDx7OKsxEs0uoa7kFLTT2i0CPzu4uyK240Mg@mail.gmail.com>
In-Reply-To: <CANNYZj-cQ89zKSMDx7OKsxEs0uoa7kFLTT2i0CPzu4uyK240Mg@mail.gmail.com>
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Wed, 13 May 2020 10:32:56 +0300
Message-ID: <CA+FhBv-vE3ycUT27Xamm2txBQe=g73F_aVL4ALjnhO_GiXceaw@mail.gmail.com>
Subject: Re: [yocto] pkg_postinst_ontarget not executed
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006172af05a58297e3"

--0000000000006172af05a58297e3
Content-Type: text/plain; charset="UTF-8"

Thanks Alex,

When I do a factory reset, the system detects as a first boot and the
script is executed.

> cat /var/log/postinstall.log
Configuring test-deployment.

One thing which puzzles me: the /etc/ipk-postinsts directory do not exist.
Not in the image recipe folder, not in the image file which I mount to
check the content before flashing and of course it's deleted at the end of
run-postinsts

rootfs.py:
    def _save_postinsts_common(self, dst_postinst_dir, src_postinst_dir):
        if bb.utils.contains("IMAGE_FEATURES", "package-management",
                         True, False, self.d):
            return
        num = 0
        for p in self._get_delayed_postinsts():
            bb.utils.mkdirhier(dst_postinst_dir)

            if os.path.exists(os.path.join(src_postinst_dir, p +
".postinst")):
                shutil.copy(os.path.join(src_postinst_dir, p + ".postinst"),
                            os.path.join(dst_postinst_dir, "%03d-%s" %
(num, p)))

            num += 1


package-management is in my image features so I understand nothing get
written.

So who temporarily creates that /etc/ipk-postinsts?

Thanks,
-Damien

On Fri, May 8, 2020 at 6:15 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Fri, 8 May 2020 at 11:32, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
>
>>
>> If can find the postinst script in
>> /var/lib/opkg/info/test-deployment.postinst and execute it.
>>
>> Since test-deployment is a new package, I would have expected
>> pkg_postinst_ontarget to be executed
>>
>> How is the first boot detected on a poky image? Is there a way to detect
>> if .postinst scripts haven't been executed?
>>
>
> The scripts to be executed  are written into /etc/rpm|deb|ipk-postinsts/
> and executed by
> meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts script
> (which is started on first boot as a service).
> Then they get deleted.
>
> Alex
>

--0000000000006172af05a58297e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Alex,<div><br></div><div>When I do a factory reset,=
 the system detects as a first boot and the script is executed.</div><div><=
br></div><div>&gt; cat /var/log/postinstall.log</div><div>Configuring test-=
deployment.<br></div><div><br></div><div>One thing which puzzles me: the /e=
tc/ipk-postinsts directory do not exist. Not in the image recipe folder, no=
t in the image file which I mount to check the content before flashing and =
of course=C2=A0it&#39;s deleted at the end of run-postinsts=C2=A0</div><div=
><br></div><div>rootfs.py:</div><div>=C2=A0 =C2=A0 def _save_postinsts_comm=
on(self, dst_postinst_dir, src_postinst_dir):<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if bb.utils.contains(&quot;IMAGE_FEATURES&quot;, &quot;package-manageme=
nt&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0True, False, self.d):<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 num =3D 0<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 for p in self._get_delayed_postinsts():<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.utils.mkdirhier(dst_postinst_dir)<br>=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exists(os.path.joi=
n(src_postinst_dir, p + &quot;.postinst&quot;)):<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.copy(os.path.join(src_postinst_di=
r, p + &quot;.postinst&quot;),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.path.join(dst_p=
ostinst_dir, &quot;%03d-%s&quot; % (num, p)))<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 num +=3D 1<br></div><div><br></div><div><br></div><div=
>package-management is in my image features so I understand nothing get wri=
tten.<br></div><div><br></div><div>So who temporarily creates that=C2=A0/et=
c/ipk-postinsts?</div><div><br></div><div>Thanks,</div><div>-Damien</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, May 8, 2020 at 6:15 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.k=
anavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">O=
n Fri, 8 May 2020 at 11:32, Damien LEFEVRE &lt;<a href=3D"mailto:lefevre.da=
@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a>&gt; wrote:<br></div>=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><br>If can find the postinst script in /var/lib/opkg/inf=
o/test-deployment.postinst and execute it.<br><br>Since test-deployment is =
a new package, I would have expected pkg_postinst_ontarget to be executed<b=
r><br>How is the first boot detected on a poky image? Is there a way to det=
ect if .postinst scripts haven&#39;t been executed?<br></div></blockquote><=
div><br></div><div>The scripts to be executed=C2=A0 are written into /etc/r=
pm|deb|ipk-postinsts/ and executed by <br></div><div>meta/recipes-devtools/=
run-postinsts/run-postinsts/run-postinsts script (which is started on first=
 boot as a service).</div><div>Then they get deleted.</div><div><br></div><=
/div><div class=3D"gmail_quote">Alex<br></div></div>
</blockquote></div>

--0000000000006172af05a58297e3--
