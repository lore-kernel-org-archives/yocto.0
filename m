Return-Path: <wdurocher@it-link.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69DA0E00D89; Tue, 10 Sep 2019 05:49:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
	[209.85.217.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8F4FE00CD5
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 05:49:47 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id y62so11134133vsb.6
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 05:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=it-link-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=ryK+ByVh+gEk09/LxjMpGEnC3Zbp6v2ZVwgaSmwexW8=;
	b=s79pAZgtbDVigutUr1+z/XcrQ6JMYSNXx7d7cM7kcRKVF/vG6Vos6N38D2AlFT1GlW
	VgPuy2anqUCmjevXMxCCepKEofmJMNGQsQShtKUUQr1MP501wflPXV012QBz9u1UPjld
	Ata2YRF2UlBzuBa2iriXVG9IOostLfzScPEA7+CWiehKJYsdv1s6e/E5AnG1IhskF0ip
	WDE77CNsglst4JMFhkZa4nwFmZVM9k78ZrR74prHDzsawvTJdILNImqxXwhi+kgNVdqV
	UwVWO/2g8MuNHOt7jrEP5T5k0S6OsJJ4X+5hzWI/JxNekqkgKhNnrSj96YgTDfdFSnKE
	7P5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ryK+ByVh+gEk09/LxjMpGEnC3Zbp6v2ZVwgaSmwexW8=;
	b=t8rfjXXi3AZOlA1mOrA9JMqeFkX+HTWII6hkgFhbT+JL7WJfmdl28bWA0k7eXweEIl
	ARuvOz2N+u1gTuupcUjFYG6FkEOCr/EatGVtRyfTxZT9i8TV+b8ROA+PyJwLSPH0w1Yg
	jlQV1oG4ntwEYdOVD0ZOWj8Ih+KTJdcfr1lLXarWEItWHDYByFKQhf5NCGYHwKa1dPi0
	ChBUs12r5Bj4Kz7RaSS95Oj1mlZF3hi4GvWIrWrTW8tu7S/iZQJMXDhUl1+xOpbGDQ6c
	ylKa3pGntpdU5UI6Lmih8hkjR2E0K55LpdRJ5g6g8X8DRHZYc5p+MuV0KY8JeD0PJxKy
	438A==
X-Gm-Message-State: APjAAAW4ZyTe0iv5j1sIP2yXXhzLxLjzIvuBAGrpMZ4nGslv94mY6PQB
	a7mGJsufOfJ3z1TybvVU9lZG2LRhFUvWh1WpS0y/8XmERzM=
X-Google-Smtp-Source: APXvYqzWLVOpdOMwVDZL3GTuCkoZcg+2wWWzsv7Js6/7fnut3A+oK21c0Nur+RhaZ16xt5ozUhxepmgWcvZTD2/XvgU=
X-Received: by 2002:a67:f317:: with SMTP id p23mr15787790vsf.41.1568119786400; 
	Tue, 10 Sep 2019 05:49:46 -0700 (PDT)
MIME-Version: 1.0
From: William Durocher <wdurocher@it-link.ca>
Date: Tue, 10 Sep 2019 08:49:35 -0400
Message-ID: <CAJdDtjGzQrCyHAMe7jptVcXZGAmD9QsKR1yrJLG0F_DYe7YjNQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: package_qa fails on copy openssl
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Sep 2019 12:49:49 -0000
Content-Type: multipart/alternative; boundary="000000000000d57e4c0592325666"

--000000000000d57e4c0592325666
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Currently updating a sumo build to warrior. One of our recipe called config
server uses nodejs which was updated from 8.9 in sumo to 10.5 in warrior.
As an interim solution we decided to keep the version of nodejs to 8.90.
However I am getting the following exception in the package_qa step:

"File:
'/home/wdurocher/work/gammaip/warrior/sources/meta/meta/classes/staging.bbc=
lass',
lineno: 151, function: staging_copyfile
     0147:        os.symlink(linkto, dest)
     0148:        #bb.warn(c)
     0149:    else:
     0150:        try:
 *** 0151:            os.link(c, dest)
     0152:        except OSError as err:
     0153:            if err.errno =3D=3D errno.EXDEV:
     0154:                bb.utils.copyfile(c, dest)
     0155:            else:
Exception: FileExistsError: [Errno 17] File exists:
'/home/wdurocher/work/gammaip/warrior/build/tmp/sysroots-components/x86_64/=
openssl-native/usr/bin/openssl.real'
->
'/home/wdurocher/work/gammaip/warrior/build/tmp/work/cortexa8hf-neon-schnei=
der-linux-gnueabi/config-server/0.0.2-r0/recipe-sysroot-native/usr/bin/open=
ssl.real'"

Which apparently is related to nodejs(sumo) using openssl 1.0.2p while a
few packages use openssl 1.1.0. Hacking staging.bbclass to remove the file
did allow package_qa to complete but that is not really a satisfactory
solution as 1) I would rather not hack the meta repo directly and 2) there
has to be a better way to have both openssl 1.0 and openssl 1.1 coexist
with the recipes using the correct version.

