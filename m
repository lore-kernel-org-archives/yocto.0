Return-Path: <josiasinacio@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF14E0086B; Mon, 15 Feb 2016 18:59:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	FREEMAIL_REPLY, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (josiasinacio[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.161 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from BAY004-OMC3S23.hotmail.com (bay004-omc3s23.hotmail.com
	[65.54.190.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D06FE00838
	for <yocto@yoctoproject.org>; Mon, 15 Feb 2016 18:59:53 -0800 (PST)
Received: from BAY173-DS1 ([65.54.190.189]) by BAY004-OMC3S23.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 15 Feb 2016 18:59:53 -0800
X-TMN: [qTYHkzvO+882XqGQELkKFmEX0g8Q2DVK]
X-Originating-Email: [josiasinacio@hotmail.com]
Message-ID: <BAY173-DS19D9312161A13FB743C77C1AD0@phx.gbl>
From: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
To: "Khem Raj" <raj.khem@gmail.com>
References: <BAY173-DS15454BC9EF91180F69AC74C1D20@phx.gbl>
	<D12630D6-B84D-43C6-B9C3-8B5AAFC95B08@gmail.com>
In-Reply-To: <D12630D6-B84D-43C6-B9C3-8B5AAFC95B08@gmail.com>
Date: Mon, 15 Feb 2016 21:59:53 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-OriginalArrivalTime: 16 Feb 2016 02:59:53.0220 (UTC)
	FILETIME=[1BC36C40:01D16866]
Cc: yocto@yoctoproject.org
Subject: Re: Execute recipe only after kernel is built and rootfs file is created in deploy folder
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
X-List-Received-Date: Tue, 16 Feb 2016 02:59:57 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00D4_01D1683C.32FF1780"

------=_NextPart_000_00D4_01D1683C.32FF1780
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Khem. I was able to get it working with something similar to what =
you explained. Basically a task inside the image recipe (like yours), =
which calls another task inside a class that I have.

From: Khem Raj=20
Sent: Friday, February 05, 2016 1:29 AM
To: Josias Inacio da Silva Filho=20
Cc: yocto@yoctoproject.org=20
Subject: Re: [yocto] Execute recipe only after kernel is built and =
rootfs file is created in deploy folder


  On Feb 4, 2016, at 10:07 PM, Josias Inacio da Silva Filho =
<josiasinacio@hotmail.com> wrote:

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

actually its better for you to latch onto image recipe via additional =
task defined in bbappend


something like below


addtask mytask after do_rootfs before do_build
do_mytask[depends] +=3D "${PN}:do_rootfs"
do_mytask[depends] +=3D "virtual/kernel:do_deploy"
# We want to build updater everytime we build image
do_mytask[nostamp] =3D =E2=80=9C1"

do_mytask() {
}

------=_NextPart_000_00D4_01D1683C.32FF1780
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<META content=3D"text/html charset=3Dutf-8" =
http-equiv=3DContent-Type></HEAD>
<BODY=20
style=3D"WORD-WRAP: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space"=20
dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-FAMILY: 'Arial'; COLOR: #000000; FONT-SIZE: 10pt">
<DIV>Thanks Khem. I was able to get it working with something similar to =
what=20
you explained. Basically a task inside the image recipe (like yours), =
which=20
calls another task inside a class that I have.</DIV>
<DIV=20
style=3D"FONT-STYLE: normal; DISPLAY: inline; FONT-FAMILY: 'Calibri'; =
COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: normal; TEXT-DECORATION: =
none">
<DIV style=3D"FONT: 10pt tahoma">
<DIV><FONT face=3DArial></FONT>&nbsp;</DIV>
<DIV style=3D"BACKGROUND: #f5f5f5">
<DIV style=3D"font-color: black"><B>From:</B> <A =
title=3Draj.khem@gmail.com=20
href=3D"mailto:raj.khem@gmail.com">Khem Raj</A> </DIV>
<DIV><B>Sent:</B> Friday, February 05, 2016 1:29 AM</DIV>
<DIV><B>To:</B> <A title=3Djosiasinacio@hotmail.com=20
href=3D"mailto:josiasinacio@hotmail.com">Josias Inacio da Silva =
Filho</A> </DIV>
<DIV><B>Cc:</B> <A title=3Dyocto@yoctoproject.org=20
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A> </DIV>
<DIV><B>Subject:</B> Re: [yocto] Execute recipe only after kernel is =
built and=20
rootfs file is created in deploy folder</DIV></DIV></DIV>
<DIV>&nbsp;</DIV></DIV>
<DIV=20
style=3D"FONT-STYLE: normal; DISPLAY: inline; FONT-FAMILY: 'Calibri'; =
COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: normal; TEXT-DECORATION: =
none">
<DIV>&nbsp;</DIV>
<DIV>
<BLOCKQUOTE type=3D"cite">
  <DIV>On Feb 4, 2016, at 10:07 PM, Josias Inacio da Silva Filho &lt;<A=20
  =
href=3D"mailto:josiasinacio@hotmail.com">josiasinacio@hotmail.com</A>&gt;=
=20
  wrote:</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>
  <DIV dir=3Dltr>
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-FAMILY: arial; FONT-SIZE: 10pt">
  <DIV=20
  style=3D"FONT-STYLE: normal; DISPLAY: inline; FONT-FAMILY: calibri; =
FONT-SIZE: small; FONT-WEIGHT: normal; TEXT-DECORATION: none">
  <DIV dir=3Dltr>
  <DIV style=3D"FONT-FAMILY: arial; FONT-SIZE: 10pt">
  <DIV>Hi guys,</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>I=E2=80=99m trying to run a recipe that has dependencies in the =
generation of the=20
  roofts and kernel image files. Without those two files already in the =
deploy=20
  folder, I cannot start running my recipe.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>Some suggested that I should add the task in a class and make =
that=20
  dependent of do_rootfs. Then, inherit that class in a recipe. But I =
haven=E2=80=99t=20
  been successful with that. Here=E2=80=99s what I have:</DIV>
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
files=20
  that haven=E2=80=99t been created in the deploy folder yet.</DIV>
  <DIV>&nbsp;</DIV>
  <DIV>How can I fix this? Do I really need a class and recipe, or can I =
get=20
  away with just having one or the=20
  other?</DIV></DIV></DIV></DIV></DIV></DIV></DIV></DIV></BLOCKQUOTE>
<DIV>&nbsp;</DIV>
<DIV>actually its better for you to latch onto image recipe via =
additional task=20
defined in bbappend</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>something like below</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV>
<DIV>addtask mytask after do_rootfs before do_build</DIV>
<DIV>do_mytask[depends] +=3D "${PN}:do_rootfs"</DIV>
<DIV>do_mytask[depends] +=3D "virtual/kernel:do_deploy"</DIV>
<DIV># We want to build updater everytime we build image</DIV>
<DIV>do_mytask[nostamp] =3D =E2=80=9C1"</DIV>
<DIV>&nbsp;</DIV>
<DIV>do_mytask() {</DIV>
<DIV>}</DIV>
<DIV>&nbsp;</DIV></DIV></DIV></DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_00D4_01D1683C.32FF1780--
