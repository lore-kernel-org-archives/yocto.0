Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27EA5E008E1; Wed, 10 Feb 2016 10:22:17 -0800 (PST)
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
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 798B1E0088B
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 10:22:12 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id g62so38592050wme.0
	for <yocto@yoctoproject.org>; Wed, 10 Feb 2016 10:22:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:reply-to:user-agent:mime-version
	:content-type; bh=0ZeTwXZnX/GXBvUmfTUokVjBwuFPHqwdjGO4OTyQz98=;
	b=QLipV7BfMIDAa3IRovoCJoscxG22cj3+gpsFZP9eIbOv/jDHANwI33/+3sT7XaxDZ4
	tJIkwV4LIkKzasdIjEZihZ/R7oGYQgwTN9rhIVXoNR5CmycnVr0ZC4rNDZtDOhiDgad6
	QpgDc8VX+1fcx7eqi94EW86XJBnRQGDvJcvaHNYy7SbL2tKaoXpLb66KVnumtI9sNBEA
	SMFeaox990YtrYsT2yA/UjvMQI0wo01+rtB9ap4CZA5c/yMXkIHtyJsl8wC04tQ6j+Tk
	MSix112zDubsUseW8WKNFxVUdjNA3C8PgBtQmVgBPUs3iBYWtKpCTXJzSQrSBYi2lj5z
	zzAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:reply-to
	:user-agent:mime-version:content-type;
	bh=0ZeTwXZnX/GXBvUmfTUokVjBwuFPHqwdjGO4OTyQz98=;
	b=j4BxsJ1e9Kfzc7KV2yuZjumtK3alj+oDUhHiVnrf1t/HVBSK7D1YDOfaf/+F48k4g7
	KLRXqzMzwzjA9FDRZhUvIfYfAJSqT9hoqJCesFNvd2T5UxVsjsGr6Yxy8qQxwf/UdqRd
	EAmOdZgsTV2KTTuJ0R5x1rzbBDlck+BP4BS9YNAWRnnEDNfV+qV7Qom1CVDR3pNVg13U
	ItO/SsN7PcBy+RRADFl3ZieR1YWI50LgJWf8s8dgfWRkQeJy267Pq2Nv7x4+s6ncdVUF
	R27KHZYpVqzZD+3u6yBmUQEGFSj8rfnhYlsEb2mxqPsWAY2mFp5yTok2Z9PQFHmpMJos
	pKCA==
X-Gm-Message-State: AG10YOT3R2WTkSaLK9x+TNlM+1HVLgtsMY8oS7u4MX+76hCFB0qSJQylWBwLhO4ThNq2FQ==
X-Received: by 10.195.11.193 with SMTP id ek1mr19184139wjd.23.1455128531930;
	Wed, 10 Feb 2016 10:22:11 -0800 (PST)
Received: from [127.0.0.1] ([80.95.0.196]) by smtp.gmail.com with ESMTPSA id
	r62sm4525646wmd.15.2016.02.10.10.22.09 for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 10 Feb 2016 10:22:10 -0800 (PST)
From: Marius <mdlcameras@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 10 Feb 2016 18:22:03 +0000
Message-Id: <emb6f9b431-819c-496e-a74d-4ebdc4e4299f@marius-pc>
User-Agent: eM_Client/6.0.24316.0
Mime-Version: 1.0
Subject: Eclipse IDE plugin failure
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
X-List-Received-Date: Wed, 10 Feb 2016 18:22:17 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB6EBA982D-F6E2-4D90-9234-3DFB8CE0385C"

--------=_MB6EBA982D-F6E2-4D90-9234-3DFB8CE0385C
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I installed the latest Eclipse (Mars) and attempted to install the=20
plugin. The installation failed and the reported error was that it could=
=20
not locate the TM Terminal version 3.xxx. The TM terminal is installed=20
but it is version 4.00xxx

Should I rather install older versions of the software or is there a=20
workaround for this problem? If so what is suggested to be good and=20
working?


-----------------------------
Regards / Groete

Marius D. Liebenberg
+27 82 698 3251
+27 12 743 6064

--------=_MB6EBA982D-F6E2-4D90-9234-3DFB8CE0385C
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
<DIV>I installed the latest Eclipse (Mars) and attempted to install the =
plugin. The installation failed and the reported error was that it could=
 not locate the TM Terminal version 3.xxx. The TM terminal is installed =
but it is version 4.00xxx</DIV>
<DIV>&nbsp;</DIV>
<DIV>Should I rather install older versions of the software or is there =
a workaround for this problem? If so what is suggested to be good and worki=
ng?</DIV>
<DIV>&nbsp;</DIV>
<DIV>
<DIV id=3Dsignature_old>
<DIV style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">
<DIV>&nbsp;</DIV>
<DIV>-----------------------------</DIV>
<DIV>Regards / Groete</DIV>
<DIV>&nbsp;</DIV>
<DIV>Marius D. Liebenberg</DIV>
<DIV>+27 82 698 3251</DIV>
<DIV>+27 12 743 6064</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV></BODY></HTML>

--------=_MB6EBA982D-F6E2-4D90-9234-3DFB8CE0385C--
