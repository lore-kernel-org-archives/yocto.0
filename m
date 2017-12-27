Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78D09E00D84; Wed, 27 Dec 2017 09:11:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F21E008FB
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 09:11:26 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1403.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 27 Dec 2017 17:11:23 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 27 Dec 2017 09:11:22 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 27 Dec 2017 09:11:22 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel configuration problem/confusion
Thread-Index: AQHTe1t4oY5w7F8IEEKB1Z4cuyo8m6NQVfAA//+RTymAAnb/gIAFEEtb
Date: Wed, 27 Dec 2017 17:11:22 +0000
Message-ID: <b53033627c9a435e8919289e32b4d167@sakuraus.com>
References: <a56c815971a74fedaf7f9676840447f1@sakuraus.com>
	<3d3ef818-08f3-f706-45ae-264cc7cf7fff@windriver.com>
	<8acdc20521304e4aaf197d661e63b7fd@sakuraus.com>,
	<8e9d6bf9-b92f-e0f4-10d6-10db758c66a1@windriver.com>
In-Reply-To: <8e9d6bf9-b92f-e0f4-10d6-10db758c66a1@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1514394683-321459-6704-232725-1
X-BESS-VER: 2017.16-r1712230000
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.188402
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
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
X-List-Received-Date: Wed, 27 Dec 2017 17:11:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b53033627c9a435e8919289e32b4d167sakurauscom_"

--_000_b53033627c9a435e8919289e32b4d167sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

First, the kernel is 4.4.50, the recipe is linux-raspberrypi_4.4.bb in meta=
-raspberrypi. My image recipe is based on one from Qt, but it is using the =
kernel recipe in meta-raspberry.


I changed my .bbappend to:

# Scribe additions to kernel configuration

# Enable MAX9768
#CONFIG_SOC_ALL_CODECS=3Dm
#CONFIG_COMPILE_TEST=3Dy
#CONFIG_SND_SOC_MAX9768=3Dm

# Enable MAX11606
IIO=3Dy
CONFIG_MAX1363=3Dm


and I get:

WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0 do_kernel_conf=
igcheck: [kernel config]: specified values did not make it into the kernel'=
s final configuration:

---------- CONFIG_MAX1363 -----------------
Config: CONFIG_MAX1363
From: /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-sha=
red/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
Requested value:  CONFIG_MAX1363=3Dm
Actual value:     # CONFIG_MAX1363 is not set

Config 'MAX1363' has the following conditionals:
  I2C (value: "y")
Dependency values are:
  I2C [y]

It's acting like there is some hidden dependency that it is not telling us =
about. I tried running menuconfig and that allows me so set it without any =
problems.

Regards,
Greg

________________________________
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Sent: Saturday, December 23, 2017 7:29 PM
To: Greg Wilson-Lindberg; yocto@yoctoproject.org
Subject: Re: [yocto] Kernel configuration problem/confusion



On 12/22/2017 6:17 PM, Greg Wilson-Lindberg wrote:
> Hi Bruce,
> First, thanks for the unbelievably quick response.
>
> I searched the Yocto sources and didn't find anything that was trying to
> manipulate either of the variables except my .cfg.
>
> The memuconfig search for MAX9768 results in:
> Symbol: SND_SOC_MAX9768 [=3Dn]
>      Type  : tristate
>        Defined at sound/soc/codecs/Kconfig:917
>        Depends on: SOUND [=3Dy] && !M68K && !UML && SND [=3Dm] && SND_SOC=
 [=3Dm]
>        Selected by: SND_SOC_ALL_CODECS [=3Dn] && SOUND [=3Dy] && !M68K &&
> !UML && SND [=3Dm] && SND_SOC [=3Dm] && COMPILE_TEST [=3Dn] && I2C [=3Dy]
> To my (untrained) eye it seems that I need SND_SOC_ALL_CODECS
> & COMPILE_TEST. I tried setting them but I get a similar error
> for COMPILE_TEST. A search for it yields:
>   Symbol: COMPILE_TEST [=3Dn]
>      Type  : boolean
>      Prompt: Compile also drivers which will not load
>        Location:
>      (1) -> General setup
>        Defined at init/Kconfig:56
> Which doesn't seem to suggest that there should be any problems setting i=
t.


True, but since SND_SOC_MAX9768 doesn't have any help text (aka
a prompt in Kconfig speak) then it isn't something that you can
actually reach by menuconfig and by extension .. it must be selected
by other code. So you are on the right track. Either those symbols
are also missing dependencies, or MAX9768 itself is missing a
dependency.

