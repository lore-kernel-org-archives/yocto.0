Return-Path: <josiasinacio@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4210E00CE4; Thu,  4 Feb 2016 22:07:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_50,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (josiasinacio[at]hotmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4927]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.144 listed in list.dnswl.org]
Received: from BAY004-OMC3S6.hotmail.com (bay004-omc3s6.hotmail.com
	[65.54.190.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90A53E00CDE
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 22:07:09 -0800 (PST)
Received: from BAY173-DS15 ([65.54.190.189]) by BAY004-OMC3S6.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Thu, 4 Feb 2016 22:07:09 -0800
X-TMN: [iU49sJdEJLzexUqm/lnHYKQNsa9V1cCO]
X-Originating-Email: [josiasinacio@hotmail.com]
Message-ID: <BAY173-DS15454BC9EF91180F69AC74C1D20@phx.gbl>
From: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
To: <yocto@yoctoproject.org>
Date: Fri, 5 Feb 2016 01:07:08 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-OriginalArrivalTime: 05 Feb 2016 06:07:09.0973 (UTC)
	FILETIME=[72D89C50:01D15FDB]
Subject: Execute recipe only after kernel is built and rootfs file is created in deploy folder
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
X-List-Received-Date: Fri, 05 Feb 2016 06:07:13 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00B1_01D15FB1.891C7A10"

------=_NextPart_000_00B1_01D15FB1.891C7A10
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

I=E2=80=99m trying to run a recipe that has dependencies in the =
generation of the roofts and kernel image files. Without those two files =
already in the deploy folder, I cannot start running my recipe.

Some suggested that I should add the task in a class and make that =
dependent of do_rootfs. Then, inherit that class in a recipe. But I =
haven=E2=80=99t been successful with that. Here=E2=80=99s what I have:

myclass.bbclass:

do_work() {
        #main work done here
}
addtask work after do_rootfs

##### end of class=20

myrecipe.bb:

inherit myclass

do_deploy() {
    do_work
}
addtask do_deploy

##### end of recipe


This must be very wrong, as the do_deploy task of my recipe is being =
executed before do_rootfs happens, so it fails because do_work needs =
files that haven=E2=80=99t been created in the deploy folder yet.

How can I fix this? Do I really need a class and recipe, or can I get =
away with just having one or the other?

Thanks,
Josias

------=_NextPart_000_00B1_01D15FB1.891C7A10
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-FAMILY: 'Arial'; COLOR: #000000; FONT-SIZE: 10pt">
<DIV=20
style=3D"FONT-STYLE: normal; DISPLAY: inline; FONT-FAMILY: 'Calibri'; =
COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: normal; TEXT-DECORATION: =
none">
<DIV dir=3Dltr>
<DIV style=3D"FONT-FAMILY: 'Arial'; COLOR: #000000; FONT-SIZE: 10pt">
<DIV>Hi guys,</DIV>
<DIV>&nbsp;</DIV>
<DIV>I=E2=80=99m trying to run a recipe that has dependencies in the =
generation of the=20
roofts and kernel image files. Without those two files already in the =
deploy=20
folder, I cannot start running my recipe.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Some suggested that I should add the task in a class and make that=20
dependent of do_rootfs. Then, inherit that class in a recipe. But I =
haven=E2=80=99t been=20
successful with that. Here=E2=80=99s what I have:</DIV>
<DIV>&nbsp;</DIV>
<DIV><STRONG><U>myclass.bbclass:</U></STRONG></DIV>
<DIV>&nbsp;</DIV>
<DIV>do_work() {</DIV>
<DIV>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #main work done =
here</DIV>
<DIV>}</DIV>
<DIV>addtask work after do_rootfs</DIV>
<DIV>&nbsp;</DIV>
<DIV>##### end of class </DIV>
<DIV>&nbsp;</DIV>
<DIV><STRONG><U>myrecipe.bb:</U></STRONG></DIV>
<DIV>&nbsp;</DIV>
<DIV>inherit myclass</DIV>
<DIV>&nbsp;</DIV>
<DIV>do_deploy() {</DIV>
<DIV>&nbsp;&nbsp;&nbsp; do_work</DIV>
<DIV>}</DIV>
<DIV>addtask do_deploy</DIV>
<DIV>&nbsp;</DIV>
<DIV>##### end of recipe</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>This must be very wrong, as the do_deploy task of my recipe is =
being=20
executed before do_rootfs happens, so it fails because do_work needs =
files that=20
haven=E2=80=99t been created in the deploy folder yet.</DIV>
<DIV>&nbsp;</DIV>
<DIV>How can I fix this? Do I really need a class and recipe, or can I =
get away=20
with just having one or the other?</DIV>
<DIV>&nbsp;</DIV>
<DIV>Thanks,</DIV>
<DIV>Josias</DIV></DIV></DIV></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_00B1_01D15FB1.891C7A10--
