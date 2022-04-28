Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B95C433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 11:38:56 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web11.8835.1651145926798541713
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:38:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20210112 header.b=mC1Z5xBn;
 spf=pass (domain: googlemail.com, ip: 209.85.222.171,
 mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-qk1-f171.google.com with SMTP id f186so3329227qke.8
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 04:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2W+q5FFc1SqnVseLu6QhtBhEY9Z73u4UU+8zuCwdl78=;
        b=mC1Z5xBnS1uANkFgR8PwKXKXLHVjT5yxvd45kVzkWRwSkbozVBS0xsgKDs7QpTM20p
         r2JPgf9+Q7YJg6V6uwxYXKbtkolBPIc8JH6trDIEHnnxWVMu0ryWiV0ypOluptJvv8s7
         eWxOdWpMRq/EAyeBwmsGJxQPGWLgNXBeXLwj1c6Rx65Fj9fqexu015NExR8jtfhze+C5
         D5tZ8ujOmNGTHpWMzS86T/TIcwOmcL5KdX2qha0OMcrhP9ZBaUGywGrG4540DDqCTfFg
         U14XbFhvmZwLsbRzm4o5WG4sutZlUKGjxM8Os2QTxrc/DBuNzW/vQqKMXerPv5Sxbmnl
         vnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2W+q5FFc1SqnVseLu6QhtBhEY9Z73u4UU+8zuCwdl78=;
        b=FS3lkJfOHHXLBQ7+d9lNAx7RFmOFWfWWeS+bz1LCtCLa/ci0oIuaQkistjF9qREhny
         f2gTcspRBaz9DrA3crq8H/hY6aL6gH92JQL+5lEARRiQfweg//Kb/qp/15UeNLNqEQME
         y5MDR8+6aAE+lH655CEzlrk7/sWh4heQQ8xeuqxhEb+Uvtp28q8qRuKKoDTsnfK7r0Ud
         jaGZo90jej8D6Jw4p7o8uaQUSobTWAEe4P71OEi/o6BqtWyD7M69tkkg6e4eXB5LSZ59
         6yqbHkres+2g6iixs/Vpe3nB9ZCDdjpgi/4Jd2J5pJTU0C1bXJ6F2BM7SdCQic3smHeP
         i/HQ==
X-Gm-Message-State: AOAM5304HO4rrskCT2uazJc+FhAiP+lqCYm2HnGv+GDfIagyG9HCjwrQ
	+7+lY5UTtFUKreFh0GgEAO8vH0UHxJpyhMrGgeg=
X-Google-Smtp-Source: 
 ABdhPJzwU+2/QNgAqMKZvguq4bMVSBeYmfPFBgIYlNjOVr+3Azx1sSS5LZtEvDjb2r0tfYxK7PZvk6vtECv8+rG2Tn8=
X-Received: by 2002:a37:de13:0:b0:699:fc0a:d12f with SMTP id
 h19-20020a37de13000000b00699fc0ad12fmr19380664qkj.35.1651145925763; Thu, 28
 Apr 2022 04:38:45 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CA+-BmJZxufzfqd=VR6MH+ZB3osYwpSyHvW=SvNNpag3gs+Wz8w@mail.gmail.com>
 <Ymp3MwKCqW2DbWe2@korppu>
 <CA+-BmJYsMtjHw=bUUJ2-DF4N-Jvun_9uYh9k=a_DrUoBoSAdiQ@mail.gmail.com>
 <Ymp7VsxfuQeCSgKx@korppu>
In-Reply-To: <Ymp7VsxfuQeCSgKx@korppu>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Thu, 28 Apr 2022 13:38:35 +0200
Message-ID: 
 <CA+-BmJY1jCPuv=iUnvKghVZ48MosAEfbn5Nx5DopW6H8BmvjXg@mail.gmail.com>
Subject: Re: [yocto] Custom DISTRO_VERSION with git describe
To: Mikko.Rapeli@bmw.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000060a6d705ddb55e19"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 11:38:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56935

--00000000000060a6d705ddb55e19
Content-Type: text/plain; charset="UTF-8"

I'm also suing dunfell branch, I did a small modification in
my_distro_version.bbclass:

def my_distro_version(d):
>     import subprocess
>     project_path = d.getVar('MY_LAYER_BASE', True)
>     cmd = "git describe --tags"
>     proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, shell=True,
> cwd=project_path)
>     out, err =  proc.communicate()
>     return out.decode("utf-8").rstrip()
> MY_DISTRO_VERSION := "${@my_distro_version(d)}"



Then in meta-mylayer/conf/distro/my_distro.conf I used:

> INHERIT += "my_distro_version"
> DISTRO_VERSION := "${MY_DISTRO_VERSION}"