>
> The search for MAX1363 yields:
>   Symbol: MAX1363 [=3Dn]
>      Type  : tristate
>       Prompt: Maxim max1363 ADC driver
>        Location:
>          -> Device Drivers
>            -> Industrial I/O support (IIO [=3Dm])
>      (1)     -> Analog to digital converters
>        Defined at drivers/iio/adc/Kconfig:218
>        Depends on: IIO [=3Dm] && I2C [=3Dy]
>        Selects: IIO_BUFFER [=3Dy] && IIO_TRIGGERED_BUFFER [=3Dn]
> Which doesn't seem to mereveal any reason that I shouldn't be able to
> set it.

At a glance, I'm also not seeing the reason. Did you try forcing
IIO=3Dy and seeing if there's a difference ? =3Dm should satisfy that
Kconfig dependency, but it is worth checking.

Is this a mainline kernel ? or something else that I could build ?
Maybe with a quick test here, it would be more obvious.

Bruce

>
> Regards,
> Greg
> ------------------------------------------------------------------------
> *From:* Bruce Ashfield <bruce.ashfield@windriver.com>
> *Sent:* Friday, December 22, 2017 12:27:22 PM
> *To:* Greg Wilson-Lindberg; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Kernel configuration problem/confusion
>
>
> On 12/22/2017 3:51 PM, Greg Wilson-Lindberg wrote:
>> I'm trying to add some kernel configuration to a Raspberry pi3 yocto
>> build.  I've got the .cfg fragment being read in, but I'm getting
>> warnings that indicate that they are not making the desired changes.
>>
>>
>> The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec and the
>> Kconfig file has it in a long list of select's. the one for the MAX9768 =
is:
>>
>>      select CONFIG_SND_SOC_MAX9768 if I2C
>>
>> I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the warning
>> I'm getting is:
>>
>> ---------- CONFIG_SND_SOC_MAX9768 -----------------
>> Config: CONFIG_SND_SOC_MAX9768
>> From:
>> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared=
/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>> Requested value:  CONFIG_SND_SOC_MAX9768=3Dy
>> Actual value:
>>
>> Config 'SND_SOC_MAX9768' has the following conditionals:
>> Dependency values are:
>>
>> SND_SOC_MAX9768 ends up not being selected even though I try to set it
>> ti 'y'
>>
>>
>> The second one is CONFIG_MAX1363, this is an ADC that I'm trying to set,
>> the warning is:
>>
>> ---------- CONFIG_MAX1363 -----------------
>> Config: CONFIG_MAX1363
>> From:
>> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared=
/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>> Requested value:  CONFIG_MAX1363=3Dy
>> Actual value:     # CONFIG_MAX1363 is not set
>>
>> Config 'MAX1363' has the following conditionals:
>>    I2C (value: "y")
>> Dependency values are:
>>    I2C [y]
>>
>> It ends up being not set. In both cases the value that I'm trying to set
>> is ignored. Any insight would be greatly appreciated.
>
> The python library that tries to detangle the Kconfig dependencies
> isn't perfect (but I do have an update for it pending), so you might
> not be getting the entire story in that information dumb.
>
> Two things to check:
>
>    - there are no other fragments that are disabling the same option
>    - use menuconfig in the kernel to search the option and see what it
>      reports for the dependencies.
>
> There's some constraint or overriding command that is not allowing the
> option into the final config, we just need to track it down.
>
> Bruce
>
>>
>>
>> Regards,
>>
>> Greg
>>
>>
>>

--_000_b53033627c9a435e8919289e32b4d167sakurauscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi Bruce,</p>
<p>First, the kernel is 4.4.50, the recipe is linux-raspberrypi_4.4.bb in m=
eta-raspberrypi. My image recipe is based on one from Qt, but it is using t=
he kernel recipe in meta-raspberry.</p>
<p><br>
</p>
<p>I changed my .bbappend to:</p>
<p></p>
<div>
<pre># Scribe additions to kernel configuration=0A=
=0A=
# Enable MAX9768=0A=
#CONFIG_SOC_ALL_CODECS=3Dm=0A=
#CONFIG_COMPILE_TEST=3Dy=0A=
#CONFIG_SND_SOC_MAX9768=3Dm=0A=
=0A=
# Enable MAX11606=0A=
IIO=3Dy=0A=
CONFIG_MAX1363=3Dm=0A=
</pre>
</div>
and I get:
<p></p>
<p></p>
<div>WARNING: linux-raspberrypi-1_4.4.50&#43;gitAUTOINC&#43;04c8e47067-r0 d=
o_kernel_configcheck: [kernel config]: specified values did not make it int=
o the kernel's final configuration:</div>
<div><br>
</div>
<div>---------- CONFIG_MAX1363 -----------------</div>
<div>Config: CONFIG_MAX1363</div>
<div>From: /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/wor=
k-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg</div>
<div>Requested value:&nbsp; CONFIG_MAX1363=3Dm</div>
<div>Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set</div>
<div><br>
</div>
<div>Config 'MAX1363' has the following conditionals:&nbsp;</div>
<div>&nbsp; I2C (value: &quot;y&quot;)</div>
<div>Dependency values are:&nbsp;</div>
<div>&nbsp; I2C [y]</div>
<div><br>
</div>
<div>It's acting like there is some hidden dependency that it is not tellin=
g us about. I tried running menuconfig and that allows me so set it without=
 any problems.</div>
