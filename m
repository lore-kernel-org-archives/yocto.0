Return-Path: <techieth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD034E00903; Mon, 21 May 2018 21:23:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (techieth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44B1DE0086B;
	Mon, 21 May 2018 21:23:56 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id j4-v6so28674413wme.1;
	Mon, 21 May 2018 21:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/5f7qf+P9UDCGJZu10n3tp6CxBZkWKWGdXHgQHM5tw4=;
	b=hRYYCbC8H5GQT3wMia2gwKNbNUbeuPhBJOb1c0PieAP3JYrPPVVvSCK5iKxmo5g4A9
	UXwihJl11yqINZszbwhgHDGsTrvTS8++Ok57NJkGiJWAlBIXl9qdTaoyLyAMEnrC4LVc
	mglMJ5YWsklfGx7NXQhV3qU/LJl9WoOMzwkKJBJjTWqSYpC9QZXSpmlehPkWef109UJE
	Kgr0zMJA59Cbs01vFg570y2HiFO86/eNJx0/ngouj3XS5jNETsyL9mboxyJBSsjAoTHT
	xHD2Cd5pfZjTR32x90/zANKJYfWoHvOtN5Q+O3qcuS8NT1ymzZgHgWw+KZKVNp3lcFLS
	xaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/5f7qf+P9UDCGJZu10n3tp6CxBZkWKWGdXHgQHM5tw4=;
	b=OQvDkeLg57OYmVw1xCm5NrujlI21CC46hAzINwWIFPRlHGM75B7hVxOd1vcNtnqOW3
	vGlvT8TTLcpRRIvMgsiqPmXFrjWbArRnw9EDttw+eKY6V7qvH2VesIeXdnyhgK35yP+Y
	wgEvsOYHLs/yjGtTnqQCS8r8GwIiYdHXkB/4TWr4FEtHyViaoixHOyATyv0VYmZ40b+m
	XZyakjZZ6qY1xVSmzIJvWQPG6w+cNgFdsfrGDo4dt16OIr6RRhU8h+0VV7A7z9U83IW6
	dCkkYW5uEijrjLTTSsALVxXt9Un+L0SbAtnlhE14PnDVSInQsL79vtBB9Berm6eaXoA0
	jL8A==
X-Gm-Message-State: ALKqPwfr/PQ9JGg5JBAVvHsSidjvEdNjwFx3DHgYma6aT61Xk0KBDF7K
	kAX7IHw9ZuZfO3JfvkxUKvvXu0LOzhSEEAcj1OKSBw==
X-Google-Smtp-Source: AB8JxZpPH1qlmjwJpUVTdFM0qUGClWcfa2Wt7/o66gxD5aY/2TzaV+IZ9w8wzT8aOWSidZKqYFbUYEvxMDdkif1JplM=
X-Received: by 2002:a1c:8b88:: with SMTP id n130-v6mr784319wmd.8.1526963035277;
	Mon, 21 May 2018 21:23:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.227.70 with HTTP; Mon, 21 May 2018 21:23:54 -0700 (PDT)
From: techi eth <techieth@gmail.com>
Date: Tue, 22 May 2018 09:53:54 +0530
Message-ID: <CAJw2sSA-7znpoAFzz5_=bqQsWP+xrYzxbFt+2Yms=+4dcw573g@mail.gmail.com>
To: yocto@yoctoproject.org, yocto-builds@yoctoproject.org
Subject: Yocto SDK & Toolchain Deploy Issue
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
X-List-Received-Date: Tue, 22 May 2018 04:23:56 -0000
Content-Type: multipart/alternative; boundary="0000000000004d8f0a056cc3c931"

--0000000000004d8f0a056cc3c931
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I would like to use SDK=E2=80=99s & tool chain generated from Yocto to some=
 other
PC. I see following difficulty while using.



1)      Path in *environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi* =
is
hard code. Is it possible to have that is configurable.

2)      If I change path in *environment-setup-cortexa8hf-vfp-neon-poky-lin=
ux-
gnueabi script *than also it raise error while recognizing compiler*.*



Please let me know hint for using tool chain generated from one machine to
other machine at any path.

--0000000000004d8f0a056cc3c931
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;color:rgb(34,34,34)=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial;font-=
size:11pt;font-family:Calibri,sans-serif">I would like to use SDK=E2=80=99s=
 &amp; tool chain generated from Yocto to some other PC. I see following di=
fficulty while using.<span></span></p><p class=3D"MsoNormal" style=3D"margi=
n:0in 0in 0.0001pt;color:rgb(34,34,34);font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;font-size:11pt;font-family:Calibri,sans-se=
rif"><span>=C2=A0</span></p><p class=3D"gmail-m_3899209230007378221gmail-Ms=
oListParagraph" style=3D"color:rgb(34,34,34);font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;margin:0in 0in 0.0001pt 0.5in;font-s=
ize:11pt;font-family:Calibri,sans-serif"><span><span>1)<span style=3D"font-=
style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;fon=
t-size:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<span>=C2=A0</span></span></span></span>Path in<=
span>=C2=A0</span><b>environment-setup-cortexa8hf-<wbr>vfp-neon-poky-linux-=
gnueabi</b><span>=C2=A0</span>is hard code. Is it possible to have that is =
configurable.<span></span></p><p class=3D"gmail-m_3899209230007378221gmail-=
MsoListParagraph" style=3D"color:rgb(34,34,34);font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial;margin:0in 0in 0.0001pt 0.5in;font=
-size:11pt;font-family:Calibri,sans-serif"><span><span>2)<span style=3D"fon=
t-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;f=
ont-size:7pt;line-height:normal;font-family:&quot;Times New Roman&quot;">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span>=C2=A0</span></span></span></span>If I =
change path in<span>=C2=A0</span><b>environment-setup-cortexa8hf-<wbr>vfp-n=
eon-poky-linux- gnueabi script<span>=C2=A0</span></b>than also it raise err=
or while recognizing compiler<b>.</b><span></span></p><p class=3D"MsoNormal=
" style=3D"margin:0in 0in 0.0001pt;color:rgb(34,34,34);font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;font-size:11pt;font-family=
:Calibri,sans-serif"><span>=C2=A0</span></p><p class=3D"MsoNormal" style=3D=
"margin:0in 0in 0.0001pt;color:rgb(34,34,34);font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;font-size:11pt;font-family:Calibri,s=
ans-serif">Please let me know hint for using tool chain generated from one =
machine to other machine at any path.</p>

<br></div>

--0000000000004d8f0a056cc3c931--
