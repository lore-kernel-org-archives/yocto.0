Return-Path: <chin.huat.ang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A852EE009F4; Tue, 24 Apr 2018 01:16:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13F72E009BC
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 01:16:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Apr 2018 01:16:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,321,1520924400"; d="scan'208,217";a="35951201"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by orsmga008.jf.intel.com with ESMTP; 24 Apr 2018 01:16:41 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.50]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.29]) with mapi id
	14.03.0319.002; Tue, 24 Apr 2018 16:16:39 +0800
From: "Ang, Chin Huat" <chin.huat.ang@intel.com>
To: akshaya dalu <akshaya.cool.cool@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Can't able to locate qemu_i586-poky-linux in eclipse ide
Thread-Index: AQHT2zx6BrGK+ohpk0KQDQ2RJxDwrqQPeKd3
Date: Tue, 24 Apr 2018 08:16:38 +0000
Message-ID: <08E361F78D55674EADC52186A78684A534CB99EE@PGSMSX110.gar.corp.intel.com>
References: <CAJnnP-VV5F+rCbqZnsGiTBwFBEyvEJ9g0DRtXQagw3Nx0t0rwA@mail.gmail.com>
In-Reply-To: <CAJnnP-VV5F+rCbqZnsGiTBwFBEyvEJ9g0DRtXQagw3Nx0t0rwA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.46]
MIME-Version: 1.0
Subject: Re: Can't able to locate qemu_i586-poky-linux in eclipse ide
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
X-List-Received-Date: Tue, 24 Apr 2018 08:16:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_08E361F78D55674EADC52186A78684A534CB99EEPGSMSX110garcor_"

--_000_08E361F78D55674EADC52186A78684A534CB99EEPGSMSX110garcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Please note that there's now a new mailing list for eclipse-yocto plugin re=
lated discussion: eclipse-yocto@yoctoproject.org

You need to either start eclipse within a oe-init-build-env shell, or sourc=
e environment-setup-* script in External Tool Configuration. Probably the e=
asiest way is to just duplicate the qemu-*-poky-linux External Tool Configu=
ration and replace "runqemu ..." with your runqemu-addptable2image command-=
line.

--Chin Huat

________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of akshaya dalu [akshaya.cool.cool@gmail.com]
Sent: Monday, April 23, 2018 3:57 PM
To: yocto@yoctoproject.org
Subject: [yocto] Can't able to locate qemu_i586-poky-linux in eclipse ide

Hello,
          I want to open emulator from  eclipse ide and run hello world pro=
gram without using any hardware . I have gone through the documentation but=
 can't able to locate qemu_i586-poky-linux in external tool configuration o=
f eclipse ide. I referred the link  https://wiki.yoctoproject.org/wiki/Tips=
AndTricks/RunningEclipseAgainstBuiltImage  . In that I didn't add 'ssh-serv=
er-openssh' extra feature in local configuration file and while executing b=
itbake core-image-sato 99% satisfied got 1 error msg and 1 warning msg. But=
 I can able to open emulator through terminal by runqemu command! Can you h=
elp me??


--_000_08E361F78D55674EADC52186A78684A534CB99EEPGSMSX110garcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle"></style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">
<div>Hi,</div>
<div><br>
</div>
<div>Please note that there's now a new mailing list for eclipse-yocto plug=
in related discussion: eclipse-yocto@yoctoproject.org</div>
<div><br>
</div>
<div>You need to either start eclipse within a oe-init-build-env shell, or =
source environment-setup-* script in External Tool Configuration.<span styl=
e=3D"font-size: 10pt;">&nbsp;Probably the easiest way is to just duplicate =
the qemu-*-poky-linux External Tool Configuration
 and replace &quot;runqemu ...&quot; with your runqemu-addptable2image comm=
and-line.</span></div>
<div><br>
</div>
--Chin Huat
<div><br>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div id=3D"divRpF938276" style=3D"direction: ltr;"><font face=3D"Tahoma" si=
ze=3D"2" color=3D"#000000"><b>From:</b> yocto-bounces@yoctoproject.org [yoc=
to-bounces@yoctoproject.org] on behalf of akshaya dalu [akshaya.cool.cool@g=
mail.com]<br>
<b>Sent:</b> Monday, April 23, 2018 3:57 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Can't able to locate qemu_i586-poky-linux in eclips=
e ide<br>
</font><br>
</div>
<div></div>
<div>
<div dir=3D"auto"><span style=3D"font-family:sans-serif; font-size:12.8px">=
Hello,</span>
<div dir=3D"auto" style=3D"font-family:sans-serif; font-size:12.8px">&nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; I want to open emulator from&nbsp; eclipse ide=
 and run hello world program&nbsp;<b>without using any hardware</b>&nbsp;. =
I have gone through the documentation but&nbsp;<b>can't able to locate qemu=
_i586-poky-linux
 in external tool configuration of eclipse ide.&nbsp;</b>I referred the lin=
k&nbsp;&nbsp;<span style=3D"background-color:rgb(144,202,249)"><a href=3D"h=
ttps://wiki.yoctoproject.org/wiki/TipsAndTricks/RunningEclipseAgainstBuiltI=
mage" target=3D"_blank">https://wiki.yoctoproject.org/wiki/TipsAndTricks/Ru=
nningEclipseAgainstBuiltImage</a>
 &nbsp;</span>. In that I didn't add 'ssh-server-openssh' extra feature in =
local configuration file and while executing bitbake core-image-sato 99% sa=
tisfied got 1 error msg and 1 warning msg. But I can able to open emulator =
through terminal by runqemu command!
 Can you help me??&nbsp;</div>
<br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_08E361F78D55674EADC52186A78684A534CB99EEPGSMSX110garcor_--
