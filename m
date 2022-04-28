Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6366AC433FE
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 11:04:36 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web08.8470.1651143874551916941
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:04:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20210112 header.b=Aa/KjM1Q;
 spf=pass (domain: googlemail.com, ip: 209.85.222.181,
 mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-qk1-f181.google.com with SMTP id b189so3275434qkf.11
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=oRkRO+jxdKcIa6v3+iwinsEhcLQP2od42UU2UnVlfqo=;
        b=Aa/KjM1QHcjJHISqMHMGBn2obqdnnfCtxyYgN4iiv5180R77kE/bQjIncs0/KwiQId
         jOStAxhhrsQc/qb+aCgf/XBy8PyhUxESC3g04DUmMs3Hq1HXEh4WtyhZyJnCXIzEVeHn
         2z9LEYr/dCEIrdTfJ4wVgUt62devQ3SPH3PMml3+6oAGxjnVNkQ/97bHCEDr3INpkULU
         Mvy0VWM8Cs9EJlhjT20nyQ+y596ma1+zLF22WcSoQbq9AyZxauY2l4VjSiOWCPhZv503
         8B8ApKRM982s8CR8cTA1cjYo20aNF/iEDtXR2iMUSNRYGW+n6cURyFW2t0UUKhX+m/dl
         mZ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oRkRO+jxdKcIa6v3+iwinsEhcLQP2od42UU2UnVlfqo=;
        b=Ymmxa+sCh1/w/SubYlcEvHCouTKiRmT6VieFl1H3vl6Sxx04hBNG458PIsmmCklWv5
         A9o+JoHOk1eafiT4d5Bv5BjLvZ1xnH0D4WnyjpjWP2ezRYAoYLuZz0sZv6DRTU6QAObd
         v7dPtIzWSQane5HI9cc/w9sZ43Brdfa8GHm+JJbUi2iKmJysEsDlNZBRUbWqQJSgFljN
         WYEWjHXxNaZjl1wxRpalAzOnyENuo23RkVV8L9NB9zUTHUWT+W7ILDcllTSd4qKcC2H6
         dqlO4w1Iz7RmiU3diXfQQDNe+56k0uHQItdJHT3whEONRpdQ5WL0zDdOlr8NC2X0lK6N
         wKKw==
X-Gm-Message-State: AOAM531v1nPTvSLSI/o/InFJwbMSRucLKut7U53rooOOBYLP8j5RQdQj
	vNH+n6sLSPCgXhxVKigVPXpg7RYecq5pdE/sgt57QlvNDio=
X-Google-Smtp-Source: 
 ABdhPJz8XcwNSzNitQ0lN6SQOP5MSS9D9N42dK5N834iwtveenf7aderDlIgI3tJ6kVlH311CL6rZ+pN8G0jJ2mVofQ=
X-Received: by 2002:a05:620a:440e:b0:69f:7bc7:5727 with SMTP id
 v14-20020a05620a440e00b0069f7bc75727mr7191007qkp.294.1651143873333; Thu, 28
 Apr 2022 04:04:33 -0700 (PDT)
MIME-Version: 1.0
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Thu, 28 Apr 2022 13:04:22 +0200
Message-ID: 
 <CA+-BmJZxufzfqd=VR6MH+ZB3osYwpSyHvW=SvNNpag3gs+Wz8w@mail.gmail.com>
Subject: Custom DISTRO_VERSION with git describe
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000b0e7d05ddb4e48f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 11:04:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56930

--0000000000000b0e7d05ddb4e48f
Content-Type: text/plain; charset="UTF-8"

hello,


I would like to have a custom DISTRO_VERSION based on "git describe" of my
layer:


1) In my layer meta-mylayer/conf/layer.conf, I defined the following:

# Set variable to get the location of the layer
> MY_LAYER_BASE := '${LAYERDIR}'



2) I created a my_distro_version.bbclass with following:

def my_distro_version(d):
>     import subprocess
>     project_path = d.getVar('MY_LAYER_BASE', True)
>     cmd = "git describe --tags"
>     proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True,
> cwd=project_path)
>     out, err =  proc.communicate()
>     return out.decode("utf-8").rstrip()


3)  Then I inherited it my  meta-mylayer/conf/distro/my_distro.conf :

