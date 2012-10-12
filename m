Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C085E0027E
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 14:42:13 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Fri, 12 Oct 2012 15:42:13 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Fri, 12 Oct 2012 15:42:12 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Fri, 12 Oct 2012 15:42:12 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Multiple partitions in drive image
Thread-Index: Ac2ov/cjVA+E4+p/TJCISMabmiKnxg==
Date: Fri, 12 Oct 2012 21:42:11 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Oct 2012 21:42:12.0960 (UTC)
	FILETIME=[7095CE00:01CDA8C2]
Subject: Multiple partitions in drive image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Oct 2012 21:42:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

What I am trying to do is have Poky build me an image that I can just 'dd' =
to a SSD and hook up to the system to boot.  Since that image will also onl=
y be only ~250MB or so, I would like to have Poky generate an image contain=
ing multiple partitions - a small one containing the boot files, then the r=
est of the image dedicated to storage.  Is that possible?=0A=
=0A=
Is there a better way to go about this?  Once I have my images built (hddim=
g, ext3, cpio.gz, iso) how are those typically put onto a disk drive for us=
e on hardware?  Most BSPs I have looked at use 'dd', but I am guessing ther=
e is a better way...=0A=
=0A=
Thanks!=0A=
Jonathan=0A=

