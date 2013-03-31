Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta3.messagelabs.com (mail1.bemta3.messagelabs.com
	[195.245.230.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 110C2E01485
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2013 01:45:27 -0700 (PDT)
Received: from [85.158.137.99:10281] by server-1.bemta-3.messagelabs.com id
	9B/DD-13706-6A7F7515; Sun, 31 Mar 2013 08:45:26 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-10.tower-217.messagelabs.com!1364719525!17471284!1
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 6438 invoked from network); 31 Mar 2013 08:45:25 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-10.tower-217.messagelabs.com with DHE-RSA-AES256-SHA
	encrypted SMTP; 31 Mar 2013 08:45:25 -0000
X-AuditID: 93eaf2e7-b7fc16d000004503-c9-5157f7a40873
Received: from ilptexch01.ecitele.com ( [172.31.244.40])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	9F.24.17667.4A7F7515; Sun, 31 Mar 2013 11:45:24 +0300 (IDT)
Received: from ILPTWPVEXCA01.ecitele.com (172.31.244.224) by
	ilptexch01.ecitele.com (172.31.244.40) with Microsoft SMTP Server (TLS)
	id 8.3.264.0; Sun, 31 Mar 2013 11:45:24 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA01.ecitele.com ([fe80::ac15:43ab:d541:dfa7%12]) with mapi id
	14.02.0328.009; Sun, 31 Mar 2013 11:45:23 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to convert source rpm spec to bitbake recipe?
Thread-Index: Ac4t7BYn37w9LlD1TgiC6FsVfNx/Mg==
Date: Sun, 31 Mar 2013 08:45:23 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE2C5CC@ILPTWPVEXMB02.ecitele.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.234.1.1]
content-transfer-encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA3VTa0gUURTu7ozj+Bib1tW9WtA0ZT/KtV0y20rLH0VFQUqR0EMdd2+7Q7uz
	y84Y2q8VIkEjLKlws4ei20uzLCzIDbIs80c+KAoDCdd80gOxtqSiGSdNiO6v75zz3e87HM4h
	MW0fkUjygoQ8AudgiUi8cmxi0lAXysk2+m8bzadHG4hMsK204ySRBfZ5QTonCC6JkxBjRaIl
	g83y8Ec4SzHL8NYM1sQybgdnQU4kSBks53YjwcpujGT+eekyjRcYJFhcVl6wZbDbd+8ymM1r
	1hlM7MblS02rN0TusfMigwxOjncwTiSKnA0xcib/LmZvu57rPh1RdP7JhXAvqA8vAyQJ6VTY
	VRtTBiJkGA+7+5uIMhBJaukAgMFPPlwNWgD80FQRpgbtAPYGKjDlC0GvhV01n8IVrKPXwJGn
	k4SCY+n18Nj7cUJx0NGb4I9KjUpJgSUlik4EidNJcGjIjyuYorPgxfJGoGAgdxHqbJjmY7Qe
	9g1e0qjd0bCutQtTcRwcDf4KU/Fi2PP53R9+Mrz8YIJQ8UrorxnHVP0F8HnV4LSXll4BP076
	//xNgI+uvsErQLxvjp1vjpRvjpRvjtRlgF8HcbzDLRU4bUZTCrLwEnKgFIvL2QzUZRi+D6Yu
	LWsDNAnYaMpYkpOtDeOOiMXONpBAatg4qvWznIopcFmL7Zxoz/MUOpDYBiCJsTpqf3Bvtpay
	csVHkcc1U9oiT+0UlhhlcclrJ0h5q43G/wesnrrizdmlpW3y0h1GyI08MzqLSJKFlPGrbL/A
	g2yo6BDvkP6WNWSE0ka03EaawqFEN+cUeZta7wQGsvR7aAxoccEloEQ99fOLTKIVkr1QmNWZ
	OYkxoJcHEEtFKVLR8sHMKo3JJhrZxN83bSIfx2wp0QsWLmmvujdOzTOwMc/iM6s9dXklHWY8
	6VX4nf6kA/XBEweTw46nlp+fquoI1H+8Ud/S/Lgx98uZXmngdWVR9c2moJZ58W3phoYo6+aJ
	taGtta2F5T2mQsdoIKb6Vm56fvdD78Dxx+a0a29fGgOrSneGhlNr3YO69TvPNT7x+eaPnN3B
	4qKdM63APCL3GzDmvrXtAwAA
Subject: how to convert source rpm spec to bitbake recipe?
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
X-List-Received-Date: Sun, 31 Mar 2013 08:45:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"

Is there a tool or guide for conversion of source rpm spec file to bitbake r=
ecipe?
	
I have a distro for our embedded product based on CentOS 5 with about 140 pa=
ckages. Third are source rpm packages from CentOS without any change, third=
 are with some of our proprietary changes and the rest are our proprietary p=
ackages in source rpm format. All source code is in our local repository (Pe=
rforce). I use RPM on native host server to build binary rpm packages and us=
e binary rpms for software upgrade on our product. Both build on host and  i=
nstall on target are driven using the same rpm spec file. Our product uses F=
reescale's PowerPC CPUs, so I am using PowerPC server to build our distro na=
tively. I'd like to switch to cross-build using bitbake.
So I need to write 140 bitbake recipes that build my packages the same way a=
s RPM and create binary rpm packages with my current existing specs for comp=
atibility with our existing units in the field. That brings me to my questio=
n: is there a tool or guide for conversion of source rpm spec file to bitbak=
e recipe that preserve all rpm spec scriplets? 

Thanks,
Michael



This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.


