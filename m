Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30BACC2BB41
	for <webhook@archiver.kernel.org>; Tue, 16 Aug 2022 08:35:27 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web10.13181.1660638925314852886
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Aug 2022 01:35:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=oTOWQjHY;
 spf=pass (domain: lightyear.one, ip: 209.85.218.49,
 mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ej1-f49.google.com with SMTP id gk3so17598250ejb.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 16 Aug 2022 01:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=STpFQOaVOYALJcEwSZQWolGilpLi7BqQJy6RUZiZytI=;
        b=oTOWQjHYKh6HjbyOZdwVIbfHQH+Fm6/QeV6qxBnRPZQMlHI02UNuTB4ODDVuOqrYVj
         K7nWSJc6qUVTOp9zo1ZMCtyArX/uXJmD2yeIcXuBvoTF5GXXZk28kRjU7NjiL/MNtKAk
         Xq+K/B0U3yfsofF95xEHV18HqisgUmpJY7N4gwZwv1ElHP8e9r3+h01Cutu4UeRxkFq5
         32ryASmhVUHW5KML25fjH2oTqxD77km35uA3T/wh79R6KQn30ULHr5DDbdLBwf8PIuF8
         Qv7CGWOfWg0/chuccm+O6c6T6gSSmIrpgnDV5vi3zziUw4eI7Qka0cQMJRrba8hxHO7m
         IK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=STpFQOaVOYALJcEwSZQWolGilpLi7BqQJy6RUZiZytI=;
        b=piQfw9a65DB5YBhco0wO+JOsD45YbaXkojODMX6jm78CBtTN3fCJZlao3zxmZvjMP6
         5g3iAofyTtZpSZQpXIh+mLuhVxM38lEvC/TMliSDp5jok73Ai7qhc74Fr/NMlA80eDqo
         RkRez8piQQ5SK+NHLV+AxTjvF+Jr3r97UmExWtlJLNThvY90YAfy0f0yD0CzgQ5Ar7r7
         F4RtuDP+xkty8qxjg+Dzsja/Wl4OYtxRwROpVv6Er5n0+AojTBpjiNnUL2hHw20NsWqe
         GEHAgLdK/ECbLBohn1+5e8C2fK2wcmnw6tJEFB/+VreThWpLw66wuLQCGYI4axUaqwpN
         lF2Q==
X-Gm-Message-State: ACgBeo1lujIYW1NE/G2sS+GxlkPwADe+M5b2enB0sNjO9+k8gBCKpYWc
	qMYTPMkIMW2FlSEJEBrDinqULKD+lSIItVMnleMyurYt+btoDUnNTVzHjMaW0M9RhHz19hbab5i
	trUUEAQ8TGN1mBCamVFMSJjGk+o2ikaRb0MZDa0E=
X-Google-Smtp-Source: 
 AA6agR7+qljWX86o8xVvrDMrrfBfaZ4/Zne8KPtXhKt43h8xBK4ATuVxR1btr527Gi6SJd7vRJSnrPFbo1hQx3luJcM=
X-Received: by 2002:a17:907:270d:b0:730:6082:eb62 with SMTP id
 w13-20020a170907270d00b007306082eb62mr12536618ejk.95.1660638923318; Tue, 16
 Aug 2022 01:35:23 -0700 (PDT)
MIME-Version: 1.0
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Tue, 16 Aug 2022 10:34:46 +0200
Message-ID: 
 <CAKO9uzq0t4VnA_2Kv5wBH5kLk-fcR0Kn7qcqQgegrmozCzVZEQ@mail.gmail.com>
Subject: Conditional configuration of recipe dependent on other recipe
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002086fe05e657a1b7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Aug 2022 08:35:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57853

--0000000000002086fe05e657a1b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Currently we are struggling with 'interdependent' recipes.

For example:
A webservice of ours uses a specific port, and needs to be allowed through
the firewall, for which we also have a recipe.

Is there a neat way to make sure that the firewall recipe only allows that
specific port if that webservice recipe is actually included in the image?
And the firewall recipe should allow the port configured in the webservice
recipe?

Thanks,
Kind regards,

Maik Vermeulen

Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one/>
+31 6 16 82 73 79 <+31616827379>

--=20
=20
<https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotli=
ghtroles&utm_medium=3Demail#vacancies>

--=20


Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
www.lightyear.one=20
<https://lightyear.one/>
 <https://www.linkedin.com/company/lightyear.one/>

This email may contain information which is privileged and/or=20
confidential. If you received this e-mail in error, please notify us=20
immediately by e-mail and delete the email without copying or disclosing=20
its contents to any other person. Lightyear is a trade name of Atlas=20
Technologies B.V. and is registered at the Dutch Chamber of Commerce under=
=20
number 67264298.=C2=A0

--0000000000002086fe05e657a1b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Currently we are struggling with &#=
39;interdependent&#39; recipes.</div><div><br></div><div>For example:=C2=A0=
</div><div>A webservice=C2=A0of ours uses a specific port, and needs to be =
allowed through the firewall, for which we also have a recipe.</div><div><b=
r></div><div>Is there a neat way to make sure that the firewall=C2=A0recipe=
 only allows that specific port if that webservice recipe is actually inclu=
ded in the image? And the firewall=C2=A0recipe should allow the port config=
ured in the webservice recipe?</div><div><div><br></div><div>Thanks,</div><=
div>Kind regards,<br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><br><div><span =
style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;font-si=
ze:16px">Maik Vermeulen</span></div><br><div><span style=3D"color:rgb(29,29=
,27);font-family:Helvetica,Arial,sans-serif;font-size:13px">Embedded Softwa=
re Engineer=E2=80=82=E2=80=94=E2=80=82<a href=3D"https://www.lightyear.one/=
" rel=3D"noopener noreferrer" style=3D"color:rgb(51,206,224)" target=3D"_bl=
ank">Lightyear</a></span></div><div><span style=3D"color:rgb(29,29,27);font=
-family:Helvetica,Arial,sans-serif;font-size:13px"><a href=3D"tel:+31616827=
379" rel=3D"noopener" style=3D"color:rgb(29,29,27)" target=3D"_blank">+31 6=
 16 82 73 79</a></span></div></div></div></div></div></div></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
--0000000000002086fe05e657a1b7--

