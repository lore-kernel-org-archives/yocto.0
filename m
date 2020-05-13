Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web11.2624.1589362778710630997
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 02:39:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h9pKivjj;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: lefevre.da@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id f13so16050367qkh.2
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 02:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r2u1HY/OrjhJOKbyCfmrM0ojB5r6WEz82DP+RmjqO0I=;
        b=h9pKivjjmPpuA0ydoy2JnoGbSiM5GDVkKNDkwAGTZWwg/wNwSYxoSq7xfbPnb1+JVl
         HsAC1hafRt7IoXTHNzrse2mmIbmDjHikqoRiVt+yt5Y/lNpETTWwVEo65PYxB0yB2HQX
         HI8WvdU/fCuxtgRTxrnBywMuPoey6IpYC1v70Hb3OO2dXZ4XbuACC04L7C16YinPrP3E
         mFlj4v9mhJ04S/Ao52/BAbkDjMh85hS5yJhk07d12sedY1P1UFAtk2HU4zNhPGGzV9EO
         FWydi0Kt6zxTY3XLIYNMENIpia/NDWBjb0mYDrUoNBSHECwxFdmOYBXaEXhz1cOUFtTa
         5UGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r2u1HY/OrjhJOKbyCfmrM0ojB5r6WEz82DP+RmjqO0I=;
        b=MGdoHkAiZkTY5bXUXso7uz2tEcncSASiyVctSmCq36qNqLJWaz8b0Kdmb1HwrAG4sF
         qquZEOZNpEjrEBNNKx0bAza0Fb2VAKL55Fg8J4ZsEXtUBuZb+GgbDsUjWWawl6pbMYRX
         H/EJ5FMPL9yR9vh3Ws1nxbA+/rJzUoxQ7SXLFXgoOST105vp0FXP26tGBeoZQSm8z/3k
         ci+iEcDKSdB8Bivmh1AgIg+FMFdPShJLQ8EV3eH1OmpZVmSsYwrJEXEbdtLXGZmnCD2V
         Ss4JzPGPdlflCYiNIuM4vx+uZORw0mHcclpoCpPbEROMW/62p70KJ13IyR2VRxrc19o0
         TaGg==
X-Gm-Message-State: AGi0PuZSpo9WLv03b5hrhlcLYYpRBgEtsFNx+gXQempMdWpeL2TPxlEh
	5EABGN5sTI88sqcCVjZOT536Az8iTWznPOp6/w==
X-Google-Smtp-Source: APiQypJQsdU/FzDcH9EtJQgdLgQKNUJl+VG7YfBSs4+j5xoF8qF04lfqYgUs4DOjBC2IZV8rRGC37LfFGN3lhmLJKME=
X-Received: by 2002:a37:bbc7:: with SMTP id l190mr17886894qkf.468.1589362777891;
 Wed, 13 May 2020 02:39:37 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv-+Cgkhu2uTdCThYKU+1X2-Js+TYZOKAtpq763_1KT9Tg@mail.gmail.com>
 <CANNYZj-cQ89zKSMDx7OKsxEs0uoa7kFLTT2i0CPzu4uyK240Mg@mail.gmail.com>
 <CA+FhBv-vE3ycUT27Xamm2txBQe=g73F_aVL4ALjnhO_GiXceaw@mail.gmail.com> <CANNYZj8Bd8nt0GFc-OZdB=d07TTnz6T28wYDx3dXtcGFwVZPnA@mail.gmail.com>
In-Reply-To: <CANNYZj8Bd8nt0GFc-OZdB=d07TTnz6T28wYDx3dXtcGFwVZPnA@mail.gmail.com>
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Wed, 13 May 2020 12:39:26 +0300
Message-ID: <CA+FhBv9wgWGkT6Q5V35PBbCNi-Ao3c1+a6NQ7bW-zR60--wXmA@mail.gmail.com>
Subject: Re: [yocto] pkg_postinst_ontarget not executed
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cba8fd05a5845bf1"

