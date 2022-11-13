Return-Path: <chsriram@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9126C4332F
	for <webhook@archiver.kernel.org>; Sun, 13 Nov 2022 17:34:48 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web09.36.1668360880440216034
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Nov 2022 09:34:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kmqn6UaQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: chsriram@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id y14so23264575ejd.9
        for <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 09:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ClP9Y+Z7oaxgFTGmfPlgRcfOOTJb8tTPy2xYeJAhZj0=;
        b=kmqn6UaQOIFD+xjgNypxVfcyKG5bDfytRmakVVgnPD7doLJWimNv1uj7Iatc9iLP+F
         aygWeVESxG1Xx8a29uRRNIhAKpk1AXOZ+OWoit9XKO6qsMmNXWHFzy8BSCvoZWOJZhz5
         oEj4X76liCjSdT8mnZpsIaimTLp1slacc9uJbmozoPSZ769+gLsuDX1Cxqr70TDxxn+s
         GG0fnnwKAnTPrpzQdVdXhPynl11Xqngk9RLzXXSc4nz5In7hBlM8vGXQV4Dy1nYSsn2o
         UKyXPN29J8enbIr2leJPgvjkJFolNYeYSKoeSWI7FhjFyYxO2EEotNetblVN9gWVqjUv
         G6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ClP9Y+Z7oaxgFTGmfPlgRcfOOTJb8tTPy2xYeJAhZj0=;
        b=CmI/hJajWzsgW07XceU2TSICDdPndrCFDatYT0Oxb0lZahmiYGnUbWcF/8YkWPQDs9
         zyIK1Qt3NvLBdUTj3kFf2xg/3CrA9Bh1oo/+b9SXVChDmVefgolrlN4KR8Mu+OAtetaG
         5JXIF3CS/Tkb4pkjF3lwiyGikmdDTNEPYQG1Vbp6RXHG7L7KFN5uxjR2h5GreMtG7nuM
         ayNAs2cpJERIzAR3Ww7RlLH1AEo+oPnyoz9ExR92SCTc0J8b1yR9kQFSGywxOwC/Ndkc
         qGWSeruDH/Nfn3lwkZlHsXeNYK3602NWprI+Tfu60gOhmst6BR6Zg3+DIJ20sXXF/MMB
         Ia6Q==
X-Gm-Message-State: ANoB5pmh87IBmSJ7jON8hHCZhG3UVENhGzTJUM1BgP43/tPt9kV4AzvW
	hzJIvuOutqy+tJVlCCzFQ8ca/3/fDhHa3Vbt2BY=
X-Google-Smtp-Source: AA0mqf7SHZQvT7tLQFHQiSYuszRcQExCRUYt1kRswL9TRRmN1HrnyIkHHOIIopHe3pnrFVPK+WER5yF1Z8u6xVv5+MM=
X-Received: by 2002:a17:906:b1c4:b0:7ad:d408:3a2b with SMTP id
 bv4-20020a170906b1c400b007add4083a2bmr8072562ejb.280.1668360878609; Sun, 13
 Nov 2022 09:34:38 -0800 (PST)
MIME-Version: 1.0
References: <CAOK2joH6nszciektiK58-wHoZLnPSpjKfz08DrhkAycTU0NJLg@mail.gmail.com>
 <28681.1668331926333737853@lists.yoctoproject.org>
In-Reply-To: <28681.1668331926333737853@lists.yoctoproject.org>
From: Sriram Chadalavada <chsriram@gmail.com>
Date: Sun, 13 Nov 2022 12:34:26 -0500
Message-ID: <CAOK2joHFT3QM7XtDvT3Wn=+2A9zwDocJRwyvw85rCLbzrZEs1w@mail.gmail.com>
Subject: Re: [yocto] Error while running bitbake
To: Marco Cavallini <koansoftware@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000086da2205ed5d8965"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 17:34:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58551

