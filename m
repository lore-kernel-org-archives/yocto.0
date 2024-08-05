Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B7FC3DA7F
	for <webhook@archiver.kernel.org>; Mon,  5 Aug 2024 13:02:27 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.7395.1722862942974338905
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Aug 2024 06:02:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ksdsR4rb;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52efef496ccso5249902e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 06:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722862941; x=1723467741; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IOnRyEhqhnnwU9r4Ofqm9pKE4G51Q1Px00MWKECExtY=;
        b=ksdsR4rbnU4HuFlxx2t7xXrST//YaMEBAfgVb/YfI21f7ZGmaCWvk8zwrZLBiXLo+L
         BvoOX9X0i5hmvSDekeCqlnl91dYavn2Am8EkgiDBDPM7GCTV4EMfzPCMO4iFeWHf/xBz
         IzDufqvNSPF1FTv2+z3iRQMELmDWnwyfVcWe+Xa287Wu+Jod+9O4YGJ7vA0fuLf90Hr+
         SGhcIYfHOjWPJIkqUUyKgeeiJvSVLq/1K2o0d1RNp0yk5P8ZDZ2oBV76hvoRptJcRI4i
         vbBFRcYrCKWNdGkOtNkF6ZPhBpkhfDEXg1rBWKYUTpmBrMkXCPfd5+kOmjqwDLeF6T0V
         N7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722862941; x=1723467741;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IOnRyEhqhnnwU9r4Ofqm9pKE4G51Q1Px00MWKECExtY=;
        b=GROPfERJCRdKyXKrY3Z26+sNDLlYXFsB699fOoLkB0Ad/ruoKLsbPgwI8ybeYW7v5k
         yUuD4F5lxyPmrDoQLo0GdX6V3lEYMF3OxEq1KpA9BYMNsItMQLPPfI56085uuD8mJzJ7
         2k767HrEB6wLXsquohJ4QH67TVxmxzzHt5CBTHmUCQB5PkjfrAOeYZ4a63l8nOxQraO3
         5anPDTuZ8hLhp4bba/Be26iz3SYjVt2wji04j0KgDKxsaZMQwdodp3Zct+JZpgp+fm2T
         AZgc7+ejIv+xg4WHwVmWbU1jUXiM2G7rfcIrJOnKc1usNoQOyMaZHO+PjnBVKHwTLOmK
         69MQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgmq6H+45bIvMU3M9wfJWgSxwncUpaNqG9U4DEi3XTKMbZr9O6YTU1FxqBo0cHonRiG3lZOhGyCleJw8xgHEDXOUoDJSipeu22QccA
X-Gm-Message-State: AOJu0YwFWoQvMmE1MiTJo4CxAdfss15boO97cCgPemZ5ILMfekKLctp7
	MU5wEeRMWguQuwMX/qHEnsueYxboESvXSCZUzCmJj+S0G+6u9Aj+7FBKIL+TmJsTAvtWc6Xiw0K
	7wcF4rGjHymcuPbhg6BFUuWREV/o=
X-Google-Smtp-Source: AGHT+IGolUYyNEl7T0hhj586+B4mUiHlp+iEfdVC/O11yk2vyygkfQXNepFZrUBtSbL6QGm/NwLkRGPrsQTye7lcQTQ=
X-Received: by 2002:a05:6512:3045:b0:52f:31a:4c08 with SMTP id
 2adb3069b0e04-530b8d0a343mr3935254e87.11.1722862940323; Mon, 05 Aug 2024
 06:02:20 -0700 (PDT)
MIME-Version: 1.0
References: <bc2a6e0bf1d7b9a02b215a0b26b4bbd9dd577072.camel@vrag.ch>
In-Reply-To: <bc2a6e0bf1d7b9a02b215a0b26b4bbd9dd577072.camel@vrag.ch>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 5 Aug 2024 16:02:08 +0300
Message-ID: <CANNYZj8mxUKHcYA1ahDWK3z+jNK+4CRHFW1L6Y3qc4-jOS5NJw@mail.gmail.com>
Subject: Re: [yocto] Missing patch status (upstream status)
To: david.daniel@vrag.ch, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008e060c061eef498a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 13:02:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63652

--0000000000008e060c061eef498a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you publish the layer the patch is in? Or at least attach the complete
patch file and recipe that bitbake is complaining about.

It=E2=80=99s a simple check with a regex and should just work.

Alex

On Mon 5. Aug 2024 at 15.37, David Daniel via lists.yoctoproject.org
<david.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:

