Return-Path: <lucabarb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F4FBE00655; Mon, 18 Aug 2014 13:43:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lucabarb[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D760E004FF
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 13:43:06 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id n12so5606597wgh.9
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 13:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=i4b9Gb7deej1VZeANZJjVuNDpKrgHWOkS60i81m6U1U=;
	b=havtFEB8PC1DkQ049hT1B3obV1GAVUeVXDzFLpubVeIUPAGvgEEKlnw5SmydzDCC9e
	ISFzG0/rj6zzm0Yb/MSB96j418fvSeZoK/qW7HL6tl3bh7D2Y8MDYcD6D+NQJML6IUzg
	2ENDR8s6NESDgiK5jxmdMW2sMor8nMOKEYKc8fFRWCtSsumSzxVPWpXXX5pXFPDNqtzK
	w8d5KMv9VIIeNixktMSYlK5iq74hp27H5jDgktJbAEcr2yTgfAa0hEadeS1MVoAZ8iIE
	Gp++DZRRm5Gb3E+EltTYTtsu6NYRvGg2SGCSBABsGx6iV2HY8Rz8FHW+ASzIy4g8m/ej
	voXw==
MIME-Version: 1.0
X-Received: by 10.180.97.101 with SMTP id dz5mr1527217wib.52.1408394585694;
	Mon, 18 Aug 2014 13:43:05 -0700 (PDT)
Received: by 10.194.200.234 with HTTP; Mon, 18 Aug 2014 13:43:05 -0700 (PDT)
Date: Mon, 18 Aug 2014 22:43:05 +0200
Message-ID: <CAAaZdsv1mvkvO-NvhQtiKBAcGqFA0LfNLf9Q4Dj1bD2Z551+MA@mail.gmail.com>
From: Luca Barbieri <lucabarb@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 19 Aug 2014 08:23:01 -0700
Subject: eglibc-dbg files ownership
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
X-List-Received-Date: Mon, 18 Aug 2014 20:43:10 -0000
Content-Type: multipart/alternative; boundary=f46d043747adfbebe90500ed6ae1

--f46d043747adfbebe90500ed6ae1
Content-Type: text/plain; charset=UTF-8

Hi, I need an help to understand a problem.
Using dora branch I've strange file ownership on some *-dbg package files,
for example in eglibc-dbg.

If I'm not wrong, it seems to me that source files are copied by
copydebugsources function in package.bbclass

This method uses "cpio -pd0mlL --no-preserve-owner" so I suppose copied
files must be owned by root.. but instead they have strange permissions

May somebody explain me if I miss something and why the -dbg package has
this incorrect ownership?

Thanks

---------------------
Luca Barbieri

--f46d043747adfbebe90500ed6ae1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I need an help to understand a problem.<div>Using dora=
 branch I&#39;ve strange file ownership on some *-dbg package files, for ex=
ample in eglibc-dbg.</div><div><br></div><div>If I&#39;m not wrong, it seem=
s to me that source files are copied by copydebugsources function in packag=
e.bbclass</div>
<div><br></div><div>This method uses &quot;cpio -pd0mlL --no-preserve-owner=
&quot; so I suppose copied files must be owned by root.. but instead they h=
ave strange permissions</div><div><br></div><div>May somebody explain me if=
 I miss something and why the -dbg package has this incorrect ownership?</d=
iv>
<div><br></div><div>Thanks</div><div><div><br></div>---------------------<b=
r>Luca Barbieri
</div></div>

--f46d043747adfbebe90500ed6ae1--
