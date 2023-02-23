Return-Path: <mubinicyer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77446C636D6
	for <webhook@archiver.kernel.org>; Thu, 23 Feb 2023 18:04:21 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web11.18234.1677175453167195657
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Feb 2023 10:04:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AWGjbN42;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: mubinicyer@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id ee7so30155431edb.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 10:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=U/vliNQJRLK7Uwv5rTbP6DQCwBJgINctrUkfStfiyHo=;
        b=AWGjbN42BW0Lbs9i15e2xfbVsfulNwVZ4ppN49P4r5BhV+oMwznAvoLQQRGc/m6+cu
         9NxlNoIQ8eyckvMuEaUi1Jjzylp0Tgx7e+DJHhtkVpxSQFowOa2QuHqkeBTs14D4GVnn
         FVYMJvz5XbsvkrkSg1l9STQmC/WRMqiJ4UJnaU0LBMqMJFX+lDnqL2DfSrbMwq6NZfQY
         5q2L8nAiYl3jD7QKvcQwhyYe0BV7VpTcqb7BJKmfP98Ig8HokTK4lN9JxXoPMKtoZezm
         Ea3U27rQ36hsOZQoFfW4wftMR9D7HwYLeAji/EnEO0rJmoDwyXCGlHqLuLu4FnW7TEJX
         V+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U/vliNQJRLK7Uwv5rTbP6DQCwBJgINctrUkfStfiyHo=;
        b=mnwhDKgjAilOmT6suKXDEOX8lta2jfxXrgN0jQT7Udik1CUAAxG0GI4g9xUwzZ9Guf
         NKeZj/4bmFgsWeVHMUROmm7xFpgIJkiQBPyAoDkcvSCplUR6YjEzKN/NcnCmiMr7w538
         4wXlc55V6Uvf43mTVRMX5VBZKQxwFpHKKFnmR9MkUcSp8Lfsym5gsMhIRJikWO+XFfIn
         5XvqmfeuqwqgeMHVvBKlRvKzczNjRGAX5CNnUOhKYQFXnNvhwOHO0kuWmoHtw4dtcnXA
         whsm6Q04LsKqOap+u56A368l52WxWK3dS+YvyR7mOUeG2t51orWkcb0NA2xW8ybouiO/
         yhRQ==
X-Gm-Message-State: AO0yUKVOzsGrTOgKqgBqCSLinoLFg4iOtSO5h/ZXH/Qh74y0qz5h2Szo
	z//QNggGR2U5NQDQPRuIQl3eTRtyTTpHafI1+QCBHugs87Fbdg==
X-Google-Smtp-Source: AK7set+ISI6BQMMdh7kcUDizgUbbKh3FQAgHM8EvpOagw7xc5XJPi1XX7dTIY0rEz4sArJdODPhOTUfEzpEBKPYb+V4=
X-Received: by 2002:a17:907:c004:b0:8e5:1a7b:8ab2 with SMTP id
 ss4-20020a170907c00400b008e51a7b8ab2mr5108503ejc.4.1677175451358; Thu, 23 Feb
 2023 10:04:11 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?TcO8YmluIMSww6d5ZXI=?= <mubinicyer@gmail.com>
Date: Thu, 23 Feb 2023 19:04:00 +0100
Message-ID: <CAA9KBABu4LUUNeMygWMvrvrPgk_0tXFvnvXu6bg_6k1Vz29qhg@mail.gmail.com>
Subject: Yocto bitbake unable to find debuginfod
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000011ad905f561d79a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 18:04:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59293

--000000000000011ad905f561d79a
Content-Type: text/plain; charset="UTF-8"

Hi,


I want to activate debuginfod server in yocto 3.1.17 but I get error: Error:
Unable to find 'debuginfod'. I added following in local.conf

PACKAGECONFIG_pn-elfutils-native = "debuginfod libdebuginfod"
DISTRO_FEATURES_append = " debuginfod"

and run bitbake elfutils-native -caddto_recipe_sysroot and then when I
run oe-run-native
elfutils-native debuginfod -- verbose -U ./tmp/deploy/ipk/cortexa9t2hf-neon/


bitbake gives error that debuginfod is not found.

It looks following paths
./build/tmp/work/x86_64-linux/elfutils-native/0.178-r0/recipe-sysroot-native/usr/bin
.

How can I solve the problem?

Thanks.

