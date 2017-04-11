Return-Path: <chandrasekhar@evolute-sys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47D3AE00B20; Mon, 10 Apr 2017 22:12:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_05_10,MSGID_FROM_MTA_HEADER,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	UNPARSEABLE_RELAY autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [202.137.236.178 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 402 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Apr 2017 22:12:03 PDT
Received: from rediffmail.com (pro236-178.mxout.rediffmailpro.com
	[202.137.236.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F712E00AF4
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 22:12:02 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1491887117;
	bh=ftCHFzJqesX4LjzYtcVSEtW/3/apL9clCLsIHLwsY8g=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=djQCJCO+ugk2lE8jLbmpAguu9AwNy2o3jkxUhTdyl8x5uZYkVzdS6jhRe7xdhtT9b
	CxtRKKIr0ZnYnPXgwMlvz0JJpDThFtRINXu78AqGLVJuh244ojvXh04JXs9CKc1tay
	ZpAOt+byBSvtTOVFi5uIjJmY4+JmGeFYJYGKrNrs=
Received: (qmail 23009 invoked by uid 510); 11 Apr 2017 05:05:17 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: 0
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrfeeliedrudefgdelgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffkggfvshfuhfgtsegrtddvredttdejnecuhfhrohhmpedftghhrghnughrrghsvghkhhgrrhcutgdfuceotghhrghnughrrghsvghkhhgrrhesvghvohhluhhtvgdqshihshdrtghomheqnecukfhppeduvddvrdduieeirddvfeefrdduudenucfrrghrrghmpehmohguvgepshhmthhpohhuth
Date: 11 Apr 2017 05:05:17 -0000
Message-ID: <20170411050517.23004.qmail@pro236-178.mxout.rediffmailpro.com>
MIME-Version: 1.0
To: <meta-freescale@yoctoproject.org>, <yocto@yoctoproject.org>
Received: from unknown 122.166.233.11 by rediffmailpro.com via HTTP;
	11 Apr 2017 05:05:16 -0000
Sender: chandrasekhar@evolute-sys.com
From: "chandrasekhar c" <chandrasekhar@evolute-sys.com>
Subject: [meta-freescale] Kernel module vermagic error
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
X-List-Received-Date: Tue, 11 Apr 2017 05:12:05 -0000
Content-Type: multipart/alternative;
	boundary="=_5490fe80996951aeb26efbedeb9575dc"

--=_5490fe80996951aeb26efbedeb9575dc
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hi,I am trying to load a kernel module through modprobe. I am using bitbake to build the kernel. When I try to load the kernel in my Custom hardware I am getting following errors.
modprobe g_serial
    configfs: version magic &#39;3.14.38-6UL_ga+ge4944a5 SMP preempt mod_unload modversions ARMv7 p2v8 &#39; should be &#39;3.14.38-6UL_ga+ge4944a5 SMP preempt mod_unload ARMv7 p2v8 &#39;
    modprobe: can&#39;t load module configfs (kernel/fs/configfs/configfs.ko): invalid module formatbelow is the dmesg log
configfs: version magic &#39;3.14.38-6UL_ga+ge4944a5 SMP preempt mod_unload modversions ARMv7 p2v8 &#39; should be &#39;3.14.38-6UL_ga+ge4944a5 SMP preempt mod_unload ARMv6 p2v8 &#39;and uname -a output is&nbsp;Linux imx6ulevk 3.14.38-6UL_ga+ge4944a5 #11 PREEMPT Fri Apr 7 12:35:50 IST 2017 armv7l GNU/Linuxwhat is the wrong with the module.Thanks and Regards,Chandrasekhar

--=_5490fe80996951aeb26efbedeb9575dc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<span style=3D"color: rgb(36, 39, 41); font-family: Arial, 'Helvetica Neue'=
, Helvetica, sans-serif; font-size: 15px; line-height: 19.5px;">Hi,<br />I =
am trying to load a kernel module through modprobe. I am using bitbake to b=
uild the kernel. When I try to load the kernel in my Custom hardware I am g=
etting following errors.</span>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; padding: 5px; border: 0p=
x; font-size: 13px; width: auto; max-height: 600px; overflow: auto; font-fa=
mily: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu=
 Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-ser=
if; background-color: rgb(239, 240, 241); word-wrap: normal; color: rgb(36,=
 39, 41);"><code style=3D"margin: 0px; padding: 0px; border: 0px; font-fami=
ly: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu S=
ans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif=
; white-space: inherit;">modprobe g_serial
    configfs: version magic &#39;3.14.38-6UL_ga+ge4944a5 SMP preempt mod_un=
load modversions ARMv7 p2v8 &#39; should be &#39;3.14.38-6UL_ga+ge4944a5 SM=
P preempt mod_unload ARMv7 p2v8 &#39;
    modprobe: can&#39;t load module configfs (kernel/fs/configfs/configfs.k=
o): invalid module format</code></pre><span style=3D"color: rgb(36, 39, 41)=
; font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-size: 1=
5px; line-height: 19.5px;">below is the dmesg log</span>
<pre style=3D"margin-top: 0px; margin-bottom: 0px; padding: 5px; border: 0p=
x; font-size: 13px; width: auto; max-height: 600px; overflow: auto; font-fa=
mily: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu=
 Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-ser=
if; background-color: rgb(239, 240, 241); word-wrap: normal; color: rgb(36,=
 39, 41);"><code style=3D"margin: 0px; padding: 0px; border: 0px; font-fami=
ly: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu S=
ans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif=
; white-space: inherit;">configfs: version magic &#39;3.14.38-6UL_ga+ge4944=
a5 SMP preempt mod_unload modversions ARMv7 p2v8 &#39; should be &#39;3.14.=
38-6UL_ga+ge4944a5 SMP preempt mod_unload ARMv6 p2v8 &#39;</code></pre><spa=
n style=3D"color: rgb(36, 39, 41); font-family: Arial, 'Helvetica Neue', He=
lvetica, sans-serif; font-size: 15px; line-height: 19.5px;">and uname -a ou=
tput is&nbsp;</span><br style=3D"color: rgb(0, 0, 0); font-family: Helvetic=
a, sans-serif;" /><span style=3D"color: rgb(0, 0, 0); font-family: Helvetic=
a, sans-serif;"><span style=3D"font-family: 'Helvetica Neue', Helvetica, Ar=
ial, 'Lucida Grande', sans-serif; font-size: 15px; line-height: 25.95000076=
2939453px;">Linux imx6ulevk 3.14.38-6UL_ga+ge4944a5 #11 PREEMPT Fri Apr 7 1=
2:35:50 IS</span></span><span style=3D"color: rgb(0, 0, 0); font-family: 'H=
elvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-size: 1=
5px; line-height: 25.950000762939453px;">T 2017 armv7l GNU/Lin</span><span =
style=3D"color: rgb(0, 0, 0); font-family: 'Helvetica Neue', Helvetica, Ari=
al, 'Lucida Grande', sans-serif; font-size: 15px; line-height: 25.950000762=
939453px;">ux</span><br style=3D"color: rgb(0, 0, 0); font-family: Helvetic=
a, sans-serif;" /><br style=3D"color: rgb(0, 0, 0); font-family: Helvetica,=
 sans-serif;" /><span style=3D"color: rgb(36, 39, 41); font-family: Arial, =
'Helvetica Neue', Helvetica, sans-serif; font-size: 15px; line-height: 19.5=
px;">what is the wrong with the module.<br /><br />Thanks and Regards,<br /=
>Chandrasekhar</span>

--=_5490fe80996951aeb26efbedeb9575dc--
