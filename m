Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7623FE00CAF; Wed, 13 Sep 2017 07:48:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_20,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,T_REMOTE_IMAGE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.50 listed in dnsbl.sorbs.net]
	* 1.5 HTML_IMAGE_ONLY_20 BODY: HTML: images with 1600-2000 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1050FE00C88
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 07:48:36 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id z73so2875206oia.2
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=41fVYx6oMQFhnuVSYSDBP67iJpkTMP2BXIRdIjhIbeU=;
	b=DqMDAcOCepro99sj0t+BcP3IW8ZrCX61iOnQFcetVzG5H7RtY9wDGYRNmyQZaQ0p53
	AO6SSSW8TDGrBMd1onPfGBz/SAQwXYBEMemUzbfGVwrh6ytlADaFFD0Ldwv/sAo0OhxL
	qLqrzhMBF6tndGj1E9G6dXGJi/2TULquohW9KabhD7ZnzzcGtOAFi34flQr6w42MtLyf
	9hDM5AnRqeMxBgWgxlsI1oJag8hzOGy37a5p5l4OSf4RYYEfvpA7RTK2/RLhhUZf7lHS
	wzHb7+FgptcD8p3/W/KY9PnNKJFeLOUTtYYpE+6AdccARz9MPfP0QYDGuSDHKNbZvDIK
	yygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=41fVYx6oMQFhnuVSYSDBP67iJpkTMP2BXIRdIjhIbeU=;
	b=ZHU1HSi0smTgEG/FMaxNHcURU6JdYDQaZcXtveX0TRFdP9jDXUAVv0nC3VsYmYvZcB
	UGvJnc8P7S4sf81RzK/B0aAGmWLHBUpLRcGrstBaoaymomyUBD2IyfdunIrHlQhYG78S
	rLg06ThT9b61lIZDxh9FK+PlnhLbAzmM1zFh5aAGJ3d7C4ve5BS2i716G0WsW2lRBeKJ
	91v+UkjbrXxMHWYhZ7gxbw+EDnDatXbYUNZ3CXU7lKj6NbCGwHmkkkKbJudgTvm0HKjX
	y60HedhpBGR9Y2Q7uKsMHdqKG8TN4FeiChnLJmaR9QEALzO96nXAJhDaDcgmNrq2k2kd
	AQJw==
X-Gm-Message-State: AHPjjUg5g491g1yZAd4RUTcu70lEYaUHuDmY8ppg/QFBGe/19wztm++3
	kgTwI+OR5XOb7kl/jWZbJB+RQKGEbF9jHARdmSlRmxu0
X-Google-Smtp-Source: AOwi7QDgu+GN9pBW35WGTrcZDgObwsJNKwR79yn7cXwXMFs3sgDwJSc4IyunilYnamWUidoUJRBoGnVUAPxHtS/bz/M=
X-Received: by 10.202.230.207 with SMTP id d198mr18126791oih.234.1505314115242;
	Wed, 13 Sep 2017 07:48:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 07:48:34 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 16:48:34 +0200
Message-ID: <CABFXn3FSKuaZSZDxGaeyYfHXwSbHJOOgiw3nuCuxD_bvUe9O1Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>,
	Andrei Gherzan <andrei@gherzan.ro>
Subject: [meta-raspberrypi] ERROR: No recipes available for gstreamer
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
X-List-Received-Date: Wed, 13 Sep 2017 14:48:37 -0000
Content-Type: multipart/alternative; boundary="001a1141ad8a1d52e20559134124"

--001a1141ad8a1d52e20559134124
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Minutes ago, i pulled the recent commits for poky,meta-oe, meta-raspberry
pi
and when i build this comes. there are actually another errors but as i
started taking one by one error. this was the first.

*ERROR: No recipes available for:*
*
/yocto/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_=
1.12%.bbappend*


--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a1141ad8a1d52e20559134124
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/4fe7410=
a181cdec842b22a69bfa19e4eda17839f.png?u=3D1822760"><div>Minutes ago, i pull=
ed the recent commits for poky,meta-oe, meta-raspberry pi=C2=A0</div><div>a=
nd when i build this comes. there are actually another errors but as i star=
ted taking one by one error. this was the first.=C2=A0</div><div><br></div>=
<div><b>ERROR: No recipes available for:</b></div><div><b>=C2=A0 /yocto/pok=
y/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.12%.bbap=
pend</b></div><div><br></div><div><br></div>-- <br><div class=3D"gmail_sign=
ature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#77=
7777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span s=
tyle=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"co=
lor:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFo=
nt;font-size:16px"></span><div><font color=3D"#777777" face=3D"Tahoma, sans=
-serif, Arial, serif, EmojiFont"><span style=3D"font-size:13px">Graduated f=
rom Faculty of Engineering - Electronics and Communications Department at C=
airo University.</span></font><br></div><div style=3D"color:rgb(0,0,0);font=
-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px">=
<div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noopener nore=
ferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans=
-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Linkedin</span=
></font></a><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,=
sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=
=A0</span></font><a href=3D"https://github.com/yahiafarghaly" rel=3D"noopen=
er noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Taho=
ma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">GitHub<=
/span></font></a></div></div></div></div></div></div>
<br><br><br>=E2=80=8C</div>

--001a1141ad8a1d52e20559134124--