--00000000000086da2205ed5d8965
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marco,
  Here is the top of the log:
Could not find platform independent libraries <prefix>
Could not find platform dependent libraries <exec_prefix>
Consider setting $PYTHONHOME to <prefix>[:<exec_prefix>]
Python path configuration:
  PYTHONHOME =3D (not set)
  PYTHONPATH =3D (not set)
  program name =3D 'bitbake-server'
  isolated =3D 0
  environment =3D 1
  user site =3D 1
  import site =3D 1
  sys._base_executable =3D '/home/popossri/poky/bitbake/bin/bitbake-server'
  sys.base_prefix =3D
'/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placeho'
  sys.base_exec_prefix =3D
'/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placeho'
  sys.executable =3D '/home/popossri/poky/bitbake/bin/bitbake-server'
  sys.prefix =3D
'/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placeho'
  sys.exec_prefix =3D
'/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placeho'
  sys.path =3D [

'/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placeho/lib/python38.zip',

'/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placeho/lib/python3.8',

'/tmp/build/80754af9/python_1593706424329/_h_env_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placeho/lib/lib-dynload',
  ]
Fatal Python error: init_fs_encoding: failed to get the Python codec of the
filesystem encoding
Python runtime state: core initialized
ModuleNotFoundError: No module named 'encodings'

Yocto version: /poky$ git status
On branch kirkstone
Your branch is up to date with 'origin/kirkstone'.

I just followed steps from the Yocto Quick build (
https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html)


About using a Yocto compatible distro, here are the details:
Operating System: Pop!_OS 22.04 LTS               ( derived from Ubuntu
22.04 LTS, so I assumed would be compatible with Yocto, but is it possible
I'm wrong?)
Kernel: Linux 5.18.10-76051810-generic

I'll repeat this in Ubuntu 22.04 docker container and let you know how it
goes.

On Sun, Nov 13, 2022 at 4:32 AM Marco Cavallini <koansoftware@gmail.com>
wrote:

> Hi,
>
> please provide more details like the messages printed by bitbake at the
> top of the log showing your Host distro.
>
> Whis Yocto version are you using?
>
> Did you properly install the required packages?
>
> Are you using a Yocto compatible distro ?
>
> --
> Marco
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58547):
> https://lists.yoctoproject.org/g/yocto/message/58547
> Mute This Topic: https://lists.yoctoproject.org/mt/94985768/900941
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> chsriram@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000086da2205ed5d8965
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marco,<div>=C2=A0 Here is the top of the log:</div><div=
>Could not find platform independent libraries &lt;prefix&gt;<br>Could not =
find platform dependent libraries &lt;exec_prefix&gt;<br>Consider setting $=
PYTHONHOME to &lt;prefix&gt;[:&lt;exec_prefix&gt;]<br>Python path configura=
tion:<br>=C2=A0 PYTHONHOME =3D (not set)<br>=C2=A0 PYTHONPATH =3D (not set)=
<br>=C2=A0 program name =3D &#39;bitbake-server&#39;<br>=C2=A0 isolated =3D=
 0<br>=C2=A0 environment =3D 1<br>=C2=A0 user site =3D 1<br>=C2=A0 import s=
