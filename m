Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8004E0027E
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 15:18:49 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Fri, 12 Oct 2012 16:18:49 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Fri, 12 Oct 2012 16:18:49 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Fri, 12 Oct 2012 16:18:48 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Rudolf Streif <rudolf.streif@linux.com>
Thread-Topic: [yocto] Multiple partitions in drive image
Thread-Index: Ac2ov/cjVA+E4+p/TJCISMabmiKnxgAORqAA//+cAzI=
Date: Fri, 12 Oct 2012 22:18:47 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D95AFDE@Mercury.usurf.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>,
	<CA+gsK-rsTji6KpUsHnHr_BqiN_YLVAJ4FSsKSBNgKt42rSnqyg@mail.gmail.com>
In-Reply-To: <CA+gsK-rsTji6KpUsHnHr_BqiN_YLVAJ4FSsKSBNgKt42rSnqyg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Oct 2012 22:18:49.0351 (UTC)
	FILETIME=[8DBC7970:01CDA8C7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple partitions in drive image
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
X-List-Received-Date: Fri, 12 Oct 2012 22:18:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This is for an ADLGS45 board from Advanced Digital Logic.  It has a Core2 D=
uo with an Intel GS45 chipset.  I have the kernel and everything booting ju=
st find using the hddimg file generated (and found in tmp/deploy/images), h=
owever that is wasting a lot of space on that drive, since the image is onl=
y 250MB (and the drive is 120GB).

If I can avoid going through the hassle of installing GRUB and copying over=
 the root FS (i.e. wrap it into a single 'dd' command) that would be ideal =
because eventually this will be turned over to a tech who knows nothing abo=
ut GRUB or anything else and just (somewhat) follows a manual.

Thanks,
Jonathan

________________________________
From: rstreif@linuxfoundation.org [rstreif@linuxfoundation.org] on behalf o=
f Rudolf Streif [rudolf.streif@linux.com]
Sent: Friday, October 12, 2012 16:13
To: Jonathan Haws
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Multiple partitions in drive image

Jonathan,

For what hardware are you building? It depends on the hardware how you need=
 to layout the file system on the boot device. YP provides you with a kerne=
l image and a root file system image and eventually, dependent on the hardw=
are, with bootloaders in ${TMPDIR}/deploy/images.

Rudi

