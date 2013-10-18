Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1971CE016E4
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 05:19:57 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so4590093pdj.3
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 05:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Rxix3rCa1Bl0PWT9V3Lsyg79dHqViMJoCcRN/vcOZBM=;
	b=QCyWJOhMdJykbKoM0Yx2gPlZPnfrmvy3nvvqf3OVjJl/NSCfrqZ5aCPp26VDghFrZ7
	1gIRC9OiBMUbUgdtcfDk+VT1dzwRYXPVzP26RBC1QrDRnoKoSjUx61vRTKXiMkxWECP9
	gcfR/rsBXs18mjqmDnulFwyQNW2OgV/rTPBtlpVrEwIOVB6E9hKX97lbmeaoguEFcLfg
	VTc3tG+fTBACcuak6evWYhzcFSoVkaIQWV3Xykfe5Ht4Lc2drCAeHL9972P2Tsr0z9yn
	cW8itSSmRt/dcr56IKwFQnD3PfkkkPP2O8Ah9eqGUCLPppXi0/CJ0oP5cluLZ5F4G3pK
	Ugaw==
MIME-Version: 1.0
X-Received: by 10.68.201.103 with SMTP id jz7mr2760865pbc.95.1382098797233;
	Fri, 18 Oct 2013 05:19:57 -0700 (PDT)
Received: by 10.68.72.2 with HTTP; Fri, 18 Oct 2013 05:19:57 -0700 (PDT)
Date: Fri, 18 Oct 2013 15:19:57 +0300
Message-ID: <CABwVrCoYn7Yju7Mw4NHYzEkJQaBS5_p0ENeV4adMBpmoUA+C5Q@mail.gmail.com>
From: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
To: yocto@yoctoproject.org
Subject: external variable
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
X-List-Received-Date: Fri, 18 Oct 2013 12:19:59 -0000
Content-Type: multipart/alternative; boundary=047d7b15a963da8bae04e902f30e

--047d7b15a963da8bae04e902f30e
Content-Type: text/plain; charset=ISO-8859-1

Hello everyone,

Is there any way of defining a variable into a recipe and use it in another.
I tried: export VAR="value" but when I tested it`s existence in devshell it
did not exist(echo $VAR).

Defining this variable in local.conf is not a viable solution.


Thank you,
Alex

--047d7b15a963da8bae04e902f30e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello everyone,<br></div><div><br>Is t=
here any way of defining a variable into a recipe and use it in another.<br=
></div>I tried: export VAR=3D&quot;value&quot; but when I tested it`s exist=
ence in devshell it did not exist(echo $VAR).<br>
<br></div>Defining this variable in local.conf is not a viable solution.<br=
><br><br></div>Thank you,<br></div>Alex =A0 <br></div>

--047d7b15a963da8bae04e902f30e--