INHERIT += "my_distro_version"
> DISTRO_VERSION = "${@my_distro_version(d)}"


>

so far so good I can see that DISTRO_VERSION is following the git describe :


NOTE: Resolving any missing task queue dependencies

MACHINE = "beaglebone-yocto"
> DISTRO = "my-distro"
> DISTRO_VERSION = "v1.4-rc14"
> TUNE_FEATURES = "arm vfp cortexa8 neon callconvention-hard"
> TARGET_FPU = "hard"
> meta-mylayer = "HEAD:ca8a5390db5e5280c3b178097ad36900c97160a8"
> meta-swupdate = "HEAD:2e08de8582aa18871657ea8283ea35a050927d4f"
> meta-qt5 = "HEAD:6bfe29d9e8fdd5c2fd17c736814b6df859b3af50"



But I'm getting a lot of errors :



the basehash value changed from
efc66702573a04ced9af3be8902d643f8709969ad8cdf19b822e9bd14910c755 to
d24664027a632185bda9807951586efdf9b9160bb7cef2524d7c9d577cc6f527. The
metadata is not deterministic and this needs to be fixed.
> ERROR: The following commands may help:
> ERROR: $ bitbake my-image -cdo_image_wic -Snone
> ERROR: Then:
> ERROR: $ bitbake my-image -cdo_image_wic -Sprintdiff



and some of the recipes don't get the right  DISTRO_VERSION.

probably a multi processing problem in yocto since I used

INHERIT += "my_distro_version" all recipes will want to execute
DISTRO_VERSION = "${@my_distro_version(d)}".



I didn't find a way to get  DISTRO_VERSION =
"${@my_distro_version(d)}" executed only once!


Any suggestions ?


Thanks

--0000000000000b0e7d05ddb4e48f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"monospace">hello,<br><br><br>I would like to=
 have a custom=C2=A0DISTRO_VERSION based on &quot;git describe&quot; of my =
layer:<br><br><br>1) In my layer meta-mylayer/conf/layer.conf, I defined th=
e following:<br><br></font><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><font face=3D"monospace"># Set variable to get the location of the layer<=
br>MY_LAYER_BASE :=3D &#39;${LAYERDIR}&#39;</font></blockquote><font face=
=3D"monospace"><br><br>2) I created a my_distro_version.bbclass with follow=
ing:<br><br></font><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><font =
face=3D"monospace">def my_distro_version(d):<br>=C2=A0 =C2=A0 import subpro=
cess<br>=C2=A0 =C2=A0 project_path =3D d.getVar(&#39;MY_LAYER_BASE&#39;, Tr=
ue)=C2=A0<br>=C2=A0 =C2=A0 cmd =3D &quot;git describe --tags&quot;<br>=C2=
=A0 =C2=A0 proc =3D subprocess.Popen(cmd, stdout=3Dsubprocess.PIPE, shell=
=3DTrue, cwd=3Dproject_path)<br>=C2=A0 =C2=A0 out, err =3D =C2=A0proc.commu=
nicate()<br>=C2=A0 =C2=A0 return out.decode(&quot;utf-8&quot;).rstrip()</fo=
nt></blockquote><font face=3D"monospace"><br>3) =C2=A0Then I inherited it m=
y =C2=A0meta-mylayer/conf/distro/my_distro.conf :</font><div><font face=3D"=
monospace"><br></font><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><sp=
an style=3D"font-family:monospace">INHERIT +=3D &quot;my_distro_version&quo=
t;</span><font face=3D"monospace"><br>DISTRO_VERSION =3D &quot;${@my_distro=
_version(d)}&quot;</font></blockquote><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><br></blockquote><div><font face=3D"monospace"><br></font></di=
v><div><font face=3D"monospace"><br></font></div><div><font face=3D"monospa=
ce">so far so good I can see that DISTRO_VERSION is following the git descr=
ibe :</font></div><div><font face=3D"monospace"><br></font></div><div><font=
 face=3D"monospace"><br></font></div><font face=3D"monospace">NOTE: Resolvi=