> Hi all
>
> I realized that my project does not build anymore. Now a patch status
> is required - but even when I put it in (the patch status), the error
> does not go away:
>
> ERROR: bootcommander-1.0-r0 do_patch: QA Issue: Missing Upstream-Status i=
n
> patch
>
> /mnt/data/yocto/bf133/meta-bf133/recipes-bsp/bootcommander/files/openblt-=
cmake-add-install.patch
> Please add according to
> https://docs.yoctoproject.org/contributor-guide/recipe-style-guide.html#p=
atch-upstream-status
> . [patch-status]
> ERROR: bootcommander-1.0-r0 do_patch: Fatal QA errors were found, failing
> task.
> ERROR: Logfile of failure stored in:
> /mnt/data/yocto/bf133/build/tmp/work/ppc64e5500-vrag-linux/bootcommander/=
1.0/temp/log.do_patch.1483178
> ERROR: Task
> (/mnt/data/yocto/bf133/meta-bf133/recipes-bsp/bootcommander/bootcommander=
_1.0.bb:do_patch)
> failed with exit code '1'
>
> What I did add was something like:
>
> Fix the installation path for CMake based installs.
>
> Upstream-Status: Pending
>
>
> Can anyone pleeeease tell me what is going on there? What is the
> correct syntax / requirements - in the docs I really cannot see
> anything at all that could lead me to the correct answer (gotten
> from
> https://docs.yoctoproject.org/contributor-guide/recipe-style-guide.html#p=
atch-upstream-status
> ).
>
> Can I turn this off? I would really like to be able to apply patches
> whenever I think this is necessary / appropriate and not have bitbake
> rule me out on this.
>
> Thanks for any hints!
>
> BR
> Dave
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63651):
> https://lists.yoctoproject.org/g/yocto/message/63651
> Mute This Topic: https://lists.yoctoproject.org/mt/107730684/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000008e060c061eef498a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can you publish the layer the patch is in? Or at least at=
tach the complete patch file and recipe that bitbake is complaining about.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">It=E2=80=99s a simple ch=
eck with a regex and should just work.</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Alex</div><div dir=3D"auto"><br></div><div><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon 5. Aug 2024 at 15.37=
, David Daniel via <a href=3D"http://lists.yoctoproject.org">lists.yoctopro=
ject.org</a> &lt;david.daniel=3D<a href=3D"mailto:vrag.ch@lists.yoctoprojec=
t.org">vrag.ch@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1p=
x;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,20=
4)">Hi all<br>
<br>
I realized that my project does not build anymore. Now a patch status<br>
is required - but even when I put it in (the patch status), the error<br>
does not go away:<br>
<br>
ERROR: bootcommander-1.0-r0 do_patch: QA Issue: Missing Upstream-Status in =
patch<br>
/mnt/data/yocto/bf133/meta-bf133/recipes-bsp/bootcommander/files/openblt-cm=
ake-add-install.patch<br>
Please add according to <a href=3D"https://docs.yoctoproject.org/contributo=
r-guide/recipe-style-guide.html#patch-upstream-status" rel=3D"noreferrer" t=
arget=3D"_blank">https://docs.yoctoproject.org/contributor-guide/recipe-sty=
le-guide.html#patch-upstream-status</a> . [patch-status]<br>
ERROR: bootcommander-1.0-r0 do_patch: Fatal QA errors were found, failing t=
ask.<br>
ERROR: Logfile of failure stored in: /mnt/data/yocto/bf133/build/tmp/work/p=
pc64e5500-vrag-linux/bootcommander/1.0/temp/log.do_patch.1483178<br>
ERROR: Task (/mnt/data/yocto/bf133/meta-bf133/recipes-bsp/bootcommander/boo=
tcommander_1.0.bb:do_patch) failed with exit code &#39;1&#39;<br>
<br>
What I did add was something=C2=A0like:<br>
<br>
Fix the installation path for CMake based installs.<br>
<br>
Upstream-Status: Pending<br>
<br>
<br>
Can anyone pleeeease tell me what is going on there? What is the<br>
correct syntax / requirements - in the docs I really cannot see<br>
anything at all that could lead me to the correct answer (gotten<br>
from=C2=A0<a href=3D"https://docs.yoctoproject.org/contributor-guide/recipe=
-style-guide.html#patch-upstream-status" rel=3D"noreferrer" target=3D"_blan=
k">https://docs.yoctoproject.org/contributor-guide/recipe-style-guide.html#=
patch-upstream-status</a><br>
).<br>
<br>
Can I turn this off? I would really like to be able to apply patches<br>
whenever I think this is necessary / appropriate and not have bitbake<br>
rule me out on this.<br>
<br>
Thanks for any hints!<br>
<br>
BR<br>
Dave<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63651): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63651" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63651</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107730684/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107730684/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000008e060c061eef498a--

