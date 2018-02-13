Return-Path: <plamenedelchev1988@abv.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D319E00E7B; Tue, 13 Feb 2018 01:13:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (plamenedelchev1988[at]abv.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.153.145.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 445 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Feb 2018 01:13:23 PST
Received: from smtp-out.abv.bg (smtp-out.abv.bg [194.153.145.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD10FE00D41
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 01:13:23 -0800 (PST)
Received: from nm81.abv.bg (nm81.ni.bg [192.168.151.111])
	by smtp-out.abv.bg (Postfix) with ESMTP id 08DF35B2C
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 11:05:57 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abv.bg; s=smtp-out;
	t=1518512757; bh=eMu8DXBKg0AqgmzO+gZ3W4eov2r1f2NxlpCXR+BFWl4=;
	h=Date:From:To:Subject:From;
	b=noohTuqhNPWVjZYZt1EuOzaCl3uor1stIGm4bHqMCUScDiSADzqYZf7EGCIO4mm6C
	cOEwuKKnGhVyvv3JeuwmzrCyxhFARSieoMEQee+u6c9J0uFo3XjO/UJE1hGBF0lNcG
	CLX9x3y3NDOuLt3IqpdfcwwvXgRWO2SGsAuI4tjo=
Received: from nm81.abv.bg (localhost [127.0.0.1])
	by nm81.abv.bg (Postfix) with ESMTP id DB0A01201C5
	for <yocto@yoctoproject.org>; Tue, 13 Feb 2018 11:05:56 +0200 (EET)
Date: Tue, 13 Feb 2018 11:05:55 +0200 (EET)
From: plamen nedelchev <plamenedelchev1988@abv.bg>
To: yocto@yoctoproject.org
Message-ID: <1819807010.92684.1518512756895.JavaMail.apache@nm81.abv.bg>
MIME-Version: 1.0
X-Mailer: AbvMail 3.0
X-Originating-IP: 78.90.78.219
Subject: deby fails with sanity check
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
X-List-Received-Date: Tue, 13 Feb 2018 09:13:25 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_92681_1105225454.1518512755453"

------=_Part_92681_1105225454.1518512755453
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Hello Yocto project, I am not sure if this is the right place to ask about this(it's my first time posting), so I will shoot straight.  I am trying to build a raspi-basic-image using as distro DEBY.  As soon as i start to build it fails one me with " TMPDIR has changed its layout version number (12 to 8)  
 "  How can i fix this ?  
  Thank you so much
 

------=_Part_92681_1105225454.1518512755453
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<HTML><BODY>
Hello Yocto project,<div>I am not sure if this is the right place to ask ab=
out this(it's my first time posting), so I will shoot straight.</div><div>I=
 am trying to build a raspi-basic-image using as distro DEBY.</div><div>As =
soon as i start to build it fails one me with "<span style=3D"background-co=
lor: rgb(240, 247, 255); font-family: Consolas, &quot;Lucida Console&quot;,=
 monospace; font-size: 12.8px; text-indent: -7px;">TMPDIR has changed its l=
ayout version number (12 to 8)</span><span style=3D"background-color: rgb(2=
40, 247, 255); font-family: Consolas, &quot;Lucida Console&quot;, monospace=
; font-size: 12.8px; text-indent: -7px;">&nbsp;</span>"</div><div>How can i=
 fix this ?</div><div><br></div><div>Thank you so much&nbsp;</div></BODY></=
HTML>

------=_Part_92681_1105225454.1518512755453--
