Return-Path: <maniacbug@ymail.com>
Received: from nm22.bullet.mail.ne1.yahoo.com (nm22.bullet.mail.ne1.yahoo.com
	[98.138.90.85])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CEF9CE0148A
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2012 20:44:32 -0700 (PDT)
Received: from [98.138.90.56] by nm22.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Jul 2012 03:44:32 -0000
Received: from [98.138.88.233] by tm9.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Jul 2012 03:44:32 -0000
Received: from [127.0.0.1] by omp1033.mail.ne1.yahoo.com with NNFMP;
	02 Jul 2012 03:44:32 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 203834.39523.bm@omp1033.mail.ne1.yahoo.com
Received: (qmail 86580 invoked by uid 60001); 2 Jul 2012 03:44:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1341200672; bh=/dHd/qgn9PVeQcd8xXs2E6nddgGCMDkDtbsBz7WTAYA=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=HrJ+2PEF0Dh+eSToGD44W+JHvthx5nl0orfluujpckbXphTytOYxVYaPcjXFJZZX4Xu2Bz9kXgFqbNZb/Nb/hjxzvXm6YzegxDIPtjUlZOZthur3QpV3L37jr6QHUQhpps8kgVI2OH4A8TRR5NvCO1VgiSQ4qIpJHJ6MCc+Csw8=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=gdhFyCrs9btsTosli5UFifIJhAaypAKHxphEVLXUvxwJyvy1swT2NO4u5u3xHeP7gezzesmDBdcBNIENek7FFYHOcT6heQ5PMtHako7v3VvZTtrhUo+2vDX+AdWOexojIvmq8imOFAKGqHqnAgDbcDVCmUd7HWpENN2vDWN3ZwM=;
X-YMail-OSG: 2JJ_HxAVM1nDYZ0w_QlSfc6z_jrmxLjuCa5A3Q2tkbQ8NVb
	Et6smM8osuuFccaTlKXrvGzlytK1.p8qlIFwInCb3CCdS7nzFHuxzT1JjcN7
	1u0CS9YYCwqMnqJ8.gFbLXO9dSAg.UTa7A16.NruuKfdzk6w3_niGDaPWcRy
	VnhoqoI9rPmfRyvW.jlYf4lM.ZaS1SYB6Wj_rxgobHCnp8oyeesmXjimSZKF
	pEGY01B3N3DZBf8EBloRWF5gWjm8czd.rP8CorYX5eubt.YLDRE18YWAjWuw
	or2db_d842rEn_SUauCm3yIpfGnJkM9.ekcNgGP3ZaAyjSUMYnNW7XFmCO5u
	Un5dS8qICqthhvJ2Rb54L9BvJDYID1yKZMyk2rSkkciMg6YK1Hrr0QIt7e7x
	SaiQ_t5HumrHD2AQ-
Received: from [50.135.220.100] by web121606.mail.ne1.yahoo.com via HTTP;
	Sun, 01 Jul 2012 20:44:31 PDT
X-Mailer: YahooMailWebService/0.8.118.349524
Message-ID: <1341200671.38042.YahooMailNeo@web121606.mail.ne1.yahoo.com>
Date: Sun, 1 Jul 2012 20:44:31 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Beagleboard on Qemu, anyone?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maniacbug <maniacbug@ymail.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Jul 2012 03:44:33 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Just curious if anyone here has run yocto images using MACHINE=3Dbeagleboar=
d on qemu.=A0 And if so, did you get networking working?=0A=0ARight now I'm=
 just working with the stock denzil release, not the meta-ti layer yet.=A0 =
I did manage to get this running on Qemu (from what I can tell from web sea=
rch, this is not a common use case to say the least :) ).=A0 Can't get the =
network adapter to come up.=A0 I'll figure it out sooner or later, but I th=
ought I'd ask on the list to see if anyone else has been down this path.=0A

