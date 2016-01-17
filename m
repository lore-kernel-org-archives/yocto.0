Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33282E00A9B; Sun, 17 Jan 2016 04:03:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mdlcameras[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B48A0E009F3
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 04:03:51 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id r129so20661645wmr.0
	for <yocto@yoctoproject.org>; Sun, 17 Jan 2016 04:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:reply-to:user-agent:mime-version
	:content-type; bh=ZpPNbV4Li9093sBQnxZCfihfKuvoCSo9N1JnJsOS0us=;
	b=XT7+mA4b0Gt6BKh7iL+vWI65hV6cJqpYujyPhVUarKF+dBj7hHR1tjyQrnIE98UB5B
	DTqIuc/NlLZ1NeeFog1havvrS6TTjCFwIlv1JWd9rAFDO2Qt7tesQ5EAwbnKkGlWSB8D
	p0HxJDUA7o8tZVNr/Atwa/HxWsPKQiGfvVVnIaklbSf7d0zgs8s82al3+/YNPlzHtmm5
	eVPxpaLvrORifFkhizfcGyeMqkOhEB5cg4CLW9uUUBQB9ypzpmuThdoRRXu6NPsn4IHB
	XThXcCXEsaupUYCWvxYxtSVGmqvU/aZvWFp9qyXV2WUx4AGQjN8vLKlZFTIaFlNL9BDG
	WCgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:reply-to
	:user-agent:mime-version:content-type;
	bh=ZpPNbV4Li9093sBQnxZCfihfKuvoCSo9N1JnJsOS0us=;
	b=XbY0J7QndoZ2PycaK7TuZYr5lLIkRe9tCGkGPXyQK2+tIJ2ma+ozprAxP8htVvvw/L
	v+XmFR3Ow0W8pIe0Hyoy/4nNSq5nH/nWiYlhNtUd2vyEEpD5hs5NJDe/UPXuwA5f2KFm
	//LM+WJs7grEYujKyfGe2hdONJDf4LnIApCV0CLWBzwzk2vqzE8AlRPgcKfVuLHijq+f
	ADXN26ZN6psakJ3Id/joI6sP+twqIY/j1AfW5XeFcxFwm2peHAgNIL6ClY9atFG+HfLy
	MCs382QXJ2Wyhx97PNAresWF3hgCXyLlA3xQdeQ/kolqukimh+RU+J2zPNhiTJyhinPI
	fP7Q==
X-Gm-Message-State: AG10YOQh8nBS/lYDdsbIkoYFhk/OwxretGdT7K8esohR4EFytUTSBBzAMWZzpXD23mAHYw==
X-Received: by 10.28.21.19 with SMTP id 19mr7464062wmv.43.1453032230921;
	Sun, 17 Jan 2016 04:03:50 -0800 (PST)
Received: from [127.0.0.1] ([80.95.0.196]) by smtp.gmail.com with ESMTPSA id
	q129sm10986341wmd.14.2016.01.17.04.03.48 for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 17 Jan 2016 04:03:49 -0800 (PST)
From: Marius <mdlcameras@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sun, 17 Jan 2016 12:03:44 +0000
Message-Id: <emb499deb3-312c-40c9-b7b3-cde584411127@marius-pc>
User-Agent: eM_Client/6.0.24144.0
Mime-Version: 1.0
Subject: How to set aliases before bitbake compile
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Marius <mdlcameras@gmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 17 Jan 2016 12:03:56 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB1778B9E3-71AB-4B7A-A073-F106832A5F24"

--------=_MB1778B9E3-71AB-4B7A-A073-F106832A5F24
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi
I am still learning about yocto and kernels and the whole process so=20
please excuse a silly question.
Because I am still learning, I am re-compiling my BBB image on a regular=
=20
basis as I only want the bare minimum of packages in the image.

Now I have to edit the /etc/profile after every eMMC install in order to=
=20
set my aliases. Where can I set the aliases before running bitbake on my=
=20
image?


Regards
Marius

--------=_MB1778B9E3-71AB-4B7A-A073-F106832A5F24
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<STYLE id=3DeMClientCss>BLOCKQUOTE.cite {
	PADDING-LEFT: 10px; MARGIN-LEFT: 5px; BORDER-LEFT: #cccccc 1px solid; PADD=
ING-RIGHT: 0px; MARGIN-RIGHT: 0px
}
BLOCKQUOTE.cite2 {
	PADDING-TOP: 0px; PADDING-LEFT: 10px; MARGIN-LEFT: 5px; BORDER-LEFT: #cccc=
cc 1px solid; MARGIN-TOP: 3px; PADDING-RIGHT: 0px; MARGIN-RIGHT: 0px
}
.plain PRE {
	FONT-SIZE: 100%; FONT-FAMILY: monospace; WHITE-SPACE: pre-wrap; FONT-WEIGH=
T: normal; FONT-STYLE: normal
}
.plain TT {
	FONT-SIZE: 100%; FONT-FAMILY: monospace; WHITE-SPACE: pre-wrap; FONT-WEIGH=
T: normal; FONT-STYLE: normal
}
A IMG {
	BORDER-TOP: 0px; BORDER-RIGHT: 0px; BORDER-BOTTOM: 0px; BORDER-LEFT: 0px
}
#x5df198991b844028b5f2c41d0ce8faa4 {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
.plain PRE {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
.plain TT {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
BODY {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
</STYLE>
</HEAD>
<BODY><SPAN id=3Dx5df198991b844028b5f2c41d0ce8faa4>
<DIV>Hi </DIV>
<DIV>I am still learning about yocto and kernels and the whole process so=
 please excuse a silly question.</DIV>
<DIV>Because I am still learning, I am re-compiling my BBB image on a regul=
ar basis as I only want the bare minimum of packages in the image.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Now I have to edit the /etc/profile after every eMMC install in order=
 to set my aliases. Where can I set the aliases before running bitbake on=
 my image?</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards</DIV>
<DIV>Marius</DIV></SPAN></BODY></HTML>

--------=_MB1778B9E3-71AB-4B7A-A073-F106832A5F24--
