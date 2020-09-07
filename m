Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web12.34324.1599451490921320724
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Sep 2020 21:04:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@wabco-auto-com.20150623.gappssmtp.com header.s=20150623 header.b=0Uef/Swp;
 spf=pass (domain: wabco-auto.com, ip: 209.85.166.177, mailfrom: hariprasath.gujulanelango@wabco-auto.com)
Received: by mail-il1-f177.google.com with SMTP id q6so11304569ild.12
        for <yocto@lists.yoctoproject.org>; Sun, 06 Sep 2020 21:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wabco-auto-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8Ie9FPg3eKHZcf3EPv8eS2jsmlfC254JAwZQjn9iApw=;
        b=0Uef/Swp6qyQd7WayUNI9Y46nXIuHHvRKc03lXtN0GsDZ/MqIQNul+1Y3q5kPQzIHM
         G8Ydhr5phhWvSMqEbfD4pl71qkm/HqAdTt5ThY9u9ty/NizfF4T6Irc8Z1Wxh56mj+l0
         qxhnkpMnW2zSalC0y6nrr9DhAAF74wAH4/ddqA2Jw3ktmLRpwX8jfUCAcR0EyRPcZEzf
         tpYdlRsLUu1Ywdgk2ZDRQ1vdBNRj+ZwSGEFvmQCEZ5N1zwf6ssmZ0Om0mulFm1V/IQUO
         nTIrM0LlVMEZ1LN6mFxo+Zu9kHzBVbRx6v/t/FxO2o7nmbZylQOC3nN7Q2BWiy6gMrAA
         ayxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8Ie9FPg3eKHZcf3EPv8eS2jsmlfC254JAwZQjn9iApw=;
        b=FwWm434cawZ0TWbvkJUul72lJdH5dgjKbsDnldvTFLqqdlcb0tiUWzpykuZB/ntZq+
         /mLWQM/UvIiT0uGLB130TT2v3RFUxnW38FmhAHanwwS5OFErFdIuAwwArR9imh6SbVib
         n7jsWZ5UklM89vVprm9YOwYj89DCosZRy3NtMmXPf/tYMqMOfoFp3/FgU+0gHypyvZAi
         6B9qwtpzKV0tUvaayUPFed0xv7HbNhHe5IMLkcOKL3iMxz5uRtHq3EYyDb9ZE4ajUluL
         yLVMhuihm2Cw91DBaGyFs80DdCZUQq3+eroYgeujxg6LFIJLHzrxZRPu5m4JCFEZP+7m
         cCZg==
X-Gm-Message-State: AOAM5304+rsIS4zNa36ChgICl+Zgb55QLzMNdaAOuW1sScBuj+mhSAbN
	Y+M0hWijiNllWpQOGj4yTN+hBwFQdC/VeJfd70SMlo4gb5LFsL+lVAattZZ9wl60AsYmlqbbdgI
	c8G/pgiWdfYc6dDHgTjr+UAFHkmrjn5ahaw==
X-Google-Smtp-Source: ABdhPJzCMrD7h9AqMLby850PnY4ZrqPf5ppMy3zzZqjf2Jd2lrGbBpB2wYajiJaIUtDBnmZWfIWT3SBR4Zr+oBu4+cg=
X-Received: by 2002:a92:41c1:: with SMTP id o184mr10619426ila.70.1599451490169;
 Sun, 06 Sep 2020 21:04:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1soOUvdS9scA=1tyxoFcY=r=hgxhU_X9M8dGpKjT+MEVTA@mail.gmail.com>
 <25048.1599317245296258980@lists.yoctoproject.org>
In-Reply-To: <25048.1599317245296258980@lists.yoctoproject.org>
From: hariprasath.gujulanelango@wabco-auto.com
Date: Mon, 7 Sep 2020 09:34:38 +0530
Message-ID: <CAB78Z-GpOB6i5fxJJtHNqdfMnpZ9qFdEm+ZFjaFmyr9qx1BP7g@mail.gmail.com>
Subject: Re: [yocto] Build failure due to wic-tools dependency #yocto
To: Hari Prasath Gujulan Elango <hariprasath.gujulanelango@wabco-auto.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e8699a05aeb151a9"

