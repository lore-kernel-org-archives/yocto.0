Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB87C48BC4
	for <webhook@archiver.kernel.org>; Tue, 20 Feb 2024 07:56:02 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.8728.1708415758358501192
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 23:55:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=l4xBuEb9;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-564a59f879aso1668339a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 23:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708415756; x=1709020556; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aqXw1Cn9QSlf6b7dzH8NJdCCnX7e3vuZhOHWzsRl0tE=;
        b=l4xBuEb9rXyyQgVjDysZAfQYmHhr6JL7AIdlTLW6Vi2FSJRJMlUm6r5JaakQPug86w
         ideEij2t4ccJ+WNk0OQy1zJnqtFzV3Oac+nZqzLBBXm0yqGkQle2DIxFPNot5E1nnt9w
         EY0c54uLjzh7OHL8DuvXs2XDrqcpZw+DqeTeE+NsgALeWfVyOBtNTBo2acIriKrRfTnX
         htXawSGyP9Vkz9CQ9C19H3YUWEag30m/FJtguRoy+2Qgl/zFOc+2hJSEx6YwGeG0M5dn
         hAfnfHOdgpw+IMTSxq/BSkqDfi21/nphTe7QJpLhRqGOVQi5ha6ixiwDGhm1ZvoUwWCH
         FiZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708415756; x=1709020556;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aqXw1Cn9QSlf6b7dzH8NJdCCnX7e3vuZhOHWzsRl0tE=;
        b=nAIY8ujLJWwIx7dZnNX6J7dmBsqoTi3VOza8jjWtrbjlQQkdKN4G4uWRMyW3Oxb1iv
         gg3l3m0oYO/8IRpo+1+2wj/Xwo1Cu9Q1xgzX25jvy0zoH/+cIB6+aoeE7BoWwVuRegTe
         ZAxdEDvndEZsYMTfnbLIBrc9JhVvi01ZJytld3xyRQGMW7x51yjIPF799f++b69jlBAr
         P8FncHE2SNjDbSL6fYIbO3Ms4L4wfOcrp8UrzUV6MNXfO3bZDYGgV5CI8VawxeyFBBX2
         /MxQPfE0tiiDNCBK82TascAzMy4Ly0fcKTF0VjdQiSE9pF29Ve+zkCkNermiUGxiAqVT
         CBIg==
X-Gm-Message-State: AOJu0YzYZI1l5eqmw8RS99tzp7R6CQ/aoTwViOs1TKZq/3sp/k3UOBZl
	buTjvWELrLmNgizd3L9yOz6DdAEbik3E+6H8ohZMl8Z2jh/EdxOWUP4uZ4AJoILWKeLKbJ1u3Ov
	V+vG7Mb7BRfGum1rz75MZZdmb53/k727qzYg=
X-Google-Smtp-Source: AGHT+IFOyGBTKgbfa2qXsFmrVF+qBMRDFG1kbXynRoT2YlCyX2QvyElRKRr6GE9EURur6QnWFJV5Mpyt3tndfYvqL0s=
X-Received: by 2002:a17:906:261a:b0:a3d:4e12:c0c1 with SMTP id
 h26-20020a170906261a00b00a3d4e12c0c1mr9365814ejc.39.1708415756509; Mon, 19
 Feb 2024 23:55:56 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 20 Feb 2024 00:55:46 -0700
Message-ID: <CAK5yBb9uX0VHCVRwvtYjRCtFzgKWkxZGSXqxxmUsZHJftcpXhg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW07!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004ba6690611cb8a14"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Feb 2024 07:56:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62548

--0000000000004ba6690611cb8a14
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
tim.orling@konsulko.com 1
mhalstead@linuxfoundation.org 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000004ba6690611cb8a14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellsp=
acing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layou=
t:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collap=
se;border:none"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><=
tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxf=
oundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:=
bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,24=
1);font-weight:bold;text-align:right">2</td></tr></tbody></table><p class=
=3D"MsoNormal" style=3D"background-image:initial;background-position:initia=
l;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Aria=
l,sans-serif">Thanks,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager</sp=
an></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div>

--0000000000004ba6690611cb8a14--

