Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4B4EE00F68; Thu,  8 Sep 2016 07:36:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nick83ola[at]gmail.com)
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D759E00D7C
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 07:36:55 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id w12so39566565wmf.0
	for <yocto@yoctoproject.org>; Thu, 08 Sep 2016 07:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=ro+UsDqHjtpk3SWfmQwsh5FHnZUEI0o7etHAGlxNpfk=;
	b=AvOV5ET2G3tH60bGKnV20ZLC3uVH4pS3KCZZDR3r4rgrtnvN2JbqLHto2B0G+G8MMt
	4aXqYZGfb7k2FgSGJIyG/bPUszyjY3t3sHJ+xpulkg+YYQwoa3pGU3Bs5A124li4TmM3
	j3Mq6q/QCGgbew0Bk8sVFy/ASyi68Pt/GI/3eUckmA4pIg+GQ0rlCydTX0KLJnq/Izlv
	y4xjMlkRLmb5s5it9RZNXNGlBOfvgG/K3KxWdrWDXy/UEpWYfabgdcyTbuCRZdMfGRSN
	0I9xrkwyrCxr7NtCx53/REfztzWmXC0n1LdOfYQkgpHKUaEi4Pf50nKdFGHC18DtJuTg
	FqPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ro+UsDqHjtpk3SWfmQwsh5FHnZUEI0o7etHAGlxNpfk=;
	b=TzBn4LPKyLaAwkoAjha0lDMBhGfygqAh0MrX80br2FvtJ0j5447X8CQKUu5S8Eb2S5
	yeacCAjaiYPGbLjyBBn47WlpLxbsVBvdO/Ep64YRF1/HfI3PXAEaPxKDOwvqkfh+70Vj
	l2lYqB99BWSDDihjmFDykA0Ll8NuqXk7jB9oBt5pNYf8WnYpmTFdQeynHL1VrrBZpMQZ
	c+Rxme/gXJxJpwt05AW2lYitqSerWx4jsz451ZdjE5qy1bHV4dBi7mafc0HKjATv6JUI
	iML28d4D8M24YT4PfknnKzwOyqlQywDFGOxS9cARk3tkQNpcXF/l1ZLx6wVTvHTvyMOI
	JOFA==
X-Gm-Message-State: AE9vXwNl1KKPCsPiyPG4PCO+ZmUrAoEGeeTeYxX+nKF12Ug+Ccv4h+BG1TUvQEEWaOlzgJuw0b3tVxT39r2fNg==
X-Received: by 10.194.240.39 with SMTP id vx7mr3473wjc.38.1473345414841; Thu,
	08 Sep 2016 07:36:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.138.2 with HTTP; Thu, 8 Sep 2016 07:36:34 -0700 (PDT)
From: nick83ola <nick83ola@gmail.com>
Date: Thu, 8 Sep 2016 16:36:34 +0200
Message-ID: <CABPh3UMatDBGkpS7wm8MT1zRBqYNMfg0Rj=aaeGe7ApjiHUh4A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: building python-gst without x11
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
X-List-Received-Date: Thu, 08 Sep 2016 14:36:58 -0000
Content-Type: multipart/alternative; boundary=001a11c1b90e1550bf053bfff60c

--001a11c1b90e1550bf053bfff60c
Content-Type: text/plain; charset=UTF-8

Dear mailing list i'm building an image for a media player with an imx6
board

I don't want x11 support to strip down image size

i'm with yocto fido 1.8.1 (the newest version supported by my board grrr)

but if I try to compile python-gst removing x11 from distro feature (I
don't need video at all!!)

DISTRO_FEATURES_remove = " x11 wayland pulseaudio bluetooth wifi 3g
zeroconf irda pcmcia nfc"

it gives me an error because gtk+ requires it and python-pygst is a
dependance of python-gst

if I add directfb to distro feature gtk+ doesn't compile either because is
missing directfb-native recipe

(it is in fact missing)

If I enable x11 it works but compile 1000 packages more!!!!!!)

Please help Me!!



-- 

P.S. Le informazioni trasmesse attraverso la presente comunicazione sono di
esclusiva
spettanza dell'effettivo destinatario. Nel caso in cui le stesse
raggiungessero, per
qualunque motivo, soggetti non interessati, questi ultimi vorranno darne
immediata
notizia al mittente. In ogni caso, eventuali soggetti diversi dai legittimi
destinatari
della presente comunicazione e dei dati contenuti negli allegati, possono
essere
sanzionati ai sensi del T.U. sul trattamento dei dati personali d.lgs.
196/2003, sia ai
sensi dell'art. 616 del Codice Penale che disciplina la violazione del
segreto sulla
corrispondenza.

--001a11c1b90e1550bf053bfff60c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear mailing list i&#39;m building an image for a media pl=
ayer with an imx6 board<div><br></div><div>I don&#39;t want x11 support to =
strip down image size</div><div><br></div><div>i&#39;m with yocto fido 1.8.=
1 (the newest version supported by my board grrr)</div><div><br></div><div>=
but if I try to compile python-gst removing x11 from distro feature (I don&=
#39;t need video at all!!)</div><div><br></div><div>DISTRO_FEATURES_remove =
=3D &quot; x11 wayland pulseaudio bluetooth wifi 3g zeroconf irda pcmcia nf=
c&quot;</div><div><br></div><div>it gives me an error because gtk+ requires=
 it and python-pygst is a dependance of python-gst</div><div><br></div><div=
>if I add directfb to distro feature gtk+ doesn&#39;t compile either becaus=
e is missing directfb-native recipe</div><div><br></div><div>(it is in fact=
 missing)</div><div><br></div><div>If I enable x11 it works but compile 100=
0 packages more!!!!!!)</div><div><br></div><div>Please help Me!!</div><div>=
<br></div><div><br clear=3D"all"><div><br></div>-- <br><div class=3D"gmail_=
signature"><div dir=3D"ltr"><div><br>P.S. Le informazioni trasmesse attrave=
rso la presente comunicazione sono di esclusiva<br>spettanza dell&#39;effet=
tivo destinatario. Nel caso in cui le stesse raggiungessero, per<br>qualunq=
ue motivo, soggetti non interessati, questi ultimi vorranno darne immediata=
<br>notizia al mittente. In ogni caso, eventuali soggetti diversi dai legit=
timi destinatari<br>della presente comunicazione e dei dati contenuti negli=
 allegati, possono essere<br>sanzionati ai sensi del T.U. sul trattamento d=
ei dati personali d.lgs. 196/2003, sia ai<br>sensi dell&#39;art. 616 del Co=
dice Penale che disciplina la violazione del segreto sulla<br>corrispondenz=
a.</div></div></div>
</div></div>

--001a11c1b90e1550bf053bfff60c--
