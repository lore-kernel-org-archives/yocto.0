Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EBB6E005B3; Mon,  2 Nov 2015 10:53:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31A43E0034B
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 10:53:06 -0800 (PST)
Received: by lbbwb3 with SMTP id wb3so94450954lbb.1
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 10:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2BFOfSm15l2QplhJHTPJT8iXf3XSs8XbGP2Z+3S/Yww=;
	b=TvAbuSZ7MtbQFss2mPFunrnYG7IGAY2zQOUQIcW+wURbipE9R8BD93Lwaf+u2paPnW
	dzYG/Qh5zu0vIO5Ikctrbu6jERZfp+F8z2H5+BoVevVDX18J7WmUfY/3mdrQkag+McmU
	PKoQKEX/REuM1omI7FjVA1vGvaVPnKTJP1S4k6oey4MTSPjmyqxIbYhxU1YcaGzURpRZ
	eOJEiSXjRmiY+Zyxn/1b7soTcqBg9M5ixCHv1u6ZzH/XUjd6U8X9Mo27uuDR1G9phNdT
	3/v4bZXa3YqcDfFaX8iDKKYPNipe7mAzka6rMZs1PjS7mjLEkkDIztFFy78MjV+MhmRu
	D1EA==
MIME-Version: 1.0
X-Received: by 10.112.138.138 with SMTP id qq10mr10894873lbb.45.1446490384808; 
	Mon, 02 Nov 2015 10:53:04 -0800 (PST)
Received: by 10.25.218.5 with HTTP; Mon, 2 Nov 2015 10:53:04 -0800 (PST)
Date: Mon, 2 Nov 2015 18:53:04 +0000
Message-ID: <CABatt_zq+Bt3w=PyTYfSM9X5TUyOYXBuVTpK8a0JH-L2HAApMQ@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: populate_sdk and debian packages problem
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
X-List-Received-Date: Mon, 02 Nov 2015 18:53:08 -0000
Content-Type: multipart/alternative; boundary=089e011836b88ec5d50523934948

--089e011836b88ec5d50523934948
Content-Type: text/plain; charset=UTF-8

Hi,

I've just moved everything to fido and everything builds fine.  One of the
reasons for moving to Fido was to use the built toolchain and create an SDK
using populate_sdk but it is failing with the following message:
ERROR: Unable to install packages. Command
'/home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/sysroots/x86_64-linux/usr/bin/apt-get
install --force-yes --allow-unauthenticated nativesdk-packagegroup-sdk-host
packagegroup-cross-canadian-am43-devboard-aquila' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
W: Unable to read
/home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/work/am43_devboard_aquila-oe-linux-gnueabi/bia-image/1.0-r0/apt-sdk/preferences.d/
- DirectoryExists (2: No such file or directory)
E: Unable to locate package nativesdk-packagegroup-sdk-host

I checked the nativesdk-packagegroup-sdk-host build and it's empty.

After a bit of searching I found that a similar problem exists in Daisy and
it was down to debian packages which I am using so I chaged to use the
default IPK and the error message disappears.

Is this a regression? or are Debian packages not supported for SDK?

Many Thanks,
Martin.

--089e011836b88ec5d50523934948
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>I&#39;ve just moved e=
verything to fido=20
and everything builds fine.=C2=A0 One of the reasons for moving to Fido was=
=20
to use the built toolchain and create an SDK using populate_sdk but it=20
is failing with the following message:<br>ERROR: Unable to install packages=
. Command &#39;/home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tm=
p-glibc/sysroots/x86_64-linux/usr/bin/apt-get=C2=A0 install --force-yes --a=
llow-unauthenticated nativesdk-packagegroup-sdk-host packagegroup-cross-can=
adian-am43-devboard-aquila&#39; returned 100:<br>Reading package lists...<b=
r>Building dependency tree...<br>Reading state information...<br>W: Unable =
to read /home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc=
/work/am43_devboard_aquila-oe-linux-gnueabi/bia-image/1.0-r0/apt-sdk/prefer=
ences.d/ - DirectoryExists (2: No such file or directory)<br>E: Unable to l=
ocate package nativesdk-packagegroup-sdk-host<br><br></div>I checked the na=
tivesdk-packagegroup-sdk-host build and it&#39;s empty.<br><br></div>After
 a bit of searching I found that a similar problem exists in Daisy and=20
it was down to debian packages which I am using so I chaged to use the=20
default IPK and the error message disappears.<br><br></div><div>Is this a r=
egression? or are Debian packages not supported for SDK?<br><br></div><div>=
Many Thanks,<br></div>Martin.</div>

--089e011836b88ec5d50523934948--
