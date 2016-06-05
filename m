Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EB6CE00D8C; Sun,  5 Jun 2016 14:38:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAA58E00D85
	for <yocto@yoctoproject.org>; Sun,  5 Jun 2016 14:38:07 -0700 (PDT)
Received: from [192.168.1.101] (111-250-192-53.dynamic.hinet.net
	[111.250.192.53])
	by msfrf2615.sfr.fr (SMTP Server) with ESMTP id B6A801C00042F;
	Sun,  5 Jun 2016 23:38:06 +0200 (CEST)
Received: from [192.168.1.101] (111-250-192-53.dynamic.hinet.net
	[111.250.192.53])	(using TLSv1
	with cipher ECDHE-RSA-AES256-SHA (256/256 bits))	(No client certificate
	requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2615.sfr.fr (SMTP Server) with ESMTPSA;
	Sun,  5 Jun 2016 23:38:05 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
Mime-Version: 1.0 (1.0)
From: Herve Jourdain <herve.jourdain@neuf.fr>
X-Mailer: iPhone Mail (13D15)
In-Reply-To: <20160605200854.GA14930@openSUSE-i7.site>
Date: Mon, 6 Jun 2016 05:38:00 +0800
Message-Id: <9F045CFD-18FB-4C5A-A39E-0B5CEAF87395@neuf.fr>
References: <20160604230019.GA1506@openSUSE-i7.site>
	<CANwerB3L4J79WB4V18DtqZTj92fQXWgWyDKpUQ8cRStt08NNxg@mail.gmail.com>
	<20160605122132.2a8c70a1@nuc.betafive.co.uk>
	<013701d1bf23$d3fba520$7bf2ef60$@neuf.fr>
	<20160605125800.GA5652@openSUSE-i7.site>
	<013801d1bf3a$5bb10030$13130090$@neuf.fr>
	<20160605200854.GA14930@openSUSE-i7.site>
To: Trevor Woerner <twoerner@gmail.com>
X-sfr-mailing: LEGIT
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gcc-6.1 and raspi
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
X-List-Received-Date: Sun, 05 Jun 2016 21:38:12 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-B424DCCE-A38A-4852-93A7-78E4FB0CCFAD
Content-Transfer-Encoding: 7bit

--Apple-Mail-B424DCCE-A38A-4852-93A7-78E4FB0CCFAD
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

This one is a different issue, that was caused by a patch in oe 1 week ago.
I did send a patch to solve it last wednesday, I believe.
The root cause is KERNEL_OUTPUT has been removed from kernel.bbclass, but me=
ta-raspberrypi uses it.
This is the link to the patch:
http://article.gmane.org/gmane.linux.embedded.yocto.general/30093/

Herve

> On 6 juin 2016, at 04:08, Trevor Woerner <twoerner@gmail.com> wrote:
>=20
>> On Sun 2016-06-05 @ 04:55:47 PM, Herve Jourdain wrote:
>> It seems like you are building the 4.1.21 kernel.
>> Did you set PREFERRED_VERSION_linux-raspberrypi =3D "4.4.%" in your
>> distro.conf or local.conf?
>=20
> I was trying to save myself the time required to rebuild with the 4.4 kern=
el.
> I knew from my experiments that the result was the same for both, but here=
 it
> is anyway:
>=20
>    ERROR: linux-raspberrypi-1_4.4.9+gitAUTOINC+3b440738b5-r0 do_rpiboot_mk=
image: Function failed: do_rpiboot_mkimage
>    Log data follows:
>    | DEBUG: Executing shell function do_rpiboot_mkimage
>    | Usage: mkknlimg [--dtok] [--283x] <vmlinux|zImage|bzImage> <outfile>
>    | WARNING: /z/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux=
-gnueabi/linux-raspberrypi/1_4.4.9+gitAUTOINC+3b440738b5-r0/temp/run.do_rpib=
oot_mkimage.18615:1 exit 1 from '/z/layerindex-master/raspi2/tmp/sysroots/x8=
6_64-linux/usr/bin/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}'
>    | ERROR: Function failed: do_rpiboot_mkimage (log file is located at /z=
/layerindex-master/raspi2/tmp/work/raspberrypi2-poky-linux-gnueabi/linux-ras=
pberrypi/1_4.4.9+gitAUTOINC+3b440738b5-r0/temp/log.do_rpiboot_mkimage.18615)=


--Apple-Mail-B424DCCE-A38A-4852-93A7-78E4FB0CCFAD
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div>Hi,</div><div><br></div><div>This one i=
s a different issue, that was caused by a patch in oe 1 week ago.</div><div>=
I did send a patch to solve it last wednesday, I believe.</div><div>The root=
 cause is KERNEL_OUTPUT has been removed from kernel.bbclass, but meta-raspb=
errypi uses it.</div><div>This is the link to the patch:</div><div><a href=3D=
"http://article.gmane.org/gmane.linux.embedded.yocto.general/30093/match=3Dr=
aspberrypi">http://article.gmane.org/gmane.linux.embedded.yocto.general/3009=
3/</a><br><br><div>Herve</div></div><div><br>On 6 juin 2016, at 04:08, Trevo=
r Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&g=
t; wrote:<br><br></div><blockquote type=3D"cite"><div><span>On Sun 2016-06-0=
5 @ 04:55:47 PM, Herve Jourdain wrote:</span><br><blockquote type=3D"cite"><=
span>It seems like you are building the 4.1.21 kernel.</span><br></blockquot=
e><blockquote type=3D"cite"><span>Did you set PREFERRED_VERSION_linux-raspbe=
rrypi =3D "4.4.%" in your</span><br></blockquote><blockquote type=3D"cite"><=
span>distro.conf or local.conf?</span><br></blockquote><span></span><br><spa=
n>I was trying to save myself the time required to rebuild with the 4.4 kern=
el.</span><br><span>I knew from my experiments that the result was the same f=
or both, but here it</span><br><span>is anyway:</span><br><span></span><br><=
span> &nbsp; &nbsp;ERROR: linux-raspberrypi-1_4.4.9+gitAUTOINC+3b440738b5-r0=
 do_rpiboot_mkimage: Function failed: do_rpiboot_mkimage</span><br><span> &n=
bsp; &nbsp;Log data follows:</span><br><span> &nbsp; &nbsp;| DEBUG: Executin=
g shell function do_rpiboot_mkimage</span><br><span> &nbsp; &nbsp;| Usage: m=
kknlimg [--dtok] [--283x] &lt;vmlinux|zImage|bzImage&gt; &lt;outfile&gt;</sp=
an><br><span> &nbsp; &nbsp;| WARNING: /z/layerindex-master/raspi2/tmp/work/r=
aspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.4.9+gitAUTOINC+3b440738=
b5-r0/temp/run.do_rpiboot_mkimage.18615:1 exit 1 from '/z/layerindex-master/=
raspi2/tmp/sysroots/x86_64-linux/usr/bin/mkknlimg --dtok ${KERNEL_OUTPUT} ${=
KERNEL_OUTPUT}'</span><br><span> &nbsp; &nbsp;| ERROR: Function failed: do_r=
piboot_mkimage (log file is located at /z/layerindex-master/raspi2/tmp/work/=
raspberrypi2-poky-linux-gnueabi/linux-raspberrypi/1_4.4.9+gitAUTOINC+3b44073=
8b5-r0/temp/log.do_rpiboot_mkimage.18615)</span><br></div></blockquote></bod=
y></html>=

--Apple-Mail-B424DCCE-A38A-4852-93A7-78E4FB0CCFAD--