It seems to be working now :-)


Thank you for the support :-)


cheers,


On Thu, Apr 28, 2022 at 1:32 PM <Mikko.Rapeli@bmw.de> wrote:

> On Thu, Apr 28, 2022 at 01:25:03PM +0200, Ayoub Zaki wrote:
> > Hi,
> >
> > thanks for the quick reply I tried your suggestion but I get:
> >
> > ERROR: Unable to parse Var <DISTRO_VERSION[:=]>
> > Traceback (most recent call last):
> >   File "Var <DISTRO_VERSION[:=]>", line 1, in <module>
> > bb.data_smart.ExpansionError: Failure expanding variable
> > DISTRO_VERSION[:=], expression was ${@my_distro_version(d)} which
> triggered
> > exception NameError: name 'my_distro_version' is not defined
>
> Did you include the bbclass?
>
> > I think in this case the INHERIT doesn't work !
>
> Well I have in distro config:
>
> require classes/distroversion.bbclass
>
> which has a single python function
>
> def get_distro_version(d, dirty=True, abbrev=None):
>
> which basically calls "git describe --always --dirty --abbrev=8",
> the last one was added when git versions started behaving differently
> and breaking reproducibility.
>
> And then distro config also has:
>
> DISTRO_VERSION := "${@get_distro_version(d)}"
>
> This works for me up to yocto 3.1 dunfell at least.
>
> Cheers,
>
> -Mikko

--00000000000060a6d705ddb55e19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m also suing dunfell branch, I did a small modi=
fication in my_distro_version.bbclass:<br><br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">def my_distro_version(d):<br>=C2=A0 =C2=A0 import subp=
rocess<br>=C2=A0 =C2=A0 project_path =3D d.getVar(&#39;MY_LAYER_BASE&#39;, =
True)<br> =C2=A0 =C2=A0 cmd =3D &quot;git describe --tags&quot;<br>=C2=A0 =
=C2=A0 proc =3D subprocess.Popen(cmd, stdout=3Dsubprocess.PIPE, shell=3DTru=
e, cwd=3Dproject_path)<br>=C2=A0 =C2=A0 out, err =3D =C2=A0proc.communicate=
()<br>=C2=A0 =C2=A0 return out.decode(&quot;utf-8&quot;).rstrip()<br>MY_DIS=
TRO_VERSION :=3D &quot;${@my_distro_version(d)}&quot;</blockquote><br><br>T=
hen in meta-mylayer/conf/distro/my_distro.conf I used:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">INHERIT +=3D &quot;my_distro_version&quot;=
<br>DISTRO_VERSION :=3D &quot;${MY_DISTRO_VERSION}&quot;</blockquote><div><=
br></div><div>It seems to be working now :-)</div><div><br></div><div><br><=
/div><div>Thank you for the support :-)</div><div><br></div><div><br></div>=
<div>cheers,=C2=A0</div></div><div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 28, 2022 at 1:32 P=
M &lt;<a href=3D"mailto:Mikko.Rapeli@bmw.de">Mikko.Rapeli@bmw.de</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Thu, Apr=
 28, 2022 at 01:25:03PM +0200, Ayoub Zaki wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; thanks for the quick reply I tried your suggestion but I get:<br>
&gt; <br>
&gt; ERROR: Unable to parse Var &lt;DISTRO_VERSION[:=3D]&gt;<br>
&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0File &quot;Var &lt;DISTRO_VERSION[:=3D]&gt;&quot;, line 1,=
 in &lt;module&gt;<br>
&gt; bb.data_smart.ExpansionError: Failure expanding variable<br>
&gt; DISTRO_VERSION[:=3D], expression was ${@my_distro_version(d)} which tr=
iggered<br>
&gt; exception NameError: name &#39;my_distro_version&#39; is not defined<b=
r>
<br>
Did you include the bbclass?<br>
<br>
&gt; I think in this case the INHERIT doesn&#39;t work !<br>
<br>
Well I have in distro config:<br>
<br>
require classes/distroversion.bbclass<br>
<br>
which has a single python function<br>
<br>
def get_distro_version(d, dirty=3DTrue, abbrev=3DNone):<br>
<br>
which basically calls &quot;git describe --always --dirty --abbrev=3D8&quot=
;,<br>
the last one was added when git versions started behaving differently<br>
and breaking reproducibility.<br>
<br>
And then distro config also has:<br>
<br>
DISTRO_VERSION :=3D &quot;${@get_distro_version(d)}&quot;<br>
<br>
This works for me up to yocto 3.1 dunfell at least.<br>
<br>
Cheers,<br>
<br>
-Mikko</blockquote></div>

--00000000000060a6d705ddb55e19--

