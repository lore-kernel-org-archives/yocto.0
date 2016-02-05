Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC298E00D2F; Fri,  5 Feb 2016 10:00:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from FLEMING.seektech.com (mail.seektech.com [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6173AE00D2C
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:00:12 -0800 (PST)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 5 Feb 2016 10:00:09 -0800
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Fri, 5 Feb 2016 10:00:10 -0800
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Fri, 5 Feb 2016 10:00:10 -0800
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Nathan Sowatskey <nathan@nathan.to>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] libgcc_s not present in Yocto image
Thread-Index: AQHRYAo/2mYO8sqa1UiA5S63nXMvgZ8d32cAgAA5LICAAAc8gIAAIL4A//99QK0=
Date: Fri, 5 Feb 2016 18:00:09 +0000
Message-ID: <1454695095703.96261@seescan.com>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>,
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
In-Reply-To: <30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: WRIGHT.seescan.com
X-GFI-SMTP-RemoteIP: 192.168.11.30
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 18:00:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

What are results of:=0A=
=0A=
 $ file testprog=0A=
=0A=
Frederick=0A=
________________________________________=0A=
From: Nathan Sowatskey <nathan@nathan.to>=0A=
Sent: Friday, February 5, 2016 9:47 AM=0A=
To: Burton, Ross=0A=
Cc: yocto@yoctoproject.org; Fred Ollinger=0A=
Subject: Re: [yocto] libgcc_s not present in Yocto image=0A=
=0A=
Hi Ross=0A=
=0A=
Many thanks for following up. Fred also offered some helpful suggestions in=
 a different thread.=0A=
=0A=
The program in question was supplied to me by a third party for testing, so=
 I shall obscure the name here and call it testprog.=0A=
=0A=
It was installed by:=0A=
=0A=
dpkg -i ./testprog.deb=0A=
=0A=
=0A=
Where the .deb file was supplied to me. I don=92t know what that was built =
on though.=0A=
=0A=
Then:=0A=
=0A=
which testprog=0A=
/usr/bin/testprog=0A=
/usr/bin/testprog=0A=
-sh: /usr/bin/testprog: No such file or directory=0A=
=0A=
Then I:=0A=
=0A=
readelf -a /usr/bin/testprog | grep Shared=0A=
 0x0000000000000001 (NEEDED)             Shared library: [libsnmp.so.30]=0A=
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Network.so.=
5]=0A=
 0x0000000000000001 (NEEDED)             Shared library: [libQt5SerialPort.=
so.5]=0A=
 0x0000000000000001 (NEEDED)             Shared library: [libQt5Core.so.5]=
=0A=
 0x0000000000000001 (NEEDED)             Shared library: [libstdc++.so.6]=
=0A=
 0x0000000000000001 (NEEDED)             Shared library: [libgcc_s.so.1]=0A=
 0x0000000000000001 (NEEDED)             Shared library: [libpthread.so.0]=
=0A=
 0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]=0A=
=0A=
Followed by:=0A=
=0A=
find /usr/lib -name libQt5Network.so.5=0A=
/usr/lib/libQt5Network.so.5=0A=
=0A=
So, I have that lib.=0A=
=0A=
find /usr/lib -name libgcc_s.so.1=0A=
root@qemux86-64:~#=0A=
=0A=
I don=92t have that lib.=0A=
=0A=
With ldd I get:=0A=
=0A=
ldd /usr/bin/testprog=0A=
/usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory=0A=
=0A=
So, that=92s where I am at this stage.=0A=
=0A=
Regards=0A=
=0A=
Nathan=0A=
=0A=
> On 5 Feb 2016, at 16:50, Burton, Ross <ross.burton@intel.com> wrote:=0A=
>=0A=
>=0A=
> On 5 February 2016 at 15:24, Nathan Sowatskey <nathan@nathan.to> wrote:=
=0A=
> I suspect that my test program, which was supplied to me as a .deb packag=
e, was compiled on Ubuntu, and so links to libgcc_s.so.1. I can=92t see any=
 obvious way to get libgcc_s.so.1 on Yocto. I already have:=0A=
>=0A=
> libgcc contains /lib/libgcc_s.so.1, so it should be installed in your ima=
ge already:=0A=
>=0A=
> How are you determining that it isn't in your image, and that your applic=
ation doesn't work?=0A=
>=0A=
> Ross=0A=
=0A=

