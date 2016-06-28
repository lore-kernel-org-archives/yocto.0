Return-Path: <bsoren@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 661D4E00CAA; Tue, 28 Jun 2016 10:04:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bsoren[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.79 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Jun 2016 10:04:51 PDT
Received: from BLU004-OMC3S4.hotmail.com (blu004-omc3s4.hotmail.com
	[65.55.116.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFBAE00C8B
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 10:04:51 -0700 (PDT)
Received: from BLU171-W104 ([65.55.116.72]) by BLU004-OMC3S4.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 28 Jun 2016 10:03:50 -0700
X-TMN: [wJt+awxGBQW74FeePRhyrI2wTUtjdQ7H]
X-Originating-Email: [bsoren@hotmail.com]
Message-ID: <BLU171-W1041C452DF9365ABD1015A7C8220@phx.gbl>
From: Bjorn Sorensen <bsoren@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 28 Jun 2016 19:03:50 +0200
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Jun 2016 17:03:50.0487 (UTC)
	FILETIME=[0ADDEE70:01D1D15F]
Subject: copying build configuration files to the rootfs
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
X-List-Received-Date: Tue, 28 Jun 2016 17:04:53 -0000
Content-Type: multipart/alternative;
	boundary="_0a0cf9d7-9e49-4bb8-ba1f-2e461dd9e6d7_"

--_0a0cf9d7-9e49-4bb8-ba1f-2e461dd9e6d7_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello experts=2C
I built a Yocto image with ROS and a few of its packages=2C it all went dow=
n fine. I can run ROS and the packages that are built in the rootfs. Next I=
 on the target machine I setup my environment (Catkin) in order to compile =
my additional ROS packages locally on the target later and at will.
Problem is that when invoking a catkin_make=2C I get CMake errors (related =
to the build dependencies) saying that:could not find a package configurati=
on file provided by "Example_package" with any of the following names:"pack=
age_nameConfig.cmake""package_name-config.cmake"
I investigated further and "obviously" found out the all of these configura=
tion files do exists in my host machine and under the /tmp/sysroots/... tre=
e=2C in the correct path.
Since I want to be able to add and compile more ROS packages later and loca=
lly on the Target -- which may depend on the already installed packages -- =
Is there a way to instruct the build system to also included all of these c=
onfiguration files in the rootfs image too? or is this contradict the purpo=
se of the Yocto project. 		 	   		  =

--_0a0cf9d7-9e49-4bb8-ba1f-2e461dd9e6d7_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hello experts=2C<div><br>I built=
 a Yocto image with ROS and a few of its packages=2C it all went down fine.=
 I can run ROS and the packages that are built in the rootfs. Next I on the=
 target machine I setup my environment (Catkin) in order to compile my addi=
tional ROS packages locally on the target later and at will.</div><div><br>=
</div><div>Problem is that when invoking a catkin_make=2C I get CMake error=
s (related to the build dependencies) saying that:</div><div>could not find=
 a package configuration file provided by "Example_package" with any of the=
 following names:</div><div>"<i>package_nameConfig</i>.cmake"</div><div><sp=
an style=3D"font-size: 12pt=3B">"</span><i style=3D"font-size: 12pt=3B">pac=
kage_name-config</i><span style=3D"font-size: 12pt=3B">.cmake"</span></div>=
<div><span style=3D"font-size: 12pt=3B"><br></span></div><div><span style=
=3D"font-size: 12pt=3B">I investigated further and "obviously" found out th=
e all of these configuration files do exists in my host machine and under t=
he /tmp/sysroots/... tree=2C in the correct path.</span></div><div><br></di=
v><div><span style=3D"font-size: 12pt=3B">Since I want to be able to add an=
d compile more ROS packages later and locally on the Target -- which may de=
pend on the already installed packages --&nbsp=3B</span><span style=3D"font=
-size: 12pt=3B">Is there a way to instruct the build system to also include=
d all of these configuration files in the rootfs image too? or is this cont=
radict the purpose of the Yocto project.</span></div> 		 	   		  </div></bo=
dy>
</html>=

--_0a0cf9d7-9e49-4bb8-ba1f-2e461dd9e6d7_--
