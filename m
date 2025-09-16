Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91410CAC598
	for <webhook@archiver.kernel.org>; Tue, 16 Sep 2025 14:46:36 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web11.103.1758033993143898021
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Sep 2025 07:46:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=T9L7zg5k;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b54a8c2eb5cso4398446a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 07:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758033992; x=1758638792; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lNYgS8dNjPtiqlsHM7XET8aXMWBSIMrXcDQ2g7a+fSc=;
        b=T9L7zg5kF+FF/eoA5tMq81lbEfQtAeaeNePJJOnAe3t3cN+1sYvV7rpei6LEgAJB4t
         CU4Rjjr8k8/vge/otThGfODuVBEck2riS+Vt526uPHf7dxFjQgtHhoumZRpNNHqwpAU0
         5PG6cAy+rYQOXRnjO31cpaoex6WjrZqES7Jl6u/sA2LXALeCWPiuKcMlkdyNUydNmTTM
         ILu/wqPkkyvt0Sekx1uaFMNR0gqG058cUpsCVr4x092QOhQ2plsXv09bueAfOav5geiY
         mgXcq2I+aZMCO7sleNnWwnJppLNg97ltE1yUwa9n7y6cRMBTARiBWNP29GfUGcRvK6Wx
         R44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758033992; x=1758638792;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lNYgS8dNjPtiqlsHM7XET8aXMWBSIMrXcDQ2g7a+fSc=;
        b=BAqzoQWg2RRbM0vK3qoUVgR8uQRcdhc1DxG1EjF3LCn7+rtwTxDJ8SpCDdrUEtDVI6
         ZRFdAkMaZ/IJ2BBaJ/FqJy2BdWIZTHxIq8Kk0+JOZBwaN7DGThpyfV3vKUhXbzqM8Y4Y
         dN2kybhrHxMfZ+GN9c5l49Yqg65kQkH8/LSC7/bO4coqQuP/3+KcUk+IyIRCcL+bvZ3r
         oDjBZYVN2ox+VtkkXleb1VseMaX4iqDFX7FrIPZjP9Twu3IpzMbys2GfP8QVdphLH/7o
         2s1geGurhoW24HvRz9fF3WKgaRIsaEVHtFQGud2tGV/MVHUSfIWfRLfVAbSM4aPlY18y
         Is7w==
X-Gm-Message-State: AOJu0YwgGVyua3CsIojJqiA1xnfGe96ZSWqWN2H6CycQq6S7h9iBfLWu
	lRWFuGB8v7CO+jnBHpjeNnzWn8hsuyMkxlTatXfaDyUXCEgRWc3la5cf85YmuIGf9VE2MTQlFAO
	PWf5evyVNwTT4ur+uduQoS+hcA2smaZuRutQJ
X-Gm-Gg: ASbGnct7sVXFd4SmyZmnbrXlPF1p6SRp22eV91O085mKZx248KtwcvyIc9jPOEx3I45
	Y7ub0GGhTFvB+HuTisBDR9MLRfFNyKucqeqytBRoLNHNoCx3u/KD7XGjfa41qtSPyyHaHoYIt6C
	z4mzMv71KQ95D2vzoMbexFIONczZYtixK6orUnj688dZuviANDYbqq1kHtwmkhd6FmcC5bojJsL
	uHy3+f3d7zz8BNBDnnpBzdC6F02IDwNxMzinStCqulztBQ/4zhQVVRoxJnmulUxKJY=
X-Google-Smtp-Source: AGHT+IFZrKFX4TUIeCYSGQwfLwqMIRe/wN9JwCiyhWxKRzoN2tVSW4BW0WbNP6BYYSwSjnBhjPH1kkt3EP89sWBzlzE=
X-Received: by 2002:a17:903:22ce:b0:264:4e4a:904a with SMTP id
 d9443c01a7336-2644e4a929cmr116039735ad.53.1758033992201; Tue, 16 Sep 2025
 07:46:32 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 16 Sep 2025 07:46:20 -0700
X-Gm-Features: AS18NWDDynSEHrsCX7rG52JKCpyC91wCVCmX_07hyTZgPaUScOK1bQ7f_tSzeIM
Message-ID: <CAK5yBb-W2Xvn=tuQ6SRMYoW=bTXC-=Ub5pyTahZt5U=5rus0ew@mail.gmail.com>
Subject: Enhancements/Bugs closed WW37!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009bb8d2063eec2fc6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 14:46:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65844

--0000000000009bb8d2063eec2fc6
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
mhalstead@linuxfoundation.org 7
ross.burton@arm.com 2
Grand Total 9

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000009bb8d2063eec2fc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@lin=
uxfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">7</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ros=
s.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold;text-align:right">9</td></tr></tbody></table><p clas=
s=3D"MsoNormal" style=3D"background-image:initial;background-position:initi=
al;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Ari=
al,sans-serif">Thanks,<span></span></span></p>

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

--0000000000009bb8d2063eec2fc6--

