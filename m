Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9629DE011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 03:15:35 -0700 (PDT)
Received: from [216.82.254.19:50181] by server-1.bemta-7.messagelabs.com id
	66/05-16605-7493E625; Mon, 28 Oct 2013 10:15:35 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-14.tower-96.messagelabs.com!1382955331!699418!1
X-Originating-IP: [203.101.96.7]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 8152 invoked from network); 28 Oct 2013 10:15:34 -0000
Received: from unknown (HELO BLRINMSHTCAS01.bglrodc.lntinfotech.com)
	(203.101.96.7)
	by server-14.tower-96.messagelabs.com with AES128-SHA encrypted SMTP;
	28 Oct 2013 10:15:34 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.1.229]) by
	BLRINMSHTCAS01.bglrodc.lntinfotech.com ([172.28.0.81]) with mapi;
	Mon, 28 Oct 2013 15:45:31 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: Amit Kumar <Amit.Kumar@lntinfotech.com>, Gary Thomas <gary@mlbassoc.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 28 Oct 2013 15:45:28 +0530
Thread-Topic: [yocto] telnetd is not running with "core-image-basic"
Thread-Index: Ac7TGK1/wpFD+zs1TPuv+Ra4kXRGygAcfbuAAA7aQCA=
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C6076B3F4@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52282@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<526D151F.2080403@mlbassoc.com>
	<AF0985D076EB244693F2CCD71AAB10BC2C6076B0F2@BLRINMSMBX01.bglrodc.lntinfotech.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C6076B0F2@BLRINMSMBX01.bglrodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: telnetd is not running with "core-image-basic"
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
X-List-Received-Date: Mon, 28 Oct 2013 10:15:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
	I have fixed this issue to write the own recipe for " inetutils-mytelnetd"=
.=20
Because with the inetutils- compile and install the success but telnetd doe=
s not be copied into the "/usr/sbin"=20
So using the own recipe I have used the telnetd default installed location =
which is  "/usr/libexec/"
It's working well now.=20



Thanks Regards
Amit K=20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Amit Kumar
Sent: Monday, October 28, 2013 12:14 PM
To: Gary Thomas; yocto@yoctoproject.org
Subject: Re: [yocto] telnetd is not running with "core-image-basic"

Hi,
        I have tried with adding the " CORE_IMAGE_EXTRA_INSTALL +=3D "inetu=
tils inetutils-telnetd" in locl.conf file.
But it doesn't work. I have doubt here the inetutils is a package not the b=
inary which includes the telnet,telnetd,tftp,tftpd and others.
So, here I tried to add the telnetd instead of inetutils, but still it not =
working, I did not get the binary on target.

I want to run the telned and tftpd binary or daemons at bootup time. Which =
is not happening. Even after boot telnetd and tftpd binary itself not prese=
nt on target.
Please help me on that.


Thanks
Amit K



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Gary Thomas
Sent: Sunday, October 27, 2013 10:29 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] telnetd is not running with "core-image-basic"

On 2013-10-25 23:17, Amit Kumar wrote:
> Hi,
>       I tried to run the telnetd with "core-image-basic". I follow up the=
 following step to enable the telnetd support in my layer.
> I have build the latest inetutils recipe with my layer, the latest versio=
n of inteutils is "intetutils_1.9.1". I have build the packages successful.
> But the telnetd is not available in my "core-image-basic". When i run the=
 the image under QEMU, there is no telnetd under "/usr/sbin/" or "/usr/bin"=
.
> It's not present at all.
>
> I have also tried to add the "initscript-telnetd" refer from meta-arago. =
But not succeed.
>
> Please guild me- how can i will get it with my core-image-basic image. Am=
 i missing any step here for that?

Building the package is not enough by itself.  You need to get it added to =
the
image that you are using.  This can be done either at build time or at run =
time.

To add the package at build time, simply add this to your local.conf:
   CORE_IMAGE_EXTRA_INSTALL +=3D "inetutils inetutils-telnetd"

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and  using or disseminating the information,  and must notify the sen=
der and delete it from their system. L&T Infotech will not accept responsib=
ility or liability for the accuracy or completeness of, or the presence of =
any virus or disabling code in this e-mail"
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

