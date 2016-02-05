Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 395D2E00D2F; Fri,  5 Feb 2016 10:10:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from FLEMING.seektech.com (mail.seektech.com [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB1EE00D2C
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:10:47 -0800 (PST)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 5 Feb 2016 10:10:46 -0800
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Fri, 5 Feb 2016 10:10:47 -0800
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Fri, 5 Feb 2016 10:10:47 -0800
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Nathan Sowatskey <nathan@nathan.to>
Thread-Topic: [yocto] libgcc_s not present in Yocto image
Thread-Index: AQHRYAo/2mYO8sqa1UiA5S63nXMvgZ8d32cAgAA5LICAAAc8gIAAIL4AgAACfoD//3yN7IAAhwmA//96NVA=
Date: Fri, 5 Feb 2016 18:10:46 +0000
Message-ID: <1454695732426.82900@seescan.com>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>,
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
In-Reply-To: <7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.98]
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
X-List-Received-Date: Fri, 05 Feb 2016 18:10:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

The results should tell us:=0A=
=0A=
 $ files /usr/bin/testprog=0A=
=0A=
What are they? (Sitting on the edge of my seat.)=0A=
________________________________________=0A=
From: Nathan Sowatskey <nathan@nathan.to>=0A=
Sent: Friday, February 5, 2016 10:09 AM=0A=
To: Fred Ollinger=0A=
Cc: Burton, Ross; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] libgcc_s not present in Yocto image=0A=
=0A=
Thanks Fred.=0A=
=0A=
I am using qemux86_64 on Intel i7 chips with OSX.  The target is likewise I=
ntel.=0A=
=0A=
I am assuming that is quite generic, but =85=0A=
=0A=
Regards=0A=
=0A=
Nathan=0A=
=0A=
> On 5 Feb 2016, at 19:06, Fred Ollinger <Fred.Ollinger@seescan.com> wrote:=
=0A=
>=0A=
> My guess is that the executable is not compiled for his hardware.=0A=
>=0A=
>=0A=
> Frederick=0A=
>=0A=
> ________________________________=0A=
> From: Burton, Ross <ross.burton@intel.com>=0A=
> Sent: Friday, February 5, 2016 9:56 AM=0A=
> To: Nathan Sowatskey=0A=
> Cc: yocto@yoctoproject.org; Fred Ollinger=0A=
> Subject: Re: [yocto] libgcc_s not present in Yocto image=0A=
>=0A=
>=0A=
> On 5 February 2016 at 17:47, Nathan Sowatskey <nathan@nathan.to<mailto:na=
than@nathan.to>> wrote:=0A=
> find /usr/lib -name libgcc_s.so.1=0A=
> root@qemux86-64:~#=0A=
>=0A=
> I don't have that lib.=0A=
>=0A=
> As I said, libgcc_s.so.1 is in /lib, not /usr/lib.=0A=
>=0A=
> With ldd I get:=0A=
>=0A=
> ldd /usr/bin/testprog=0A=
> /usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory=0A=
>=0A=
> Well ldd appears to be having a bit of a panic.  Try objdump -p /usr/bin/=
testprog instead.=0A=
>=0A=
> Ross=0A=
=0A=

