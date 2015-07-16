Return-Path: <robin@deltastrike.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86C43E00978; Wed, 15 Jul 2015 18:38:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vn0-f51.google.com (mail-vn0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38BA7E00957
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 18:38:37 -0700 (PDT)
Received: by vnbf7 with SMTP id f7so6506911vnb.1
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 18:38:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Eacld9iWd7V6et1OMDwQFZKUhW/v9X61MWz6bCki/pA=;
	b=aVyyNxRpqKNxfK1xZbMun9ko8Vm0Pt44iC0kWx1ffsNI/GC6BVdc5uNaE/XZEdTnd7
	mGtqlbWMUKXMFHqHQ3z0iYbn/FJsqdHmmD0lo6BOi0hTvwtmQei0gX12k+AoqkuzEEGd
	GhZco+YAN4BQyZzaeTof4wQcReaS9io7wUpArITUkXpSoDQrOdtUxwAMTn8lY34ktqIC
	Qf0zjmXLCUMhwh5C+VKlBy4LZ+YalrI4AnIjVRu4GigeryDxkBLIEAi6Iue/87Hq4BW6
	PJFQ/4gHhH6eBibSYfr07jHRJI0FzY6zg9PTrjnxMvwyuuh5MQtwGlmRuCCL4Si5O733
	OnjA==
X-Gm-Message-State: ALoCoQmwfjJA3s77Ql5w/Zmbat8yChoArDmoqEA3+F/RDYUsi3IjDe3dTj5d569tBjPfjK8++WXt
MIME-Version: 1.0
X-Received: by 10.52.103.8 with SMTP id fs8mr7553446vdb.13.1437010716626; Wed,
	15 Jul 2015 18:38:36 -0700 (PDT)
Received: by 10.31.3.92 with HTTP; Wed, 15 Jul 2015 18:38:36 -0700 (PDT)
Date: Thu, 16 Jul 2015 13:38:36 +1200
Message-ID: <CAHG6Dmenn5HzjNoTgddc7qXMi_SR_edwRa40y-9g4f98PO4Fpw@mail.gmail.com>
From: Robin Gilks <robin@deltastrike.com>
To: yocto@yoctoproject.org
Subject: Anyone done a VAR-SOM-SOLO run-up?
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
X-List-Received-Date: Thu, 16 Jul 2015 01:38:40 -0000
Content-Type: multipart/alternative; boundary=047d7b86ef2e4da92f051af4210d

--047d7b86ef2e4da92f051af4210d
Content-Type: text/plain; charset=UTF-8

Greetings all

I'm having problems with the run-up of a Dizzy build on a VAR-SOM-SOLO. The
same image is OK with a quad core variant, its just the single core fails
so probably a DTB problem.

I can't find any info on getting into u-boot - not even which serial port
is used - so I can start debugging this.

Has anyone on the list experience of this SOM and its associated
VAR-MX6CustomBoard development/breakout board?

Thanks

-- 
*Robin Gilks*
Development

Delta Strike
Success through Delta Strike
phone:    +64 3 982 9892
skype:     robindeltastrike
web:       www.deltastrike.com

--047d7b86ef2e4da92f051af4210d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Greetings all</div><div><br></div>I&#39;m having prob=
lems with the run-up of a Dizzy build on a VAR-SOM-SOLO. The same image is =
OK with a quad core variant, its just the single core fails so probably a D=
TB problem.<div><br></div><div>I can&#39;t find any info on getting into u-=
boot - not even which serial port is used - so I can start debugging this.<=
/div><div><br></div><div>Has anyone on the list experience of this SOM and =
its associated VAR-MX6CustomBoard development/breakout board?</div><div><br=
></div><div>Thanks<br clear=3D"all"><div><br></div>-- <br><div class=3D"gma=
il_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"font-siz=
e:12.8000001907349px"><font color=3D"#444444"><b>Robin Gilks</b></font></di=
v><div style=3D"font-size:12.8000001907349px"><div><font color=3D"#444444">=
<font face=3D"verdana, arial, helvetica, sans-serif">Development<br><br></f=
ont></font></div><div style=3D"font-family:verdana,arial,helvetica,sans-ser=
if"><span style=3D"font-weight:bold;font-size:large;font-family:arial,sans-=
serif;color:rgb(255,69,0)">Delta=C2=A0</span><span style=3D"font-weight:bol=
d;font-size:large;font-family:arial,sans-serif;color:rgb(68,68,68)">Strike<=
/span></div><div style=3D"font-family:verdana,arial,helvetica,sans-serif"><=
span style=3D"color:rgb(68,68,68)"><span style=3D"font-size:small;font-fami=
ly:Verdana,Arial,Helvetica,sans-serif;font-weight:bold">Success=C2=A0</span=
><span style=3D"font-size:small;font-family:Verdana,Arial,Helvetica,sans-se=
rif;font-weight:bold;font-style:italic"><span style=3D"color:rgb(255,0,0)">=
</span></span></span><span style=3D"color:rgb(68,68,68)"><span style=3D"fon=
t-size:small;font-family:Verdana,Arial,Helvetica,sans-serif;font-weight:bol=
d;font-style:italic"><span style=3D"color:rgb(255,0,0)"><span style=3D"font=
-family:arial,sans-serif;color:rgb(255,69,0)">through</span></span>=C2=A0</=
span><span style=3D"font-size:small;font-family:Verdana,Arial,Helvetica,san=
s-serif;font-weight:bold">Delta Strike</span></span><span style=3D"font-wei=
ght:bold;font-size:large;font-family:arial,sans-serif;color:rgb(68,68,68)">=
<br></span></div><font color=3D"#444444">phone: =C2=A0=C2=A0=C2=A0</font><a=
 value=3D"+6439829892">+64 3 982 9892</a><br><font color=3D"#444444">skype:=
 =C2=A0 =C2=A0 robindeltastrike</font></div><div style=3D"font-size:12.8000=
001907349px">web: =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://www.deltastri=
ke.com/" style=3D"color:rgb(17,85,204)" target=3D"_blank">www.deltastrike.c=
om</a></div></div></div></div></div>
</div></div>

--047d7b86ef2e4da92f051af4210d--
