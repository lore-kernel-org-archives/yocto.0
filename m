Return-Path: <akini@synapticon.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19EC3E011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 06:56:32 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so744066lbo.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 06:56:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=cAM6yAWmRaEoPLmmRMhV6BT6wRIy7M/pl2sDSOlm4nU=;
	b=IApybVZ60pYXpgbVjVM4C9YddfUkbd55muJXkY+RTREasheGHeh4+c8SoNB4friE1L
	LnJOIzrYe7KevsqUjH+jS8vUy2xsTFslCzcLdcfkMkMo8ZT4+xkgg2OAG8wXxRm0oz2Y
	6aCLRp7xXyKlCnWRzK0ya/77Nlk7MSMFb0XtxiuEqzb77PgpUGBrAmAihJPMyAQqUUQU
	N94mE2/mGZocHS57BFYE2zO+Vf4cncTx+3YNt+63MS8LRI0hrRwKfWHaascT5BKrkZzN
	vR6pmKvFx1nLnsJOFeOqbL75ROdsTXr/k0Hkey2W8hk8J4txCC/b8WpcP+QLjeL2qpRg
	vWEQ==
MIME-Version: 1.0
Received: by 10.112.14.107 with SMTP id o11mr562957lbc.98.1355324191361; Wed,
	12 Dec 2012 06:56:31 -0800 (PST)
Received: by 10.112.60.36 with HTTP; Wed, 12 Dec 2012 06:56:31 -0800 (PST)
Date: Wed, 12 Dec 2012 15:56:31 +0100
Message-ID: <CAKS01o=9sWAg3OhZAf-S+GRyWtv4QxktWKEmtZ7LaXK3vJQoCQ@mail.gmail.com>
From: Anup Kini <akini@synapticon.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmIV8b143Gh4h9zIvj2kqGcc8OrL+Uf49h4K4hpmJFgeA8eS0Sy7bNMaH30G3f8k47lVGiy
Subject: building for ZYNQ ZC702 SoC
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Dec 2012 14:56:33 -0000
Content-Type: multipart/alternative; boundary=f46d0401689bfb4b3b04d0a900f6

--f46d0401689bfb4b3b04d0a900f6
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am new to Yocto.
I am trying to build an environment with arm-gcc integrated since the ZYNQ
board has ARM Cortex A9 ducal core on it.
Let me know if any one has tried something similar or some pointers on how
i can proceed.



-- 

*Anup Kini
*Systems Engineer****
*
------------------------------
*

*Synapticon** * |  Cyber-Physical System Solutions ****

Direct:****

+49 7335 / 186 999 17****

Fax:****

+49 7335 / 186 999 19****

 ****

 ****

synapticon.com <http://www.synapticon.com/>  |
@synapticon_co<https://twitter.com/#!/synapticon_co>
****

Synapticon GmbH  |  Hohlbachweg 2  |  73344 Gruibingen, DE
Secretary +49 7335 / 186 999 0  |  General Manager: Nikolai Ensslen
Registry Court Ulm HRB 725114  |  USt-ID DE271647127****

This message and any files transmitted with it are confidential and
intended
solely for the use of the individual or entity to whom they are addressed.
Please notify the sender immediately if you have received this e-mail by
mistake and delete it from your system.

--f46d0401689bfb4b3b04d0a900f6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<div><br></div><div>I am new to Yocto.</div><div>I am trying to buil=
d an environment with arm-gcc integrated since the ZYNQ board has ARM Corte=
x A9 ducal core on it.</div><div>Let me know if any one has tried something=
 similar or some pointers on how i can proceed.</div>
<div><br></div><div><br clear=3D"all"><div><br></div>-- <br><p style=3D"mar=
gin:0px;color:rgb(34,34,34);font-family:arial,sans-serif;font-size:13px;bac=
kground-color:rgb(255,255,255)"><b><span lang=3D"EN-US" style=3D"font-size:=
10pt;font-family:Arial,sans-serif">Anup Kini<br>
</span></b><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,s=
ans-serif">Systems Engineer</span><span lang=3D"EN-US"><u></u><u></u></span=
></p><div align=3D"center" style=3D"margin:0px;color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255);text-=
align:center">
<b><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:Arial,sans-seri=
f"><hr size=3D"2" width=3D"100%" align=3D"center"></span></b></div><p style=
=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:13px;background-color:rgb(255,255,255)">
<b><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:Arial,sans-seri=
f">Synapticon</span></b><b><span lang=3D"EN-US" style=3D"font-size:12pt;fon=
t-family:&#39;Times New Roman&#39;,serif">=A0</span></b><span lang=3D"EN-US=
" style=3D"font-size:12pt;font-family:Arial,sans-serif">=A0|=A0=A0</span><s=
pan lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,sans-serif">Cy=
ber-Physical System Solutions</span><span lang=3D"EN-US" style=3D"font-size=
:10pt;font-family:Verdana,sans-serif">=A0</span><span lang=3D"EN-US"><u></u=
><u></u></span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:13px;text-align:start;back=
ground-color:rgb(255,255,255);border-collapse:collapse"><tbody><tr><td widt=
h=3D"57" valign=3D"top" style=3D"margin:0px;width:42.55pt;padding:0cm 5.4pt=
 0cm 0cm">