--000000000000cba8fd05a5845bf1
Content-Type: text/plain; charset="UTF-8"

OK I found.

Yes "opkg configure" will call /var/lib/opkg/info/*.postinst for packages
marked as "unpacked" in /var/lib/opkg/status ex:

Package: test-deployment-lic
Version: 1.0-r0
Status: install ok unpacked
Architecture: aarch64
Installed-Time: 1589349316
Auto-Installed: yes

After update
Package: test-deployment-lic
Version: 1.0-r0
Status: install ok unpacked
Architecture: aarch64
Installed-Time: 1589349316
Auto-Installed: yes

Should be easy to merge.

Thanks!
-Damien

On Wed, May 13, 2020 at 12:04 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> Reading recipes-devtools/run-postinsts/run-postinsts/run-postinsts
> and_save_postinsts_common (in rootfs.py) once more, it seems
> /etc/ipk-postinsts is only used if there is no package manager on the
> target.
>
> If there is, then 'opkg configure' is run directly, and so postinsts come
> from some internal database. There is some additional magic in rootfs.py to
> mark packages with first-boot postinsts as unpacked, so they'll get picked
> up by opkg.
>
> Alex
>
> On Wed, 13 May 2020 at 09:33, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
>
>> Thanks Alex,
>>
>> When I do a factory reset, the system detects as a first boot and the
>> script is executed.
>>
>> > cat /var/log/postinstall.log
>> Configuring test-deployment.
>>
>> One thing which puzzles me: the /etc/ipk-postinsts directory do not
>> exist. Not in the image recipe folder, not in the image file which I mount
>> to check the content before flashing and of course it's deleted at the end
>> of run-postinsts
>>
>> rootfs.py:
>>     def _save_postinsts_common(self, dst_postinst_dir, src_postinst_dir):
>>         if bb.utils.contains("IMAGE_FEATURES", "package-management",
>>                          True, False, self.d):
>>             return
>>         num = 0
>>         for p in self._get_delayed_postinsts():
>>             bb.utils.mkdirhier(dst_postinst_dir)
>>
>>             if os.path.exists(os.path.join(src_postinst_dir, p +
>> ".postinst")):
>>                 shutil.copy(os.path.join(src_postinst_dir, p +
>> ".postinst"),
>>                             os.path.join(dst_postinst_dir, "%03d-%s" %
>> (num, p)))
>>
>>             num += 1
>>
>>
>> package-management is in my image features so I understand nothing get
>> written.
>>
>> So who temporarily creates that /etc/ipk-postinsts?
>>
>> Thanks,
>> -Damien
>>
>> On Fri, May 8, 2020 at 6:15 PM Alexander Kanavin <alex.kanavin@gmail.com>
>> wrote:
>>
>>> On Fri, 8 May 2020 at 11:32, Damien LEFEVRE <lefevre.da@gmail.com>
>>> wrote:
>>>
>>>>
>>>> If can find the postinst script in
>>>> /var/lib/opkg/info/test-deployment.postinst and execute it.
>>>>
>>>> Since test-deployment is a new package, I would have expected
>>>> pkg_postinst_ontarget to be executed
>>>>
>>>> How is the first boot detected on a poky image? Is there a way to
>>>> detect if .postinst scripts haven't been executed?
>>>>
>>>
>>> The scripts to be executed  are written into /etc/rpm|deb|ipk-postinsts/
>>> and executed by
>>> meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts script
>>> (which is started on first boot as a service).
>>> Then they get deleted.
>>>
>>> Alex
>>>
>>

--000000000000cba8fd05a5845bf1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK I found.<div><br></div><div>Yes &quot;opkg configure&qu=
ot; will call /var/lib/opkg/info/*.postinst for packages marked as &quot;un=
packed&quot; in=C2=A0/var/lib/opkg/status ex:</div><div><br></div><div>Pack=
age: test-deployment-lic<br>Version: 1.0-r0<br>Status: install ok unpacked<=
br>Architecture: aarch64<br>Installed-Time: 1589349316<br>Auto-Installed: y=
es<br></div><div>=C2=A0</div><div>After update=C2=A0</div><div><div>Package=
: test-deployment-lic<br>Version: 1.0-r0<br>Status: install ok unpacked<br>=
Architecture: aarch64<br>Installed-Time: 1589349316<br>Auto-Installed: yes<=
br></div><div>=C2=A0</div></div><div>Should be easy to merge.</div><div><br=
></div><div>Thanks!</div><div>-Damien</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 13, 2020 at 12:04 PM=
 Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanav=
in@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Reading recipes-devtools/run-postinsts/ru=
n-postinsts/run-postinsts and_save_postinsts_common (in rootfs.py) once mor=
e, it seems /etc/ipk-postinsts is only used if there is no package manager =
on the target.</div><div><br></div><div>If there is, then &#39;opkg configu=
re&#39; is run directly, and so postinsts come from some internal database.=
 There is some additional magic in rootfs.py to mark packages with first-bo=
ot postinsts as unpacked, so they&#39;ll get picked up by opkg.<br></div><d=
iv><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, 13 May 2020 at 09:33, Damien LEFEVR=
E &lt;<a href=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Thanks Alex,<div><br></div><div>When I do a fac=
tory reset, the system detects as a first boot and the script is executed.<=
/div><div><br></div><div>&gt; cat /var/log/postinstall.log</div><div>Config=
uring test-deployment.<br></div><div><br></div><div>One thing which puzzles=
 me: the /etc/ipk-postinsts directory do not exist. Not in the image recipe=
 folder, not in the image file which I mount to check the content before fl=
ashing and of course=C2=A0it&#39;s deleted at the end of run-postinsts=C2=
=A0</div><div><br></div><div>rootfs.py:</div><div>=C2=A0 =C2=A0 def _save_p=
ostinsts_common(self, dst_postinst_dir, src_postinst_dir):<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 if bb.utils.contains(&quot;IMAGE_FEATURES&quot;, &quot;packa=
ge-management&quot;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0True, False, self.d):<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 nu=
m =3D 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for p in self._get_delayed_postinsts=
():<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.utils.mkdirhier(dst_pos=
tinst_dir)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if os.path.exis=
ts(os.path.join(src_postinst_dir, p + &quot;.postinst&quot;)):<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 shutil.copy(os.path.join(s=
rc_postinst_dir, p + &quot;.postinst&quot;),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.p=
ath.join(dst_postinst_dir, &quot;%03d-%s&quot; % (num, p)))<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 num +=3D 1<br></div><div><br></div><div>=
<br></div><div>package-management is in my image features so I understand n=
othing get written.<br></div><div><br></div><div>So who temporarily creates=
 that=C2=A0/etc/ipk-postinsts?</div><div><br></div><div>Thanks,</div><div>-=
Damien</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, May 8, 2020 at 6:15 PM Alexander Kanavin &lt;<a href=3D=
"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div dir=3D"ltr">On Fri, 8 May 2020 at 11:32, Damien LEFEVRE =
&lt;<a href=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gm=
ail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br>If can find the post=
inst script in /var/lib/opkg/info/test-deployment.postinst and execute it.<=
br><br>Since test-deployment is a new package, I would have expected pkg_po=
stinst_ontarget to be executed<br><br>How is the first boot detected on a p=
oky image? Is there a way to detect if .postinst scripts haven&#39;t been e=
xecuted?<br></div></blockquote><div><br></div><div>The scripts to be execut=
ed=C2=A0 are written into /etc/rpm|deb|ipk-postinsts/ and executed by <br><=
/div><div>meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts s=
cript (which is started on first boot as a service).</div><div>Then they ge=
t deleted.</div><div><br></div></div><div class=3D"gmail_quote">Alex<br></d=
iv></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000cba8fd05a5845bf1--
