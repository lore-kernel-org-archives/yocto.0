Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABE2EE00D48; Fri, 22 Dec 2017 14:17:24 -0800 (PST)
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
X-Greylist: delayed 79766 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Dec 2017 14:17:22 PST
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A98FE00D1C
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 14:17:22 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx2.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Fri, 22 Dec 2017 22:17:19 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 22 Dec 2017 14:17:18 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 22 Dec 2017 14:17:18 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel configuration problem/confusion
Thread-Index: AQHTe1t4oY5w7F8IEEKB1Z4cuyo8m6NQVfAA//+RTyk=
Date: Fri, 22 Dec 2017 22:17:18 +0000
Message-ID: <8acdc20521304e4aaf197d661e63b7fd@sakuraus.com>
References: <a56c815971a74fedaf7f9676840447f1@sakuraus.com>,
	<3d3ef818-08f3-f706-45ae-264cc7cf7fff@windriver.com>
In-Reply-To: <3d3ef818-08f3-f706-45ae-264cc7cf7fff@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1513981039-298553-15494-80867-1
X-BESS-VER: 2017.16-r1712182224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.10
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.188272
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.10 BSF_SC2_0001           BODY: custom rule SC2_0001 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.10 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_SC2_0001,
	BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: Kernel configuration problem/confusion
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
X-List-Received-Date: Fri, 22 Dec 2017 22:17:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8acdc20521304e4aaf197d661e63b7fdsakurauscom_"

--_000_8acdc20521304e4aaf197d661e63b7fdsakurauscom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,
First, thanks for the unbelievably quick response.

I searched the Yocto sources and didn't find anything that was trying to ma=
nipulate either of the variables except my .cfg.

The memuconfig search for MAX9768 results in:
Symbol: SND_SOC_MAX9768 [=3Dn]
    Type  : tristate
      Defined at sound/soc/codecs/Kconfig:917
      Depends on: SOUND [=3Dy] && !M68K && !UML && SND [=3Dm] && SND_SOC [=
=3Dm]
      Selected by: SND_SOC_ALL_CODECS [=3Dn] && SOUND [=3Dy] && !M68K && !U=
ML && SND [=3Dm] && SND_SOC [=3Dm] && COMPILE_TEST [=3Dn] && I2C [=3Dy]

To my (untrained) eye it seems that I need SND_SOC_ALL_CODECS & COMPILE_TES=
T. I tried setting them but I get a similar error for COMPILE_TEST. A searc=
h for it yields:
 Symbol: COMPILE_TEST [=3Dn]
    Type  : boolean
    Prompt: Compile also drivers which will not load
      Location:
    (1) -> General setup
      Defined at init/Kconfig:56

Which doesn't seem to suggest that there should be any problems setting it.

The search for MAX1363 yields:
 Symbol: MAX1363 [=3Dn]
    Type  : tristate
     Prompt: Maxim max1363 ADC driver
      Location:
        -> Device Drivers
          -> Industrial I/O support (IIO [=3Dm])
    (1)     -> Analog to digital converters
      Defined at drivers/iio/adc/Kconfig:218
      Depends on: IIO [=3Dm] && I2C [=3Dy]
      Selects: IIO_BUFFER [=3Dy] && IIO_TRIGGERED_BUFFER [=3Dn]

Which doesn't seem to me reveal any reason that I shouldn't be able to set =
it.

Regards,
Greg
________________________________
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Sent: Friday, December 22, 2017 12:27:22 PM
To: Greg Wilson-Lindberg; yocto@yoctoproject.org
Subject: Re: [yocto] Kernel configuration problem/confusion



On 12/22/2017 3:51 PM, Greg Wilson-Lindberg wrote:
> I'm trying to add some kernel configuration to a Raspberry pi3 yocto
> build.  I've got the .cfg fragment being read in, but I'm getting
> warnings that indicate that they are not making the desired changes.
>
>
> The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec and the
> Kconfig file has it in a long list of select's. the one for the MAX9768 i=
s:
>
>      select CONFIG_SND_SOC_MAX9768 if I2C
>
> I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the warning
> I'm getting is:
>
> ---------- CONFIG_SND_SOC_MAX9768 -----------------
> Config: CONFIG_SND_SOC_MAX9768
> From:
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/=
raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_SND_SOC_MAX9768=3Dy
> Actual value:
>
> Config 'SND_SOC_MAX9768' has the following conditionals:
> Dependency values are:
>
> SND_SOC_MAX9768 ends up not being selected even though I try to set it
> ti 'y'
>
>
> The second one is CONFIG_MAX1363, this is an ADC that I'm trying to set,
> the warning is:
>
> ---------- CONFIG_MAX1363 -----------------
> Config: CONFIG_MAX1363
> From:
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/=
raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_MAX1363=3Dy
> Actual value:     # CONFIG_MAX1363 is not set
>
> Config 'MAX1363' has the following conditionals:
>    I2C (value: "y")
> Dependency values are:
>    I2C [y]
>
> It ends up being not set. In both cases the value that I'm trying to set
> is ignored. Any insight would be greatly appreciated.

