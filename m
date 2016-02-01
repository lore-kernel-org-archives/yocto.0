Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39AF7E0079A; Mon,  1 Feb 2016 13:49:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC88E00444
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2016 13:49:46 -0800 (PST)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Mon, 1 Feb 2016 14:49:44 -0700
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Mon, 1 Feb 2016 14:49:44 -0700
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1104.000;
	Mon, 1 Feb 2016 14:49:44 -0700
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Chris Trobridge <christrobridge@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Compiling different version of IGB as a kernel module
Thread-Index: AQHRWveiELk3DI3eMkKIJji46LcBtw==
Date: Mon, 1 Feb 2016 21:49:43 +0000
Message-ID: <f55bb2ed1133426ca8d94ad091caaf3c@Ek.usurf.usu.edu>
References: <9e122189105049f0aa35aade046ef260@Ek.usurf.usu.edu>
	<DUB130-W1777C927DF7657274834B1DADC0@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.17.41]
MIME-Version: 1.0
Subject: Re: Compiling different version of IGB as a kernel module
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
X-List-Received-Date: Mon, 01 Feb 2016 21:49:52 -0000
X-Groupsio-MsgNum: 28191
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_f55bb2ed1133426ca8d94ad091caaf3cEkusurfusuedu_"

--_002_f55bb2ed1133426ca8d94ad091caaf3cEkusurfusuedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Got it figured out.  Turns out I needed some more changes to the =0A=
Makefile.  New patch attached in case anyone is interested.=0A=
=0A=
Bottom line is that the CC command was getting forcibly set at some =0A=
point to check compilers, thus overriding the shell setting.  Plus it =0A=
needed a modules_install as well.=0A=
=0A=
Thanks!=0A=
=0A=
On 01/30/2016 05:13 AM, Chris Trobridge wrote:=0A=
> Hi Jon,=0A=
>=0A=
> As an alternative, have you considered patching the igb source that=0A=
> already exists within yocto?=0A=
>=0A=
> Regards,=0A=
> Chris=0A=
>=0A=
> From: Jonathan.Haws@sdl.usu.edu=0A=
> To: yocto@yoctoproject.org=0A=
> Date: Sat, 30 Jan 2016 00:46:20 +0000=0A=
> Subject: [yocto] Compiling different version of IGB as a kernel module=0A=
>=0A=
> Hello all!=0A=
>=0A=
> I am trying to get the Intel IGB driver compiling as a kernel module=0A=
> using source downloaded from SF.  I'm doing this because I was given a=0A=
> patch to enable an external PPS to provide a time source to the PTP=0A=
> mechanisms in the device.=0A=
>=0A=
> I've got the recipe setup and it makes it to the do_compile step,=0A=
> however it fails here with some interesting output.  First, I get a=0A=
> message from the shell stating that -- is an invalid option.  Second,=0A=
> cc1 fails with a bad option.  I'm not even sure where to start debugging=
=0A=
> this!=0A=
>=0A=
> I did have to patch the Makefile to get it to find the kernel sources=0A=
> and build files correctly.  I've attached my recipe and that patch file.=
=0A=
>=0A=
> I've also attached the output of do_compile - hopefully someone can look=
=0A=
> at this and see what I am doing wrong!=0A=
>=0A=
> One thing I have tried is I went down into the tmp/work directory where=
=0A=
> the IGB driver was being built and tried running the same make command=0A=
> (without the CC=3D, AR=3D, LD=3D settings, since those are not on my path=
...)=0A=
> and it seemed to build just fine, so it seems like it is something to do=
=0A=
> with the toolchain, but that's all I can tell.=0A=
>=0A=
> Thoughts?=0A=
>=0A=
> Thanks!=0A=
> Jon=0A=
>=0A=
>=0A=
> --=0A=
> Jonathan R. Haws=0A=
> Embedded Engineer=0A=
> Space Dynamics Laboratory=0A=
> (435) 713-3489=0A=
> jhaws@sdl.usu.edu=0A=
>=0A=
>=0A=
> -- _______________________________________________ yocto mailing list=0A=
> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto=0A=
=0A=

--_002_f55bb2ed1133426ca8d94ad091caaf3cEkusurfusuedu_
Content-Type: text/x-patch;
	name="0000-SDL-Makefile-Set-KSRC-to-KERNEL_SRC.patch"
Content-Description: 0000-SDL-Makefile-Set-KSRC-to-KERNEL_SRC.patch
Content-Disposition: attachment;
	filename="0000-SDL-Makefile-Set-KSRC-to-KERNEL_SRC.patch"; size=519;
	creation-date="Mon, 01 Feb 2016 21:49:43 GMT";
	modification-date="Mon, 01 Feb 2016 21:49:43 GMT"
Content-Transfer-Encoding: base64

LS0tIGEvc3JjL01ha2VmaWxlLm9yaWcKKysrIGIvc3JjL01ha2VmaWxlCkBAIC0yMSw2ICsyMSw3
IEBACiAjIEludGVsIENvcnBvcmF0aW9uLCA1MjAwIE4uRS4gRWxhbSBZb3VuZyBQYXJrd2F5LCBI
aWxsc2Jvcm8sIE9SIDk3MTI0LTY0OTcKICMKICMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCitLU1JD
IDo9ICQoS0VSTkVMX1NSQykKIAogIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjCiAjIERyaXZlciBmaWxlcwpA
QCAtNzMsNyArNzQsNyBAQAogaWZlcSAoL2xpYi9tb2R1bGVzLyQoQlVJTERfS0VSTkVMKS9zb3Vy
Y2UsICQoS1NSQykpCiAgIEtPQkogOj0gIC9saWIvbW9kdWxlcy8kKEJVSUxEX0tFUk5FTCkvYnVp
bGQKIGVsc2UKLSAgS09CSiA6PSAgJChLU1JDKQorICBLT0JKIDo9ICAkKE8pCiBlbmRpZgogZW5k
aWYKIAoK

--_002_f55bb2ed1133426ca8d94ad091caaf3cEkusurfusuedu_--