--000000000000e8699a05aeb151a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Update:

 I could able to see the e2fsprogs-native binaries generated under the
below path.
build/tmp/sysroots-components/x86_64/e2fsprogs-native/sbin

The PATH variable in the file
"build/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/temp/run.do_=
image_wic.21626"
is set to the following which doesn't include the above path.?Could it be
that the yocto build system is unable to locate this binary ?

export
PATH=3D"/home/hari/projects/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8=
mmddr4evk-poky-linux/nextgen-image/1.0-r0/recipe-sysroot/usr/bin/crossscrip=
ts:/home/hari/projects/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4=
evk-poky-linux/nextgen-image/1.0-r0/recipe-sysroot/opt/fsl-imx-wayland/5.4-=
zeus/sysroots/x86_64-pokysdk-linux/usr/bin/crossscripts:/home/hari/projects=
/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextgen=
-image/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/home/hari/projects/tx-ne=
xtgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image=
/1.0-r0/recipe-sysroot-native/usr/bin/python3-native:/home/hari/projects/tx=
-nextgen/linux-yocto-bsp/sources/poky/scripts:/home/hari/projects/tx-nextge=
n/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0=
-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux:/home/hari/projects/tx=
-nextgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextgen-im=
age/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/home/hari/projects/tx-nextg=
en/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.=
0-r0/recipe-sysroot-native/usr/sbin:/home/hari/projects/tx-nextgen/linux-yo=
cto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/recipe=
-sysroot-native/usr/bin:/home/hari/projects/tx-nextgen/linux-yocto-bsp/buil=
d/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/recipe-sysroot-nat=
ive/sbin:/home/hari/projects/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8=
mmddr4evk-poky-linux/nextgen-image/1.0-r0/recipe-sysroot-native/bin:/home/h=
ari/projects/tx-nextgen/linux-yocto-bsp/sources/poky/bitbake/bin:/home/hari=
/projects/tx-nextgen/linux-yocto-bsp/build/tmp/hosttools"



On Sat, Sep 5, 2020 at 8:17 PM hariprasath.gujulanelango via
lists.yoctoproject.org <hariprasath.gujulanelango=3D
wabco-auto.com@lists.yoctoproject.org> wrote:

> Hi There
>
> Thanks for your reply.As I already mentioned in my original post, this
> dependency is already present in the wic-tools BB file. The git log also
> shows the same as below
>
> commit b139ac4910a8c519076eaa865d9b0b7d9e604833
> Author: Ed Bartosh <ed.bartosh@linux.intel.com>
> Date:   Thu Jul 27 09:54:04 2017 +0300
>
>     wic-tools: add dependency to e2fsprogs-native
>
>     Added e2fsprogs-native to the list of dependencies for wic-tools
>     as all fs-related utilities have to be in this list.
>
>     (From OE-Core rev: d0ebcf62109d6a131e02cd4c0f04bba203ed6579)
>
>     Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>
>=20
>


--=20
Best Regards,
Hari Prasath

--=20

Proprietary and confidential.=C2=A0It is for use by the addressee only. If=
 you=20
are not the addressee or=C2=A0If you received this email in error, please =
notify=20
the sender and delete it and any attachments. All communications are=20
subject to our Data Protection Policy that can be found at=C2=A0
https://www.wabco-auto.com/en/footer/legal/legal/privacy-statement/=20
<https://www.wabco-auto.com/en/footer/legal/legal/privacy-statement/>=C2=
=A0.=C2=A0By=20
communicating with us via e-mail, you agree to the policy. WABCO does not=
=20
guarantee that this email has not been intercepted, amended, or is=20
virus-free.=C2=A0No liability is accepted for viruses and it is your=20
responsibility to scan any attachments.=C2=A0Technical data and/or informa=
tion=20
provided in this email or any attachment may be subject to U.S. export=20
control laws. Export, re-export, diversion or disclosure contrary to U.S.=
=20
law is prohibited

