Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 576ACE00546; Mon,  2 Feb 2015 05:44:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82774E002F9
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 05:44:01 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id t12DhOiW004951;
	Tue, 3 Feb 2015 00:13:24 +1030
Message-Id: <cca6453b61260980bb36aab5f3ccb7924dd04e6f@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Pavan Kumar B" <u2bpavankumar@gmail.com>, yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <CAM8Mu=W=CyHbj44vGJqVKvFW47mrmf1-eKdc-GYHQ9YMEFLmLw@mail.gmail.com>
Date: Tue, 03 Feb 2015 00:13:24 +1030
MIME-Version: 1.0
Subject: Re: need help to add local kernel to yocto build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Feb 2015 13:44:10 -0000
Content-Type: multipart/alternative;
	boundary="=_dd8e1a3f82762b68c6a0ea0bccf6b431"

--=_dd8e1a3f82762b68c6a0ea0bccf6b431
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0try using=C2=A0SOURCE_MIRROR_URL ?=3D "file:///home/mykernel/" - t=
hree=0A'///' assuming that /home is in your root directoryLachlan=0A=0A-=
---- Original Message -----=0AFrom: "Pavan Kumar B" =0ATo:=0ACc:=0ASent:=
Sun, 1 Feb 2015 19:58:35 +0530=0ASubject:[yocto] need help to add local=
 kernel to yocto build=0A=0AHi,=0A=0AI am new to yocto and trying to cre=
ate bsp for my wandboard-quad. As=0Aa starting point I have followed the=
=0Ahttp://wiki.wandboard.org/Getting_started_with_Yocto_on_Wandboard [1]=
=0Aand finally gave the command "bitbake core-image-minimal"=0A=0ASo far=
 so good.., I can see the generated images at=0A/fsl-community-bsp/build=
/tmp/deploy/images//=0A=0ANow I don't want build yocto with my own kerne=
l instead of=0Adownloading from repository. It was 3.0.35 base kernel wi=
th lot of=0Amodifications being done to it. I have been working to achei=
ve this=0Asince last week and was no success to acheive this.=0A=0AI hav=
e read yocto user manual and other stuff and came to know that I=0Aneed=
 to set the SOURCE_MIRROR_URL in bit bake file. So I have tried to=0Aset=
 the following in the bit bake file located at $=0A/fsl-community-bsp/so=
urces/meta-fsl-arm-extra/recipes-kernel/linux/linux-wandboard_3.0.35.bb=
=0A=0ASOURCE_MIRROR_URL ?=3D "file://home/mykernel/"=0AINHERIT +=3D "own=
-mirrors" =0ABB_GENERATE_MIRROR_TARBALLS =3D "1" =0ABB_NO_NETWORK =3D "1=
"=0A=0ABut it was not working.=0A=0ASome one must have already tried to=
 acheive this. Please let me know=0Alike how do I set the path to my loc=
al kernel folder and with what=0Aname do I need to store it. Modifying l=
inux-wandboard_3.0.35.bb is=0Asufficient or do I need to modify any othe=
r files as well=0A=0ARegards,=0APavan=0A ---- Message sent via Adam Inte=
rnet WebMail -=0Ahttp://www.adam.com.au/=0A=0ALinks:=0A------=0A[1] http=
://wiki.wandboard.org/Getting_started_with_Yocto_on_Wandboard=0A

--=_dd8e1a3f82762b68c6a0ea0bccf6b431
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>=C2=A0try using=C2=A0SOURCE_MIRROR_URL ?=3D "file:///home/my=
kernel/" - three '///' assuming that /home is in your root directory<div=
>Lachlan<br /><br /><blockquote><br />----- Original Message -----<br />=
<div style=3D"width:100%;background:rgb(228,228,228);"><div style=3D"fon=
t-weight:bold;">From:</div> "Pavan Kumar B" &lt;u2bpavankumar@gmail.com&=
gt;</div><br /><div style=3D"font-weight:bold;">To:</div>&lt;yocto@yocto=
project.org&gt;<br /><div style=3D"font-weight:bold;">Cc:</div><br /><di=
v style=3D"font-weight:bold;">Sent:</div>Sun, 1 Feb 2015 19:58:35 +0530<=
br /><div style=3D"font-weight:bold;">Subject:</div>[yocto] need help to=
 add local kernel to yocto build<br /><br /><br /><div dir=3D"ltr">=0A<b=
r />Hi,<br /><br />I am new to yocto and trying to create bsp for my wan=
dboard-quad. As a starting point I have followed the <a href=3D"http://w=
iki.wandboard.org/Getting_started_with_Yocto_on_Wandboard">http://wiki.w=
andboard.org/Getting_started_with_Yocto_on_Wandboard</a> and finally gav=
e the command "bitbake core-image-minimal"<br /><br />So far so good..,=
 I can see the generated images at /fsl-community-bsp/build/tmp/deploy/i=
mages/&lt;myboard&gt;/<br /><br />Now I don't want build yocto with my o=
wn kernel instead of downloading from repository. It was 3.0.35 base ker=
nel with lot of modifications being done to it. I have been working to a=
cheive this since last week and was no success to acheive this.<br /><br=
 />I have read yocto user manual and other stuff and came to know that I=
 need to set the SOURCE_MIRROR_URL in bit bake file. So I have tried to=
 set the following in the bit bake file located at $ /fsl-community-bsp/=
sources/meta-fsl-arm-extra/recipes-kernel/linux/<a href=3D"">linux-wandb=
oard_3.0.35.bb</a><br /><br /><br />SOURCE_MIRROR_URL ?=3D "file://home/=
mykernel/"<br />INHERIT +=3D "own-mirrors" <br />BB_GENERATE_MIRROR_TARB=
ALLS =3D "1" <br />BB_NO_NETWORK =3D "1"<br /><br />But it was not worki=
ng.<br /><br />Some one must have already tried to acheive this. Please=
 let me know like how do I set the path to my local kernel folder and wi=
th what name do I need to store it. Modifying <a href=3D"">linux-wandboa=
rd_3.0.35.bb</a> is sufficient or do I need to modify any other files as=
 well<br /><br />Regards,<br />Pavan<br /></div>=0A=0A</blockquote></div=
>---- Message sent via Adam Internet WebMail  - http://www.adam.com.au/<=
/body></html>

--=_dd8e1a3f82762b68c6a0ea0bccf6b431--
