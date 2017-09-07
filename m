Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40D72E00CC9; Thu,  7 Sep 2017 10:04:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2812CE00CAE
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 10:04:04 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx28.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 07 Sep 2017 17:03:57 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 7 Sep 2017 09:47:33 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 7 Sep 2017 09:47:33 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Mark Hatle <mark.hatle@windriver.com>, Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] Working behind a Palo Alto firewall/proxy
Thread-Index: AdMnV80YgGzHXD1LRPmTpkR9+dAmmwAXESyAABB8aWkADtanAP//iva1
Date: Thu, 7 Sep 2017 16:47:33 +0000
Message-ID: <d50c51bcc06f4aecbc9ac6851d9ee3bb@sakuraus.com>
References: <afce79fad80649ff88295ca3d41499ef@sakuraus.com>
	<CAJ86T=Uce45W_Thtuqv_CORNx7X6c1TD-Bg8O_DRyu65NLS6wQ@mail.gmail.com>
	<70ce682e4c584761b8bb5fad63f7d737@sakuraus.com>,
	<f8d14557-176c-f463-34cc-d93ef9cdb929@windriver.com>
In-Reply-To: <f8d14557-176c-f463-34cc-d93ef9cdb929@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.4.242]
MIME-Version: 1.0
X-BESS-ID: 1504803829-637138-429-281385-3
X-BESS-VER: 2017.10-r1707252126
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.184778
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND,
	BSF_SC0_MISMATCH_TO
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
X-List-Received-Date: Thu, 07 Sep 2017 17:04:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d50c51bcc06f4aecbc9ac6851d9ee3bbsakurauscom_"

--_000_d50c51bcc06f4aecbc9ac6851d9ee3bbsakurauscom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Mark,


Unfortunately, in this case the certificate has already been added to the s=
ystem, necessary to get https working.


Greg

________________________________
From: Mark Hatle <mark.hatle@windriver.com>
Sent: Thursday, September 7, 2017 9:31:02 AM
To: Greg Wilson-Lindberg; Andre McCurdy
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Working behind a Palo Alto firewall/proxy

I've had a customer with a similar problem.  The way they resolved it was t=
o
download the certification from their proxy and add it to their system as a
known certificate.

Sorry I don't have any more details then that, but maybe that can spark som=
eone
who knows the actual steps to be able to comment.

--Mark