--000000000000e8699a05aeb151a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Update:<div><br></div><div><p style=3D"box-sizing:border-b=
ox;margin:0px 0px 15px;color:rgb(51,63,72);font-family:Arial,sans-serif;fon=
t-size:16px">=C2=A0I could able to see the e2fsprogs-native binaries genera=
ted under the below path.</p><div style=3D"box-sizing:border-box;color:rgb(=
51,63,72);font-family:Arial,sans-serif;font-size:16px">build/tmp/sysroots-c=
omponents/x86_64/e2fsprogs-native/sbin</div><div style=3D"box-sizing:border=
-box;color:rgb(51,63,72);font-family:Arial,sans-serif;font-size:16px">=C2=
=A0</div><div style=3D"box-sizing:border-box;color:rgb(51,63,72);font-fami=
ly:Arial,sans-serif;font-size:16px">The PATH variable in the file &quot;bui=
ld/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/temp/run.do_image=
_wic.21626&quot; is set to the following which doesn&#39;t include the abov=
e path.?Could it be that the yocto build system is unable to locate this bi=
nary ?</div><div style=3D"box-sizing:border-box;color:rgb(51,63,72);font-fa=
mily:Arial,sans-serif;font-size:16px">=C2=A0</div><div style=3D"box-sizing:=
border-box;color:rgb(51,63,72);font-family:Arial,sans-serif;font-size:16px"=
>export PATH=3D&quot;/home/hari/projects/tx-nextgen/linux-yocto-bsp/build/t=
mp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/recipe-sysroot/usr/bi=
n/crossscripts:/home/hari/projects/tx-nextgen/linux-yocto-bsp/build/tmp/wor=
k/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/recipe-sysroot/opt/fsl-imx-=
wayland/5.4-zeus/sysroots/x86_64-pokysdk-linux/usr/bin/crossscripts:/home/h=
ari/projects/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-l=
inux/nextgen-image/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/home/hari/pr=
ojects/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/n=
extgen-image/1.0-r0/recipe-sysroot-native/usr/bin/python3-native:/home/hari=
/projects/tx-nextgen/linux-yocto-bsp/sources/poky/scripts:/home/hari/projec=
ts/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextg=
en-image/1.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux:/home/hari=
/projects/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linu=
x/nextgen-image/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/home/hari/proje=
cts/tx-nextgen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/next=
gen-image/1.0-r0/recipe-sysroot-native/usr/sbin:/home/hari/projects/tx-next=
gen/linux-yocto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1=
.0-r0/recipe-sysroot-native/usr/bin:/home/hari/projects/tx-nextgen/linux-yo=
cto-bsp/build/tmp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/recipe=
-sysroot-native/sbin:/home/hari/projects/tx-nextgen/linux-yocto-bsp/build/t=
mp/work/imx8mmddr4evk-poky-linux/nextgen-image/1.0-r0/recipe-sysroot-native=
/bin:/home/hari/projects/tx-nextgen/linux-yocto-bsp/sources/poky/bitbake/bi=
n:/home/hari/projects/tx-nextgen/linux-yocto-bsp/build/tmp/hosttools&quot;<=
/div></div><div style=3D"box-sizing:border-box;color:rgb(51,63,72);font-fam=
ily:Arial,sans-serif;font-size:16px"><br></div><div style=3D"box-sizing:bor=
der-box;color:rgb(51,63,72);font-family:Arial,sans-serif;font-size:16px"><b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sat, Sep 5, 2020 at 8:17 PM hariprasath.gujulanelango via <a hre=
f=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;haripras=
ath.gujulanelango=3D<a href=3D"mailto:wabco-auto.com@lists.yoctoproject.org=
">wabco-auto.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Hi There<br><br>Thanks for your repl=
y.As I already mentioned in my original post, this dependency is already pr=
esent in the wic-tools BB file. The git log also shows the same as below<br=
><br>
<div>commit b139ac4910a8c519076eaa865d9b0b7d9e604833</div>
<div>Author: Ed Bartosh &lt;<a href=3D"mailto:ed.bartosh@linux.intel.com" =
target=3D"_blank">ed.bartosh@linux.intel.com</a>&gt;</div>
<div>Date:=C2=A0 =C2=A0Thu Jul 27 09:54:04 2017 +0300</div>
<div>=C2=A0</div>
<div>=C2=A0 =C2=A0 wic-tools: add dependency to e2fsprogs-native</div>
<div>=C2=A0 =C2=A0=C2=A0</div>
<div>=C2=A0 =C2=A0 Added e2fsprogs-native to the list of dependencies for =
wic-tools</div>
<div>=C2=A0 =C2=A0 as all fs-related utilities have to be in this list.</d=
iv>
<div>=C2=A0 =C2=A0=C2=A0</div>
<div>=C2=A0 =C2=A0 (From OE-Core rev: d0ebcf62109d6a131e02cd4c0f04bba203ed=
6579)</div>
<div>=C2=A0 =C2=A0=C2=A0</div>
<div>=C2=A0 =C2=A0 Signed-off-by: Ed Bartosh &lt;<a href=3D"mailto:ed.bart=
osh@linux.intel.com" target=3D"_blank">ed.bartosh@linux.intel.com</a>&gt;</=
div>
<div>=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:ric=
hard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoun=
dation.org</a>&gt;</div>
<div><br><br></div>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Best Regards,<div>Hari Prasath=
</div></div></div>

