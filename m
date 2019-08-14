Return-Path: <sayan.sinha@iitkgp.ac.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0FF7E00DD3; Wed, 14 Aug 2019 11:34:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [203.110.245.101 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1743 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Aug 2019 11:34:34 PDT
Received: from imsvaou1.iitkgp.ac.in (imsvaou1.iitkgp.ac.in [203.110.245.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EE29E00C78
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 11:34:34 -0700 (PDT)
Received: from imsvaou1.iitkgp.ac.in (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D0028DA084
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 23:35:00 +0530 (IST)
Received: from imsvaou1.iitkgp.ac.in (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BD75EDA082
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 23:35:00 +0530 (IST)
Received: from proxy1.iitkgp.ac.in (unknown [10.3.100.244])
	by imsvaou1.iitkgp.ac.in (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 23:35:00 +0530 (IST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by proxy1.iitkgp.ac.in (Postfix) with ESMTP id 4F2D5540BB2
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 22:52:21 +0530 (IST)
Received: from proxy1.iitkgp.ac.in ([127.0.0.1])
	by localhost (proxy1.iitkgp.ac.in [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id m1kXVTrFqy3p for <yocto@yoctoproject.org>;
	Wed, 14 Aug 2019 22:52:20 +0530 (IST)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by proxy1.iitkgp.ac.in (Postfix) with ESMTP id D33B7540BB4
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 22:52:20 +0530 (IST)
X-Virus-Scanned: amavisd-new at proxy1.iitkgp.ac.in
Received: from proxy1.iitkgp.ac.in ([127.0.0.1])
	by localhost (proxy1.iitkgp.ac.in [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id C-Im8hKvGBP7 for <yocto@yoctoproject.org>;
	Wed, 14 Aug 2019 22:52:20 +0530 (IST)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by proxy1.iitkgp.ac.in (Postfix) with ESMTPSA id 27D3B540BB2
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 22:52:19 +0530 (IST)
Received: by mail-ot1-f52.google.com with SMTP id j7so39771455ota.9
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 11:05:27 -0700 (PDT)
X-Gm-Message-State: APjAAAUAmo6n2YDhafsIm3QU29RNzMGnhEtWg7Q037oIlJSVYXErIQEu
	a+4+aCmx+QBx+WHFncxg0wT6QRzHlsSA/Vjp8fM=
X-Google-Smtp-Source: APXvYqzn+4ReHCP98VwMxMDOGdw5jJo+xhBYnR+w3mh31T6tnpqGofm/7jYpZ5J4lcMwfh3iCgzR4pBCwDNj2xqpCIo=
X-Received: by 2002:a6b:b748:: with SMTP id h69mr1247326iof.30.1565805924489; 
	Wed, 14 Aug 2019 11:05:24 -0700 (PDT)
MIME-Version: 1.0
From: Sayan Sinha <sayan.sinha@iitkgp.ac.in>
Date: Wed, 14 Aug 2019 23:34:47 +0530
X-Gmail-Original-Message-ID: <CAAivaFK-yhE6oto7vC30qWphwK99DD5ZvRg32MP=Mgh5g57pCA@mail.gmail.com>
Message-ID: <CAAivaFK-yhE6oto7vC30qWphwK99DD5ZvRg32MP=Mgh5g57pCA@mail.gmail.com>
To: yocto@yoctoproject.org
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSVA-9.1.0.1960-8.5.0.1020-24848.002
X-TM-AS-Result: No--4.529-7.0-31-10
X-imss-scan-details: No--4.529-7.0-31-10
X-TM-AS-User-Approved-Sender: No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-TMASE-Version: IMSVA-9.1.0.1960-8.5.1020-24848.002
X-TMASE-Result: 10--4.529300-10.000000
X-TMASE-MatchedRID: xn5nSUcXCVsJPky03R6RFkKGB4JJ2ELX2gp+A6golzbmQJUUegCCexMn
	vir+JcmKInpF6KE+rZDDPjVfk0WFWSSWJfVcNvvyA9lly13c/gE7F3ZcdQmMK2mycYYiBYyZMrJ
	18VCI8fsj9VM4vVOYGJaycdB1x26juGH8gro7lJHghYcEpSUypgeCHewokHM/4w7R7P4I0tIsGa
	iZ8QsBTdl5RjGOcUSX3J2TDyf8KAfDOSSuBPJrKStIvCO4dJ0PIPwiH5Xl/Q+8YDH/UBNnm8h4B
	C6Bkw0Esv5ikWDpI0SAxskq9zWVLdJ24xzpGcj5q5uw61JZjZCAMuqetGVettLvsKjhs0ldbh2N
	Zp6L5YRJ1hxTbQsQUyq2rl3dzGQ1m3CAqCSgI8zNMv9dxE/Y2mFdse9vzZIc40EJrnLSVJcjAN7
	p7AUaB+Oy61H5CY/QHvd9uO22yJarjClGSkTuL2LCD+wIJpvnGfuLdDRN2XRx5r/OQ4eldKgu/5
	xchByBAiCaxEmR8AAb0oeV/rOBoKW0QTnfLRsq1w5A9Pl8VQnrkQSXFQyCI68na70ZKuGP2CO5O
	XWaicg=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-12:0,22:0,33:0,34:0-0
Subject: Unable to build Yocto meta-freescale layer for NXP
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
X-List-Received-Date: Wed, 14 Aug 2019 18:34:36 -0000
Content-Type: multipart/alternative; boundary="000000000000eaa80e0590179919"

--000000000000eaa80e0590179919
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

  I was trying to build Yocto for my NXP. I tried building the Meta
Freescale layer (meta-freescale - Layer containing NXP hardware support
metadata). As mentioned in the Yocto Project Quick Build page, I added the
Meta Freescale layer to bitbake using `bitbake-layers add-layer
../meta-freescale-2.2`. Unfortunately, when I run `bitbake
meta-freescale-2.2`, I get an error message

```
ERROR: ParseError at ~/poky/meta/classes/image.bbclass:18: Could not
inherit file classes/image_types_uboot.bbclass | ETA: 0:00:06

Summary: There were 3 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
```
Any insights on this would be constructive. I would also like to mention
that my final aim is to build Yocto (with RTOS support, preferably using
Litmus RT) for NXP SBC-S32V234.

Thanks a lot in advance!

--000000000000eaa80e0590179919
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;font-size:small"><span style=3D"font-family:Arial,Helvet=
ica,sans-serif">Hello everyone,</span></div><br>=C2=A0 I was trying to buil=
d Yocto for my NXP. I tried building the Meta Freescale layer (meta-freesca=
le - Layer containing NXP hardware support metadata). As mentioned in the Y=
octo Project Quick Build page, I added the Meta Freescale layer to bitbake =
using `bitbake-layers add-layer ../meta-freescale-2.2`. Unfortunately, when=
 I run `bitbake meta-freescale-2.2`, I get an error message <br><br>```<br>=
ERROR: ParseError at ~/poky/meta/classes/image.bbclass:18: Could not inheri=
t file classes/image_types_uboot.bbclass | ETA: 0:00:06<br><br>Summary: The=
re were 3 WARNING messages shown.<br>Summary: There was 1 ERROR message sho=
wn, returning a non-zero exit code.<br>```<br><span class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif;font-size:small"></span>An=
y insights on this would be constructive. I would also like to mention that=
 my final aim is to build Yocto (with RTOS support, preferably using Litmus=
 RT) for NXP SBC-S32V234.<br><br><div>Thanks a lot in advance!<span style=
=3D"font-family:arial,helvetica,sans-serif"></span></div></div>

--000000000000eaa80e0590179919--
