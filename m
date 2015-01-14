Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94903E0083C; Wed, 14 Jan 2015 09:13:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4027AE002F9
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 09:13:27 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: Andrei Gherzan <andrei@gherzan.ro>, abhishek srivastava
	<just_abhi22@yahoo.co.in>
Thread-Topic: [yocto] basic questions on LINUX costomization for raspberrypi
Thread-Index: AQHQL4zJK0KLUVjg+k2Mzpzmuu+rTpy/0FJZ
Date: Wed, 14 Jan 2015 17:13:26 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E3AF15@reactor.sldomain.com>
References: <1078450525.611902.1418929833293.JavaMail.yahoo@jws10942.mail.sg3.yahoo.com>,
	<CAK18fxGAQdzCUZ6_fgEymRMqgau=t33Lr=qMqa_06BvJRXjgbw@mail.gmail.com>
In-Reply-To: <CAK18fxGAQdzCUZ6_fgEymRMqgau=t33Lr=qMqa_06BvJRXjgbw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.15]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: basic questions on LINUX costomization for raspberrypi
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
X-List-Received-Date: Wed, 14 Jan 2015 17:13:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_86196249137E0843B2E0673D4F731E0C0108E3AF15reactorsldoma_"

--_000_86196249137E0843B2E0673D4F731E0C0108E3AF15reactorsldoma_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Abhishek,

Here's some more information to supplement what Andrei wrote.

The Yocto build system is based upon OpenEmbedded (OE), which depends upon
bitbake recipes to build everything from the kernel to applications.  Recip=
es are gathered
into layers,  which provide some aggregate functionality.  For example, the=
 software required to support the Raspberry Pi hardware is collected in the=
 meta-raspberrypi layer. So, if you want
to add something to your Linux build, it's generally just a a matter of fin=
ding the correct
recipe, and any recipes it may depend upon, and adding it into your IMAGE_I=
NSTALL_append variable in the local.conf file.  If the recipe is not includ=
ed in any of the layers that you are already using, you may have to create =
a custom layer of your own and add the recipe in there.
If you can't find the recipe that you need in any of the meta* directories,=
 google can be of great help.

If you have not already, you should read the Yocto project quick start manu=
al.
http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.=
html

The process of configuring the kernel is covered in the kernel development =
manual.
http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html

When you make any changes to configuration or software, you will have to re=
build the particular
image that you are using, so that the changes will be incorporated into the=
 filesystem images.
Because dependencies are generally well specified in Yocto, builds after th=
e first build will be much
faster because much of the work is already done.

Speaking of images, you should do some research into which pre-configured i=
mage is closest to your
final desired result, without packing in too much stuff that you don't need=
.  The core-image-minimal
image can be a good start, but it is truly minimal, probably requiring a gr=
eat deal of work to add
what you need for your desired configuration.  For instance, I found it con=
venient to start with core-image-full-cmdline, because I needed a fairly fu=
ll command line experience for my applications, but did not need a graphica=
l display.l


________________________________
From: Andrei Gherzan [andrei@gherzan.ro]
Sent: Tuesday, January 13, 2015 4:57 PM
To: abhishek srivastava
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] basic questions on LINUX costomization for raspberrypi

Hello,

Please read the meta-raspberrypi README for basic information and use .
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/README

1) it depends on the image you are baking. What do you mean by reference li=
st?
2) IMAGE_INSTALL_append http://www.yoctoproject.org/docs/current/ref-manual=
/ref-manual.html#var-IMAGE_INSTALL
What process are you talking about?
3) You modify the kernel config, recompile the kernel and then the image. W=
e are developing a better way to configure kernel. Is already in review - h=
ope to get some time for that soon.
4) Applications should be packages, right? Could you please rephrase your q=
uestion?

Cheers!

On Thu, Dec 18, 2014 at 8:10 PM, abhishek srivastava <just_abhi22@yahoo.co.=
in<mailto:just_abhi22@yahoo.co.in>> wrote:
Hi allPlease answer to these questions regarding LINUX kernel image build u=
sing yocto project:
1) What basic LINUX packages needed for raspberrypi ? any list for referenc=
e ?
2) What if I want to add any package after my image is build ? Do i need to=
 repeat the complete process again?
3) How can i add any driver (ex: TFT driver) to the build kernel image?
4) How to add any desired applications to packages?

Thank you for your help

regards

Abhishek


--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto




--
Andrei Gherzan

--_000_86196249137E0843B2E0673D4F731E0C0108E3AF15reactorsldoma_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hello Abhishek,<br>
<br>
Here's some more information to supplement what Andrei wrote.<br>
<br>
The Yocto build system is based upon OpenEmbedded (OE), which depends upon =
<br>
bitbake recipes to build everything from the kernel to applications.&nbsp; =
Recipes are gathered
<br>
into layers,&nbsp; which provide some aggregate functionality.&nbsp; For ex=
ample, the software required to support the Raspberry Pi hardware is collec=
ted in the meta-raspberrypi layer. So, if you want
<br>
to add something to your Linux build, it's generally just a a matter of fin=
ding the correct<br>
recipe, and any recipes it may depend upon, and adding it into your IMAGE_I=
NSTALL_append variable in the local.conf file.&nbsp; If the recipe is not i=
ncluded in any of the layers that you are already using, you may have to cr=
eate a custom layer of your own and add
 the recipe in there.<br>
