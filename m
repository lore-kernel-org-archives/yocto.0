Return-Path: <kondrashkin.ilya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC80AE00CAB; Mon,  4 Mar 2019 02:54:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kondrashkin.ilya[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4020DE00994
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2019 02:54:04 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id m73so3191720lfa.2
	for <yocto@yoctoproject.org>; Mon, 04 Mar 2019 02:54:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:mime-version:to:from:subject:date:importance;
	bh=NAqmL0iPeTrbx9BacYQ8AvkUQin0lcB7uTiLMiC+eP4=;
	b=H9/EB6Rsb97i1Wz66uffviXcxR6B/PXFZzQbl+hYqzP/ofrn14ea+nEvNyjSV8gVtT
	zOl7gDqyYtoeVGdyTBumIG3QA1R+SKqA8OY5wFlJt8Ms2SUA/i56kQseldgtmQeyRfp9
	tcoBmsdPVh98+tH/QTIyoCGT4a50FhqmINK9OFr7mh/gx/BJAsITxQAqe8+1alVMHOEs
	qwkdU/+2M8TV7aoXMedbKQvvIe895IJjYVajHL5pBhYnbKUWyP06JTmXm16VQ8+X9YBO
	3SLJP9zhQgHQUw2TJd6pIv+pZGC9BH37D6g5Oi36RYtAsUckC/klKz/OyMMj5Ile195j
	apTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:mime-version:to:from:subject:date
	:importance;
	bh=NAqmL0iPeTrbx9BacYQ8AvkUQin0lcB7uTiLMiC+eP4=;
	b=IY/0avw18JGJpuCKCqJv2Xg6KCVxDvbyK9WBa308pzyW6fOL2gThKlshVtYVyTNo1v
	4Zq050Y7tqVRkBU6s/BMJd3Xzuebqph8A/gEgH4rXgBWeicqkZBXvKplu6NV+md+9WdA
	40uzYOL7GRWcjylKF9N+6N+FsrVL1ppmhy9NA6XNR1jY8HM0OUvYYXcAogNiI5pN4Hch
	2hQ0XjZ9W3nBKvCavUMdXcN1Qr2OMoaGUKxXLsk9LZI4OpLpY5BAn6U/0E8hcK7TA3UQ
	lqvw7+KrLX/WxaakefXwaeKs5h2Ns1Ze0zUpvE9gjWeiCixc5C/gJj2YQoFnY+bibgws
	Yc9A==
X-Gm-Message-State: APjAAAVvd0uRB+Vu93Amhkwlzlg2DLfP4uhwbtJLMe6YqTS//0H0f1Ie
	ufRzPumQ4E8R6OJEDbmgfZRxLk+z
X-Google-Smtp-Source: APXvYqy2JfanLF2oNtT90SRlV6PdxfwPLIz6ipMzINaMb7gMIzp71BPAb6V6R+omQvBEQzQidzp5wA==
X-Received: by 2002:a19:5f58:: with SMTP id a24mr3021190lfj.57.1551696842905; 
	Mon, 04 Mar 2019 02:54:02 -0800 (PST)
Received: from ?IPv6:::ffff:192.168.10.224? (188-168-92-49.dyn.nn.ttknn.net.
	[188.168.92.49]) by smtp.gmail.com with ESMTPSA id
	u14sm1448340lfu.94.2019.03.04.02.54.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Mar 2019 02:54:02 -0800 (PST)
Message-ID: <5c7d03ca.1c69fb81.52aa0.6910@mx.google.com>
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Ilya Kondrashkin <kondrashkin.ilya@gmail.com>
Date: Mon, 4 Mar 2019 13:54:00 +0300
Importance: normal
X-Priority: 3
Subject: Re: QtCreator +CMake + meta-toolchain-qt5
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
X-List-Received-Date: Mon, 04 Mar 2019 10:54:04 -0000
Content-Type: multipart/alternative;
	boundary="_45E054A4-823C-4796-8CE3-6738A1F60887_"

--_45E054A4-823C-4796-8CE3-6738A1F60887_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Check your /usr/lib/libc.so in SDK=E2=80=99s target rootfs.
Last time I experienced this problem /usr/lib/libc.so script contained abso=
lute paths to ld-linux-armhf.so and real libc.so.
Changing these paths to relative fixes the problem. Unfortunately, I do not=
 have the common fix for this.

Regards,
IK


--_45E054A4-823C-4796-8CE3-6738A1F60887_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DRU><div class=3DWordSection1><p class=3DMsoN=
ormal><span lang=3DEN-US>Hi,<br><br>Check your /usr/lib/libc.so in SDK=E2=
=80=99s target rootfs.<br>Last time I experienced this problem /usr/lib/lib=
c.so script contained absolute paths to </span>ld-linux-armhf.so<span lang=
=3DEN-US> and real libc.so.<o:p></o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US>Changing these paths to relative fixes the problem. Unfortuna=
tely, I do not have the common fix for this.<o:p></o:p></span></p><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Regards,</p><p class=
=3DMsoNormal><span lang=3DEN-US>IK</span></p><p class=3DMsoNormal><o:p>&nbs=
p;</o:p></p></div></body></html>=

--_45E054A4-823C-4796-8CE3-6738A1F60887_--