On 9/7/17 11:28 AM, Greg Wilson-Lindberg wrote:
> Hi Andre,
>
>
> Here is the complete error output:
>
> ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Fetcher
> failure: Fetch command export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-9ReQWXYEk1"; export
> SSH_AUTH_SOCK=3D"/run/user/1000/keyring-4PGABB/ssh"; export
> PATH=3D"/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysr=
oots/x86_64-linux/usr/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspb=
errypi3/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/gwilson/Qt-5.9/Yo=
cto-build-RPi3/sources/poky/scripts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/b=
uild-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi:=
/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/raspb=
errypi3/usr/bin/crossscripts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-ra=
spberrypi3/tmp/sysroots/x86_64-linux/usr/sbin:/home/gwilson/Qt-5.9/Yocto-bu=
ild-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin:/home/gwilson=
/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/sbin:=
/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_6=
4-linux/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/poky/scripts:/hom=
e/gwilson/Qt-5.9/Yocto-build-RPi3/sources/poky/bitbake/bin:/home/gwilson/TE=
E:/home/gwilson/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin=
:/bin:/usr/games:/usr/local/games:/opt/microchip/xc32/v1.34/bin:/home/gwils=
on/RPi3/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin";
> export HOME=3D"/home/gwilson"; LANG=3DC git -c core.fsyncobjectfiles=3D0 =
clone --bare
> --mirror http://codereview.qt-project.org/qt/qtdeviceutilities
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/../downloads/git=
2/codereview.qt-project.org.qt.qtdeviceutilities
> --progress failed with exit code 128, output:
> Cloning into bare repository
> '/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/../downloads/gi=
t2/codereview.qt-project.org.qt.qtdeviceutilities'...
> fatal: unable to access
> 'https://codereview.qt-project.org/qt/qtdeviceutilities/': server certifi=
cate
> verification failed. CAfile:
> /usr/share/ca-certificates/cert_Decryption-Certificate.pem CRLfile: none
>
> ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Fetcher
> failure for URL:
> 'git://codereview.qt-project.org/qt/qtdeviceutilities;nobranch=3D1;protoc=
ol=3Dhttp'.
> Unable to fetch URL from any source.
> ERROR: qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch: Functio=
n
> failed: base_do_fetch
> ERROR: Logfile of failure stored in:
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work/cortexa=
7hf-neon-vfpv4-poky-linux-gnueabi/qtdeviceutilities/5.9.1+gitAUTOINC+48fb70=
4e64-r0/temp/log.do_fetch.8128
> ERROR: Task
> (/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/meta-boot2qt/recipes-qt/qt=
5/qtdeviceutilities.bb:do_fetch)
> failed with exit code '1'
>
> So it looks like:
>
> qtdeviceutilities-5.9.1+gitAUTOINC+48fb704e64-r0 do_fetch
>
> is what's running.
>
>
>
> -------------------------------------------------------------------------=
-------
> *From:* Andre McCurdy <armccurdy@gmail.com>
> *Sent:* Wednesday, September 6, 2017 6:34:07 PM
> *To:* Greg Wilson-Lindberg
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Working behind a Palo Alto firewall/proxy
>
> On Wed, Sep 6, 2017 at 2:42 PM, Greg Wilson-Lindberg
> <GWilson@sakuraus.com> wrote:
>> Hi List,
>>
>> Does anybody have any experience trying to run Yocto behind a Palo Alto
>> firewall. The Palo Alto firewall basically works as a Man in the Middle
>> system, it hands out its own certificate to boxes behind it and then
>> decrypts and re-encrypts traffic going through it. The Palo Alto box is
>> supposed to act as a transparent Proxy.
>>
>> I'm getting an error that the 'server certificate verification failed' a=
bout
>> an hour into a yocto build. The certificate that the Palo Alto box is
>> sending to my system is self-signed so will fail if checked for a valid =
root
>> CA, and also is not from whatever site is being downloaded from.
>
> Which site is being downloaded from and at which point in the build
> (ie which recipe and task) ?
>
>