<br>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1.3em"><hr>=
</div><span style=3D"background-color:white"><font face=3D"Arial" size=3D"1=
"><font color=3D"#808080" face=3D"Arial, Helvetica, sans-serif"><span style=
=
=3D"font-size:1.3em">Proprietary and confidential.=C2=A0</span></font><spa=
n lang=3D"EN-GB" style=3D"color:rgb(128,128,128);font-family:Arial,Helvetic=
a,sans-serif;font-size:1.3em">It is for use by the addressee only. If you a=
re not the addressee or=C2=A0</span><font color=3D"#808080" face=3D"Arial, =
Helvetica, sans-serif"><span style=3D"font-size:1.3em">If you received this=
 email in error, please notify the sender and delete it and any attachments=
. All communications are subject to our Data Protection Policy that can be =
found at=C2=A0</span></font></font></span><a href=3D"https://www.wabco-auto=
.com/en/footer/legal/legal/privacy-statement/" style=3D"color:rgb(17,85,204=
);font-size:small;background-color:rgb(255,255,255)" target=3D"_blank">http=
s://www.wabco-auto.com/<wbr>en/footer/legal/legal/privacy-<wbr>statement/</=
a><span style=3D"background-color:white"><font face=3D"Arial" size=3D"1"><f=
ont color=3D"#808080" face=3D"Arial, Helvetica, sans-serif"><span style=3D"=
font-size:1.3em">=C2=A0.=C2=A0By communicating with us via e-mail, you agre=
e to the policy. WABCO does not guarantee that this email has not been inte=
rcepted, amended, or is virus-free.=C2=A0</span></font><span lang=3D"EN-GB"=
 style=3D"color:rgb(128,128,128);font-family:Arial,Helvetica,sans-serif;fon=
t-size:1.3em">No liability is accepted for viruses and it is your responsib=
ility to scan any attachments.=C2=A0</span><font color=3D"#808080" face=3D"=
Arial, Helvetica, sans-serif"><span style=3D"font-size:1.3em">Technical dat=
a and/or information provided in this email or any attachment may be subjec=
t to U.S. export control laws. Export, re-export, diversion or disclosure c=
ontrary to U.S. law is prohibited</span></font></font></span>

--000000000000e8699a05aeb151a9--
