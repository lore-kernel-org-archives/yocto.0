Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6C01E00CD2; Thu,  7 Sep 2017 09:28:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B762E00CE8
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 09:28:29 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx4.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 07 Sep 2017 16:28:23 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 7 Sep 2017 09:28:19 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 7 Sep 2017 09:28:19 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] Working behind a Palo Alto firewall/proxy
Thread-Index: AdMnV80YgGzHXD1LRPmTpkR9+dAmmwAXESyAABB8aWk=
Date: Thu, 7 Sep 2017 16:28:19 +0000
Message-ID: <70ce682e4c584761b8bb5fad63f7d737@sakuraus.com>
References: <afce79fad80649ff88295ca3d41499ef@sakuraus.com>,
	<CAJ86T=Uce45W_Thtuqv_CORNx7X6c1TD-Bg8O_DRyu65NLS6wQ@mail.gmail.com>
In-Reply-To: <CAJ86T=Uce45W_Thtuqv_CORNx7X6c1TD-Bg8O_DRyu65NLS6wQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.4.242]
MIME-Version: 1.0
X-BESS-ID: 1504801681-298555-29752-248113-4
X-BESS-VER: 2017.10-r1707252126
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.184777
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Working behind a Palo Alto firewall/proxy
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
X-List-Received-Date: Thu, 07 Sep 2017 16:28:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_70ce682e4c584761b8bb5fad63f7d737sakurauscom_"

--_000_70ce682e4c584761b8bb5fad63f7d737sakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Andre,


Here is the complete error output:

ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Fetcher f=
ailure: Fetch command export DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/t=
mp/dbus-9ReQWXYEk1"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring-4PGABB/=
ssh"; export PATH=3D"/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberryp=
i3/tmp/sysroots/x86_64-linux/usr/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/=
build-raspberrypi3/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/gwilso=
n/Qt-5.9/Yocto-build-RPi3/sources/poky/scripts:/home/gwilson/Qt-5.9/Yocto-b=
uild-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-lin=
ux-gnueabi:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sys=
roots/raspberrypi3/usr/bin/crossscripts:/home/gwilson/Qt-5.9/Yocto-build-RP=
i3/build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/sbin:/home/gwilson/Qt-5=
.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin:/h=
ome/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-=
linux/sbin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sys=
roots/x86_64-linux/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/poky/s=
cripts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/poky/bitbake/bin:/home=
/gwilson/TEE:/home/gwilson/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/us=
r/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/microchip/xc32/v1.34/bin:=
/home/gwilson/RPi3/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbia=
n-x64/bin"; export HOME=3D"/home/gwilson"; LANG=3DC git -c core.fsyncobject=
files=3D0 clone --bare --mirror http://codereview.qt-project.org/qt/qtdevic=
eutilities /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/../down=
loads/git2/codereview.qt-project.org.qt.qtdeviceutilities --progress failed=
 with exit code 128, output:
Cloning into bare repository '/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-r=
aspberrypi3/../downloads/git2/codereview.qt-project.org.qt.qtdeviceutilitie=
s'...
fatal: unable to access 'https://codereview.qt-project.org/qt/qtdeviceutili=
ties/': server certificate verification failed. CAfile: /usr/share/ca-certi=
ficates/cert_Decryption-Certificate.pem CRLfile: none

ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Fetcher f=
ailure for URL: 'git://codereview.qt-project.org/qt/qtdeviceutilities;nobra=
nch=3D1;protocol=3Dhttp'. Unable to fetch URL from any source.
ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Function =
failed: base_do_fetch
ERROR: Logfile of failure stored in: /home/gwilson/Qt-5.9/Yocto-build-RPi3/=
build-raspberrypi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/qtdevi=
ceutilities/5.9.1+gitAUTOINC+48fb704e64-r0/temp/log.do_fetch.8128
ERROR: Task (/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/meta-boot2qt/rec=
ipes-qt/qt5/qtdeviceutilities.bb:do_fetch) failed with exit code '1'

So it looks like:

qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch

is what's running.



________________________________
From: Andre McCurdy <armccurdy@gmail.com>
Sent: Wednesday, September 6, 2017 6:34:07 PM
To: Greg Wilson-Lindberg
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Working behind a Palo Alto firewall/proxy

On Wed, Sep 6, 2017 at 2:42 PM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
> Hi List,
>
> Does anybody have any experience trying to run Yocto behind a Palo Alto
> firewall. The Palo Alto firewall basically works as a Man in the Middle
> system, it hands out its own certificate to boxes behind it and then
> decrypts and re-encrypts traffic going through it. The Palo Alto box is
> supposed to act as a transparent Proxy.
>
> I'm getting an error that the 'server certificate verification failed' ab=
out
> an hour into a yocto build. The certificate that the Palo Alto box is
> sending to my system is self-signed so will fail if checked for a valid r=
oot
> CA, and also is not from whatever site is being downloaded from.

Which site is being downloaded from and at which point in the build
(ie which recipe and task) ?

