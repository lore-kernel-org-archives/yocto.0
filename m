Return-Path: <jacob.avraham@auto-talks.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A34CD128A
	for <webhook@archiver.kernel.org>; Wed,  3 Apr 2024 20:50:19 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.22988.1712177413105225369
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Apr 2024 13:50:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@auto-talks.com header.s=google header.b=kyG0Ry5r;
 spf=pass (domain: auto-talks.com, ip: 209.85.218.54, mailfrom: jacob.avraham@auto-talks.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a4e39f5030dso41510266b.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 Apr 2024 13:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=auto-talks.com; s=google; t=1712177411; x=1712782211; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PN/Fdfdpj2xocXP7o4Zh40qxHmnp/GcDL/TdCrbGWtY=;
        b=kyG0Ry5rVbJV0QA5dgvzcC8j4UbZc+myAulSQCmIJORCmNhPGpihQdQjzDvw6AXwfp
         uLV5p15rXwu7GQTv5QYM/GbZT2CCs4KmQicxOUp4HRds4GFmqGREJQIGFNFMYDGtZsoo
         YGRE/4U8m7YVCneINS7/iZaRqflvrIJ8/sB1o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712177411; x=1712782211;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PN/Fdfdpj2xocXP7o4Zh40qxHmnp/GcDL/TdCrbGWtY=;
        b=b/oDCVhtTrRSCCVyPqOJCw0kBcNczkGy2ZcltrfEA8aFFZRsYvEQm11z/1mqMibHTj
         phI7RjktAYaHfsOkf3tUfDF0CzyQqZvKs8KPJ+Oc2eirbC72eP6S2iYcjIlNLOonqh5v
         ClbdLFp/D+IUN7LeWqSvuU7aEO012zKQ8cTbGArZry9PBeqmrPgjfujrawAGyFBjRDJh
         UPMhgXULV3VjWrPIzSf/dnXBLtJD2ZHt+9eBAALdEzD8cSFp+VPXezkYjnWKxfELg9YF
         5HSi58FOj6TYvuNYCs2Q9v+9QrUnJx/Pjd2K31PCIZ3RQwL4a2iMp9Jrc3rmbV86gERZ
         b+bg==
X-Gm-Message-State: AOJu0Yzc2upzX6BQp+cjgV5NhmT0ZkNIZ5rvDZScNXf/q6prb2Wwctc8
	zsC3d7j3Rsdfud9/Xo/vYMDiRrQFpalhpCcjkRIK6VPWBNsxQDh3ksJBdF0wUjx565y2mLiZ4fc
	kFtl3Fx2En/vrQO7CDZfOLRqvJTwVKGgfaLvIgunDmxURkVgSSNs=
X-Google-Smtp-Source: AGHT+IFXnyjr5SXw8RAog4lBI8CHInDmuytQPUom47yITsv/NGVOVCb6A9FkaOZ3nMEdtCMmPdBCCDM1+mUP3xXnjvk=
X-Received: by 2002:a17:907:10c2:b0:a4d:f56a:19fc with SMTP id
 rv2-20020a17090710c200b00a4df56a19fcmr343684ejb.13.1712177410918; Wed, 03 Apr
 2024 13:50:10 -0700 (PDT)
MIME-Version: 1.0
From: Jacob Avraham <jacob.avraham@auto-talks.com>
Date: Wed, 3 Apr 2024 23:49:14 +0300
Message-ID: <CAD_Sx11CVX9LBpg3402JwdoWzvnmOCewhRAWLa-tHHNfBJAs=g@mail.gmail.com>
Subject: Add json-c package to yocto sdk
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005eeaee0615375ed8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Apr 2024 20:50:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62885

--0000000000005eeaee0615375ed8
Content-Type: text/plain; charset="UTF-8"

I want to create a yocto sdk for arm64 architecture that includes the
json-c library package.

After running 'source oe-init-build-env' in the poky directory, I did the
following changes to the local.conf file: MACHINE ??= "qemuarm64"
IMAGE_INSTALL += " json-c"

Then I ran 'bitbake core-image-minimal' and 'bitbake -c populate_sdk
core-image-minimal'.

I see that the package is compiled as native, but I don't see it in the
created image, nor in the SDK. I tried it also with target
'core-image-full-cmdline', but no luck there either.

What am I missing here?


Jacob

--0000000000005eeaee0615375ed8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin:0px 0px 1.1em;padding:0px;border:0px;fo=
nt-variant-numeric:inherit;font-variant-east-asian:inherit;font-variant-alt=
ernates:inherit;font-stretch:inherit;line-height:inherit;font-family:-apple=
-system,BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quo=
t;,&quot;Liberation Sans&quot;,sans-serif;font-kerning:inherit;font-feature=
-settings:inherit;font-size:15px;vertical-align:baseline;box-sizing:inherit=
;clear:both;color:rgb(12,13,14)">I want to create a yocto sdk for arm64 arc=
hitecture that includes the json-c library package.</p><p style=3D"margin:0=
px 0px 1.1em;padding:0px;border:0px;font-variant-numeric:inherit;font-varia=
nt-east-asian:inherit;font-variant-alternates:inherit;font-stretch:inherit;=
line-height:inherit;font-family:-apple-system,BlinkMacSystemFont,&quot;Sego=
e UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-s=
erif;font-kerning:inherit;font-feature-settings:inherit;font-size:15px;vert=
ical-align:baseline;box-sizing:inherit;clear:both;color:rgb(12,13,14)">Afte=
r running &#39;source oe-init-build-env&#39; in the poky directory, I did t=
he following changes to the local.conf file: MACHINE ??=3D &quot;qemuarm64&=
quot; <br>IMAGE_INSTALL +=3D &quot; json-c&quot;</p><p style=3D"margin:0px =
0px 1.1em;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-=
east-asian:inherit;font-variant-alternates:inherit;font-stretch:inherit;lin=
e-height:inherit;font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe U=
I Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-seri=
f;font-kerning:inherit;font-feature-settings:inherit;font-size:15px;vertica=
l-align:baseline;box-sizing:inherit;clear:both;color:rgb(12,13,14)">Then I =
ran &#39;bitbake core-image-minimal&#39; and &#39;bitbake -c populate_sdk c=
ore-image-minimal&#39;.</p><p style=3D"margin:0px 0px 1.1em;padding:0px;bor=
der:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-v=
ariant-alternates:inherit;font-stretch:inherit;line-height:inherit;font-fam=
ily:-apple-system,BlinkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Se=
goe UI&quot;,&quot;Liberation Sans&quot;,sans-serif;font-kerning:inherit;fo=
nt-feature-settings:inherit;font-size:15px;vertical-align:baseline;box-sizi=
ng:inherit;clear:both;color:rgb(12,13,14)">I see that the package is compil=
ed as native, but I don&#39;t see it in the created image, nor in the SDK. =
I tried it also with target &#39;core-image-full-cmdline&#39;, but no luck =
there either.</p><p style=3D"margin:0px;padding:0px;border:0px;font-variant=
-numeric:inherit;font-variant-east-asian:inherit;font-variant-alternates:in=
herit;font-stretch:inherit;line-height:inherit;font-family:-apple-system,Bl=
inkMacSystemFont,&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;L=
iberation Sans&quot;,sans-serif;font-kerning:inherit;font-feature-settings:=
inherit;font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:bot=
h;color:rgb(12,13,14)">What am I missing here?</p><p style=3D"margin:0px;pa=
dding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-asian:i=
nherit;font-variant-alternates:inherit;font-stretch:inherit;line-height:inh=
erit;font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI Adjusted&q=
uot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-serif;font-kerni=
ng:inherit;font-feature-settings:inherit;font-size:15px;vertical-align:base=
line;box-sizing:inherit;clear:both;color:rgb(12,13,14)"><br></p><p style=3D=
"margin:0px;padding:0px;border:0px;font-variant-numeric:inherit;font-varian=
t-east-asian:inherit;font-variant-alternates:inherit;font-stretch:inherit;l=
ine-height:inherit;font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe=
 UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&quot;,sans-se=
rif;font-kerning:inherit;font-feature-settings:inherit;font-size:15px;verti=
cal-align:baseline;box-sizing:inherit;clear:both;color:rgb(12,13,14)">Jacob=
</p><div><br></div></div>

--0000000000005eeaee0615375ed8--

