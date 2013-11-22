Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC489E006E6
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 10:00:45 -0800 (PST)
Received: by mail-qa0-f51.google.com with SMTP id o15so5061933qap.17
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 10:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6fkULO4M2/E64P1TQIep89t4j1jP2FLRSe/DxkVSzKo=;
	b=YtySwRjoz8aAfkugGJi420Gu9O/VKNFu11Mt3qnvXmtrRPWqkY+0sjKDpSqth2ai+/
	LfPKoELwaEpWckoPhwKlHMIRVqhw48Hn6TrXy1TyTUNLtiwB94ChsB4bGZrXCL+j8whH
	5689Sxuu8Md6Z34tZRi7ZdoxWXU9EDgY9nOvPqe5yYL/0y0te2tnR/UpGGyuc97WTWQr
	g+i1cqK/qJnFnspbiMtxLDtkvYGlJL3HT1zB9LXV96t895SRoe/K7TFHaHRfG3tboR5b
	qGfy5+JW5jO7EWvdA/TJLMKnGtuykYuxhxHkZ2H9/0Uo6JXzAGZLFrJ7Utg6gXYIDZ72
	VK9A==
MIME-Version: 1.0
X-Received: by 10.49.108.165 with SMTP id hl5mr24006778qeb.24.1385143244290;
	Fri, 22 Nov 2013 10:00:44 -0800 (PST)
Received: by 10.140.37.81 with HTTP; Fri, 22 Nov 2013 10:00:44 -0800 (PST)
Date: Fri, 22 Nov 2013 11:00:44 -0700
Message-ID: <CANwz6nzTqH+-zA0B8YodrpEW_kVwGp-FF2zi3jDdQE6L+5od8A@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: chkconfig
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
X-List-Received-Date: Fri, 22 Nov 2013 18:00:49 -0000
Content-Type: multipart/alternative; boundary=047d7bdc0d120a03e204ebc7cb00

--047d7bdc0d120a03e204ebc7cb00
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
Is chkconfig part of any image?
Also to force what is the best procedure?
In my /etc/network/interfaces I have tried the following
auto eth0
iface eth0 inet static
        address 192.168.0.29
        hwaddress ether 00:0A:35:00:00:00
        netmask 255.255.255.0
        network 192.168.0.0
        gateway 192.168.0.1
Since I have a router on my network I get an IP using dhcp,
if I ifdown eth0 and ifup eth0 then the 192.168.0.29 get setup.
Thanks

--047d7bdc0d120a03e204ebc7cb00
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello all,<br></div>Is chkconfig =
part of any image?<br></div>Also to force what is the best procedure?<br>In=
 my /etc/network/interfaces I have tried the following<br>auto eth0<br>ifac=
e eth0 inet static<br>
=A0=A0=A0=A0=A0=A0=A0 address 192.168.0.29<br>=A0=A0=A0=A0=A0=A0=A0 hwaddre=
ss ether 00:0A:35:00:00:00<br>=A0=A0=A0=A0=A0=A0=A0 netmask 255.255.255.0<b=
r>=A0=A0=A0=A0=A0=A0=A0 network 192.168.0.0<br>=A0=A0=A0=A0=A0=A0=A0 gatewa=
y 192.168.0.1<br></div>Since I have a router on my network I get an IP usin=
g dhcp,<br>
</div>if I ifdown eth0 and ifup eth0 then the 192.168.0.29 get setup.<br></=
div>Thanks<br><div><div><div><br></div></div></div></div>

--047d7bdc0d120a03e204ebc7cb00--
