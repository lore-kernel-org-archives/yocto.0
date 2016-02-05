Return-Path: <Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C889E00D2F; Fri,  5 Feb 2016 10:06:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from FLEMING.seektech.com (mail.seektech.com [66.192.149.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65B70E00D2C
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:06:15 -0800 (PST)
Received: from WRIGHT.seescan.com (192.168.11.30) by mail.seektech.com
	(192.168.3.10) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 5 Feb 2016 10:06:13 -0800
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Fri, 5 Feb 2016 10:06:14 -0800
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Fri, 5 Feb 2016 10:06:14 -0800
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "Burton, Ross" <ross.burton@intel.com>, Nathan Sowatskey <nathan@nathan.to>
Thread-Topic: [yocto] libgcc_s not present in Yocto image
Thread-Index: AQHRYAo/2mYO8sqa1UiA5S63nXMvgZ8d32cAgAA5LICAAAc8gIAAIL4AgAACfoD//3yN7A==
Date: Fri, 5 Feb 2016 18:06:13 +0000
Message-ID: <1454695459773.33828@seescan.com>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>,
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
In-Reply-To: <CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Feb 2016 18:06:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

My guess is that the executable is not compiled for his hardware.


Frederick

________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Friday, February 5, 2016 9:56 AM
To: Nathan Sowatskey
Cc: yocto@yoctoproject.org; Fred Ollinger
Subject: Re: [yocto] libgcc_s not present in Yocto image


On 5 February 2016 at 17:47, Nathan Sowatskey <nathan@nathan.to<mailto:nath=
an@nathan.to>> wrote:
find /usr/lib -name libgcc_s.so.1
root@qemux86-64:~#

I don't have that lib.

As I said, libgcc_s.so.1 is in /lib, not /usr/lib.

With ldd I get:

ldd /usr/bin/testprog
/usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory

Well ldd appears to be having a bit of a panic.  Try objdump -p /usr/bin/te=
stprog instead.

Ross

