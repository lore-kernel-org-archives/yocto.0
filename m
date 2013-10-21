Return-Path: <grsandeep85@gmail.com>
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F74E01722
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 16:06:49 -0700 (PDT)
Received: by mail-ob0-f173.google.com with SMTP id gq1so2614554obb.4
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 16:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Od8swXo8Voh7kkN4mXeJp8tKP9whceTa1tX6pUdfL78=;
	b=oOVzvAO4JUWTvtHNrxqkMQ7z7Mw4CUQpgtvXGtpOeJLzSC6DWDc91WozBStCTEXFrI
	1UChenyAamXlME3S0A/4IHfwTBysQZEt4Oemc9dB2FtGgE2pMirqbjPJr9LfZ+CWLRxs
	GuL37OGItCwMHP4LO2T/5n4ALTCqoWaNI5a3llwlSgAxneDprCdGkhQhW8M6DiEw/DSG
	hYp7ft+2I3OTK5gfDPx+F5BkfbHU6JLy+4P29JRb0XLfQrlwmWWhPDQCQfiuY+8GZeBC
	Ml95fJobsIuc5CXxkUptXdXZ8SPAMuKEaJmJLFetv6L/gKLZDKay8Wm0xaVt4TP91EcA
	pkEA==
MIME-Version: 1.0
X-Received: by 10.182.98.162 with SMTP id ej2mr4207406obb.61.1382396809014;
	Mon, 21 Oct 2013 16:06:49 -0700 (PDT)
Received: by 10.76.20.102 with HTTP; Mon, 21 Oct 2013 16:06:48 -0700 (PDT)
Date: Mon, 21 Oct 2013 17:06:48 -0600
Message-ID: <CAKP9-SgzGG8bLJsu1X1qTDyELnXZCb0B-Xj+rdJvi7Bzg=ATsA@mail.gmail.com>
From: "Sandeep G.R" <grsandeep85@gmail.com>
To: yocto@yoctoproject.org
Subject: How to bring up "apt and dpkg" packages on yocto
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
X-List-Received-Date: Mon, 21 Oct 2013 23:06:52 -0000
Content-Type: multipart/alternative; boundary=047d7b2e46f0bd76a204e9485609

--047d7b2e46f0bd76a204e9485609
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I have ported Embedded Linux using yocto opensource for Freescale QorIQ
T4240QDS processor. I need to bring up "apt and dpkg" on T4240QDS using
yocto.

For this i need to modify in some .conf or .bb files. Can you please let me
know in which files i need to do these changes in order to bring up "apt
and dpkg" on T4240QDS using yocto.

-- 
*Thanks & Regards,*
*Sandeep G R*

--047d7b2e46f0bd76a204e9485609
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif;color:rgb(7,55,99)"><div class=3D"gmail_default" =
style=3D"font-size:13px">Hi All,</div><div class=3D"gmail_default" style=3D=
"font-size:13px">
<br></div><div class=3D"gmail_default" style=3D"font-size:13px">I have port=
ed Embedded Linux using yocto opensource for Freescale QorIQ T4240QDS proce=
ssor. I need to bring up=A0&quot;apt and dpkg&quot; on=A0T4240QDS using yoc=
to.</div>
<div class=3D"gmail_default" style=3D"font-size:13px"><br></div><div class=
=3D"gmail_default" style=3D"font-size:13px">For this i need to modify in so=
me .conf or .bb files. Can you please let me know in which files i need to =
do these changes in order to bring up &quot;apt and dpkg&quot; on T4240QDS =
using yocto.</div>
</div><div><br></div>-- <br><div dir=3D"ltr"><font face=3D"trebuchet ms, sa=
ns-serif" color=3D"#073763"><b>Thanks &amp; Regards,</b></font><div><font f=
ace=3D"trebuchet ms, sans-serif" color=3D"#073763"><b>Sandeep G R</b></font=
><br><br>
</div></div>
</div>

--047d7b2e46f0bd76a204e9485609--
