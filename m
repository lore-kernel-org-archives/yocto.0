Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AE3C433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 11:25:16 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
 [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web09.8632.1651145115534640858
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:25:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20210112 header.b=NZwJrQ7r;
 spf=pass (domain: googlemail.com, ip: 209.85.219.53,
 mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-qv1-f53.google.com with SMTP id r8so2952127qvx.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xj65Vy+REODMzPYj23HQOECNThWWT719GdZgrMbSTaE=;
        b=NZwJrQ7rdMvDLx07WEdvRx6BpkQ2Q9gFCl7Nht8YqfzJ58EfBF3w7wmz+Dm3ezySqM
         zX1G7sDdpXyPVGwGOgM825+b3qwCQfNI2QFbuR9Cq7B/2L2qkm8FIAxltbMU+eCb7Eqz
         yGb0K8uWO+CxQe4jE3hA8aCT2h3vwHtzy1cSYuxLCK0DwSc8aeKeFpD/fIOH1Mf6P6wD
         frBo/r6gaGUUmZ+8Zy5KS67CqDiRLUvNtDaESdL9bcB+Ig+Vui5YW9vxNEtDHTzcQqWh
         WJMGO+C0iO+mXaRBLjvENUetkSgyXIk56T3ITg0SJE3Gt5OzJ0H95hcF9+p7eRpZ4H2P
         mz3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xj65Vy+REODMzPYj23HQOECNThWWT719GdZgrMbSTaE=;
        b=By4cW7zy1b/bb0w+4XIWFN7pNXyolhBylKNBd29T8uXyXyFrLI9zOYwWXPMUs9DkTD
         J72Xsr78a1VLYJMwonmpxDTY81E8sZSHZZG+wFtJ0ANpPx9+PvWE4RRMnF5vAOxW6pkM
         hdiza1/W4F1Q2Zt1Fs22aZSoRHiWmQWZBrxyFBeC/oS1k0kph/5db2jjtsPo8VfOQJQj
         uMS4szqW35BOsOF7oDtkGeSYPPf0soI5Mp2TUk882QMDQU4vAeIPKxt/bir+cfwmLy5B
         eHe+AM/ecbxDLPD8V1FNi2yJl9z1ENna8A9rPEjSPZ8FCb6Ykm4Ld9zDVRDt/hsh1s4q
         eAbw==
X-Gm-Message-State: AOAM530+mVjmZEgqtUbX8hUEVbKPvD3K4+L4z1xviVJRHH9RycW/76KD
	Kwmdt6MqOXx2goiwb2gTTf70CPT1YPQ7xggZV0U=
X-Google-Smtp-Source: 
 ABdhPJwZqTYY7iIAouLgEUrvC+g6w0594aYKBcgMsa6ypwn5hPNaEtaeGfvx6JCqlVoJp3g9flCft0oXVd1bkSDFv6c=
X-Received: by 2002:ad4:5caa:0:b0:446:54ef:60d4 with SMTP id
 q10-20020ad45caa000000b0044654ef60d4mr23751650qvh.86.1651145114510; Thu, 28
 Apr 2022 04:25:14 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CA+-BmJZxufzfqd=VR6MH+ZB3osYwpSyHvW=SvNNpag3gs+Wz8w@mail.gmail.com>
 <Ymp3MwKCqW2DbWe2@korppu>
In-Reply-To: <Ymp3MwKCqW2DbWe2@korppu>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Thu, 28 Apr 2022 13:25:03 +0200
Message-ID: 
 <CA+-BmJYsMtjHw=bUUJ2-DF4N-Jvun_9uYh9k=a_DrUoBoSAdiQ@mail.gmail.com>
Subject: Re: [yocto] Custom DISTRO_VERSION with git describe
To: Mikko.Rapeli@bmw.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000005e98c05ddb52ec5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 11:25:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56932

--00000000000005e98c05ddb52ec5
Content-Type: text/plain; charset="UTF-8"

Hi,

thanks for the quick reply I tried your suggestion but I get:

ERROR: Unable to parse Var <DISTRO_VERSION[:=]>
Traceback (most recent call last):
  File "Var <DISTRO_VERSION[:=]>", line 1, in <module>
bb.data_smart.ExpansionError: Failure expanding variable
DISTRO_VERSION[:=], expression was ${@my_distro_version(d)} which triggered
exception NameError: name 'my_distro_version' is not defined

I think in this case the INHERIT doesn't work !


Best regards,


On Thu, Apr 28, 2022 at 1:15 PM <Mikko.Rapeli@bmw.de> wrote:

> Hi,
>
> On Thu, Apr 28, 2022 at 01:04:22PM +0200, Ayoub Zaki via
> lists.yoctoproject.org wrote:
> > hello,
> >
> >
> > I would like to have a custom DISTRO_VERSION based on "git describe" of
> my
> > layer:
> >
> >
> > 1) In my layer meta-mylayer/conf/layer.conf, I defined the following:
> >
> > # Set variable to get the location of the layer
> > > MY_LAYER_BASE := '${LAYERDIR}'
> >
> >
> >
> > 2) I created a my_distro_version.bbclass with following:
> >
> > def my_distro_version(d):
> > >     import subprocess
> > >     project_path = d.getVar('MY_LAYER_BASE', True)
> > >     cmd = "git describe --tags"
>
> I would also add --always and --dirty to be sure non-tagged clones
> of repo work and builds with local modifications get marked as such.
>
> > >     proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True,
> > > cwd=project_path)
> > >     out, err =  proc.communicate()
> > >     return out.decode("utf-8").rstrip()
> >
> >
> > 3)  Then I inherited it my  meta-mylayer/conf/distro/my_distro.conf :
> >
> > INHERIT += "my_distro_version"
> > > DISTRO_VERSION = "${@my_distro_version(d)}"
>
> DISTRO_VERSION := "${@my_distro_version(d)}"
>
> That should do it :)
>
> Cheers,
>
> -Mikko