--_000_d50c51bcc06f4aecbc9ac6851d9ee3bbsakurauscom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
<p>Hi Mark,</p>
<p><br>
</p>
<p>Unfortunately, in this case the certificate has already been added to th=
e system, necessary to get https working.</p>
<p><br>
</p>
<p>Greg</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Mark Hatle &lt;mark=
.hatle@windriver.com&gt;<br>
<b>Sent:</b> Thursday, September 7, 2017 9:31:02 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Andre McCurdy<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Working behind a Palo Alto firewall/proxy</font=
>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">I've had a customer with a similar problem.&nbsp; =
The way they resolved it was to<br>
download the certification from their proxy and add it to their system as a=
<br>
known certificate.<br>
<br>
Sorry I don't have any more details then that, but maybe that can spark som=
eone<br>
who knows the actual steps to be able to comment.<br>
<br>
--Mark<br>
<br>
On 9/7/17 11:28 AM, Greg Wilson-Lindberg wrote:<br>
&gt; Hi Andre,<br>
&gt; <br>
&gt; <br>
&gt; Here is the complete error output:<br>
&gt; <br>
&gt; ERROR: qtdeviceutilities-5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0 do_fet=
ch: Fetcher<br>
&gt; failure: Fetch command export<br>
&gt; DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/dbus-9ReQWXYEk1&=
quot;; export<br>
&gt; SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring-4PGABB/ssh&quot;; export<=
br>
&gt; PATH=3D&quot;/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/=
tmp/sysroots/x86_64-linux/usr/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/bui=
ld-raspberrypi3/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/gwilson/Q=
t-5.9/Yocto-build-RPi3/sources/poky/scripts:/home/gwilson/Qt-5.9/Yocto-buil=
d-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-=
gnueabi:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroo=
ts/raspberrypi3/usr/bin/crossscripts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/=
build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/sbin:/home/gwilson/Qt-5.9/=
Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-linux/usr/bin:/home=
/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroots/x86_64-lin=
ux/sbin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/sysroo=
ts/x86_64-linux/bin:/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/poky/scri=
pts:/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/poky/bitbake/bin:/home/gw=
ilson/TEE:/home/gwilson/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/b=
in:/sbin:/bin:/usr/games:/usr/local/games:/opt/microchip/xc32/v1.34/bin:/ho=
me/gwilson/RPi3/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x=
64/bin&quot;;<br>
&gt; export HOME=3D&quot;/home/gwilson&quot;; LANG=3DC git -c core.fsyncobj=
ectfiles=3D0 clone --bare<br>
&gt; --mirror <a href=3D"http://codereview.qt-project.org/qt/qtdeviceutilit=
ies">http://codereview.qt-project.org/qt/qtdeviceutilities</a><br>
&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/../downloads/=
git2/codereview.qt-project.org.qt.qtdeviceutilities<br>
&gt; --progress failed with exit code 128, output:<br>
&gt; Cloning into bare repository<br>
&gt; '/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/../downloads=
/git2/codereview.qt-project.org.qt.qtdeviceutilities'...<br>
&gt; fatal: unable to access<br>
&gt; '<a href=3D"https://codereview.qt-project.org/qt/qtdeviceutilities/">h=
ttps://codereview.qt-project.org/qt/qtdeviceutilities/</a>': server certifi=
cate<br>
&gt; verification failed. CAfile:<br>
&gt; /usr/share/ca-certificates/cert_Decryption-Certificate.pem CRLfile: no=
ne<br>
&gt; <br>
&gt; ERROR: qtdeviceutilities-5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0 do_fet=
ch: Fetcher<br>
&gt; failure for URL:<br>
&gt; 'git://codereview.qt-project.org/qt/qtdeviceutilities;nobranch=3D1;pro=
tocol=3Dhttp'.<br>
&gt; Unable to fetch URL from any source.<br>
&gt; ERROR: qtdeviceutilities-5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0 do_fet=
ch: Function<br>
&gt; failed: base_do_fetch<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work/cort=
exa7hf-neon-vfpv4-poky-linux-gnueabi/qtdeviceutilities/5.9.1&#43;gitAUTOINC=
&#43;48fb704e64-r0/temp/log.do_fetch.8128<br>
&gt; ERROR: Task<br>
&gt; (/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/meta-boot2qt/recipes-qt=
/qt5/qtdeviceutilities.bb:do_fetch)<br>
&gt; failed with exit code '1'<br>
&gt; <br>
&gt; So it looks like:<br>
&gt; <br>
&gt; qtdeviceutilities-5.9.1&#43;gitAUTOINC&#43;48fb704e64-r0 do_fetch<br>
&gt; <br>
&gt; is what's running.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; *From:* Andre McCurdy &lt;armccurdy@gmail.com&gt;<br>
&gt; *Sent:* Wednesday, September 6, 2017 6:34:07 PM<br>
&gt; *To:* Greg Wilson-Lindberg<br>
&gt; *Cc:* yocto@yoctoproject.org<br>
&gt; *Subject:* Re: [yocto] Working behind a Palo Alto firewall/proxy<br>
&gt; &nbsp;<br>
&gt; On Wed, Sep 6, 2017 at 2:42 PM, Greg Wilson-Lindberg<br>
&gt; &lt;GWilson@sakuraus.com&gt; wrote:<br>
&gt;&gt; Hi List,<br>
&gt;&gt;<br>
&gt;&gt; Does anybody have any experience trying to run Yocto behind a Palo=
 Alto<br>
&gt;&gt; firewall. The Palo Alto firewall basically works as a Man in the M=
iddle<br>
&gt;&gt; system, it hands out its own certificate to boxes behind it and th=
en<br>
&gt;&gt; decrypts and re-encrypts traffic going through it. The Palo Alto b=
ox is<br>
&gt;&gt; supposed to act as a transparent Proxy.<br>
&gt;&gt;<br>
&gt;&gt; I'm getting an error that the 'server certificate verification fai=
led' about<br>
&gt;&gt; an hour into a yocto build. The certificate that the Palo Alto box=
 is<br>
&gt;&gt; sending to my system is self-signed so will fail if checked for a =
valid root<br>
&gt;&gt; CA, and also is not from whatever site is being downloaded from.<b=
r>
&gt; <br>
&gt; Which site is being downloaded from and at which point in the build<br=
>
&gt; (ie which recipe and task) ?<br>
&gt; <br>
&gt; <br>
<br>
</div>
</span></font>
</body>
</html>

--_000_d50c51bcc06f4aecbc9ac6851d9ee3bbsakurauscom_--