The python library that tries to detangle the Kconfig dependencies
isn't perfect (but I do have an update for it pending), so you might
not be getting the entire story in that information dumb.

Two things to check:

  - there are no other fragments that are disabling the same option
  - use menuconfig in the kernel to search the option and see what it
    reports for the dependencies.

There's some constraint or overriding command that is not allowing the
option into the final config, we just need to track it down.

Bruce

>
>
> Regards,
>
> Greg
>
>
>

--_000_8acdc20521304e4aaf197d661e63b7fdsakurauscom_
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
Hi Bruce,
<div>First, thanks for the unbelievably quick response.</div>
<div><br>
</div>
<div>I searched the Yocto sources and didn't find anything that was trying =
to manipulate either of the variables except my .cfg.</div>
<div><br>
</div>
<div>The memuconfig search for MAX9768 results in:</div>
<div>
<div>Symbol: SND_SOC_MAX9768 [=3Dn]&nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; Type&nbsp; : tristate&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; Defined at sound/soc/codecs/Kconfig:917</div>
<div>&nbsp; &nbsp; &nbsp; Depends on: SOUND [=3Dy] &amp;&amp; !M68K &amp;&a=
mp; !UML &amp;&amp; SND [=3Dm] &amp;&amp; SND_SOC [=3Dm]&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; Selected by: SND_SOC_ALL_CODECS [=3Dn] &amp;&amp;=
 SOUND [=3Dy] &amp;&amp; !M68K &amp;&amp; !UML &amp;&amp; SND [=3Dm] &amp;&=
amp; SND_SOC [=3Dm] &amp;&amp; COMPILE_TEST [=3Dn] &amp;&amp; I2C [=3Dy]&nb=
sp;</div>
<div>&nbsp;&nbsp;</div>
To my (untrained) eye it seems that I need&nbsp;SND_SOC_ALL_CODECS &amp;&nb=
sp;COMPILE_TEST. I tried setting&nbsp;them but I get a similar&nbsp;error f=
or&nbsp;COMPILE_TEST. A search for it yields:</div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<div>&nbsp;Symbol: COMPILE_TEST [=3Dn]&nbsp;</div>
<div>&nbsp; &nbsp; Type&nbsp; : boolean</div>
<div>&nbsp; &nbsp; Prompt: Compile also drivers which will not load&nbsp;</=
div>
<div>&nbsp; &nbsp; &nbsp; Location:</div>
<div>&nbsp; &nbsp; (1) -&gt; General setup&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; Defined at init/Kconfig:56&nbsp;</div>
<div>&nbsp;</div>
Which doesn't seem to suggest that there should be any problems setting it.=
</span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><br>
</span></span></span></div>
<div>The search for&nbsp;<font color=3D"#212121"><span style=3D"font-size:1=
3.3333px">MAX1363 yields:</span></font></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"c=
olor:rgb(33,33,33); font-size:13.3333px">
<div><span style=3D"font-size:12pt">&nbsp;Symbol: MAX1363 [=3Dn]&nbsp;</spa=
n></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; Type&nbsp; : tristate</sp=
an></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; &nbsp;Prompt: Maxim max13=
63 ADC driver</span></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; &nbsp; Location:&nbsp;</s=
pan></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; &nbsp; &nbsp; -&gt; Devic=
e Drivers&nbsp;</span></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&gt=
; Industrial I/O support (IIO [=3Dm])&nbsp;</span></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; (1)&nbsp; &nbsp; &nbsp;-&=
gt; Analog to digital converters&nbsp;</span></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; &nbsp; Defined at drivers=
/iio/adc/Kconfig:218&nbsp;</span></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; &nbsp; Depends on: IIO [=
=3Dm] &amp;&amp; I2C [=3Dy]&nbsp;</span></div>
<div><span style=3D"font-size:12pt">&nbsp; &nbsp; &nbsp; Selects: IIO_BUFFE=
R [=3Dy] &amp;&amp; IIO_TRIGGERED_BUFFER [=3Dn]&nbsp;</span></div>
<div><span style=3D"font-size:12pt">&nbsp;&nbsp;</span></div>
<span style=3D"font-size:12pt">Which doesn't seem to me</span><span style=
=3D"font-size:12pt"> reveal any reason that I shouldn't be able to set it.<=
/span></span></span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"c=
olor:rgb(33,33,33); font-size:13.3333px"><span style=3D"font-size:12pt"><br=
>
</span></span></span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"c=
olor:rgb(33,33,33); font-size:13.3333px"><span style=3D"font-size:12pt">Reg=
ards,</span></span></span></span></span></div>
<div><span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Ap=
ple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe=
 UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><s=
