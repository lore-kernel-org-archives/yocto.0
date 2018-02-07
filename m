Return-Path: <pehen.azam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7DF6E00E11; Wed,  7 Feb 2018 05:37:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pehen.azam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 624A8E0085E
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 05:37:14 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id d14so1503642qtg.1
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 05:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=m5q4ltQSaZ5LEGrHI/0kSlaYzj6kLTehR7tlO8WZV3Y=;
	b=XykbKDLHFt4SvICyCeDFehxyJw4yDQZ5jKH/pcFJLqbOgG7ZsZYuO+jSIE+SUDIroT
	E/qs0OAPwATKVJEvBBZbsP0mdyIAc5qChHeVxMWqE7oRMongF2kMfSydJzD1aezK7H9J
	ap+KyjOyncC6j0SIJvseuc+hooy9cajbIXiQTgJKLNNzUROfIt9n3h7g9nr9Ix4ApcIP
	Lk1JLz6lzaVBC+NR2eHOjUoAbaEGFA9TVd53Xr8Y3Hnezb3NNCHOX5Ii9SVAxykjFfOe
	W6kIxO8wS2Ui7knl7B+XW8tXMjyIVbElck/HV84AKZ/JkOMgpGtjCX/TPUvgLdw2ZtBL
	tClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=m5q4ltQSaZ5LEGrHI/0kSlaYzj6kLTehR7tlO8WZV3Y=;
	b=U4YHNWZOS7jr+7h9i22Q4ecJLRKl2YC+9p8aSrfWFpf57ok+p2V77Aew9rBC51gvjj
	+0rD807MLRX8m3rahDJaXgogw7UAO/fRKDUBDF0FLDXr6iHIjRFpOVCmhCI2L13JvfCj
	ewWkRibKRzegUvVYJNqmM2fOBz417LzfYsXpcGpLd6ojnfeDpyZNK2HjpDXWcDFDq2Wn
	8AjBrLY2t9AA1c1HfGV6ltzoXmiYo9ptvZJBWtEI1M9lz2Qyyr71fXvANtIUAY6Jclsk
	GVyo9xiWWzG3QvBxTQb+Mgm2pL5j1AcaBYfJ/wWK6f5nDX+G/GJB1/9yPc80ilz9cv1o
	g90g==
X-Gm-Message-State: APf1xPCCyzrNGJCeSpMnWRtw7LIz7x7xdriGqjIXpOGdYBIFadGOURpq
	cM54FS1uW8EKdr6m6xdXfOZ44/nM1TAua5Iyt1A+qg==
X-Google-Smtp-Source: AH8x225Vot9C6U00bmv4zJHOjKb2gsNeB3SAApd9OyQaCvXqkzRvDDdDTOnVwzXa1KBEbuGDoCkIzi92nHTv6ocDjF4=
X-Received: by 10.237.35.87 with SMTP id i23mr9133598qtc.59.1518010633396;
	Wed, 07 Feb 2018 05:37:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.82.75 with HTTP; Wed, 7 Feb 2018 05:37:12 -0800 (PST)
From: Pehen Azam <pehen.azam@gmail.com>
Date: Wed, 7 Feb 2018 14:37:12 +0100
Message-ID: <CANMO+iuqa3CYwKiaQfw3LoC_s0b-JSV4bWaVse9Y=0y79Tk+Rw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: install qcharts module to yocto sdk
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
X-List-Received-Date: Wed, 07 Feb 2018 13:37:15 -0000
Content-Type: multipart/alternative; boundary="001a113786a091a54505649f643f"

--001a113786a091a54505649f643f
Content-Type: text/plain; charset="UTF-8"

Hi!
I try to cross-compile qt chart examples for a yocto platform. I do
following steps to compile my qt programs:

 - source /opt/myimage/2.1.2/environment-setup-cortexa9hf-
neon-poky-linux-gnueabi
 - qmake -o Makefile areachart.pro
 - make

But When I add `QT += charts` to any project run qmake like `qmake -o
Makefile areachart.pro` I hit this error:
Project ERROR: Unknown module(s) in QT: charts