How do I either

- Fix the error mentionned above
- Make yocto be aware that there are 2 versions of openssl !

Any help would be appreciated.

--=20

<https://www.itlink.fr/>

William Durocher

Linker / Developpeur

1800-500 Place d=E2=80=99Armes, Montr=C3=A9al, QC, H2Y 2W2

+1 (438) 259-3227 / +1 (514) 613-6887

www.it-link.ca

Suivez-nous sur <https://www.linkedin.com/company/groupe-it-link/>

--000000000000d57e4c0592325666
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div>Currently updating a sumo build to =
warrior. One of our recipe=20
called config server uses nodejs which was updated from 8.9 in sumo to=20
10.5 in warrior. As an interim solution we decided to keep the version=20
of nodejs to 8.90. However I am getting the following exception in the=20
package_qa step: <br></div><div><br></div><div>&quot;File: &#39;/home/wduro=
cher/work/gammaip/warrior/sources/meta/meta/classes/staging.bbclass&#39;, l=
ineno: 151, function: staging_copyfile<br>=C2=A0 =C2=A0 =C2=A00147: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0os.symlink(linkto, dest)<br>=C2=A0 =C2=A0 =C2=A00148: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0#bb.warn(c)<br>=C2=A0 =C2=A0 =C2=A00149: =C2=A0 =
=C2=A0else:<br>=C2=A0 =C2=A0 =C2=A00150: =C2=A0 =C2=A0 =C2=A0 =C2=A0try:<br=
>=C2=A0*** 0151: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os.link(c, dest)<=
br>=C2=A0 =C2=A0=C2=A0 0152: =C2=A0 =C2=A0 =C2=A0 =C2=A0except OSError as e=
rr:<br>=C2=A0 =C2=A0 =C2=A00153: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i=
f err.errno =3D=3D errno.EXDEV:<br>=C2=A0 =C2=A0 =C2=A00154: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.utils.copyfile(c, dest)<br>=C2=
=A0 =C2=A0 =C2=A00155: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>Ex=
ception: FileExistsError: [Errno 17] File exists: &#39;/home/wdurocher/work=
/gammaip/warrior/build/tmp/sysroots-components/x86_64/openssl-native/usr/bi=
n/openssl.real&#39; -&gt; &#39;/home/wdurocher/work/gammaip/warrior/build/t=
mp/work/cortexa8hf-neon-schneider-linux-gnueabi/config-server/0.0.2-r0/reci=
pe-sysroot-native/usr/bin/openssl.real&#39;&quot;</div><div><br></div><div>=
Which
 apparently is related to nodejs(sumo) using openssl 1.0.2p while a few=20
