Return-Path: <billmartin544@gmail.com>
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29249E0081B
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 19:31:23 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id uy17so554804igb.4
	for <yocto@yoctoproject.org>; Mon, 06 Jan 2014 19:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Z6c1tye+CDJoWmnX+EJjUpX3uVSmYNyPwyY7ErsDzs4=;
	b=pZ5+0wSyakUucaUFI688OOuiXMLsw/7iUrdVBB44lDqjinE2AbDYps8SHg3uLSIj2p
	h/ZvuDqjQB1WroFSQRzQxa0HENwzOa0PGZ0Vt6nhs1xK5LHvB7ytPBE280XQ9o/sfs70
	uX+nlSAhZH6g7g0bteTyWf16gD8C82nQo1mbTyrWMjOZUGcBZi6JyRpBN4C80sczfLN3
	IrQS3Uh0owS6quG2wwXaeLErompp5goicf/zQSFIu05ywMNA6qbBo/EQjQboVbFwIxtO
	zVsLnP6Qh1H7MEaD+1RCweOnuTD7+CVNqs/+H5DyyH6gXp7JNmboOLzZNkcQkJceb9fT
	lDvw==
MIME-Version: 1.0
X-Received: by 10.50.118.69 with SMTP id kk5mr8270449igb.26.1389065482844;
	Mon, 06 Jan 2014 19:31:22 -0800 (PST)
Received: by 10.64.228.199 with HTTP; Mon, 6 Jan 2014 19:31:22 -0800 (PST)
Date: Mon, 6 Jan 2014 20:31:22 -0700
Message-ID: <CAJGS5=H1s=xK2CHzjMq4qPDvy3V29sFqcn3fep0_ZT2d3WGUuQ@mail.gmail.com>
From: Bill Martin <billmartin544@gmail.com>
To: yocto@yoctoproject.org
Subject: eglibc's iconv (version 2.17) command in Yocto Dylan for x86 target
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
X-List-Received-Date: Tue, 07 Jan 2014 03:31:24 -0000
Content-Type: multipart/alternative; boundary=e89a8f643382acbfc904ef59025d

--e89a8f643382acbfc904ef59025d
Content-Type: text/plain; charset=ISO-8859-1

I'm using Trousers and tss on my Yocto target build. I attempted to make a
call to tspi_tpm_collateidentityrequest and this requires a UNICODE string
in UTF-16 form. The preceding call to iconv fails when I try to convert
from ASCII to UTF-16. I tried variations of the UTF-16, based on iconv
--list.

I know this command works on other Unix-based systems. I tried on three
different machines running Ubuntu and can convert from ASCII to UTF-16.

Rather than modify all the TrouSers code and force it to only use UTF-8, I
wonder if anyone here has a patch for eglibc that would allow iconv to
convert to UTF-16?

Thanks

Bill Martin
Valicore Technologies.

--e89a8f643382acbfc904ef59025d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m using Trousers and tss on my Yocto target bui=
ld. I attempted to make a call to tspi_tpm_collateidentityrequest and this =
requires a UNICODE string in UTF-16 form. The preceding call to iconv fails=
 when I try to convert from ASCII to UTF-16. I tried variations of the UTF-=
16, based on iconv --list.<br>
<br>I know this command works on other Unix-based systems. I tried on three=
 different machines running Ubuntu and can convert from ASCII to UTF-16.<br=
><br></div>Rather than modify all the TrouSers code and force it to only us=
e UTF-8, I wonder if anyone here has a patch for eglibc that would allow ic=
onv to convert to UTF-16?<br>
<br>Thanks<br><br>Bill Martin<br>Valicore Technologies.<br></div>

--e89a8f643382acbfc904ef59025d--
