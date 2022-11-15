Return-Path: <chsriram@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED7A6C4332F
	for <webhook@archiver.kernel.org>; Tue, 15 Nov 2022 01:06:11 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web08.511.1668474361954397832
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Nov 2022 17:06:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YIeLUtVW;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: chsriram@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id n20so11931852ejh.0
        for <yocto@lists.yoctoproject.org>; Mon, 14 Nov 2022 17:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0MY1A7S20LUXrpNj2wEcvwg0J83jNjMBis/qxFDKBE8=;
        b=YIeLUtVWxMpamUyYno+cOUnSnmys0HANEqd4mFcIqARUlldS0guPYh2QyEMH4oNEey
         q3dindZwCeNOzEEVfbocIrpVLVX3lY3Dho8Ou6u7UgCpfLZYw12X6FrAfmV6iJU/g5xr
         nURBHXc+Ar90tL5CHrD2PSTPdEtnNNW0GbG0F48axZ10VJLNAxZKj+SQapKdDtqo+qWq
         i2o8juD2g+awCG6rrQ+zFl08A/RhOmRLBuX4lwjxNR20Ai/1dFwUlUrvDRwZ7b3715bH
         lRnQ7inm5eLjyA3FPIVuSgEWtcUhpbSOXgPuVS4RdUoPnxT2B44akxmlEaAXXq1x84cB
         yHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0MY1A7S20LUXrpNj2wEcvwg0J83jNjMBis/qxFDKBE8=;
        b=4LYZtl8iLI15H3dF1efOr8e1gJJOB6QaUwsZ/I/MhcZ8Eff6gJVg6ZEjrBRMWsJucl
         6Vfq3+Chm2Ix2caZ9JqIEUraGyNOWXK0Ws2S9RG/iJTdrDXvsZMJUzB08AzWmPCAK3Yu
         6cKiuKs9LxV4+k3NLaX7BisiYzJySnXSQn6bW07bT0WfLH+r6QplNiFe4vcA9Fp65HJt
         FJkf33y1ZPo5DhIWwwKBqKmZxE/dwDVUC746dVP8QJiuLBPqt4rztyMbYRht87OkXAEA
         pYyFQXeV07iyQuAK+OTwhVkxg5Pq9TOSRuV5Ydx6fnWG0kZm9gTvHZeolET6lRNNlBJM
         dw0A==
X-Gm-Message-State: ANoB5pmswthtajyZOuUeckMJo8YhTzg7xX8kqNVSW4pEzKhqJ2jo8Aw7
	NIbVrrZpxs4vjBy49gbEBWU1Spp2fvFJmlxGkrk=
X-Google-Smtp-Source: AA0mqf4iysA0h+m9JqdID34NgBDpMVnAcyZHj+eTfs6lWqSLEb8Kk922rO7Dp81yooCfV/9wuFYJWb96H/MHQ3K56jA=
X-Received: by 2002:a17:906:859a:b0:7ad:9ada:79c6 with SMTP id
 v26-20020a170906859a00b007ad9ada79c6mr12211803ejx.86.1668474359888; Mon, 14
 Nov 2022 17:05:59 -0800 (PST)
MIME-Version: 1.0
References: <CAOK2joH6nszciektiK58-wHoZLnPSpjKfz08DrhkAycTU0NJLg@mail.gmail.com>
 <28681.1668331926333737853@lists.yoctoproject.org> <17273561BD551D7C.7371@lists.yoctoproject.org>
In-Reply-To: <17273561BD551D7C.7371@lists.yoctoproject.org>
From: Sriram Chadalavada <chsriram@gmail.com>
Date: Mon, 14 Nov 2022 20:05:47 -0500
Message-ID: <CAOK2joGhwHLv1GvatPN+=EUa9Sre6YDq2w3woH=Ldvwi2EzoNg@mail.gmail.com>
Subject: Re: [yocto] Error while running bitbake
To: chsriram@gmail.com
Cc: Marco Cavallini <koansoftware@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000089c08f05ed77f590"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 01:06:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58564

--00000000000089c08f05ed77f590
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So, I was able to build successfully using Ubuntu 22.04 docker container.
It looks something in my host OS environment didn't quite agree with Yocto.