If you can't find the recipe that you need in any of the meta* directories,=
 google can be of great help.<br>
<br>
If you have not already, you should read the Yocto project quick start manu=
al.<br>
<a href=3D"http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-=
project-qs.html" target=3D"_blank">http://www.yoctoproject.org/docs/current=
/yocto-project-qs/yocto-project-qs.html</a><br>
<br>
The process of configuring the kernel is covered in the kernel development =
manual.<br>
<div><a href=3D"http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-de=
v.html" target=3D"_blank">http://www.yoctoproject.org/docs/1.6.1/kernel-dev=
/kernel-dev.html</a><br>
<br>
<div style=3D"font-family:Tahoma; font-size:13px">When you make any changes=
 to configuration or software, you will have to rebuild the particular<br>
image that you are using, so that the changes will be incorporated into the=
 filesystem images.<br>
Because dependencies are generally well specified in Yocto, builds after th=
e first build will be much<br>
faster because much of the work is already done.<br>
<br>
Speaking of images, you should do some research into which pre-configured i=
mage is closest to your<br>
final desired result, without packing in too much stuff that you don't need=
.&nbsp; The core-image-minimal
<br>
image can be a good start, but it is truly minimal, probably requiring a gr=
eat deal of work to add
<br>
what you need for your desired configuration.&nbsp; For instance, I found i=
t convenient to start with core-image-full-cmdline, because I needed a fair=
ly full command line experience for my applications, but did not need a gra=
phical display.l<br>
<br>
<br>
</div>
</div>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div style=3D"direction: ltr;" id=3D"divRpF976151"><font color=3D"#000000" =
face=3D"Tahoma" size=3D"2"><b>From:</b> Andrei Gherzan [andrei@gherzan.ro]<=
br>
<b>Sent:</b> Tuesday, January 13, 2015 4:57 PM<br>
<b>To:</b> abhishek srivastava<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] basic questions on LINUX costomization for rasp=
berrypi<br>
</font><br>
</div>
<div></div>
<div>
<div dir=3D"ltr">Hello,
<div><br>
</div>
<div>Please read the meta-raspberrypi README for basic information and use =
.&nbsp;</div>
<div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/=
tree/README" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/me=
ta-raspberrypi/tree/README</a><br>
</div>
<div><br>
</div>
<div>1) it depends on the image you are baking. What do you mean by referen=
ce list?</div>
<div>2) IMAGE_INSTALL_append&nbsp;<a href=3D"http://www.yoctoproject.org/do=
cs/current/ref-manual/ref-manual.html#var-IMAGE_INSTALL" target=3D"_blank">=
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-IMA=
GE_INSTALL</a></div>
<div>What process are you talking about?</div>
<div>3) You modify the kernel config, recompile the kernel and then the ima=
ge. We are developing a better way to configure kernel. Is already in revie=
w - hope to get some time for that soon.</div>
<div>4) Applications should be packages, right? Could you please rephrase y=
our question?</div>
<div><br>
</div>
<div>Cheers!</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On Thu, Dec 18, 2014 at 8:10 PM, abhishek srivas=
tava <span dir=3D"ltr">
&lt;<a href=3D"mailto:just_abhi22@yahoo.co.in" target=3D"_blank">just_abhi2=
2@yahoo.co.in</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<div>
<div style=3D"color:#000; background-color:#fff; font-family:HelveticaNeue,=
Helvetica Neue,Helvetica,Arial,Lucida Grande,Sans-Serif; font-size:14px">
<div>Hi allPlease answer to these questions regarding LINUX kernel image bu=
ild using yocto project:<br>
1) What basic LINUX packages needed for raspberrypi ? any list for referenc=
e ? <br>
2) What if I want to add any package after my image is build ? Do i need to=
 repeat the complete process again?
<br>
3) How can i add any driver (ex: TFT driver) to the build kernel image? <br=
>
4) How to add any desired applications to packages?</div>
<div><br>
</div>
<div dir=3D"ltr">Thank you for your help</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">regards<span class=3D"HOEnZb"><font color=3D"#888888"><br>
</font></span></div>
<span class=3D"HOEnZb"><font color=3D"#888888">
<div>&nbsp;</div>
<div>
<div><span style=3D"font-size:16px"><span style=3D"font-family:garamond,new=
 york,times,serif"><span style=3D"font-weight:bold">Abhishek<br>
<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span><br>
</span></span></span></span></div>
</div>
</font></span></div>
</div>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote>
</div>
<br>
<br clear=3D"all">
<div><br>
</div>
-- <br>
<div class=3D"gmail_signature">
<div dir=3D"ltr">
<div style=3D"text-align:center"></div>
<div style=3D"text-align:center">
<div align=3D"left"><b style=3D"font-family:Arial; font-size:small; color:r=
gb(51,51,51); text-align:center">Andrei Gherzan</b><br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_86196249137E0843B2E0673D4F731E0C0108E3AF15reactorsldoma_--