ite =3D 1<br>=C2=A0 sys._base_executable =3D &#39;/home/popossri/poky/bitba=
ke/bin/bitbake-server&#39;<br>=C2=A0 sys.base_prefix =3D &#39;/tmp/build/80=
754af9/python_1593706424329/_h_env_placehold_placehold_placehold_placehold_=
placehold_placehold_placehold_placehold_placehold_placehold_placehold_place=
hold_placehold_placehold_placehold_placehold_placehold_placehold_placehold_=
placehold_placeho&#39;<br>=C2=A0 sys.base_exec_prefix =3D &#39;/tmp/build/8=
0754af9/python_1593706424329/_h_env_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placeho&#39;<br>=C2=A0 sys.executable =3D &#39;/home/popossri/po=
ky/bitbake/bin/bitbake-server&#39;<br>=C2=A0 sys.prefix =3D &#39;/tmp/build=
/80754af9/python_1593706424329/_h_env_placehold_placehold_placehold_placeho=
ld_placehold_placehold_placehold_placehold_placehold_placehold_placehold_pl=
acehold_placehold_placehold_placehold_placehold_placehold_placehold_placeho=
ld_placehold_placeho&#39;<br>=C2=A0 sys.exec_prefix =3D &#39;/tmp/build/807=
54af9/python_1593706424329/_h_env_placehold_placehold_placehold_placehold_p=
lacehold_placehold_placehold_placehold_placehold_placehold_placehold_placeh=
old_placehold_placehold_placehold_placehold_placehold_placehold_placehold_p=
lacehold_placeho&#39;<br>=C2=A0 sys.path =3D [<br>=C2=A0 =C2=A0 &#39;/tmp/b=
uild/80754af9/python_1593706424329/_h_env_placehold_placehold_placehold_pla=
cehold_placehold_placehold_placehold_placehold_placehold_placehold_placehol=
d_placehold_placehold_placehold_placehold_placehold_placehold_placehold_pla=
cehold_placehold_placeho/lib/python38.zip&#39;,<br>=C2=A0 =C2=A0 &#39;/tmp/=
build/80754af9/python_1593706424329/_h_env_placehold_placehold_placehold_pl=
acehold_placehold_placehold_placehold_placehold_placehold_placehold_placeho=
ld_placehold_placehold_placehold_placehold_placehold_placehold_placehold_pl=
acehold_placehold_placeho/lib/python3.8&#39;,<br>=C2=A0 =C2=A0 &#39;/tmp/bu=
ild/80754af9/python_1593706424329/_h_env_placehold_placehold_placehold_plac=
ehold_placehold_placehold_placehold_placehold_placehold_placehold_placehold=
_placehold_placehold_placehold_placehold_placehold_placehold_placehold_plac=
ehold_placehold_placeho/lib/lib-dynload&#39;,<br>=C2=A0 ]<br>Fatal Python e=
rror: init_fs_encoding: failed to get the Python codec of the filesystem en=
coding<br>Python runtime state: core initialized<br>ModuleNotFoundError: No=
 module named &#39;encodings&#39;<br></div><div><br></div><div>Yocto versio=
n: /poky$ git status</div>On branch kirkstone<br>Your branch is up to date =
with &#39;origin/kirkstone&#39;.<br><div><br></div><div>I just followed ste=
ps from the Yocto Quick build (<a href=3D"https://docs.yoctoproject.org/bri=
ef-yoctoprojectqs/index.html" target=3D"_blank">https://docs.yoctoproject.o=
rg/brief-yoctoprojectqs/index.html</a>)</div><div><br></div><div><br></div>=
<div>About using a Yocto compatible distro, here are the details:</div><div=
>Operating System: Pop!_OS 22.04 LTS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0( derived from Ubuntu 22.04 LTS, so I assumed would be com=
patible with Yocto, but is it possible I&#39;m wrong?)<br>Kernel: Linux 5.1=
8.10-76051810-generic<br></div><div><br></div><div>I&#39;ll repeat this in =
Ubuntu=C2=A022.04 docker container and let you know how it goes.</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Su=
n, Nov 13, 2022 at 4:32 AM Marco Cavallini &lt;<a href=3D"mailto:koansoftwa=
re@gmail.com" target=3D"_blank">koansoftware@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi,</p>
<p>please provide more details like the messages printed by bitbake at the =
top of the log showing your Host distro.</p>
<p>Whis Yocto version are you using?</p>
<p>Did you properly install the required packages?</p>
<p>Are you using a Yocto compatible distro ?</p>
<p>--<br>Marco</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58547): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58547" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58547</a><br>
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
</blockquote></div>

--00000000000086da2205ed5d8965--