--000000000000011ad905f561d79a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin:0px 0px 1.1em;padding:0px;border:0px;fo=
nt-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inh=
erit;line-height:inherit;font-family:-apple-system,BlinkMacSystemFont,&quot=
;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,s=
ans-serif;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:b=
oth;color:rgb(35,38,41)">Hi,</p><p style=3D"margin:0px 0px 1.1em;padding:0p=
x;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;f=
ont-stretch:inherit;line-height:inherit;font-family:-apple-system,BlinkMacS=
ystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberati=
on Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:=
inherit;clear:both;color:rgb(35,38,41)"><br>I want to activate debuginfod s=
erver in yocto 3.1.17 but I get error:=C2=A0<code style=3D"margin:0px;borde=
r:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stre=
tch:inherit;line-height:inherit;vertical-align:baseline;box-sizing:inherit;=
white-space:pre-wrap">Error: Unable to find &#39;debuginfod&#39;</code>. I =
added following in=C2=A0<code style=3D"margin:0px;border:0px;font-style:inh=
erit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-hei=
ght:inherit;vertical-align:baseline;box-sizing:inherit;white-space:pre-wrap=
">local.conf</code></p><pre style=3D"margin-top:0px;border:0px;font-variant=
-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;verti=
cal-align:baseline;box-sizing:inherit;width:auto;max-height:600px;overflow:=
auto"><code style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;f=
ont-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:in=
herit;vertical-align:baseline;box-sizing:inherit;background-color:transpare=
nt;white-space:inherit;border-radius:0px">PACKAGECONFIG_pn-elfutils-native =
=3D &quot;debuginfod libdebuginfod&quot;
DISTRO_FEATURES_append =3D &quot; debuginfod&quot;
</code></pre><p style=3D"margin:0px 0px 1.1em;padding:0px;border:0px;font-v=
ariant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit=
;line-height:inherit;font-family:-apple-system,BlinkMacSystemFont,&quot;Seg=
oe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-=
serif;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;=
color:rgb(35,38,41)">and run=C2=A0<code style=3D"margin:0px;border:0px;font=
-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inheri=
t;line-height:inherit;vertical-align:baseline;box-sizing:inherit;white-spac=
e:pre-wrap">bitbake elfutils-native -caddto_recipe_sysroot</code>=C2=A0and =
then when I run=C2=A0<code style=3D"margin:0px;border:0px;font-style:inheri=
t;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height=
:inherit;vertical-align:baseline;box-sizing:inherit;white-space:pre-wrap">o=
e-run-native elfutils-native debuginfod -- verbose -U ./tmp/deploy/ipk/cort=
exa9t2hf-neon/</code>=C2=A0</p><p style=3D"margin:0px 0px 1.1em;padding:0px=
;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;fo=
nt-stretch:inherit;line-height:inherit;font-family:-apple-system,BlinkMacSy=
stemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberatio=
n Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box-sizing:i=
nherit;clear:both;color:rgb(35,38,41)">bitbake gives error that=C2=A0<code =
style=3D"margin:0px;border:0px;font-style:inherit;font-variant:inherit;font=
-weight:inherit;font-stretch:inherit;line-height:inherit;vertical-align:bas=
eline;box-sizing:inherit;white-space:pre-wrap">debuginfod</code>=C2=A0is no=
t found.</p><p style=3D"margin:0px 0px 1.1em;padding:0px;border:0px;font-va=
riant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;=
line-height:inherit;font-family:-apple-system,BlinkMacSystemFont,&quot;Sego=
e UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-s=
erif;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;c=
olor:rgb(35,38,41)">It looks following paths=C2=A0<code style=3D"margin:0px=
;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fon=
t-stretch:inherit;line-height:inherit;vertical-align:baseline;box-sizing:in=
herit;white-space:pre-wrap">./build/tmp/work/x86_64-linux/elfutils-native/0=
.178-r0/recipe-sysroot-native/usr/bin</code>.</p><p style=3D"margin:0px;pad=
ding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:in=
herit;font-stretch:inherit;line-height:inherit;font-family:-apple-system,Bl=
inkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;L=
iberation Sans&quot;,sans-serif;font-size:15px;vertical-align:baseline;box-=
sizing:inherit;clear:both;color:rgb(35,38,41)">How can I solve the problem?=
</p><p style=3D"margin:0px;padding:0px;border:0px;font-variant-numeric:inhe=
rit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inheri=
t;font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot=
;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-serif;font-size:15p=
x;vertical-align:baseline;box-sizing:inherit;clear:both;color:rgb(35,38,41)=
">Thanks.</p></div>

--000000000000011ad905f561d79a--