On Sun, Nov 13, 2022 at 12:34 PM Sriram Chadalavada via
lists.yoctoproject.org <chsriram=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi Marco,
>   Here is the top of the log:
> Could not find platform independent libraries <prefix>
> Could not find platform dependent libraries <exec_prefix>
> Consider setting $PYTHONHOME to <prefix>[:<exec_prefix>]
> Python path configuration:
>   PYTHONHOME =3D (not set)
>   PYTHONPATH =3D (not set)
>   program name =3D 'bitbake-server'
>   isolated =3D 0
>   environment =3D 1
>   user site =3D 1
>   import site =3D 1
>   sys._base_executable =3D '/home/popossri/poky/bitbake/bin/bitbake-serve=
r'
>   sys.base_prefix =3D
> '/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placeho'
>   sys.base_exec_prefix =3D
> '/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placeho'
>   sys.executable =3D '/home/popossri/poky/bitbake/bin/bitbake-server'
>   sys.prefix =3D
> '/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placeho'
>   sys.exec_prefix =3D
> '/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placeho'
>   sys.path =3D [
>
> '/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placeho/lib/python38.zip',
>
> '/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placeho/lib/python3.8',
>
> '/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placeho/lib/lib-dynload',
>   ]
> Fatal Python error: init_fs_encoding: failed to get the Python codec of
> the filesystem encoding
> Python runtime state: core initialized
> ModuleNotFoundError: No module named 'encodings'
>
> Yocto version: /poky$ git status
> On branch kirkstone
> Your branch is up to date with 'origin/kirkstone'.
>
> I just followed steps from the Yocto Quick build (
> https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html)
>
>
> About using a Yocto compatible distro, here are the details:
> Operating System: Pop!_OS 22.04 LTS               ( derived from Ubuntu
> 22.04 LTS, so I assumed would be compatible with Yocto, but is it possibl=
e
> I'm wrong?)
> Kernel: Linux 5.18.10-76051810-generic
>
> I'll repeat this in Ubuntu 22.04 docker container and let you know how it
> goes.
>
> On Sun, Nov 13, 2022 at 4:32 AM Marco Cavallini <koansoftware@gmail.com>
> wrote:
>
>> Hi,
>>
>> please provide more details like the messages printed by bitbake at the
>> top of the log showing your Host distro.
>>
>> Whis Yocto version are you using?
>>
>> Did you properly install the required packages?
>>
>> Are you using a Yocto compatible distro ?
>>
>> --
>> Marco
>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58551):
> https://lists.yoctoproject.org/g/yocto/message/58551
> Mute This Topic: https://lists.yoctoproject.org/mt/94985768/900941
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> chsriram@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000089c08f05ed77f590
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">So, I was able to build successfully usin=
g Ubuntu 22.04 docker container. It looks something in my host OS environme=
nt didn&#39;t quite agree with Yocto.<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 13, 2022 at 12:34 PM S=
riram Chadalavada via <a href=3D"http://lists.yoctoproject.org">lists.yocto=
project.org</a> &lt;chsriram=3D<a href=3D"mailto:gmail.com@lists.yoctoproje=
ct.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Marco,<div>=C2=
=A0 Here is the top of the log:</div><div>Could not find platform independe=
nt libraries &lt;prefix&gt;<br>Could not find platform dependent libraries =
&lt;exec_prefix&gt;<br>Consider setting $PYTHONHOME to &lt;prefix&gt;[:&lt;=
exec_prefix&gt;]<br>Python path configuration:<br>=C2=A0 PYTHONHOME =3D (no=
t set)<br>=C2=A0 PYTHONPATH =3D (not set)<br>=C2=A0 program name =3D &#39;b=
itbake-server&#39;<br>=C2=A0 isolated =3D 0<br>=C2=A0 environment =3D 1<br>=
=C2=A0 user site =3D 1<br>=C2=A0 import site =3D 1<br>=C2=A0 sys._base_exec=
utable =3D &#39;/home/popossri/poky/bitbake/bin/bitbake-server&#39;<br>=C2=
=A0 sys.base_prefix =3D &#39;/tmp/build/80754af9/python_1593706424329/_h_en=
v_placehold_placehold_placehold_placehold_placehold_placehold_placehold_pla=
cehold_placehold_placehold_placehold_placehold_placehold_placehold_placehol=
d_placehold_placehold_placehold_placehold_placehold_placeho&#39;<br>=C2=A0 =
sys.base_exec_prefix =3D &#39;/tmp/build/80754af9/python_1593706424329/_h_e=
nv_placehold_placehold_placehold_placehold_placehold_placehold_placehold_pl=
acehold_placehold_placehold_placehold_placehold_placehold_placehold_placeho=
ld_placehold_placehold_placehold_placehold_placehold_placeho&#39;<br>=C2=A0=
 sys.executable =3D &#39;/home/popossri/poky/bitbake/bin/bitbake-server&#39=
