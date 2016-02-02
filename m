Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5496DE00B45; Tue,  2 Feb 2016 03:20:30 -0800 (PST)
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
	*      [74.125.82.51 listed in list.dnswl.org]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C89E00AAB
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 03:20:27 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id p63so17610895wmp.1
	for <yocto@yoctoproject.org>; Tue, 02 Feb 2016 03:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:reply-to:user-agent:mime-version
	:content-type; bh=j1ZLzqywnwNKUqkCQakRf9TfipLGCicmdHJ/cyoNLEg=;
	b=UhWlsrSiP0W/487NzUU3NcadUkjlVeSsuY+xcPKGOtKfWg+b0fi/b+S3ll/1jXOXKw
	9+wZmJg26zwFXsyuzR3Blcu/opcnl1ufyfMwkeKTNjok9P1plAacnIk1KcYsxGWepoqW
	KCxa23PDKaNxsAt6gcdBtkebWE0qNKvqvVQOlgL9I8iu25dK5ipXehiTKWEUsnzTnt4h
	04zODxHx7kcXRe6eews/WXH4R8wiKFHx/YgQTMwL9AbdypCy879mrlWlF14fAK8+4fVY
	QHA0erCr5wtRb7S8q15xdw/35HJYvcJoQQaSpHBta4sXqQRTojJMmHZspthintLIptqt
	FTgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:reply-to
	:user-agent:mime-version:content-type;
	bh=j1ZLzqywnwNKUqkCQakRf9TfipLGCicmdHJ/cyoNLEg=;
	b=ARKsw3sFSJMW1dignLpHKkrQgWXWas7qcwiaHjQjVbNr675dwXQL3zj1+dBax/StL8
	X3mF/rs8xI5SjOPDrnPTRhuBQ5NrnKsEUFq9SBdwcMgnoKWcDknJAuDs6tQosF8+GjW6
	Gx8hil0ewWbhv1rERpbivlqJATu1uiQ4DBnktFTmSJAVB/Mh+KhVD9aUaRXT9zwFuNqz
	FYISG22iga59U5Yc9MUG+oajTTl0rnWWNToi9IrGqtD7/WCbkLXwgcZHJkEtKw+RoBBQ
	jIwjaFhSKfLm5YugBfDS2fHKH3fvhPXBkfOjMomP5YrCdTzOlNfEB5OIDaziWcWP3xqQ
	0V6Q==
X-Gm-Message-State: AG10YOTFAhoS+P2SfvKGtb6nlGWDmEmIfxV2fW4MLCDePQ2bpKZaaUmakSoIC6rNf6PCaw==
X-Received: by 10.194.173.65 with SMTP id bi1mr27660775wjc.110.1454412025990; 
	Tue, 02 Feb 2016 03:20:25 -0800 (PST)
Received: from [127.0.0.1] ([80.95.0.196]) by smtp.gmail.com with ESMTPSA id
	x186sm15859543wmg.19.2016.02.02.03.20.24 for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 02 Feb 2016 03:20:24 -0800 (PST)
From: Marius <mdlcameras@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 02 Feb 2016 11:20:21 +0000
Message-Id: <emfcffef04-42d6-4ed4-acdc-9b13e77a5a45@marius-pc>
User-Agent: eM_Client/6.0.24316.0
Mime-Version: 1.0
Subject: How to build for various boards from one yocto installation
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
X-List-Received-Date: Tue, 02 Feb 2016 11:20:30 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB288644B7-FDCD-4EED-8C4B-72C1528B72A6"

--------=_MB288644B7-FDCD-4EED-8C4B-72C1528B72A6
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have a custom board (similar to BBB) that has no HDMI and no network=20
as well as a standard BBB. I want to build images for each from my yocto=
=20
(poky-jethro) installation.
Can it be done and if so how do I go about that?

Regards
Marius

--------=_MB288644B7-FDCD-4EED-8C4B-72C1528B72A6
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
	FONT-SIZE: 100%; FONT-FAMILY: monospace; FONT-WEIGHT: normal; FONT-STYLE:=
 normal
}
.plain TT {
	FONT-SIZE: 100%; FONT-FAMILY: monospace; FONT-WEIGHT: normal; FONT-STYLE:=
 normal
}
A IMG {
	BORDER-TOP: 0px; BORDER-RIGHT: 0px; BORDER-BOTTOM: 0px; BORDER-LEFT: 0px
}
BODY {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
.plain PRE {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
.plain TT {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
</STYLE>
</HEAD>
<BODY>
<DIV>I have a custom board (similar to BBB) that has no HDMI and no network=
 as well as a standard BBB. I want to build images for each from my yocto=
 (poky-jethro) installation.</DIV>
<DIV>Can it be done and if so how do I go about that?</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards</DIV>
<DIV>Marius</DIV></BODY></HTML>

--------=_MB288644B7-FDCD-4EED-8C4B-72C1528B72A6--