<div><br>
</div>
<div>Regards,</div>
<div>Greg</div>
<p></p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Bruce Ashfield &lt;=
bruce.ashfield@windriver.com&gt;<br>
<b>Sent:</b> Saturday, December 23, 2017 7:29 PM<br>
<b>To:</b> Greg Wilson-Lindberg; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Kernel configuration problem/confusion</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
<br>
On 12/22/2017 6:17 PM, Greg Wilson-Lindberg wrote:<br>
&gt; Hi Bruce,<br>
&gt; First, thanks for the unbelievably quick response.<br>
&gt; <br>
&gt; I searched the Yocto sources and didn't find anything that was trying =
to <br>
&gt; manipulate either of the variables except my .cfg.<br>
&gt; <br>
&gt; The memuconfig search for MAX9768 results in:<br>
&gt; Symbol: SND_SOC_MAX9768 [=3Dn]<br>
&gt;&nbsp; &nbsp; &nbsp; Type&nbsp; : tristate<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Defined at sound/soc/codecs/Kconfig:917<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Depends on: SOUND [=3Dy] &amp;&amp; !M68K &=
amp;&amp; !UML &amp;&amp; SND [=3Dm] &amp;&amp; SND_SOC [=3Dm]<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Selected by: SND_SOC_ALL_CODECS [=3Dn] &amp=
;&amp; SOUND [=3Dy] &amp;&amp; !M68K &amp;&amp; <br>
&gt; !UML &amp;&amp; SND [=3Dm] &amp;&amp; SND_SOC [=3Dm] &amp;&amp; COMPIL=
E_TEST [=3Dn] &amp;&amp; I2C [=3Dy]<br>
&gt; To my (untrained) eye it seems that I need&nbsp;SND_SOC_ALL_CODECS <br=
>
&gt; &amp;&nbsp;COMPILE_TEST. I tried setting&nbsp;them but I get a similar=
&nbsp;error <br>
&gt; for&nbsp;COMPILE_TEST. A search for it yields:<br>
&gt;&nbsp; &nbsp;Symbol: COMPILE_TEST [=3Dn]<br>
&gt;&nbsp; &nbsp; &nbsp; Type&nbsp; : boolean<br>
&gt;&nbsp; &nbsp; &nbsp; Prompt: Compile also drivers which will not load<b=
r>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Location:<br>
&gt;&nbsp; &nbsp; &nbsp; (1) -&gt; General setup<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Defined at init/Kconfig:56<br>
&gt; Which doesn't seem to suggest that there should be any problems settin=
g it.<br>
<br>
<br>
True, but since SND_SOC_MAX9768 doesn't have any help text (aka<br>
a prompt in Kconfig speak) then it isn't something that you can<br>
actually reach by menuconfig and by extension .. it must be selected<br>
by other code. So you are on the right track. Either those symbols<br>
are also missing dependencies, or MAX9768 itself is missing a<br>
dependency.<br>
<br>
&gt; <br>
&gt; The search for MAX1363 yields:<br>
&gt;&nbsp; &nbsp;Symbol: MAX1363 [=3Dn]<br>
&gt;&nbsp; &nbsp; &nbsp; Type&nbsp; : tristate<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;Prompt: Maxim max1363 ADC driver<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Location:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; Device Drivers<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; Industrial I/O support =
(IIO [=3Dm])<br>
&gt;&nbsp; &nbsp; &nbsp; (1)&nbsp; &nbsp; &nbsp;-&gt; Analog to digital con=
verters<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Defined at drivers/iio/adc/Kconfig:218<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Depends on: IIO [=3Dm] &amp;&amp; I2C [=3Dy=
]<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; Selects: IIO_BUFFER [=3Dy] &amp;&amp; IIO_T=
RIGGERED_BUFFER [=3Dn]<br>
&gt; Which doesn't seem to mereveal any reason that I shouldn't be able to =
<br>
&gt; set it.<br>
<br>
At a glance, I'm also not seeing the reason. Did you try forcing<br>
IIO=3Dy and seeing if there's a difference ? =3Dm should satisfy that<br>
Kconfig dependency, but it is worth checking.<br>
<br>
Is this a mainline kernel ? or something else that I could build ?<br>
Maybe with a quick test here, it would be more obvious.<br>
<br>
Bruce<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; Greg<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Bruce Ashfield &lt;bruce.ashfield@windriver.com&gt;<br>
&gt; *Sent:* Friday, December 22, 2017 12:27:22 PM<br>
&gt; *To:* Greg Wilson-Lindberg; yocto@yoctoproject.org<br>
&gt; *Subject:* Re: [yocto] Kernel configuration problem/confusion<br>
&gt; <br>
&gt; <br>
&gt; On 12/22/2017 3:51 PM, Greg Wilson-Lindberg wrote:<br>
&gt;&gt; I'm trying to add some kernel configuration to a Raspberry pi3 yoc=
to <br>
&gt;&gt; build.&nbsp; I've got the .cfg fragment being read in, but I'm get=
ting <br>
&gt;&gt; warnings that indicate that they are not making the desired change=
s.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec and=
 the <br>
