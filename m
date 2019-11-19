Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5A77E00E12; Mon, 18 Nov 2019 16:16:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.222.82.54 listed in list.dnswl.org]
Received: from 22pmail.ess.barracuda.com (22pmail.ess.barracuda.com
	[209.222.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EFE7E007D4
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:15:53 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx9.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 19 Nov 2019 00:15:51 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 18 Nov 2019 16:15:50 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 18 Nov 2019 16:15:50 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [qemu] can't find qemu-native recipe
Thread-Index: AQHVnmFF+6AkGs2DrkitseZ3jhVh3qeSGaqA//9/+wKAAAXMAA==
Date: Tue, 19 Nov 2019 00:15:50 +0000
Message-ID: <f629870e79f94990ad41bb9875c5c193@sakuraus.com>
References: <dc5da77587ca49fbba4b37f2e6b28028@sakuraus.com>,
	<CAMKF1srKGbsT_AJgymqBq4fdRcwNDObSNpQK5YvS-8Q1o8ryjw@mail.gmail.com>
	<36d57277739a4a898f4f1b7c8826e4fe@sakuraus.com>
In-Reply-To: <36d57277739a4a898f4f1b7c8826e4fe@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.158]
MIME-Version: 1.0
X-BESS-ID: 1574122551-893016-14358-12439-1
X-BESS-VER: 2019.1_20191118.1732
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.220449 [from 
	cloudscan21-141.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [qemu] can't find qemu-native recipe
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
X-List-Received-Date: Tue, 19 Nov 2019 00:16:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

And just after I hit send I realized that I changed 'SRC_URI' to 'SRC_URII_=
append_class-native' with the 'II'. I deleted the 'II' and now the file is =
changed like it should be.

Thanks fo all of your help,

Greg Wilson-Lindberg=A0=20


 From: Greg Wilson-Lindberg=20
Sent: Monday, November 18, 2019 04:10 PM
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] [qemu] can't find qemu-native recipe

Hi Khem,
I found the BBCLASSEXTEND in the qemu.inc file, I also found a line in the =
.bb file:
SRC_URI_append_class-native =3D " \

so I changed my SRC_URI to that and I stopped getting the 'can't find file =
to patch' error, but the file (syscall.c) is not modified.

Here is my qemu_3.0.0.bbappend file, meta-sakura/recipes-devtools/qemu/qemu=
_3.0.0.bbappend:
FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"

SRC_URII_append_class-native =3D "file://syscall.c-add_missing_sockios_head=
er_include.patch"

And here is the patch file .../qemu/syscall.c-add_missing_sockios_header_in=
clude.patch:
--- a/linux-user/syscall.c=A0=A0 =A02019-11-18 09:42:39.000000000 -0800
+++ b/linux-user/syscall.c=A0=A0 =A02019-11-18 09:23:23.000000000 -0800
@@ -34,6 +34,7 @@
=A0#include <sys/resource.h>
=A0#include <sys/swap.h>
=A0#include <linux/capability.h>
+#include <linux/sockios.h>
=A0#include <sched.h>
=A0#include <sys/timex.h>
=A0#include <sys/socket.h>
I am not getting the:=20
...tmp/work/x86_64-linux/qemu-native/3.0.0-r0/qemu-3.0.0/linux-user/syscall=
.c
modified.

I'm obviously missing something. Any help would be greatly appreciated.

Regards,
Greg

________________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Monday, November 18, 2019 3:30:27 PM
To: Greg Wilson-Lindberg
Cc: Yocto list discussion
Subject: Re: [yocto] [qemu] can't find qemu-native recipe=20
=A0
On Mon, Nov 18, 2019 at 3:27 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I'm building thud for the raspberry pi3 for boot2qt on Ubuntu 18.04.
> I've got a patch that I need to apply to to fix an include file problem a=
nd I can't find the qemu-native recipe. I can find a number of recipes that=
 depend in one way or another on 'qemu-native', but I can't find a recipe, =
class for it or anything that provides it. I can see it being built, and I =
get an error that indicates that the patch that I have needs to be applied.=
 I can find tmp/work/x86_64-linux/qemu-native/.
>
> In the cooker log I see:
> task qemu_3.0.0
> recipe qemu-native-3.0.0
>
> But I can't find a qemu-native.bb file,or bbclass.
>
> I'm rather confused at this point, can someone shed a bit of light on wha=
t I'm missing?
>

there must be BBCLASSEXTEND =3D "native" in qemu recipe which
essentially automatically extends the recipe for native case

see
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBC=
LASSEXTEND

> Regards,
> Greg Wilson-Lindberg
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