<p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-f=
amily:Arial,sans-serif">Direct:</span><span lang=3D"EN-US"><u></u><u></u></=
span></p></td><td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6c=
m;padding:0cm 5.4pt 0cm 0cm">
<p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-f=
amily:Arial,sans-serif"><a value=3D"+49733518699917" style=3D"color:rgb(17,=
85,204)">+49 7335 / 186 999 17</a></span><span lang=3D"EN-US"><u></u><u></u=
></span></p>
</td></tr><tr><td width=3D"57" valign=3D"top" style=3D"margin:0px;width:42.=
55pt;padding:0cm 5.4pt 0cm 0cm"><p style=3D"margin:0px"><span lang=3D"EN-US=
" style=3D"font-size:10pt;font-family:Arial,sans-serif">Fax:</span><span la=
ng=3D"EN-US"><u></u><u></u></span></p>
</td><td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6cm;padding=
:0cm 5.4pt 0cm 0cm"><p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"f=
ont-size:10pt;font-family:Arial,sans-serif"><a value=3D"+49733518699919" st=
yle=3D"color:rgb(17,85,204)">+49 7335 / 186 999 19</a></span><u></u><u></u>=
</p>
</td></tr><tr><td width=3D"57" valign=3D"top" style=3D"margin:0px;width:42.=
55pt;padding:0cm 5.4pt 0cm 0cm"><p style=3D"margin:0px"><span lang=3D"EN-US=
" style=3D"font-size:6pt;font-family:Arial,sans-serif">=A0</span><u></u><u>=
</u></p></td>
<td width=3D"227" valign=3D"top" style=3D"margin:0px;width:6cm;padding:0cm =
5.4pt 0cm 0cm"><p style=3D"margin:0px"><span lang=3D"EN-US" style=3D"font-s=
ize:6pt;font-family:Arial,sans-serif">=A0</span><u></u><u></u></p></td></tr=
></tbody></table>
<p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:13px;background-color:rgb(255,255,255)"><span style=3D"font-=
size:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.synapticon.co=
m/" style=3D"color:rgb(17,85,204)" target=3D"_blank">synapticon.com</a>=A0=
=A0| =A0<a href=3D"https://twitter.com/#!/synapticon_co" style=3D"color:rgb=
(17,85,204)" target=3D"_blank">@synapticon_co</a></span><u></u><u></u></p>
<p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:13px;background-color:rgb(255,255,255)"><span style=3D"font-=
size:10pt;font-family:Arial,sans-serif;color:rgb(127,127,127)">Synapticon G=
mbH =A0|=A0 Hohlbachweg 2=A0 | =A073344 Gruibingen, DE<br>
Secretary=A0<a value=3D"+4973351869990" style=3D"color:rgb(17,85,204)">+49 =
7335 / 186 999 0</a>=A0 |=A0 General Manager: Nikolai Ensslen=A0<br>Registr=
y Court Ulm HRB 725114=A0 |=A0 USt-ID DE271647127</span><u></u><u></u></p><=
p style=3D"margin:0px 0px 8pt;color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:13px;background-color:rgb(255,255,255)">
<span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-serif;co=
lor:rgb(127,127,127)">This message and any files transmitted with it are co=
nfidential and intended=A0</span><span lang=3D"EN-US" style=3D"font-size:8p=
t;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>
</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">solely for the use of the individual or entity=
 to whom they are addressed.=A0</span><span lang=3D"EN-US" style=3D"font-si=
ze:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>
</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">Please notify the sender immediately if you ha=
ve received this e-mail by=A0</span><span lang=3D"EN-US" style=3D"font-size=
:8pt;font-family:Verdana,sans-serif;color:rgb(127,127,127)"><br>
</span><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sans-s=
erif;color:rgb(127,127,127)">mistake and delete it from your system.=A0</sp=
an></p><br>
</div>

--f46d0401689bfb4b3b04d0a900f6--