pan style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Col=
or Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sym=
bol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span sty=
le=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quo=
t;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px"><span style=3D"c=
olor:rgb(33,33,33); font-size:13.3333px"><span style=3D"font-size:12pt">Gre=
g</span></span></span></span></span></div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Bruce Ashfield &lt;=
bruce.ashfield@windriver.com&gt;<br>
<b>Sent:</b> Friday, December 22, 2017 12:27:22 PM<br>
<b>To:</b> Greg Wilson-Lindberg; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Kernel configuration problem/confusion</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
<br>
On 12/22/2017 3:51 PM, Greg Wilson-Lindberg wrote:<br>
&gt; I'm trying to add some kernel configuration to a Raspberry pi3 yocto <=
br>
&gt; build.&nbsp; I've got the .cfg fragment being read in, but I'm getting=
 <br>
&gt; warnings that indicate that they are not making the desired changes.<b=
r>
&gt; <br>
&gt; <br>
&gt; The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec and the=
 <br>
&gt; Kconfig file has it in a long list of select's. the one for the MAX976=
8 is:<br>
&gt; <br>
&gt;&nbsp; &nbsp; &nbsp; select CONFIG_SND_SOC_MAX9768 if I2C<br>
&gt; <br>
&gt; I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the warning =
<br>
&gt; I'm getting is:<br>
&gt; <br>
&gt; ---------- CONFIG_SND_SOC_MAX9768 -----------------<br>
&gt; Config: CONFIG_SND_SOC_MAX9768<br>
&gt; From: <br>
&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shar=
ed/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt; Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy<br>
&gt; Actual value:<br>
&gt; <br>
&gt; Config 'SND_SOC_MAX9768' has the following conditionals:<br>
&gt; Dependency values are:<br>
&gt; <br>
&gt; SND_SOC_MAX9768 ends up not being selected even though I try to set it=
 <br>
&gt; ti 'y'<br>
&gt; <br>
&gt; <br>
&gt; The second one is CONFIG_MAX1363, this is an ADC that I'm trying to se=
t, <br>
&gt; the warning is:<br>
&gt; <br>
&gt; ---------- CONFIG_MAX1363 -----------------<br>
&gt; Config: CONFIG_MAX1363<br>
&gt; From: <br>
&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shar=
ed/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt; Requested value:&nbsp; CONFIG_MAX1363=3Dy<br>
&gt; Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set<br>
&gt; <br>
&gt; Config 'MAX1363' has the following conditionals:<br>
&gt;&nbsp; &nbsp; I2C (value: &quot;y&quot;)<br>
&gt; Dependency values are:<br>
&gt;&nbsp; &nbsp; I2C [y]<br>
&gt; <br>
&gt; It ends up being not set. In both cases the value that I'm trying to s=
et <br>
&gt; is ignored. Any insight would be greatly appreciated.<br>
<br>
The python library that tries to detangle the Kconfig dependencies<br>
isn't perfect (but I do have an update for it pending), so you might<br>
not be getting the entire story in that information dumb.<br>
<br>
Two things to check:<br>
<br>
&nbsp; - there are no other fragments that are disabling the same option<br=
>
&nbsp; - use menuconfig in the kernel to search the option and see what it<=
br>
&nbsp;&nbsp;&nbsp; reports for the dependencies.<br>
<br>
There's some constraint or overriding command that is not allowing the<br>
option into the final config, we just need to track it down.<br>
<br>
Bruce<br>
<br>
&gt; <br>
&gt; <br>
&gt; Regards,<br>
&gt; <br>
&gt; Greg<br>
&gt; <br>
&gt; <br>
&gt; <br>
</div>
</span></font>
</body>
</html>

--_000_8acdc20521304e4aaf197d661e63b7fdsakurauscom_--