--00000000000005e98c05ddb52ec5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>thanks for the quick reply I =
tried your suggestion=C2=A0but I get:</div><div><br></div>ERROR: Unable to =
parse Var &lt;DISTRO_VERSION[:=3D]&gt;<br>Traceback (most recent call last)=
:<br>=C2=A0 File &quot;Var &lt;DISTRO_VERSION[:=3D]&gt;&quot;, line 1, in &=
lt;module&gt;<br>bb.data_smart.ExpansionError: Failure expanding variable D=
ISTRO_VERSION[:=3D], expression was ${@my_distro_version(d)} which triggere=
d exception NameError: name &#39;my_distro_version&#39; is not defined<br><=
div><br></div><div>I think in this case the INHERIT doesn&#39;t work !</div=
><div><br></div><div><br></div><div>Best regards,</div><div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, Apr 28, 2022 at 1:15 PM &lt;<a href=3D"mailto:Mikko.Rapeli@bmw.de">Mikko=
.Rapeli@bmw.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Hi,<br>
<br>
On Thu, Apr 28, 2022 at 01:04:22PM +0200, Ayoub Zaki via <a href=3D"http://=
lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctopro=
ject.org</a> wrote:<br>
&gt; hello,<br>
&gt; <br>
&gt; <br>
&gt; I would like to have a custom DISTRO_VERSION based on &quot;git descri=
be&quot; of my<br>
&gt; layer:<br>
&gt; <br>
&gt; <br>
&gt; 1) In my layer meta-mylayer/conf/layer.conf, I defined the following:<=
br>
&gt; <br>
&gt; # Set variable to get the location of the layer<br>
&gt; &gt; MY_LAYER_BASE :=3D &#39;${LAYERDIR}&#39;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; 2) I created a my_distro_version.bbclass with following:<br>
&gt; <br>
&gt; def my_distro_version(d):<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0import subprocess<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0project_path =3D d.getVar(&#39;MY_LAYER_BASE&#=
39;, True)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0cmd =3D &quot;git describe --tags&quot;<br>
<br>
I would also add --always and --dirty to be sure non-tagged clones<br>
of repo work and builds with local modifications get marked as such.<br>
<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0proc =3D subprocess.Popen(cmd, stdout=3Dsubpro=
cess.PIPE, shell=3DTrue,<br>
&gt; &gt; cwd=3Dproject_path)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0out, err =3D=C2=A0 proc.communicate()<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0return out.decode(&quot;utf-8&quot;).rstrip()<=
br>
&gt; <br>
&gt; <br>
&gt; 3)=C2=A0 Then I inherited it my=C2=A0 meta-mylayer/conf/distro/my_dist=
ro.conf :<br>
&gt; <br>
&gt; INHERIT +=3D &quot;my_distro_version&quot;<br>
&gt; &gt; DISTRO_VERSION =3D &quot;${@my_distro_version(d)}&quot;<br>
<br>
DISTRO_VERSION :=3D &quot;${@my_distro_version(d)}&quot;<br>
<br>
That should do it :)<br>
<br>
Cheers,<br>
<br>
-Mikko</blockquote></div>

--00000000000005e98c05ddb52ec5--