Here is the output of `qmake -v`:
    QMake version 3.0
    Using Qt version 5.7.0 in /opt/myimage/2.1.2/sysroots/
cortexa9hf-neon-poky-linux-gnueabi/usr/lib

Should I should add `qtcharts` module my yocto SDK to be able to compile
the example? if yes how?

For some reasons I was able to cross-compiled Qt from source on github
using `qtcreator` and get the binary files for qt examples and qtchart
library itself. I also run the qt examples on my target platform by putting
resulting `libQtCharts.so` and other files manually in `/usr/lib/` and
`/usr/include/` on the target and I was able to draw the charts on target.

However, what I need is to include the charts in my project and run `qmake`
steps as mentioned above. But what I get is the `Project ERROR:  Unknown
module(s) in QT: charts`
I have tried to put `libQtCharts.so` which I got from compiling qt source
manually in `/opt/myimage/2.1.2/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/lib`
but still not able to get the make file with `qmake -o Makefile
areachart.pro`

Regards,
Pehen

--001a113786a091a54505649f643f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial">Hi!</div><div style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial">I try to cross-compile qt chart examples for a yo=
cto platform. I do following steps to compile my qt programs:</div><div sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial"><br></di=
v><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
">=C2=A0- source /opt/myimage/2.1.2/<wbr>environment-setup-cortexa9hf-<wbr>=
neon-poky-linux-gnueabi</div><div style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial">=C2=A0- qmake -o Makefile<span>=C2=A0</span><a=
 href=3D"http://areachart.pro/" target=3D"_blank" style=3D"color:rgb(17,85,=
204)">areachart.pro</a></div><div style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial">=C2=A0- make</div><div style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial"><br></div><div style=3D"colo=
r:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial">But When I add `QT=
 +=3D charts` to any project run qmake like `qmake -o Makefile<span>=C2=A0<=
/span><a href=3D"http://areachart.pro/" target=3D"_blank" style=3D"color:rg=
b(17,85,204)">areachart.pro</a>` I hit this error:=C2=A0=C2=A0</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial">Project=
 ERROR: Unknown module(s) in QT: charts</div><div style=3D"color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial"><br></div><div style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial">Here is the output o=
f `qmake -v`:<br></div><div style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial">=C2=A0 =C2=A0 QMake version 3.0<br></div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial">=C2=A0 =C2=
=A0 Using Qt version 5.7.0 in /opt/myimage/2.1.2/sysroots/<wbr>cortexa9hf-n=
eon-poky-linux-<wbr>gnueabi/usr/lib</div><div style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial"><br></div><div style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial">Should I should add `qtc=
harts` module my yocto SDK to be able to compile the example? if yes how?=
=C2=A0</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial">For some reasons I was able to cross-compiled Qt from=
 source on github using `qtcreator` and get the binary files for qt example=
s and qtchart library itself. I also run the qt examples on my target platf=
orm by putting resulting `libQtCharts.so` and other files manually in `/usr=
/lib/` and `/usr/include/` on the target and I was able to draw the charts =
on target.<br></div><div style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial">However, what I need is to include the charts=
 in my project and run `qmake` steps as mentioned above. But what I get is =
the `Project ERROR:=C2=A0 Unknown module(s) in QT: charts`<br></div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial">I have =
tried to put `libQtCharts.so` which I got from compiling qt source manually=
 in `/opt/myimage/2.1.2/sysroots/<wbr>cortexa9hf-neon-poky-linux-<wbr>gnuea=
bi/usr/lib` but still not able to get the make file with `qmake -o Makefile=
<span>=C2=A0</span><a href=3D"http://areachart.pro/" target=3D"_blank" styl=
e=3D"color:rgb(17,85,204)">areachart.pro</a>`</div><div style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><br></div><div style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial">Regards,</div>=
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial">=
Pehen</div><br></div>

--001a113786a091a54505649f643f--