--_000_70ce682e4c584761b8bb5fad63f7d737sakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Andre,</p>
<p><br>
</p>
<p>Here is the complete error output:</p>
<p></p>
<div>ERROR: qtdeviceutilities-5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0 do_fet=
ch: Fetcher failure: Fetch command export DBUS_SESSION_BUS_ADDRESS=3D&quot;=
unix:abstract=3D/tmp/dbus-9ReQWXYEk1&quot;; export SSH_AUTH_SOCK=3D&quot;/r=
un/user/1000/keyring-4PGABB/ssh&quot;; export PATH=3D&quot;/home/gwilson/Qt=
-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin:=
/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots-unina=
tive/x86_64-linux/usr/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/pok=
y/scripts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysr=
oots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi:/home/gwilson/Qt-5.9/Yocto=
-build-RPi3/build-raspberrypi3/tmp/sysroots/raspberrypi3/usr/bin/crossscrip=
ts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x8=
6_64-linux/usr/sbin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi=
3/tmp/sysroots/x86_64-linux/usr/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/b=
uild-raspberrypi3/tmp/sysroots/x86_64-linux/sbin:/home/gwilson/Qt-5.9/Yocto=
-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/bin:/home/gwilson/=
Qt-5.9/Yocto-build-RPi3/sources/poky/scripts:/home/gwilson/Qt-5.9/Yocto-bui=
ld-RPi3/sources/poky/bitbake/bin:/home/gwilson/TEE:/home/gwilson/bin:/usr/l=
ocal/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/loca=
l/games:/opt/microchip/xc32/v1.34/bin:/home/gwilson/RPi3/tools/arm-bcm2708/=
gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin&quot;;
 export HOME=3D&quot;/home/gwilson&quot;; LANG=3DC git -c core.fsyncobjectf=
iles=3D0 clone --bare --mirror http://codereview.qt-project.org/qt/qtdevice=
utilities /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/../downl=
oads/git2/codereview.qt-project.org.qt.qtdeviceutilities
 --progress failed with exit code 128, output:</div>
<div>Cloning into bare repository '/home/gwilson/Qt-5.9/Yocto-build-RPi3/bu=
ild-raspberrypi3/../downloads/git2/codereview.qt-project.org.qt.qtdeviceuti=
lities'...</div>
<div>fatal: unable to access 'https://codereview.qt-project.org/qt/qtdevice=
utilities/': server certificate verification failed. CAfile: /usr/share/ca-=
certificates/cert_Decryption-Certificate.pem CRLfile: none</div>
<div><br>
</div>
<div>ERROR: qtdeviceutilities-5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0 do_fet=
ch: Fetcher failure for URL: 'git://codereview.qt-project.org/qt/qtdeviceut=
ilities;nobranch=3D1;protocol=3Dhttp'. Unable to fetch URL from any source.=
</div>
<div>ERROR: qtdeviceutilities-5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0 do_fet=
ch: Function failed: base_do_fetch</div>
<div>ERROR: Logfile of failure stored in: /home/gwilson/Qt-5.9/Yocto-build-=
RPi3/build-raspberrypi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/q=
tdeviceutilities/5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0/temp/log.do_fetch.8=
128</div>
<div>ERROR: Task (/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/meta-boot2q=
t/recipes-qt/qt5/qtdeviceutilities.bb:do_fetch) failed with exit code '1'</=
div>
<div><br>
</div>
So it looks like:
<p></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">qtde=
viceutilities-5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0 do_fetch</span><br>
</p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">is w=
hat's running.</span></p>
<p><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Appl=
e Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe U=
I Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><br>
</span></p>
<p><br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Andre McCurdy &lt;a=
rmccurdy@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, September 6, 2017 6:34:07 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Working behind a Palo Alto firewall/proxy</font=
>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Wed, Sep 6, 2017 at 2:42 PM, Greg Wilson-Lindbe=
rg<br>
&lt;GWilson@sakuraus.com&gt; wrote:<br>
&gt; Hi List,<br>
&gt;<br>
&gt; Does anybody have any experience trying to run Yocto behind a Palo Alt=
o<br>
&gt; firewall. The Palo Alto firewall basically works as a Man in the Middl=
e<br>
&gt; system, it hands out its own certificate to boxes behind it and then<b=
r>
&gt; decrypts and re-encrypts traffic going through it. The Palo Alto box i=
s<br>
&gt; supposed to act as a transparent Proxy.<br>
&gt;<br>
&gt; I'm getting an error that the 'server certificate verification failed'=
 about<br>
&gt; an hour into a yocto build. The certificate that the Palo Alto box is<=
br>
&gt; sending to my system is self-signed so will fail if checked for a vali=
d root<br>
&gt; CA, and also is not from whatever site is being downloaded from.<br>
<br>
Which site is being downloaded from and at which point in the build<br>
(ie which recipe and task) ?<br>
</div>
</span></font>
</body>
</html>

--_000_70ce682e4c584761b8bb5fad63f7d737sakurauscom_--
