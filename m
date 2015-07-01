Return-Path: <sarsher83@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 176E9E00A3C; Tue, 30 Jun 2015 21:36:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sarsher83[at]yahoo.com)
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (sas none <sarsher83[at]yahoo.com> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.70 listed in list.dnswl.org]
Received: from nm15-vm0.bullet.mail.ne1.yahoo.com
	(nm15-vm0.bullet.mail.ne1.yahoo.com [98.138.91.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64B9CE00A38
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 21:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1435725363; bh=teoKfzXXh7D3B890OyHPa/IeML+Wn7vj/rklEAU6NnY=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=gYPpFeCpTgFjWxxixH66ArUZW5JPBdQxcACFgDMK/MooA8sWHk1Yp62wpMv5kFQcYJHslPLAuEsrZEZenIIgkpanvRqMMZl011Fh79tjEa+t4W9uA0X4ZTPMexfL8ZCcs5jSfokApWeWonljSYnMSxNDe+yc3hrTAARIc+O37dU01SKQryrh/VfabuvZ8WyCEvyBs15sQWszVYHw0zp4r97G1/w5UAk0KijfZC5OgD65deeIni8mDRRmAtKejruFIoT+Lv6BVGRoM6xHq4kTSNM/WTNd5FPP3k8WE+x+WBpoQPTbMevyKZTPrC0uSoCDHlGAHYbaOL2lbHkrW+RGvw==
Received: from [98.138.101.131] by nm15.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Jul 2015 04:36:03 -0000
Received: from [98.138.226.169] by tm19.bullet.mail.ne1.yahoo.com with NNFMP;
	01 Jul 2015 04:35:55 -0000
Received: from [127.0.0.1] by omp1070.mail.ne1.yahoo.com with NNFMP;
	01 Jul 2015 04:35:55 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 780055.63646.bm@omp1070.mail.ne1.yahoo.com
X-YMail-OSG: .iTNnX4VM1lKLA7oc_lbsoNOg2PGRbNowseZrH257yqukoUGFBDJWwInuBXhPxG
	l6uzlXW8KYsqkdskCeJI30hNpvfoN9DbwtAUUlRI_WY7Nob2_A7XUXhlR1bleFrOCkgBc_n2fLzS
	d_r4vCu39WSuGIQl1bfuenY1vYmYEtObGYGDVlBD_L3UAmTo6clQwxTQXaLYSfScLZKWc38JZeWI
	kHecJ9GkuIbBUx1vmhZgNgbk_LcfNXqotnoxeqCl2TEO62D0Jn0N80jy5vxe52K3_8mkiNmqzqS7
	RFEGxJIsUy5SJ8rAI4qZ3kcl1obenbXKE0Mdscfzuwv_eqTQxTYQX7Nag0V2JSy7kUWp2hGg7w1i
	4wG1I8tkKgSmK68iY8SmNWrOJTJMIwGmAWRPi25ASb.VRM5skCq2xF2pytwVDf0gwaKWFSiwIOnu
	s5_TC9NQ8j48yucick9mcfBuoqdfFQvbkzmyd256SOJyzeWGV_tAnFePpSTvUBKX0GHkBYs3iazc
	_Tg_ZGZos
Received: by 98.138.105.200; Wed, 01 Jul 2015 04:35:56 +0000 
Date: Wed, 1 Jul 2015 04:35:56 +0000 (UTC)
From: SAS NONE <sarsher83@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1375415882.87911.1435725356116.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: SAMA5D3 header files for C application development
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: SAS NONE <sarsher83@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Jul 2015 04:36:00 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_87910_1512211187.1435725356113"

------=_Part_87910_1512211187.1435725356113
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
I'm using SAMA5D3-xplained board and built a Linux kernel 3.18 distro for i=
t using the Poky Yocto build directory.=C2=A0 I've also created the sdk and=
 installed it in /opt/poky-atmel/1.7.2.=C2=A0 Ran hello world example in ec=
lipse however I'm trying to find the C header files for the peripherals so =
I can develop applications using the SPI bus or the i2c bus.=C2=A0 Any help=
 in locating these header files or how to go about developing and cross com=
piling the C code in eclipse?=C2=A0 I've already looked at the Yocto adt ma=
nual for eclipse which is very minimum.
Any help is greatly appreciated.
Thanks,
Sam

------=_Part_87910_1512211187.1435725356113
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px"><div>  Hi,</div><div><br></div><div dir="ltr">I'm using SAMA5D3-xplained board and built a Linux kernel 3.18 distro for it using the Poky Yocto build directory.&nbsp; I've also created the sdk and installed it in /opt/poky-atmel/1.7.2.&nbsp; Ran hello world example in eclipse however I'm trying to find the C header files for the peripherals so I can develop applications using the SPI bus or the i2c bus.&nbsp; Any help in locating these header files or how to go about developing and cross compiling the C code in eclipse?&nbsp; I've already looked at the Yocto adt manual for eclipse which is very minimum.</div><div dir="ltr"><br></div><div dir="ltr">Any help is greatly appreciated.</div><div dir="ltr"><br></div><div dir="ltr">Thanks,</div><div dir="ltr"><br></div><div dir="ltr">Sam</div></div></body></html>

------=_Part_87910_1512211187.1435725356113--
