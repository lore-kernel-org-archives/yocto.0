Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 978B8E01664; Sun, 15 Jul 2018 18:20:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.37 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Sun, 15 Jul 2018 18:20:12 PDT
Received: from resqmta-ch2-05v.sys.comcast.net
	(resqmta-ch2-05v.sys.comcast.net [69.252.207.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17189E00C1B
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2018 18:20:12 -0700 (PDT)
Received: from resomta-ch2-03v.sys.comcast.net ([69.252.207.99])
	by resqmta-ch2-05v.sys.comcast.net with ESMTP
	id ersYf2Jw155XdesARfgpEe; Mon, 16 Jul 2018 01:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1531703951;
	bh=euqocUG59AZdGaU2HLBboH1yoXHt79HA4NDGPLfw6Yg=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=G0zokOCxVSzlxLRVHOioTVwD7wIi3MNmPxxAVJgmM1wyJmRMLUiIFNKfVx9Dl3BF+
	vBX3i/JcE/VLlpc3lKmeNaC1mWGb5qu+FkPg2cRz2kQc0QABnKbNa+Ixbfj1yRWdGq
	kRcKGlUnfcZoMRRApkCb5qcZrqB1fn2N2oVEHkI/f2h/YtC0ya1wjemOVzpycOmCBN
	LOO/I+sS1U9RmB/CCId9EiT4aMNWohOmiuBJE5k2EtPsdEyW9yRxhcXThrCMz45QqY
	NW6gn7NCDQCi5Mzd07zdpc+B/G9k5JUBdM1TBSHL7bnrnpP5TUnmy1+0tPzMolcJw8
	CnvUJwBUeeJcA==
Received: from [IPv6:2601:18f:880:9aeb:6152:bab7:a364:5ed4]
	([IPv6:2601:18f:880:9aeb:6152:bab7:a364:5ed4])
	by resomta-ch2-03v.sys.comcast.net with ESMTPSA
	id esAPfVP1oiX04esAQfTeCO; Mon, 16 Jul 2018 01:19:11 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 11.4 \(3445.8.2\))
Message-Id: <32FF3687-3963-4F20-87DE-16DCBA134DAE@comcast.net>
Date: Sun, 15 Jul 2018 21:19:08 -0400
To: Yocto-mailing-list <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3445.8.2)
X-CMAE-Envelope: MS4wfOOpnF4juEhOh5FuaP/du5xIFEi+LNgNb0e+c2pu3zCN2aTVoAzu08ESzYRfPCf4rS7AfjP+acgGs+agUBP32kgLB7DNd53PcmmrACa0IWVFJSebP0xM
	/J6cXH2MDL1vHOhq7GnURgdf+SjJqJxo3rsRDQtDDV2XXvzogT7PP7Weoltv4DgFNADbsTY2IgqOrPepjv/SuLCUuK2C2twFbSi7w/FMhZLoWL33H7O11uO/
	l2N7w8JQI77yocOc4h8sywPZmCaFbgWFuhzMT/N/wnQ97zQYg+vJMwnOGAJphAcV
Subject: openssl
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
X-List-Received-Date: Mon, 16 Jul 2018 01:20:12 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_54E82699-381A-447D-BF3D-C81C953DE9EA"

--Apple-Mail=_54E82699-381A-447D-BF3D-C81C953DE9EA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

I=E2=80=99m looking to change to openssl version 1.1.  I=E2=80=99m using =
the rocko branch.  I have set PREFERRED_VERSION_openssl to 1.1%=E2=80=A6 =
but it doesn=E2=80=99t seem to work.

Anyone?

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 1.1.% of openssl not available (for item =
openssl10)
NOTE: versions of openssl available: 1.0.2m
NOTE: preferred version 1.1.% of openssl not available (for item =
openssl-misc)
NOTE: versions of openssl available: 1.0.2m
NOTE: preferred version 1.1.% of openssl not available (for item =
openssl-conf)
NOTE: versions of openssl available: 1.0.2m
NOTE: preferred version 1.1.% of openssl not available (for item =
libcrypto)
NOTE: versions of openssl available: 1.0.2m=

--Apple-Mail=_54E82699-381A-447D-BF3D-C81C953DE9EA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hello,<div class=3D""><br class=3D""></div><div =
class=3D"">I=E2=80=99m looking to change to openssl version 1.1. =
&nbsp;I=E2=80=99m using the rocko branch. &nbsp;I have set =
PREFERRED_VERSION_openssl to 1.1%=E2=80=A6 but it doesn=E2=80=99t seem =
to work.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Anyone?</div><div class=3D""><br class=3D""></div><div =
class=3D""><div style=3D"font-family: Calibri; font-size: =
14.666666984558105px;" class=3D"">NOTE: Resolving any missing task queue =
dependencies</div><div style=3D"font-family: Calibri; font-size: =
14.666666984558105px;" class=3D"">NOTE: preferred version 1.1.% of =
openssl not available (for item openssl10)</div><div style=3D"font-family:=
 Calibri; font-size: 14.666666984558105px;" class=3D"">NOTE: versions of =
openssl available: 1.0.2m</div><div style=3D"font-family: Calibri; =
font-size: 14.666666984558105px;" class=3D"">NOTE: preferred version =
1.1.% of openssl not available (for item openssl-misc)</div><div =
style=3D"font-family: Calibri; font-size: 14.666666984558105px;" =
class=3D"">NOTE: versions of openssl available: 1.0.2m</div><div =
style=3D"font-family: Calibri; font-size: 14.666666984558105px;" =
class=3D"">NOTE: preferred version 1.1.% of openssl not available (for =
item openssl-conf)</div><div style=3D"font-family: Calibri; font-size: =
14.666666984558105px;" class=3D"">NOTE: versions of openssl available: =
1.0.2m</div><div style=3D"font-family: Calibri; font-size: =
14.666666984558105px;" class=3D"">NOTE: preferred version 1.1.% of =
openssl not available (for item libcrypto)</div><div style=3D"font-family:=
 Calibri; font-size: 14.666666984558105px;" class=3D"">NOTE: versions of =
openssl available: 1.0.2m</div></div></body></html>=

--Apple-Mail=_54E82699-381A-447D-BF3D-C81C953DE9EA--