ng any missing task queue dependencies<br><br></font><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><font face=3D"monospace">MACHINE =3D &quot;beag=
lebone-yocto&quot;<br>DISTRO =3D &quot;my-distro&quot;<br>DISTRO_VERSION =
=3D &quot;v1.4-rc14&quot;<br>TUNE_FEATURES =3D &quot;arm vfp cortexa8 neon =
callconvention-hard&quot;<br>TARGET_FPU =3D &quot;hard&quot;<br>meta-mylaye=
r =3D &quot;HEAD:ca8a5390db5e5280c3b178097ad36900c97160a8&quot;<br>meta-swu=
pdate =3D &quot;HEAD:2e08de8582aa18871657ea8283ea35a050927d4f&quot;<br>meta=
-qt5 =3D &quot;HEAD:6bfe29d9e8fdd5c2fd17c736814b6df859b3af50&quot;</font></=
blockquote><pre style=3D"white-space:pre-wrap;box-sizing:inherit;margin-top=
:0px;margin-bottom:0px;color:rgb(51,51,51)"><br></pre><pre style=3D"white-s=
pace:pre-wrap;box-sizing:inherit;margin-top:0px;margin-bottom:0px;color:rgb=
(51,51,51)"><br></pre><pre style=3D"white-space:pre-wrap;box-sizing:inherit=
;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51)">But I&#39;m getting =
a lot of errors :</pre><pre style=3D"white-space:pre-wrap;box-sizing:inheri=
t;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51)"><br></pre><pre styl=
e=3D"white-space:pre-wrap;box-sizing:inherit;margin-top:0px;margin-bottom:0=
px;color:rgb(51,51,51)"><br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">the basehash value changed from efc66702573a04ced9af3be8902d643f8709969a=
d8cdf19b822e9bd14910c755 to d24664027a632185bda9807951586efdf9b9160bb7cef25=
24d7c9d577cc6f527. The metadata is not deterministic and this needs to be f=
ixed.<br>ERROR: The following commands may help:<br>ERROR: $ bitbake my-ima=
ge -cdo_image_wic -Snone<br>ERROR: Then:<br>ERROR: $ bitbake my-image -cdo_=
image_wic -Sprintdiff</blockquote><div><br></div><div><br></div><div>and so=
me of the recipes don&#39;t get the right =C2=A0DISTRO_VERSION.</div><div><=
br></div><div>probably a multi processing problem in yocto since I used </d=
iv><div><br></div></pre><pre style=3D"white-space:pre-wrap;box-sizing:inher=
it;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51)"><span style=3D"col=
or:rgb(34,34,34);white-space:normal">INHERIT +=3D &quot;my_distro_version&q=
uot; all recipes will want to execute=C2=A0</span>DISTRO_VERSION =3D &quot;=
${@my_distro_version(d)}&quot;.</pre><pre style=3D"white-space:pre-wrap;box=
-sizing:inherit;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51)"><br><=
/pre><pre style=3D"white-space:pre-wrap;box-sizing:inherit;margin-top:0px;m=
argin-bottom:0px;color:rgb(51,51,51)"><br></pre><pre style=3D"white-space:p=
re-wrap;box-sizing:inherit;margin-top:0px;margin-bottom:0px;color:rgb(51,51=
,51)">I didn&#39;t find a way to get =C2=A0<span style=3D"font-family:Arial=
,Helvetica,sans-serif">DISTRO_VERSION =3D &quot;${@my_distro_version(d)}&qu=
ot; executed only once!</span></pre><pre style=3D"white-space:pre-wrap;box-=
sizing:inherit;margin-top:0px;margin-bottom:0px;color:rgb(51,51,51)"><span =
style=3D"font-family:Arial,Helvetica,sans-serif"><br></span></pre><pre styl=
e=3D"white-space:pre-wrap;box-sizing:inherit;margin-top:0px;margin-bottom:0=
px;color:rgb(51,51,51)">Any suggestions ?</pre><pre style=3D"white-space:pr=
e-wrap;box-sizing:inherit;margin-top:0px;margin-bottom:0px;color:rgb(51,51,=
51)"><br></pre><pre style=3D"white-space:pre-wrap;box-sizing:inherit;margin=
-top:0px;margin-bottom:0px;color:rgb(51,51,51)">Thanks</pre></div></div>

--0000000000000b0e7d05ddb4e48f--

