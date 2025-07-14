Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF55C83F17
	for <webhook@archiver.kernel.org>; Mon, 14 Jul 2025 23:52:29 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.2546.1752537148241285118
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Jul 2025 16:52:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CiQvoiyw;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b3220c39cffso5007515a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 14 Jul 2025 16:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752537147; x=1753141947; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2ClV3a0b2DUkz+5IiRtr+Ae1KcGqEroFbwye4v0vfjo=;
        b=CiQvoiywsclcJFmNIPSD1576pLc9DRGaYKo3BRMk5BI6GJLtP5W9HGHtBWiOjBYl8h
         UpHBbb4+c5FYYbY+K6qO8hQOxoZnARlD19yPP1k7BQIkJvyoDygY8FsJjwg2Z2SI2ab9
         BGZ7y7jK/zJXk4OwXdVkZ2vU0WbNc7AqaNrNLHmIxeidXZsdrFonNvUZ0cmJXlSyqrTs
         FVOdiDG+ilQK2UXmtfUX+jBbA/WLDmmDVpyL35bT+OFh013u97m2U+m7yBuOoZ21AbkV
         Y35QLMmgsyhVh1hikt0BXR+g6IyZ4Vsl/C9AlftgttNrvm5oXtYM1XlKHovNOP7UXvyG
         UHVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752537147; x=1753141947;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2ClV3a0b2DUkz+5IiRtr+Ae1KcGqEroFbwye4v0vfjo=;
        b=sa5pSmDi+A1JSuytghGoIDuvPKK8BzvyyCYvPU26JOKYAWPZIEiPZ3OwoOSrteLlHx
         yPL4wGSOB85BfUM33XyRBJfs2FOP89TRX/yWtWCtRX+G2yNvpnSVg4IuvpZmZybqgNHX
         EC2xWP1hyzNj/h0YliEaDMO23TPu0BnShQFS1kE5/cxsJ29Pc33tyQTtX1aGO2qoWZTh
         QD9ZhkjtWo5ZCiQpYxG9R9NbID8GeMlXmxKBV73Z9hXg94cPSDdIGa7l7d67CFJrSSwn
         +zaiHe+0l6Z4hlg/TrUZ9p3YQMIgHnJeY4ioQ5P8VinacxEEcfdZPi7DsSpFToHtcwjG
         bw9w==
X-Gm-Message-State: AOJu0YxMwqyCvCbSolWesyKVxZwkMMXA0J9UP/jVEgWlOovJntgtSaEY
	O3KKMfZN/mdkpEJMRmIUTNv2xjXEwDq9GmxxFU1cY3ehR67ontVxbn4qAOuccDJ95U4anJQKr5v
	bdGNnsHIEmm5Pq0cMR5g+OLVSjY/dejg7KHYZGuQ=
X-Gm-Gg: ASbGncvyiC8nvIuBVCla/pK7cNZMv962sWcganpn0HZXJEvS9Nspan6JmV/CUSBqAPN
	hFOH9/x+n51EdZwbnYjMutx5vwFNm7aX1f5te88QGXu+RGHFGLE04VXaxRceUe6sIGWqHOJJc2D
	pOQsE9KCQL4qRK7w+BD/zen3YQZTuuiqKqovueIjH+zO5/np4wIiCBWtdRo1fkQEolVw7rygNTX
	JZvFEdEU3Nv5cXWKfIO/o34Rx4uW0TMMG1xI4IwGzzCHVxoLAFG
X-Google-Smtp-Source: AGHT+IEZfuMtA8H/HwKRU4lLf3b10vg+ESNF+TaLA2lwAmcxX5MwQd/5W6HuMRV/kj6bTi7FfRx/EmorI2WAOKq8mgk=
X-Received: by 2002:a17:90b:2549:b0:312:1ac5:c7c7 with SMTP id
 98e67ed59e1d1-31c4f4b4f3dmr22334629a91.2.1752537147186; Mon, 14 Jul 2025
 16:52:27 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 14 Jul 2025 16:52:16 -0700
X-Gm-Features: Ac12FXyxc7WkfCMS_gipN5k2g18lNsbcZv9g2gBrewMxgkitYqH7fyDY75fRe9Q
Message-ID: <CAK5yBb_fWknYq97TJqMHzTvZQG72a=rDXr58AixPGKhhYvzckA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW28
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001d25060639ec5a6c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Jul 2025 23:52:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65657

--0000000000001d25060639ec5a6c
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW28 are listed below:
Priority Bug ID Short Description
Medium+ 13002 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13002> Create
a set of tests to run after upgrading patchtest
13005 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13005> Patchtest
did not detect missing bb files changes
13634 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=13634> patchtest
should run maintainers test on new recipes
15257 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15257> meta-patchtest
layer needs to be checked for Yocto Project Compatible status
15258 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15258> Patchtest
should test an entire series together, rather than checking patches
individually
15259 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15259> Patchtest
should report test results back to Patchwork
15260 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15260> Patchtest
automated test process should boot the VM once per series
15858 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15858>
_pickle.PicklingError
with python-3.14
15925 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15925> Wrong size
passed to memcpy in pdb_update_inode leads to missing xattrs when renaming

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000001d25060639ec5a6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW28 a=
re listed below:=C2=A0<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border:none"><colgroup><col width=3D"63"><col width=3D"43=
"><col width=3D"543"></colgroup><tbody><tr style=3D"height:20px"><td style=
=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom;background-color:rgb(219,229,241);font-weight:bold">Priority</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Bug ID=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Sh=
ort Description</td></tr><tr style=3D"height:20px"><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">M=
edium+</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:unde=
rline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bug=
zilla.yoctoproject.org/show_bug.cgi?id=3D13002" target=3D"_blank">13002</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom">Create a set of tests to run after upgrading pa=
tchtest</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;font-weight:bold;text-decoration-line:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D13005" target=3D"_blank">13005</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Patc=
htest did not detect missing bb files changes</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-lin=
e:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13634" target=3D"_blank">136=
34</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">patchtest should run maintainers test on =
new recipes</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;font-weight:bold;text-decoration-line:underline;text-align:right"><a c=
lass=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D15257" target=3D"_blank">15257</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
meta-patchtest layer needs to be checked for Yocto Project Compatible statu=
s</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-=
weight:bold;text-decoration-line:underline;text-align:right"><a class=3D"gm=
ail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D15258" target=3D"_blank">15258</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Patchtest =
should test an entire series together, rather than checking patches individ=
ually</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;f=
ont-weight:bold;text-decoration-line:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D15259" target=3D"_blank">15259</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Patc=
htest should report test results back to Patchwork</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoratio=
n-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15260" target=3D"_blank=
">15260</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">Patchtest automated test process sho=
uld boot the VM once per series</td></tr><tr style=3D"height:20px"><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;te=
xt-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D15858" target=3D"_blank">15858</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom">_pickle.PicklingError with python-3.14</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-d=
ecoration-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15925" target=
=3D"_blank">15925</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom">Wrong size passed to memcp=
y in pdb_update_inode leads to missing xattrs when renaming</td></tr></tbod=
y></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgrou=
nd-position:initial;background-repeat:initial"><span style=3D"font-size:12p=
t;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000001d25060639ec5a6c--