;<br>=C2=A0 sys.prefix =3D &#39;/tmp/build/80754af9/python_1593706424329/_h=
_env_placehold_placehold_placehold_placehold_placehold_placehold_placehold_=
placehold_placehold_placehold_placehold_placehold_placehold_placehold_place=
hold_placehold_placehold_placehold_placehold_placehold_placeho&#39;<br>=C2=
=A0 sys.exec_prefix =3D &#39;/tmp/build/80754af9/python_1593706424329/_h_en=
v_placehold_placehold_placehold_placehold_placehold_placehold_placehold_pla=
cehold_placehold_placehold_placehold_placehold_placehold_placehold_placehol=
d_placehold_placehold_placehold_placehold_placehold_placeho&#39;<br>=C2=A0 =
sys.path =3D [<br>=C2=A0 =C2=A0 &#39;/tmp/build/80754af9/python_15937064243=
29/_h_env_placehold_placehold_placehold_placehold_placehold_placehold_place=
hold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_=
placehold_placehold_placehold_placehold_placehold_placehold_placeho/lib/pyt=
hon38.zip&#39;,<br>=C2=A0 =C2=A0 &#39;/tmp/build/80754af9/python_1593706424=
329/_h_env_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placeho/lib/py=
thon3.8&#39;,<br>=C2=A0 =C2=A0 &#39;/tmp/build/80754af9/python_159370642432=
9/_h_env_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placeho/lib/lib-=
dynload&#39;,<br>=C2=A0 ]<br>Fatal Python error: init_fs_encoding: failed t=
o get the Python codec of the filesystem encoding<br>Python runtime state: =
core initialized<br>ModuleNotFoundError: No module named &#39;encodings&#39=
;<br></div><div><br></div><div>Yocto version: /poky$ git status</div>On bra=
nch kirkstone<br>Your branch is up to date with &#39;origin/kirkstone&#39;.=
<br><div><br></div><div>I just followed steps from the Yocto Quick build (<=
a href=3D"https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html" ta=
rget=3D"_blank">https://docs.yoctoproject.org/brief-yoctoprojectqs/index.ht=
ml</a>)</div><div><br></div><div><br></div><div>About using a Yocto compati=
ble distro, here are the details:</div><div>Operating System: Pop!_OS 22.04=
 LTS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0( derived from U=
buntu 22.04 LTS, so I assumed would be compatible with Yocto, but is it pos=
sible I&#39;m wrong?)<br>Kernel: Linux 5.18.10-76051810-generic<br></div><d=
iv><br></div><div>I&#39;ll repeat this in Ubuntu=C2=A022.04 docker containe=
r and let you know how it goes.</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 13, 2022 at 4:32 AM Marco =
Cavallini &lt;<a href=3D"mailto:koansoftware@gmail.com" target=3D"_blank">k=
oansoftware@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><p>Hi,</p>
<p>please provide more details like the messages printed by bitbake at the =
top of the log showing your Host distro.</p>
<p>Whis Yocto version are you using?</p>
<p>Did you properly install the required packages?</p>
<p>Are you using a Yocto compatible distro ?</p>
<p>--<br>Marco</p>
<br>
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58551): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58551" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58551</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94985768/9009=
41" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
94985768/900941</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:chsriram@gmail.com" target=3D"_blank">chsriram@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000089c08f05ed77f590--