packages use openssl 1.1.0. Hacking staging.bbclass to remove the file=20
did allow package_qa to complete but that is not really a satisfactory=20
solution as 1) I would rather not hack the meta repo directly and 2)=20
there has to be a better way to have both openssl 1.0 and openssl 1.1=20
coexist with the recipes using the correct version.</div><div><br></div><di=
v>How do I either</div><div><br></div><div>- Fix the error mentionned above=
</div><div>- Make yocto be aware that there are 2 versions of openssl !</di=
v><div><br></div><div>Any help would be appreciated.</div><br>-- <br><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><br><div dir=3D"ltr" style=3D"margin-left:0pt"><table style=
=3D"border:medium none;border-collapse:collapse"><colgroup><col width=3D"15=
8"><col width=3D"433"></colgroup><tbody><tr style=3D"height:194pt"><td styl=
e=3D"vertical-align:top;padding:5pt"><p dir=3D"ltr" style=3D"line-height:1.=
38;margin-top:0pt;margin-bottom:0pt"><a href=3D"https://www.itlink.fr/" sty=
le=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-size:11pt=
;font-family:&quot;Open Sans&quot;;color:rgb(17,85,204);background-color:tr=
ansparent;font-weight:400;font-style:normal;font-variant:normal;text-decora=
tion:underline;vertical-align:baseline;white-space:pre-wrap"><img src=3D"ht=
tps://lh4.googleusercontent.com/P1Wyr4zPmPyEaio8s6TLxLgg-ruGl2GPc_jxIypSiU5=
eXsk6dFNWVrwrqvAwvxZmzBJnxL8C0fNJJ44YJ8hyw8gI_BmIyxXJB8b-z51XrB1n7Nn8bHjvzA=
jRo5t4qU45mrJ_epo9" style=3D"border:medium none" width=3D"144" height=3D"14=
4"></span></a></p></td><td style=3D"vertical-align:top;padding:5pt"><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:14pt;font-family:Verdana;color:rgb(0,51,126);background-=
color:transparent;font-weight:700;font-style:normal;font-variant:normal;tex=
t-decoration:none;vertical-align:baseline;white-space:pre-wrap">William Dur=
ocher</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:11pt;font-family:Verdana;color:rgb=
(35,149,244);background-color:transparent;font-weight:700;font-style:normal=
;font-variant:normal;text-decoration:none;vertical-align:baseline;white-spa=
ce:pre-wrap">Linker / Developpeur</span></p><p dir=3D"ltr" style=3D"line-he=
ight:1.8;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;fo=
nt-family:Verdana;color:rgb(106,106,119);background-color:transparent;font-=
weight:400;font-style:normal;font-variant:normal;text-decoration:none;verti=
cal-align:baseline;white-space:pre-wrap">1800-500 Place d=E2=80=99Armes, Mo=
ntr=C3=A9al, QC, H2Y 2W2</span></p><br><p dir=3D"ltr" style=3D"line-height:=
1.2;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-fa=
mily:Verdana;color:rgb(106,106,119);background-color:transparent;font-weigh=
t:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-a=
lign:baseline;white-space:pre-wrap">+1 (438) 259-3227 / +1 (514) 613-6887</=
span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:10pt;font-family:Verdana;color:rgb(35,149=
,244);background-color:transparent;font-weight:400;font-style:normal;font-v=
ariant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-=
wrap"><a href=3D"http://www.it-link.ca" target=3D"_blank">www.it-link.ca</a=
></span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-=
bottom:0pt"><span style=3D"font-size:10pt;font-family:Verdana;color:rgb(106=
,106,119);background-color:transparent;font-weight:400;font-style:normal;fo=
nt-variant:normal;text-decoration:none;vertical-align:baseline;white-space:=
pre-wrap">Suivez-nous sur</span><span style=3D"font-size:11pt;font-family:C=
alibri;color:rgb(106,106,119);background-color:transparent;font-weight:400;=
font-style:normal;font-variant:normal;text-decoration:none;vertical-align:b=
aseline;white-space:pre-wrap"> </span><a href=3D"https://www.linkedin.com/c=
ompany/groupe-it-link/" style=3D"text-decoration:none" target=3D"_blank"><s=
pan style=3D"font-size:11pt;font-family:&quot;Open Sans&quot;;color:rgb(17,=
85,204);background-color:transparent;font-weight:400;font-style:normal;font=
-variant:normal;text-decoration:underline;vertical-align:baseline;white-spa=
ce:pre-wrap"><img src=3D"https://lh5.googleusercontent.com/p35KOFezqdmqmcij=
jitW_m7nGEmR_KqUotlLSFoM2co6ALFZUK5XTX89afCNRSh0F4jLRB6IBdbmP_p0d5qOEVpjr2F=
XDUrRaC-ohwI203Ib1Vca95K1x-A23suQTT0ZTeYOD3As" style=3D"border:medium none"=
 width=3D"14" height=3D"14"></span></a></p></td></tr></tbody></table></div>=
</div></div></div>

--000000000000d57e4c0592325666--