&gt;&gt; Kconfig file has it in a long list of select's. the one for the MA=
X9768 is:<br>
&gt;&gt; <br>
&gt;&gt;&nbsp; &nbsp; &nbsp; select CONFIG_SND_SOC_MAX9768 if I2C<br>
&gt;&gt; <br>
&gt;&gt; I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the warn=
ing <br>
&gt;&gt; I'm getting is:<br>
&gt;&gt; <br>
&gt;&gt; ---------- CONFIG_SND_SOC_MAX9768 -----------------<br>
&gt;&gt; Config: CONFIG_SND_SOC_MAX9768<br>
&gt;&gt; From: <br>
&gt;&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-=
shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt;&gt; Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy<br>
&gt;&gt; Actual value:<br>
&gt;&gt; <br>
&gt;&gt; Config 'SND_SOC_MAX9768' has the following conditionals:<br>
&gt;&gt; Dependency values are:<br>
&gt;&gt; <br>
&gt;&gt; SND_SOC_MAX9768 ends up not being selected even though I try to se=
t it <br>
&gt;&gt; ti 'y'<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; The second one is CONFIG_MAX1363, this is an ADC that I'm trying t=
o set, <br>
&gt;&gt; the warning is:<br>
&gt;&gt; <br>
&gt;&gt; ---------- CONFIG_MAX1363 -----------------<br>
&gt;&gt; Config: CONFIG_MAX1363<br>
&gt;&gt; From: <br>
&gt;&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-=
shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt;&gt; Requested value:&nbsp; CONFIG_MAX1363=3Dy<br>
&gt;&gt; Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set<br>
&gt;&gt; <br>
&gt;&gt; Config 'MAX1363' has the following conditionals:<br>
&gt;&gt;&nbsp; &nbsp; I2C (value: &quot;y&quot;)<br>
&gt;&gt; Dependency values are:<br>
&gt;&gt;&nbsp; &nbsp; I2C [y]<br>
&gt;&gt; <br>
&gt;&gt; It ends up being not set. In both cases the value that I'm trying =
to set <br>
&gt;&gt; is ignored. Any insight would be greatly appreciated.<br>
&gt; <br>
&gt; The python library that tries to detangle the Kconfig dependencies<br>
&gt; isn't perfect (but I do have an update for it pending), so you might<b=
r>
&gt; not be getting the entire story in that information dumb.<br>
&gt; <br>
&gt; Two things to check:<br>
&gt; <br>
&gt;&nbsp; &nbsp; - there are no other fragments that are disabling the sam=
e option<br>
&gt;&nbsp; &nbsp; - use menuconfig in the kernel to search the option and s=
ee what it<br>
&gt;&nbsp; &nbsp;&nbsp;&nbsp; reports for the dependencies.<br>
&gt; <br>
&gt; There's some constraint or overriding command that is not allowing the=
<br>
&gt; option into the final config, we just need to track it down.<br>
&gt; <br>
&gt; Bruce<br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Regards,<br>
&gt;&gt; <br>
&gt;&gt; Greg<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_b53033627c9a435e8919289e32b4d167sakurauscom_--
