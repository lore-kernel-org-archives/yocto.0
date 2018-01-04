Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8298E00D74; Thu,  4 Jan 2018 08:40:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.235 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1B6E00CE2
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 08:40:42 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx3.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 04 Jan 2018 16:39:20 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 4 Jan 2018 08:39:03 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 4 Jan 2018 08:39:03 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel configuration problem/confusion
Thread-Index: AQHTe1t4oY5w7F8IEEKB1Z4cuyo8m6NQVfAA//+RTymAAnb/gIAFEEtbgAwo8ACAAGZIAA==
Date: Thu, 4 Jan 2018 16:39:03 +0000
Message-ID: <7794576a179e456683fff4ed8cc86b67@sakuraus.com>
References: <a56c815971a74fedaf7f9676840447f1@sakuraus.com>
	<3d3ef818-08f3-f706-45ae-264cc7cf7fff@windriver.com>
	<8acdc20521304e4aaf197d661e63b7fd@sakuraus.com>
	<8e9d6bf9-b92f-e0f4-10d6-10db758c66a1@windriver.com>
	<b53033627c9a435e8919289e32b4d167@sakuraus.com>,
	<9f114a5a-119a-b471-fd2f-fd0618938fa8@windriver.com>
In-Reply-To: <9f114a5a-119a-b471-fd2f-fd0618938fa8@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1515083745-298554-4849-277587-5
X-BESS-VER: 2017.16-r1712230000
X-BESS-Apparent-Source-IP: 12.26.104.5
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
X-List-Received-Date: Thu, 04 Jan 2018 16:40:49 -0000
X-Groupsio-MsgNum: 39413
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_7794576a179e456683fff4ed8cc86b67sakurauscom_"

--_005_7794576a179e456683fff4ed8cc86b67sakurauscom_
Content-Type: multipart/alternative;
	boundary="_000_7794576a179e456683fff4ed8cc86b67sakurauscom_"

--_000_7794576a179e456683fff4ed8cc86b67sakurauscom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

Yes I'm still having problems with this. I've attached both my bblayers and=
 local configuration files. Thanks for your help.

Regards,

Greg

________________________________
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Sent: Wednesday, January 3, 2018 6:30:52 PM
To: Greg Wilson-Lindberg; yocto@yoctoproject.org
Subject: Re: [yocto] Kernel configuration problem/confusion

On 2017-12-27 12:11 PM, Greg Wilson-Lindberg wrote:
> Hi Bruce,
>
> First, the kernel is 4.4.50, the recipe is linux-raspberrypi_4.4.bb in
> meta-raspberrypi. My image recipe is based on one from Qt, but it is
> using the kernel recipe in meta-raspberry.
>
>
> I changed my .bbappend to:
>
> # Scribe additions to kernel configuration
>
> # Enable MAX9768
> #CONFIG_SOC_ALL_CODECS=3Dm
> #CONFIG_COMPILE_TEST=3Dy
> #CONFIG_SND_SOC_MAX9768=3Dm
>
> # Enable MAX11606
> IIO=3Dy
> CONFIG_MAX1363=3Dm
>
> and I get:
>
> WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0
> do_kernel_configcheck: [kernel config]: specified values did not make it
> into the kernel's final configuration:
>
> ---------- CONFIG_MAX1363 -----------------
> Config: CONFIG_MAX1363
> From:
> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/=
raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_MAX1363=3Dm
> Actual value:     # CONFIG_MAX1363 is not set
>
> Config 'MAX1363' has the following conditionals:
>    I2C (value: "y")
> Dependency values are:
>    I2C [y]
>
> It's acting like there is some hidden dependency that it is not telling
> us about. I tried running menuconfig and that allows me so set it
> without any problems.

Sorry for the slow reply. I've been out of the office (and will be
until the 8th).

Are you still looking into this ? Rather than me make mistakes in
the exact configuration, can you send me (offlist, or here, doesn't
really matter) your bblayers to make sure I'm building exactly the
same thing ?

Bruce

>
> Regards,
> Greg
>
>
> ------------------------------------------------------------------------
> *From:* Bruce Ashfield <bruce.ashfield@windriver.com>
> *Sent:* Saturday, December 23, 2017 7:29 PM
> *To:* Greg Wilson-Lindberg; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Kernel configuration problem/confusion
>
>
> On 12/22/2017 6:17 PM, Greg Wilson-Lindberg wrote:
>> Hi Bruce,
>> First, thanks for the unbelievably quick response.
>>
>> I searched the Yocto sources and didn't find anything that was trying to
>> manipulate either of the variables except my .cfg.
>>
>> The memuconfig search for MAX9768 results in:
>> Symbol: SND_SOC_MAX9768 [=3Dn]
>>      Type  : tristate
>>        Defined at sound/soc/codecs/Kconfig:917
>>        Depends on: SOUND [=3Dy] && !M68K && !UML && SND [=3Dm] && SND_SO=
C [=3Dm]
>>        Selected by: SND_SOC_ALL_CODECS [=3Dn] && SOUND [=3Dy] && !M68K &=
&
>> !UML && SND [=3Dm] && SND_SOC [=3Dm] && COMPILE_TEST [=3Dn] && I2C [=3Dy=
]
>> To my (untrained) eye it seems that I need SND_SOC_ALL_CODECS
>> & COMPILE_TEST. I tried setting them but I get a similar error
>> for COMPILE_TEST. A search for it yields:
>>   Symbol: COMPILE_TEST [=3Dn]
>>      Type  : boolean
>>      Prompt: Compile also drivers which will not load
>>        Location:
>>      (1) -> General setup
>>        Defined at init/Kconfig:56
>> Which doesn't seem to suggest that there should be any problems setting =
it.
>
>
> True, but since SND_SOC_MAX9768 doesn't have any help text (aka
> a prompt in Kconfig speak) then it isn't something that you can
> actually reach by menuconfig and by extension .. it must be selected
> by other code. So you are on the right track. Either those symbols
> are also missing dependencies, or MAX9768 itself is missing a
> dependency.
>
>>
>> The search for MAX1363 yields:
>>   Symbol: MAX1363 [=3Dn]
>>      Type  : tristate
>>       Prompt: Maxim max1363 ADC driver
>>        Location:
>>          -> Device Drivers
>>            -> Industrial I/O support (IIO [=3Dm])
>>      (1)     -> Analog to digital converters
>>        Defined at drivers/iio/adc/Kconfig:218
>>        Depends on: IIO [=3Dm] && I2C [=3Dy]
>>        Selects: IIO_BUFFER [=3Dy] && IIO_TRIGGERED_BUFFER [=3Dn]
>> Which doesn't seem to mereveal any reason that I shouldn't be able to
>> set it.
>
> At a glance, I'm also not seeing the reason. Did you try forcing
> IIO=3Dy and seeing if there's a difference ? =3Dm should satisfy that
> Kconfig dependency, but it is worth checking.
>
> Is this a mainline kernel ? or something else that I could build ?
> Maybe with a quick test here, it would be more obvious.
>
> Bruce
>
>>
>> Regards,
>> Greg
>> ------------------------------------------------------------------------
>> *From:* Bruce Ashfield <bruce.ashfield@windriver.com>
>> *Sent:* Friday, December 22, 2017 12:27:22 PM
>> *To:* Greg Wilson-Lindberg; yocto@yoctoproject.org
>> *Subject:* Re: [yocto] Kernel configuration problem/confusion
>>
>>
>> On 12/22/2017 3:51 PM, Greg Wilson-Lindberg wrote:
>>> I'm trying to add some kernel configuration to a Raspberry pi3 yocto
>>> build.  I've got the .cfg fragment being read in, but I'm getting
>>> warnings that indicate that they are not making the desired changes.
>>>
>>>
>>> The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec and the
>>> Kconfig file has it in a long list of select's. the one for the MAX9768=
 is:
>>>
>>>      select CONFIG_SND_SOC_MAX9768 if I2C
>>>
>>> I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the warning
>>> I'm getting is:
>>>
>>> ---------- CONFIG_SND_SOC_MAX9768 -----------------
>>> Config: CONFIG_SND_SOC_MAX9768
>>> From:
>>> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-share=
d/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>>> Requested value:  CONFIG_SND_SOC_MAX9768=3Dy
>>> Actual value:
>>>
>>> Config 'SND_SOC_MAX9768' has the following conditionals:
>>> Dependency values are:
>>>
>>> SND_SOC_MAX9768 ends up not being selected even though I try to set it
>>> ti 'y'
>>>
>>>
>>> The second one is CONFIG_MAX1363, this is an ADC that I'm trying to set=
,
>>> the warning is:
>>>
>>> ---------- CONFIG_MAX1363 -----------------
>>> Config: CONFIG_MAX1363
>>> From:
>>> /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-share=
d/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
>>> Requested value:  CONFIG_MAX1363=3Dy
>>> Actual value:     # CONFIG_MAX1363 is not set
>>>
>>> Config 'MAX1363' has the following conditionals:
>>>    I2C (value: "y")
>>> Dependency values are:
>>>    I2C [y]
>>>
>>> It ends up being not set. In both cases the value that I'm trying to se=
t
>>> is ignored. Any insight would be greatly appreciated.
>>
>> The python library that tries to detangle the Kconfig dependencies
>> isn't perfect (but I do have an update for it pending), so you might
>> not be getting the entire story in that information dumb.
>>
>> Two things to check:
>>
>>    - there are no other fragments that are disabling the same option
>>    - use menuconfig in the kernel to search the option and see what it
>>      reports for the dependencies.
>>
>> There's some constraint or overriding command that is not allowing the
>> option into the final config, we just need to track it down.
>>
>> Bruce
>>
>>>
>>>
>>> Regards,
>>>
>>> Greg
>>>
>>>
>>>


--_000_7794576a179e456683fff4ed8cc86b67sakurauscom_
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
<p>Hi Bruce,</p>
<p>Yes I'm still having problems with this. I've attached both my bblayers =
and local configuration files. Thanks for your help.</p>
<p>Regards,</p>
<p>Greg</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Bruce Ashfield &lt;=
bruce.ashfield@windriver.com&gt;<br>
<b>Sent:</b> Wednesday, January 3, 2018 6:30:52 PM<br>
<b>To:</b> Greg Wilson-Lindberg; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Kernel configuration problem/confusion</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 2017-12-27 12:11 PM, Greg Wilson-Lindberg wrote=
:<br>
&gt; Hi Bruce,<br>
&gt; <br>
&gt; First, the kernel is 4.4.50, the recipe is linux-raspberrypi_4.4.bb in=
 <br>
&gt; meta-raspberrypi. My image recipe is based on one from Qt, but it is <=
br>
&gt; using the kernel recipe in meta-raspberry.<br>
&gt; <br>
&gt; <br>
&gt; I changed my .bbappend to:<br>
&gt; <br>
&gt; # Scribe additions to kernel configuration<br>
&gt; <br>
&gt; # Enable MAX9768<br>
&gt; #CONFIG_SOC_ALL_CODECS=3Dm<br>
&gt; #CONFIG_COMPILE_TEST=3Dy<br>
&gt; #CONFIG_SND_SOC_MAX9768=3Dm<br>
&gt; <br>
&gt; # Enable MAX11606<br>
&gt; IIO=3Dy<br>
&gt; CONFIG_MAX1363=3Dm<br>
&gt; <br>
&gt; and I get:<br>
&gt; <br>
&gt; WARNING: linux-raspberrypi-1_4.4.50&#43;gitAUTOINC&#43;04c8e47067-r0 <=
br>
&gt; do_kernel_configcheck: [kernel config]: specified values did not make =
it <br>
&gt; into the kernel's final configuration:<br>
&gt; <br>
&gt; ---------- CONFIG_MAX1363 -----------------<br>
&gt; Config: CONFIG_MAX1363<br>
&gt; From: <br>
&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shar=
ed/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt; Requested value:&nbsp; CONFIG_MAX1363=3Dm<br>
&gt; Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set<br>
&gt; <br>
&gt; Config 'MAX1363' has the following conditionals:<br>
&gt;&nbsp; &nbsp; I2C (value: &quot;y&quot;)<br>
&gt; Dependency values are:<br>
&gt;&nbsp; &nbsp; I2C [y]<br>
&gt; <br>
&gt; It's acting like there is some hidden dependency that it is not tellin=
g <br>
&gt; us about. I tried running menuconfig and that allows me so set it <br>
&gt; without any problems.<br>
<br>
Sorry for the slow reply. I've been out of the office (and will be<br>
until the 8th).<br>
<br>
Are you still looking into this ? Rather than me make mistakes in<br>
the exact configuration, can you send me (offlist, or here, doesn't<br>
really matter) your bblayers to make sure I'm building exactly the<br>
same thing ?<br>
<br>
Bruce<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; Greg<br>
&gt; <br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Bruce Ashfield &lt;bruce.ashfield@windriver.com&gt;<br>
&gt; *Sent:* Saturday, December 23, 2017 7:29 PM<br>
&gt; *To:* Greg Wilson-Lindberg; yocto@yoctoproject.org<br>
&gt; *Subject:* Re: [yocto] Kernel configuration problem/confusion<br>
&gt; <br>
&gt; <br>
&gt; On 12/22/2017 6:17 PM, Greg Wilson-Lindberg wrote:<br>
&gt;&gt; Hi Bruce,<br>
&gt;&gt; First, thanks for the unbelievably quick response.<br>
&gt;&gt; <br>
&gt;&gt; I searched the Yocto sources and didn't find anything that was try=
ing to <br>
&gt;&gt; manipulate either of the variables except my .cfg.<br>
&gt;&gt; <br>
&gt;&gt; The memuconfig search for MAX9768 results in:<br>
&gt;&gt; Symbol: SND_SOC_MAX9768 [=3Dn]<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; Type&nbsp; : tristate<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Defined at sound/soc/codecs/Kconfig:917=
<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Depends on: SOUND [=3Dy] &amp;&amp; !M6=
8K &amp;&amp; !UML &amp;&amp; SND [=3Dm] &amp;&amp; SND_SOC [=3Dm]<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Selected by: SND_SOC_ALL_CODECS [=3Dn] =
&amp;&amp; SOUND [=3Dy] &amp;&amp; !M68K &amp;&amp; <br>
&gt;&gt; !UML &amp;&amp; SND [=3Dm] &amp;&amp; SND_SOC [=3Dm] &amp;&amp; CO=
MPILE_TEST [=3Dn] &amp;&amp; I2C [=3Dy]<br>
&gt;&gt; To my (untrained) eye it seems that I need&nbsp;SND_SOC_ALL_CODECS=
 <br>
&gt;&gt; &amp;&nbsp;COMPILE_TEST. I tried setting&nbsp;them but I get a sim=
ilar&nbsp;error <br>
&gt;&gt; for&nbsp;COMPILE_TEST. A search for it yields:<br>
&gt;&gt;&nbsp; &nbsp;Symbol: COMPILE_TEST [=3Dn]<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; Type&nbsp; : boolean<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; Prompt: Compile also drivers which will not lo=
ad<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Location:<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; (1) -&gt; General setup<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Defined at init/Kconfig:56<br>
&gt;&gt; Which doesn't seem to suggest that there should be any problems se=
tting it.<br>
&gt; <br>
&gt; <br>
&gt; True, but since SND_SOC_MAX9768 doesn't have any help text (aka<br>
&gt; a prompt in Kconfig speak) then it isn't something that you can<br>
&gt; actually reach by menuconfig and by extension .. it must be selected<b=
r>
&gt; by other code. So you are on the right track. Either those symbols<br>
&gt; are also missing dependencies, or MAX9768 itself is missing a<br>
&gt; dependency.<br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt; The search for MAX1363 yields:<br>
&gt;&gt;&nbsp; &nbsp;Symbol: MAX1363 [=3Dn]<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; Type&nbsp; : tristate<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;Prompt: Maxim max1363 ADC driver<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Location:<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; Device Drivers<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; Industrial I/O supp=
ort (IIO [=3Dm])<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; (1)&nbsp; &nbsp; &nbsp;-&gt; Analog to digital=
 converters<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Defined at drivers/iio/adc/Kconfig:218<=
br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Depends on: IIO [=3Dm] &amp;&amp; I2C [=
=3Dy]<br>
&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; Selects: IIO_BUFFER [=3Dy] &amp;&amp; I=
IO_TRIGGERED_BUFFER [=3Dn]<br>
&gt;&gt; Which doesn't seem to mereveal any reason that I shouldn't be able=
 to <br>
&gt;&gt; set it.<br>
&gt; <br>
&gt; At a glance, I'm also not seeing the reason. Did you try forcing<br>
&gt; IIO=3Dy and seeing if there's a difference ? =3Dm should satisfy that<=
br>
&gt; Kconfig dependency, but it is worth checking.<br>
&gt; <br>
&gt; Is this a mainline kernel ? or something else that I could build ?<br>
&gt; Maybe with a quick test here, it would be more obvious.<br>
&gt; <br>
&gt; Bruce<br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt; Regards,<br>
&gt;&gt; Greg<br>
&gt;&gt; ------------------------------------------------------------------=
------<br>
&gt;&gt; *From:* Bruce Ashfield &lt;bruce.ashfield@windriver.com&gt;<br>
&gt;&gt; *Sent:* Friday, December 22, 2017 12:27:22 PM<br>
&gt;&gt; *To:* Greg Wilson-Lindberg; yocto@yoctoproject.org<br>
&gt;&gt; *Subject:* Re: [yocto] Kernel configuration problem/confusion<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; On 12/22/2017 3:51 PM, Greg Wilson-Lindberg wrote:<br>
&gt;&gt;&gt; I'm trying to add some kernel configuration to a Raspberry pi3=
 yocto <br>
&gt;&gt;&gt; build.&nbsp; I've got the .cfg fragment being read in, but I'm=
 getting <br>
&gt;&gt;&gt; warnings that indicate that they are not making the desired ch=
anges.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec=
 and the <br>
&gt;&gt;&gt; Kconfig file has it in a long list of select's. the one for th=
e MAX9768 is:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp; select CONFIG_SND_SOC_MAX9768 if I2C<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the =
warning <br>
&gt;&gt;&gt; I'm getting is:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; ---------- CONFIG_SND_SOC_MAX9768 -----------------<br>
&gt;&gt;&gt; Config: CONFIG_SND_SOC_MAX9768<br>
&gt;&gt;&gt; From: <br>
&gt;&gt;&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/w=
ork-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt;&gt;&gt; Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy<br>
&gt;&gt;&gt; Actual value:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Config 'SND_SOC_MAX9768' has the following conditionals:<br>
&gt;&gt;&gt; Dependency values are:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; SND_SOC_MAX9768 ends up not being selected even though I try t=
o set it <br>
&gt;&gt;&gt; ti 'y'<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; The second one is CONFIG_MAX1363, this is an ADC that I'm tryi=
ng to set, <br>
&gt;&gt;&gt; the warning is:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; ---------- CONFIG_MAX1363 -----------------<br>
&gt;&gt;&gt; Config: CONFIG_MAX1363<br>
&gt;&gt;&gt; From: <br>
&gt;&gt;&gt; /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/w=
ork-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
&gt;&gt;&gt; Requested value:&nbsp; CONFIG_MAX1363=3Dy<br>
&gt;&gt;&gt; Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set<b=
r>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Config 'MAX1363' has the following conditionals:<br>
&gt;&gt;&gt;&nbsp; &nbsp; I2C (value: &quot;y&quot;)<br>
&gt;&gt;&gt; Dependency values are:<br>
&gt;&gt;&gt;&nbsp; &nbsp; I2C [y]<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; It ends up being not set. In both cases the value that I'm try=
ing to set <br>
&gt;&gt;&gt; is ignored. Any insight would be greatly appreciated.<br>
&gt;&gt; <br>
&gt;&gt; The python library that tries to detangle the Kconfig dependencies=
<br>
&gt;&gt; isn't perfect (but I do have an update for it pending), so you mig=
ht<br>
&gt;&gt; not be getting the entire story in that information dumb.<br>
&gt;&gt; <br>
&gt;&gt; Two things to check:<br>
&gt;&gt; <br>
&gt;&gt;&nbsp; &nbsp; - there are no other fragments that are disabling the=
 same option<br>
&gt;&gt;&nbsp; &nbsp; - use menuconfig in the kernel to search the option a=
nd see what it<br>
&gt;&gt;&nbsp; &nbsp;&nbsp;&nbsp; reports for the dependencies.<br>
&gt;&gt; <br>
&gt;&gt; There's some constraint or overriding command that is not allowing=
 the<br>
&gt;&gt; option into the final config, we just need to track it down.<br>
&gt;&gt; <br>
&gt;&gt; Bruce<br>
&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Greg<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; <br>
<br>
</div>
</span></font>
</body>
</html>

--_000_7794576a179e456683fff4ed8cc86b67sakurauscom_--

--_005_7794576a179e456683fff4ed8cc86b67sakurauscom_
Content-Type: application/octet-stream; name="bblayers.conf"
Content-Description: bblayers.conf
Content-Disposition: attachment; filename="bblayers.conf"; size=2244;
	creation-date="Thu, 04 Jan 2018 16:37:45 GMT";
	modification-date="Thu, 04 Jan 2018 16:37:45 GMT"
Content-Transfer-Encoding: base64

IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIwojIwojIyBDb3B5cmlnaHQgKEMpIDIwMTYgVGhlIFF0IENvbXBh
bnkgTHRkLgojIyBDb250YWN0OiBodHRwczovL3d3dy5xdC5pby9saWNlbnNpbmcvCiMjCiMjIFRo
aXMgZmlsZSBpcyBwYXJ0IG9mIHRoZSBCb290IHRvIFF0IG1ldGEgbGF5ZXIuCiMjCiMjICRRVF9C
RUdJTl9MSUNFTlNFOkdQTCQKIyMgQ29tbWVyY2lhbCBMaWNlbnNlIFVzYWdlCiMjIExpY2Vuc2Vl
cyBob2xkaW5nIHZhbGlkIGNvbW1lcmNpYWwgUXQgbGljZW5zZXMgbWF5IHVzZSB0aGlzIGZpbGUg
aW4KIyMgYWNjb3JkYW5jZSB3aXRoIHRoZSBjb21tZXJjaWFsIGxpY2Vuc2UgYWdyZWVtZW50IHBy
b3ZpZGVkIHdpdGggdGhlCiMjIFNvZnR3YXJlIG9yLCBhbHRlcm5hdGl2ZWx5LCBpbiBhY2NvcmRh
bmNlIHdpdGggdGhlIHRlcm1zIGNvbnRhaW5lZCBpbgojIyBhIHdyaXR0ZW4gYWdyZWVtZW50IGJl
dHdlZW4geW91IGFuZCBUaGUgUXQgQ29tcGFueS4gRm9yIGxpY2Vuc2luZyB0ZXJtcwojIyBhbmQg
Y29uZGl0aW9ucyBzZWUgaHR0cHM6Ly93d3cucXQuaW8vdGVybXMtY29uZGl0aW9ucy4gRm9yIGZ1
cnRoZXIKIyMgaW5mb3JtYXRpb24gdXNlIHRoZSBjb250YWN0IGZvcm0gYXQgaHR0cHM6Ly93d3cu
cXQuaW8vY29udGFjdC11cy4KIyMKIyMgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgVXNhZ2UK
IyMgQWx0ZXJuYXRpdmVseSwgdGhpcyBmaWxlIG1heSBiZSB1c2VkIHVuZGVyIHRoZSB0ZXJtcyBv
ZiB0aGUgR05VCiMjIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdmVyc2lvbiAzIG9yIChhdCB5b3Vy
IG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24KIyMgYXBwcm92ZWQgYnkgdGhlIEtERSBGcmVlIFF0
IEZvdW5kYXRpb24uIFRoZSBsaWNlbnNlcyBhcmUgYXMgcHVibGlzaGVkIGJ5CiMjIHRoZSBGcmVl
IFNvZnR3YXJlIEZvdW5kYXRpb24gYW5kIGFwcGVhcmluZyBpbiB0aGUgZmlsZSBMSUNFTlNFLkdQ
TDMKIyMgaW5jbHVkZWQgaW4gdGhlIHBhY2thZ2luZyBvZiB0aGlzIGZpbGUuIFBsZWFzZSByZXZp
ZXcgdGhlIGZvbGxvd2luZwojIyBpbmZvcm1hdGlvbiB0byBlbnN1cmUgdGhlIEdOVSBHZW5lcmFs
IFB1YmxpYyBMaWNlbnNlIHJlcXVpcmVtZW50cyB3aWxsCiMjIGJlIG1ldDogaHR0cHM6Ly93d3cu
Z251Lm9yZy9saWNlbnNlcy9ncGwtMy4wLmh0bWwuCiMjCiMjICRRVF9FTkRfTElDRU5TRSQKIyMK
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIwoKIyBQT0tZX0JCTEFZRVJTX0NPTkZfVkVSU0lPTiBpcyBpbmNy
ZWFzZWQgZWFjaCB0aW1lIGJ1aWxkL2NvbmYvYmJsYXllcnMuY29uZgojIGNoYW5nZXMgaW5jb21w
YXRpYmx5ClBPS1lfQkJMQVlFUlNfQ09ORl9WRVJTSU9OID0gIjIiCgpCQlBBVEggPSAiJHtUT1BE
SVJ9IgpCQkZJTEVTID89ICIiCkJTUERJUiA6PSAiJHtAb3MucGF0aC5hYnNwYXRoKG9zLnBhdGgu
ZGlybmFtZShkLmdldFZhcignRklMRScsIFRydWUpKSArICcvLi4vLi4nKX0iCgpCQkxBWUVSUyA/
PSAiIFwKICAke0JTUERJUn0vc291cmNlcy9wb2t5L21ldGEgXAogICR7QlNQRElSfS9zb3VyY2Vz
L3Bva3kvbWV0YS1wb2t5IFwKICAke0JTUERJUn0vc291cmNlcy9tZXRhLXJhc3BiZXJyeXBpIFwK
ICAke0JTUERJUn0vc291cmNlcy9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9lIFwKICAke0JTUERJ
Un0vc291cmNlcy9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLXB5dGhvbiBcCiAgJHtCU1BESVJ9L3Nv
dXJjZXMvbWV0YS1vcGVuZW1iZWRkZWQvbWV0YS1uZXR3b3JraW5nIFwKICAke0JTUERJUn0vc291
cmNlcy9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLWluaXRyYW1mcyBcCiAgJHtCU1BESVJ9L3NvdXJj
ZXMvbWV0YS1vcGVuZW1iZWRkZWQvbWV0YS1tdWx0aW1lZGlhIFwKICAke0JTUERJUn0vc291cmNl
cy9tZXRhLWJvb3QycXQgXAogICR7QlNQRElSfS9zb3VyY2VzL21ldGEtYm9vdDJxdC9tZXRhLXJh
c3BiZXJyeXBpLWV4dHJhcyBcCiAgJHtCU1BESVJ9L3NvdXJjZXMvbWV0YS1taW5ndyBcCiAgJHtC
U1BESVJ9L3NvdXJjZXMvbWV0YS1xdDUgXAogICR7QlNQRElSfS9zb3VyY2VzL21ldGEtc2FrdXJh
IFwKICAvaG9tZS9nd2lsc29uL1F0LTUuOS9Zb2N0by1idWlsZC1SUGkzL2J1aWxkLXJhc3BiZXJy
eXBpMy93b3Jrc3BhY2UgXAogICIK

--_005_7794576a179e456683fff4ed8cc86b67sakurauscom_
Content-Type: application/octet-stream; name="local.conf"
Content-Description: local.conf
Content-Disposition: attachment; filename="local.conf"; size=12665;
	creation-date="Thu, 04 Jan 2018 16:37:46 GMT";
	modification-date="Thu, 04 Jan 2018 16:37:46 GMT"
Content-Transfer-Encoding: base64

IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIwojIwojIyBDb3B5cmlnaHQgKEMpIDIwMTYgVGhlIFF0IENvbXBh
bnkgTHRkLgojIyBDb250YWN0OiBodHRwczovL3d3dy5xdC5pby9saWNlbnNpbmcvCiMjCiMjIFRo
aXMgZmlsZSBpcyBwYXJ0IG9mIHRoZSBCb290IHRvIFF0IG1ldGEgbGF5ZXIuCiMjCiMjICRRVF9C
RUdJTl9MSUNFTlNFOkdQTCQKIyMgQ29tbWVyY2lhbCBMaWNlbnNlIFVzYWdlCiMjIExpY2Vuc2Vl
cyBob2xkaW5nIHZhbGlkIGNvbW1lcmNpYWwgUXQgbGljZW5zZXMgbWF5IHVzZSB0aGlzIGZpbGUg
aW4KIyMgYWNjb3JkYW5jZSB3aXRoIHRoZSBjb21tZXJjaWFsIGxpY2Vuc2UgYWdyZWVtZW50IHBy
b3ZpZGVkIHdpdGggdGhlCiMjIFNvZnR3YXJlIG9yLCBhbHRlcm5hdGl2ZWx5LCBpbiBhY2NvcmRh
bmNlIHdpdGggdGhlIHRlcm1zIGNvbnRhaW5lZCBpbgojIyBhIHdyaXR0ZW4gYWdyZWVtZW50IGJl
dHdlZW4geW91IGFuZCBUaGUgUXQgQ29tcGFueS4gRm9yIGxpY2Vuc2luZyB0ZXJtcwojIyBhbmQg
Y29uZGl0aW9ucyBzZWUgaHR0cHM6Ly93d3cucXQuaW8vdGVybXMtY29uZGl0aW9ucy4gRm9yIGZ1
cnRoZXIKIyMgaW5mb3JtYXRpb24gdXNlIHRoZSBjb250YWN0IGZvcm0gYXQgaHR0cHM6Ly93d3cu
cXQuaW8vY29udGFjdC11cy4KIyMKIyMgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgVXNhZ2UK
IyMgQWx0ZXJuYXRpdmVseSwgdGhpcyBmaWxlIG1heSBiZSB1c2VkIHVuZGVyIHRoZSB0ZXJtcyBv
ZiB0aGUgR05VCiMjIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdmVyc2lvbiAzIG9yIChhdCB5b3Vy
IG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24KIyMgYXBwcm92ZWQgYnkgdGhlIEtERSBGcmVlIFF0
IEZvdW5kYXRpb24uIFRoZSBsaWNlbnNlcyBhcmUgYXMgcHVibGlzaGVkIGJ5CiMjIHRoZSBGcmVl
IFNvZnR3YXJlIEZvdW5kYXRpb24gYW5kIGFwcGVhcmluZyBpbiB0aGUgZmlsZSBMSUNFTlNFLkdQ
TDMKIyMgaW5jbHVkZWQgaW4gdGhlIHBhY2thZ2luZyBvZiB0aGlzIGZpbGUuIFBsZWFzZSByZXZp
ZXcgdGhlIGZvbGxvd2luZwojIyBpbmZvcm1hdGlvbiB0byBlbnN1cmUgdGhlIEdOVSBHZW5lcmFs
IFB1YmxpYyBMaWNlbnNlIHJlcXVpcmVtZW50cyB3aWxsCiMjIGJlIG1ldDogaHR0cHM6Ly93d3cu
Z251Lm9yZy9saWNlbnNlcy9ncGwtMy4wLmh0bWwuCiMjCiMjICRRVF9FTkRfTElDRU5TRSQKIyMK
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIwoKIwojIFRoaXMgZmlsZSBpcyB5b3VyIGxvY2FsIGNvbmZpZ3Vy
YXRpb24gZmlsZSBhbmQgaXMgd2hlcmUgYWxsIGxvY2FsIHVzZXIgc2V0dGluZ3MKIyBhcmUgcGxh
Y2VkLiBUaGUgY29tbWVudHMgaW4gdGhpcyBmaWxlIGdpdmUgc29tZSBndWlkZSB0byB0aGUgb3B0
aW9ucyBhIG5ldyB1c2VyCiMgdG8gdGhlIHN5c3RlbSBtaWdodCB3YW50IHRvIGNoYW5nZSBidXQg
cHJldHR5IG11Y2ggYW55IGNvbmZpZ3VyYXRpb24gb3B0aW9uIGNhbgojIGJlIHNldCBpbiB0aGlz
IGZpbGUuIE1vcmUgYWR2ZW50dXJvdXMgdXNlcnMgY2FuIGxvb2sgYXQgbG9jYWwuY29uZi5leHRl
bmRlZCAKIyB3aGljaCBjb250YWlucyBvdGhlciBleGFtcGxlcyBvZiBjb25maWd1cmF0aW9uIHdo
aWNoIGNhbiBiZSBwbGFjZWQgaW4gdGhpcyBmaWxlCiMgYnV0IG5ldyB1c2VycyBsaWtlbHkgd29u
J3QgbmVlZCBhbnkgb2YgdGhlbSBpbml0aWFsbHkuCiMKIyBMaW5lcyBzdGFydGluZyB3aXRoIHRo
ZSAnIycgY2hhcmFjdGVyIGFyZSBjb21tZW50ZWQgb3V0IGFuZCBpbiBzb21lIGNhc2VzIHRoZSAK
IyBkZWZhdWx0IHZhbHVlcyBhcmUgcHJvdmlkZWQgYXMgY29tbWVudHMgdG8gc2hvdyBwZW9wbGUg
ZXhhbXBsZSBzeW50YXguIEVuYWJsaW5nCiMgdGhlIG9wdGlvbiBpcyBhIHF1ZXN0aW9uIG9mIHJl
bW92aW5nIHRoZSAjIGNoYXJhY3RlciBhbmQgbWFraW5nIGFueSBjaGFuZ2UgdG8gdGhlCiMgdmFy
aWFibGUgYXMgcmVxdWlyZWQuCgojCiMgUGFyYWxsZWxpc20gT3B0aW9ucwojCiMgVGhlc2UgdHdv
IG9wdGlvbnMgY29udHJvbCBob3cgbXVjaCBwYXJhbGxlbGlzbSBCaXRCYWtlIHNob3VsZCB1c2Uu
IFRoZSBmaXJzdCAKIyBvcHRpb24gZGV0ZXJtaW5lcyBob3cgbWFueSB0YXNrcyBiaXRiYWtlIHNo
b3VsZCBydW4gaW4gcGFyYWxsZWw6CiMKIyBEZWZhdWx0IHRvIHNldHRpbmcgYXV0b21hdGljYWxs
eSBiYXNlZCBvbiBjcHUgY291bnQKQkJfTlVNQkVSX1RIUkVBRFMgPz0gIiR7QG9lLnV0aWxzLmNw
dV9jb3VudCgpfSIKIyAKIyBUaGUgc2Vjb25kIG9wdGlvbiBjb250cm9scyBob3cgbWFueSBwcm9j
ZXNzZXMgbWFrZSBzaG91bGQgcnVuIGluIHBhcmFsbGVsIHdoZW4KIyBydW5uaW5nIGNvbXBpbGUg
dGFza3M6CiMKIyBEZWZhdWx0IHRvIHNldHRpbmcgYXV0b21hdGljYWxseSBiYXNlZCBvbiBjcHUg
Y291bnQKUEFSQUxMRUxfTUFLRSA/PSAiLWogJHtAb2UudXRpbHMuY3B1X2NvdW50KCl9IgojCiMg
Rm9yIGEgcXVhZC1jb3JlIG1hY2hpbmUsIEJCX05VTUJFUl9USFJFQURTID0gIjQiLCBQQVJBTExF
TF9NQUtFID0gIi1qIDQiIHdvdWxkCiMgYmUgYXBwcm9wcmlhdGUgZm9yIGV4YW1wbGUuCgojCiMg
TWFjaGluZSBTZWxlY3Rpb24KIwojIFlvdSBuZWVkIHRvIHNlbGVjdCBhIHNwZWNpZmljIG1hY2hp
bmUgdG8gdGFyZ2V0IHRoZSBidWlsZCB3aXRoLiBUaGVyZSBhcmUgYSBzZWxlY3Rpb24KIyBvZiBl
bXVsYXRlZCBtYWNoaW5lcyBhdmFpbGFibGUgd2hpY2ggY2FuIGJvb3QgYW5kIHJ1biBpbiB0aGUg
UUVNVSBlbXVsYXRvcjoKIwojTUFDSElORSA/PSAicWVtdWFybSIKI01BQ0hJTkUgPz0gInFlbXVt
aXBzIgojTUFDSElORSA/PSAicWVtdXBwYyIKI01BQ0hJTkUgPz0gInFlbXV4ODYiCiNNQUNISU5F
ID89ICJxZW11eDg2LTY0IgojCiMgVGhlcmUgYXJlIGFsc28gdGhlIGZvbGxvd2luZyBoYXJkd2Fy
ZSBib2FyZCB0YXJnZXQgbWFjaGluZXMgaW5jbHVkZWQgZm9yIAojIGRlbW9uc3RyYXRpb24gcHVy
cG9zZXM6CiMKI01BQ0hJTkUgPz0gImJlYWdsZWJvbmUiCiNNQUNISU5FID89ICJnZW5lcmljeDg2
IgojTUFDSElORSA/PSAiZ2VuZXJpY3g4Ni02NCIKI01BQ0hJTkUgPz0gIm1wYzgzMTVlLXJkYiIK
I01BQ0hJTkUgPz0gImVkZ2Vyb3V0ZXIiCiMKIyBUaGlzIHNldHMgdGhlIGRlZmF1bHQgbWFjaGlu
ZSB0byBiZSBxZW11eDg2IGlmIG5vIG90aGVyIG1hY2hpbmUgaXMgc2VsZWN0ZWQ6CiNNQUNISU5F
ID8/PSAicWVtdXg4NiIKTUFDSElORSA/PSAicmFzcGJlcnJ5cGkzIgpNQUNISU5FX0hPU1ROQU1F
ID89ICJiMnF0LSR7TUFDSElORX0iCgojCiMgV2hlcmUgdG8gcGxhY2UgZG93bmxvYWRzCiMKIyBE
dXJpbmcgYSBmaXJzdCBidWlsZCB0aGUgc3lzdGVtIHdpbGwgZG93bmxvYWQgbWFueSBkaWZmZXJl
bnQgc291cmNlIGNvZGUgdGFyYmFsbHMKIyBmcm9tIHZhcmlvdXMgdXBzdHJlYW0gcHJvamVjdHMu
IFRoaXMgY2FuIHRha2UgYSB3aGlsZSwgcGFydGljdWxhcmx5IGlmIHlvdXIgbmV0d29yawojIGNv
bm5lY3Rpb24gaXMgc2xvdy4gVGhlc2UgYXJlIGFsbCBzdG9yZWQgaW4gRExfRElSLiBXaGVuIHdp
cGluZyBhbmQgcmVidWlsZGluZyB5b3UKIyBjYW4gcHJlc2VydmUgdGhpcyBkaXJlY3RvcnkgdG8g
c3BlZWQgdXAgdGhpcyBwYXJ0IG9mIHN1YnNlcXVlbnQgYnVpbGRzLiBUaGlzIGRpcmVjdG9yeQoj
IGlzIHNhZmUgdG8gc2hhcmUgYmV0d2VlbiBtdWx0aXBsZSBidWlsZHMgb24gdGhlIHNhbWUgbWFj
aGluZSB0b28uCiMKIyBUaGUgZGVmYXVsdCBpcyBhIGRvd25sb2FkcyBkaXJlY3RvcnkgdW5kZXIg
VE9QRElSIHdoaWNoIGlzIHRoZSBidWlsZCBkaXJlY3RvcnkuCiMKRExfRElSID89ICIke1RPUERJ
Un0vLi4vZG93bmxvYWRzIgoKIwojIFdoZXJlIHRvIHBsYWNlIHNoYXJlZC1zdGF0ZSBmaWxlcwoj
CiMgQml0QmFrZSBoYXMgdGhlIGNhcGFiaWxpdHkgdG8gYWNjZWxlcmF0ZSBidWlsZHMgYmFzZWQg
b24gcHJldmlvdXNseSBidWlsdCBvdXRwdXQuCiMgVGhpcyBpcyBkb25lIHVzaW5nICJzaGFyZWQg
c3RhdGUiIGZpbGVzIHdoaWNoIGNhbiBiZSB0aG91Z2h0IG9mIGFzIGNhY2hlIG9iamVjdHMKIyBh
bmQgdGhpcyBvcHRpb24gZGV0ZXJtaW5lcyB3aGVyZSB0aG9zZSBmaWxlcyBhcmUgcGxhY2VkLgoj
CiMgWW91IGNhbiB3aXBlIG91dCBUTVBESVIgbGVhdmluZyB0aGlzIGRpcmVjdG9yeSBpbnRhY3Qg
YW5kIHRoZSBidWlsZCB3b3VsZCByZWdlbmVyYXRlCiMgZnJvbSB0aGVzZSBmaWxlcyBpZiBubyBj
aGFuZ2VzIHdlcmUgbWFkZSB0byB0aGUgY29uZmlndXJhdGlvbi4gSWYgY2hhbmdlcyB3ZXJlIG1h
ZGUKIyB0byB0aGUgY29uZmlndXJhdGlvbiwgb25seSBzaGFyZWQgc3RhdGUgZmlsZXMgd2hlcmUg
dGhlIHN0YXRlIHdhcyBzdGlsbCB2YWxpZCB3b3VsZAojIGJlIHVzZWQgKGRvbmUgdXNpbmcgY2hl
Y2tzdW1zKS4KIwojIFRoZSBkZWZhdWx0IGlzIGEgc3N0YXRlLWNhY2hlIGRpcmVjdG9yeSB1bmRl
ciBUT1BESVIuCiMKU1NUQVRFX0RJUiA/PSAiJHtUT1BESVJ9Ly4uL3NzdGF0ZS1jYWNoZSIKCiMK
IyBXaGVyZSB0byBwbGFjZSB0aGUgYnVpbGQgb3V0cHV0CiMKIyBUaGlzIG9wdGlvbiBzcGVjaWZp
ZXMgd2hlcmUgdGhlIGJ1bGsgb2YgdGhlIGJ1aWxkaW5nIHdvcmsgc2hvdWxkIGJlIGRvbmUgYW5k
CiMgd2hlcmUgQml0QmFrZSBzaG91bGQgcGxhY2UgaXRzIHRlbXBvcmFyeSBmaWxlcyBhbmQgb3V0
cHV0LiBLZWVwIGluIG1pbmQgdGhhdAojIHRoaXMgaW5jbHVkZXMgdGhlIGV4dHJhY3Rpb24gYW5k
IGNvbXBpbGF0aW9uIG9mIG1hbnkgYXBwbGljYXRpb25zIGFuZCB0aGUgdG9vbGNoYWluCiMgd2hp
Y2ggY2FuIHVzZSBHaWdhYnl0ZXMgb2YgaGFyZCBkaXNrIHNwYWNlLgojCiMgVGhlIGRlZmF1bHQg
aXMgYSB0bXAgZGlyZWN0b3J5IHVuZGVyIFRPUERJUi4KIwojVE1QRElSID0gIiR7VE9QRElSfS90
bXAiCgojCiMgRGVmYXVsdCBwb2xpY3kgY29uZmlnCiMKIyBUaGUgZGlzdHJpYnV0aW9uIHNldHRp
bmcgY29udHJvbHMgd2hpY2ggcG9saWN5IHNldHRpbmdzIGFyZSB1c2VkIGFzIGRlZmF1bHRzLgoj
IFRoZSBkZWZhdWx0IHZhbHVlIGlzIGZpbmUgZm9yIGdlbmVyYWwgWW9jdG8gcHJvamVjdCB1c2Us
IGF0IGxlYXN0IGluaXRpYWxseS4KIyBVbHRpbWF0ZWx5IHdoZW4gY3JlYXRpbmcgY3VzdG9tIHBv
bGljeSwgcGVvcGxlIHdpbGwgbGlrZWx5IGVuZCB1cCBzdWJjbGFzc2luZyAKIyB0aGVzZSBkZWZh
dWx0cy4KIwpESVNUUk8gPz0gImIycXQiCiMgQXMgYW4gZXhhbXBsZSBvZiBhIHN1YmNsYXNzIHRo
ZXJlIGlzIGEgImJsZWVkaW5nIiBlZGdlIHBvbGljeSBjb25maWd1cmF0aW9uCiMgd2hlcmUgbWFu
eSB2ZXJzaW9ucyBhcmUgc2V0IHRvIHRoZSBhYnNvbHV0ZSBsYXRlc3QgY29kZSBmcm9tIHRoZSB1
cHN0cmVhbSAKIyBzb3VyY2UgY29udHJvbCBzeXN0ZW1zLiBUaGlzIGlzIGp1c3QgbWVudGlvbmVk
IGhlcmUgYXMgYW4gZXhhbXBsZSwgaXRzIG5vdAojIHVzZWZ1bCB0byBtb3N0IG5ldyB1c2Vycy4K
IyBESVNUUk8gPz0gInBva3ktYmxlZWRpbmciCgojCiMgUGFja2FnZSBNYW5hZ2VtZW50IGNvbmZp
Z3VyYXRpb24KIwojIFRoaXMgdmFyaWFibGUgbGlzdHMgd2hpY2ggcGFja2FnaW5nIGZvcm1hdHMg
dG8gZW5hYmxlLiBNdWx0aXBsZSBwYWNrYWdlIGJhY2tlbmRzIAojIGNhbiBiZSBlbmFibGVkIGF0
IG9uY2UgYW5kIHRoZSBmaXJzdCBpdGVtIGxpc3RlZCBpbiB0aGUgdmFyaWFibGUgd2lsbCBiZSB1
c2VkIAojIHRvIGdlbmVyYXRlIHRoZSByb290IGZpbGVzeXN0ZW1zLgojIE9wdGlvbnMgYXJlOgoj
ICAtICdwYWNrYWdlX2RlYicgZm9yIGRlYmlhbiBzdHlsZSBkZWIgZmlsZXMKIyAgLSAncGFja2Fn
ZV9pcGsnIGZvciBpcGsgZmlsZXMgYXJlIHVzZWQgYnkgb3BrZyAoYSBkZWJpYW4gc3R5bGUgZW1i
ZWRkZWQgcGFja2FnZSBtYW5hZ2VyKQojICAtICdwYWNrYWdlX3JwbScgZm9yIHJwbSBzdHlsZSBw
YWNrYWdlcwojIEUuZy46IFBBQ0tBR0VfQ0xBU1NFUyA/PSAicGFja2FnZV9ycG0gcGFja2FnZV9k
ZWIgcGFja2FnZV9pcGsiCiMgV2UgZGVmYXVsdCB0byBycG06ClBBQ0tBR0VfQ0xBU1NFUyA/PSAi
cGFja2FnZV9pcGsiCgojCiMgU0RLL0FEVCB0YXJnZXQgYXJjaGl0ZWN0dXJlCiMKIyBUaGlzIHZh
cmlhYmxlIHNwZWNpZmllcyB0aGUgYXJjaGl0ZWN0dXJlIHRvIGJ1aWxkIFNESy9BRFQgaXRlbXMg
Zm9yIGFuZCBtZWFucwojIHlvdSBjYW4gYnVpbGQgdGhlIFNESyBwYWNrYWdlcyBmb3IgYXJjaGl0
ZWN0dXJlcyBvdGhlciB0aGFuIHRoZSBtYWNoaW5lIHlvdSBhcmUgCiMgcnVubmluZyB0aGUgYnVp
bGQgb24gKGkuZS4gYnVpbGRpbmcgaTY4NiBwYWNrYWdlcyBvbiBhbiB4ODZfNjQgaG9zdCkuCiMg
U3VwcG9ydGVkIHZhbHVlcyBhcmUgaTY4NiBhbmQgeDg2XzY0CiNTREtNQUNISU5FID89ICJpNjg2
IgoKIwojIEV4dHJhIGltYWdlIGNvbmZpZ3VyYXRpb24gZGVmYXVsdHMKIwojIFRoZSBFWFRSQV9J
TUFHRV9GRUFUVVJFUyB2YXJpYWJsZSBhbGxvd3MgZXh0cmEgcGFja2FnZXMgdG8gYmUgYWRkZWQg
dG8gdGhlIGdlbmVyYXRlZCAKIyBpbWFnZXMuIFNvbWUgb2YgdGhlc2Ugb3B0aW9ucyBhcmUgYWRk
ZWQgdG8gY2VydGFpbiBpbWFnZSB0eXBlcyBhdXRvbWF0aWNhbGx5LiBUaGUKIyB2YXJpYWJsZSBj
YW4gY29udGFpbiB0aGUgZm9sbG93aW5nIG9wdGlvbnM6CiMgICJkYmctcGtncyIgICAgICAgLSBh
ZGQgLWRiZyBwYWNrYWdlcyBmb3IgYWxsIGluc3RhbGxlZCBwYWNrYWdlcwojICAgICAgICAgICAg
ICAgICAgICAgKGFkZHMgc3ltYm9sIGluZm9ybWF0aW9uIGZvciBkZWJ1Z2dpbmcvcHJvZmlsaW5n
KQojICAiZGV2LXBrZ3MiICAgICAgIC0gYWRkIC1kZXYgcGFja2FnZXMgZm9yIGFsbCBpbnN0YWxs
ZWQgcGFja2FnZXMKIyAgICAgICAgICAgICAgICAgICAgICh1c2VmdWwgaWYgeW91IHdhbnQgdG8g
ZGV2ZWxvcCBhZ2FpbnN0IGxpYnMgaW4gdGhlIGltYWdlKQojICAicHRlc3QtcGtncyIgICAgIC0g
YWRkIC1wdGVzdCBwYWNrYWdlcyBmb3IgYWxsIHB0ZXN0LWVuYWJsZWQgcGFja2FnZXMKIyAgICAg
ICAgICAgICAgICAgICAgICh1c2VmdWwgaWYgeW91IHdhbnQgdG8gcnVuIHRoZSBwYWNrYWdlIHRl
c3Qgc3VpdGVzKQojICAidG9vbHMtc2RrIiAgICAgIC0gYWRkIGRldmVsb3BtZW50IHRvb2xzIChn
Y2MsIG1ha2UsIHBrZ2NvbmZpZyBldGMuKQojICAidG9vbHMtZGVidWciICAgIC0gYWRkIGRlYnVn
Z2luZyB0b29scyAoZ2RiLCBzdHJhY2UpCiMgICJlY2xpcHNlLWRlYnVnIiAgLSBhZGQgRWNsaXBz
ZSByZW1vdGUgZGVidWdnaW5nIHN1cHBvcnQKIyAgInRvb2xzLXByb2ZpbGUiICAtIGFkZCBwcm9m
aWxpbmcgdG9vbHMgKG9wcm9maWxlLCBleG1hcCwgbHR0bmcsIHZhbGdyaW5kKQojICAidG9vbHMt
dGVzdGFwcHMiIC0gYWRkIHVzZWZ1bCB0ZXN0aW5nIHRvb2xzICh0c19wcmludCwgYXBsYXksIGFy
ZWNvcmQgZXRjLikKIyAgImRlYnVnLXR3ZWFrcyIgICAtIG1ha2UgYW4gaW1hZ2Ugc3VpdGFibGUg
Zm9yIGRldmVsb3BtZW50CiMgICAgICAgICAgICAgICAgICAgICBlLmcuIHNzaCByb290IGFjY2Vz
cyBoYXMgYSBibGFuayBwYXNzd29yZAojIFRoZXJlIGFyZSBvdGhlciBhcHBsaWNhdGlvbiB0YXJn
ZXRzIHRoYXQgY2FuIGJlIHVzZWQgaGVyZSB0b28sIHNlZQojIG1ldGEvY2xhc3Nlcy9pbWFnZS5i
YmNsYXNzIGFuZCBtZXRhL2NsYXNzZXMvY29yZS1pbWFnZS5iYmNsYXNzIGZvciBtb3JlIGRldGFp
bHMuCiMgV2UgZGVmYXVsdCB0byBlbmFibGluZyB0aGUgZGVidWdnaW5nIHR3ZWFrcy4KRVhUUkFf
SU1BR0VfRkVBVFVSRVMgPSAiZGVidWctdHdlYWtzIgoKIwojIEFkZGl0aW9uYWwgaW1hZ2UgZmVh
dHVyZXMKIwojIFRoZSBmb2xsb3dpbmcgaXMgYSBsaXN0IG9mIGFkZGl0aW9uYWwgY2xhc3NlcyB0
byB1c2Ugd2hlbiBidWlsZGluZyBpbWFnZXMgd2hpY2gKIyBlbmFibGUgZXh0cmEgZmVhdHVyZXMu
IFNvbWUgYXZhaWxhYmxlIG9wdGlvbnMgd2hpY2ggY2FuIGJlIGluY2x1ZGVkIGluIHRoaXMgdmFy
aWFibGUgCiMgYXJlOgojICAgLSAnYnVpbGRzdGF0cycgY29sbGVjdCBidWlsZCBzdGF0aXN0aWNz
CiMgICAtICdpbWFnZS1ta2xpYnMnIHRvIHJlZHVjZSBzaGFyZWQgbGlicmFyeSBmaWxlcyBzaXpl
IGZvciBhbiBpbWFnZQojICAgLSAnaW1hZ2UtcHJlbGluaycgaW4gb3JkZXIgdG8gcHJlbGluayB0
aGUgZmlsZXN5c3RlbSBpbWFnZQojICAgLSAnaW1hZ2Utc3dhYicgdG8gcGVyZm9ybSBob3N0IHN5
c3RlbSBpbnRydXNpb24gZGV0ZWN0aW9uCiMgTk9URTogaWYgbGlzdGluZyBta2xpYnMgJiBwcmVs
aW5rIGJvdGgsIHRoZW4gbWFrZSBzdXJlIG1rbGlicyBpcyBiZWZvcmUgcHJlbGluawojIE5PVEU6
IG1rbGlicyBhbHNvIG5lZWRzIHRvIGJlIGV4cGxpY2l0bHkgZW5hYmxlZCBmb3IgYSBnaXZlbiBp
bWFnZSwgc2VlIGxvY2FsLmNvbmYuZXh0ZW5kZWQKVVNFUl9DTEFTU0VTID89ICJidWlsZHN0YXRz
IGltYWdlLW1rbGlicyIKCiMKIyBSdW50aW1lIHRlc3Rpbmcgb2YgaW1hZ2VzCiMKIyBUaGUgYnVp
bGQgc3lzdGVtIGNhbiB0ZXN0IGJvb3RpbmcgdmlydHVhbCBtYWNoaW5lIGltYWdlcyB1bmRlciBx
ZW11IChhbiBlbXVsYXRvcikKIyBhZnRlciBhbnkgcm9vdCBmaWxlc3lzdGVtcyBhcmUgY3JlYXRl
ZCBhbmQgcnVuIHRlc3RzIGFnYWluc3QgdGhvc2UgaW1hZ2VzLiBUbwojIGVuYWJsZSB0aGlzIHVu
Y29tbWVudCB0aGlzIGxpbmUuIFNlZSBjbGFzc2VzL3Rlc3RpbWFnZSgtYXV0bykuYmJjbGFzcyBm
b3IKIyBmdXJ0aGVyIGRldGFpbHMuCiNURVNUX0lNQUdFID0gIjEiCiMKIyBJbnRlcmFjdGl2ZSBz
aGVsbCBjb25maWd1cmF0aW9uCiMKIyBVbmRlciBjZXJ0YWluIGNpcmN1bXN0YW5jZXMgdGhlIHN5
c3RlbSBtYXkgbmVlZCBpbnB1dCBmcm9tIHlvdSBhbmQgdG8gZG8gdGhpcyBpdCAKIyBjYW4gbGF1
bmNoIGFuIGludGVyYWN0aXZlIHNoZWxsLiBJdCBuZWVkcyB0byBkbyB0aGlzIHNpbmNlIHRoZSBi
dWlsZCBpcyAKIyBtdWx0aXRocmVhZGVkIGFuZCBuZWVkcyB0byBiZSBhYmxlIHRvIGhhbmRsZSB0
aGUgY2FzZSB3aGVyZSBtb3JlIHRoYW4gb25lIHBhcmFsbGVsCiMgcHJvY2VzcyBtYXkgcmVxdWly
ZSB0aGUgdXNlcidzIGF0dGVudGlvbi4gVGhlIGRlZmF1bHQgaXMgaXRlcmF0ZSBvdmVyIHRoZSBh
dmFpbGFibGUKIyB0ZXJtaW5hbCB0eXBlcyB0byBmaW5kIG9uZSB0aGF0IHdvcmtzLgojCiMgRXhh
bXBsZXMgb2YgdGhlIG9jY2FzaW9ucyB0aGlzIG1heSBoYXBwZW4gYXJlIHdoZW4gcmVzb2x2aW5n
IHBhdGNoZXMgd2hpY2ggY2Fubm90CiMgYmUgYXBwbGllZCwgdG8gdXNlIHRoZSBkZXZzaGVsbCBv
ciB0aGUga2VybmVsIG1lbnVjb25maWcKIwojIFN1cHBvcnRlZCB2YWx1ZXMgYXJlIGF1dG8sIGdu
b21lLCB4ZmNlLCByeHZ0LCBzY3JlZW4sIGtvbnNvbGUgKEtERSAzLnggb25seSksIG5vbmUKIyBO
b3RlOiBjdXJyZW50bHksIEtvbnNvbGUgc3VwcG9ydCBvbmx5IHdvcmtzIGZvciBLREUgMy54IGR1
ZSB0byB0aGUgd2F5CiMgbmV3ZXIgS29uc29sZSB2ZXJzaW9ucyBiZWhhdmUKI09FX1RFUk1JTkFM
ID0gImF1dG8iCiMgQnkgZGVmYXVsdCBkaXNhYmxlIGludGVyYWN0aXZlIHBhdGNoIHJlc29sdXRp
b24gKHRhc2tzIHdpbGwganVzdCBmYWlsIGluc3RlYWQpOgpQQVRDSFJFU09MVkUgPSAibm9vcCIK
CiMKIyBEaXNrIFNwYWNlIE1vbml0b3JpbmcgZHVyaW5nIHRoZSBidWlsZAojCiMgTW9uaXRvciB0
aGUgZGlzayBzcGFjZSBkdXJpbmcgdGhlIGJ1aWxkLiBJZiB0aGVyZSBpcyBsZXNzIHRoYXQgMUdC
IG9mIHNwYWNlIG9yIGxlc3MKIyB0aGFuIDEwMEsgaW5vZGVzIGluIGFueSBrZXkgYnVpbGQgbG9j
YXRpb24gKFRNUERJUiwgRExfRElSLCBTU1RBVEVfRElSKSwgZ3JhY2VmdWxseQojIHNodXRkb3du
IHRoZSBidWlsZC4gSWYgdGhlcmUgaXMgbGVzcyB0aGF0IDEwME1CIG9yIDFLIGlub2RlcywgcGVy
Zm9ybSBhIGhhcmQgYWJvcnQKIyBvZiB0aGUgYnVpbGQuIFRoZSByZWFzb24gZm9yIHRoaXMgaXMg
dGhhdCBydW5uaW5nIGNvbXBsZXRlbHkgb3V0IG9mIHNwYWNlIGNhbiBjb3JydXB0CiMgZmlsZXMg
YW5kIGRhbWFnZXMgdGhlIGJ1aWxkIGluIHdheXMgd2hpY2ggbWF5IG5vdCBiZSBlYXNpbHkgcmVj
b3ZlcmFibGUuCkJCX0RJU0tNT05fRElSUyA9ICJcCiAgICBTVE9QVEFTS1MsJHtUTVBESVJ9LDFH
LDEwMEsgXAogICAgU1RPUFRBU0tTLCR7RExfRElSfSwxRywxMDBLIFwKICAgIFNUT1BUQVNLUywk
e1NTVEFURV9ESVJ9LDFHLDEwMEsgXAogICAgQUJPUlQsJHtUTVBESVJ9LDEwME0sMUsgXAogICAg
QUJPUlQsJHtETF9ESVJ9LDEwME0sMUsgXAogICAgQUJPUlQsJHtTU1RBVEVfRElSfSwxMDBNLDFL
IiAKCiMKIyBTaGFyZWQtc3RhdGUgZmlsZXMgZnJvbSBvdGhlciBsb2NhdGlvbnMKIwojIEFzIG1l
bnRpb25lZCBhYm92ZSwgc2hhcmVkIHN0YXRlIGZpbGVzIGFyZSBwcmVidWlsdCBjYWNoZSBkYXRh
IG9iamVjdHMgd2hpY2ggY2FuIAojIHVzZWQgdG8gYWNjZWxlcmF0ZSBidWlsZCB0aW1lLiBUaGlz
IHZhcmlhYmxlIGNhbiBiZSB1c2VkIHRvIGNvbmZpZ3VyZSB0aGUgc3lzdGVtCiMgdG8gc2VhcmNo
IG90aGVyIG1pcnJvciBsb2NhdGlvbnMgZm9yIHRoZXNlIG9iamVjdHMgYmVmb3JlIGl0IGJ1aWxk
cyB0aGUgZGF0YSBpdHNlbGYuCiMKIyBUaGlzIGNhbiBiZSBhIGZpbGVzeXN0ZW0gZGlyZWN0b3J5
LCBvciBhIHJlbW90ZSB1cmwgc3VjaCBhcyBodHRwIG9yIGZ0cC4gVGhlc2UKIyB3b3VsZCBjb250
YWluIHRoZSBzc3RhdGUtY2FjaGUgcmVzdWx0cyBmcm9tIHByZXZpb3VzIGJ1aWxkcyAocG9zc2li
bHkgZnJvbSBvdGhlciAKIyBtYWNoaW5lcykuIFRoaXMgdmFyaWFibGUgd29ya3MgbGlrZSBmZXRj
aGVyIE1JUlJPUlMvUFJFTUlSUk9SUyBhbmQgcG9pbnRzIHRvIHRoZSAKIyBjYWNoZSBsb2NhdGlv
bnMgdG8gY2hlY2sgZm9yIHRoZSBzaGFyZWQgb2JqZWN0cy4KIyBOT1RFOiBpZiB0aGUgbWlycm9y
IHVzZXMgdGhlIHNhbWUgc3RydWN0dXJlIGFzIFNTVEFURV9ESVIsIHlvdSBuZWVkIHRvIGFkZCBQ
QVRICiMgYXQgdGhlIGVuZCBhcyBzaG93biBpbiB0aGUgZXhhbXBsZXMgYmVsb3cuIFRoaXMgd2ls
bCBiZSBzdWJzdGl0dXRlZCB3aXRoIHRoZQojIGNvcnJlY3QgcGF0aCB3aXRoaW4gdGhlIGRpcmVj
dG9yeSBzdHJ1Y3R1cmUuCiNTU1RBVEVfTUlSUk9SUyA/PSAiXAojZmlsZTovLy4qIGh0dHA6Ly9z
b21lc2VydmVyLnRsZC9zaGFyZS9zc3RhdGUvUEFUSDtkb3dubG9hZGZpbGVuYW1lPVBBVEggXG4g
XAojZmlsZTovLy4qIGZpbGU6Ly8vc29tZS9sb2NhbC9kaXIvc3N0YXRlL1BBVEgiCgojCiMgUWVt
dSBjb25maWd1cmF0aW9uCiMKIyBCeSBkZWZhdWx0IHFlbXUgd2lsbCBidWlsZCB3aXRoIGEgYnVp
bHRpbiBWTkMgc2VydmVyIHdoZXJlIGdyYXBoaWNhbCBvdXRwdXQgY2FuIGJlCiMgc2Vlbi4gVGhl
IHR3byBsaW5lcyBiZWxvdyBlbmFibGUgdGhlIFNETCBiYWNrZW5kIHRvby4gVGhpcyBhc3N1bWVz
IHRoZXJlIGlzIGEKIyBsaWJzZGwgbGlicmFyeSBhdmFpbGFibGUgb24geW91ciBidWlsZCBzeXN0
ZW0uCiNQQUNLQUdFQ09ORklHX3BuLXFlbXUtbmF0aXZlID0gInNkbCIKI1BBQ0tBR0VDT05GSUdf
cG4tbmF0aXZlc2RrLXFlbXUgPSAic2RsIgojQVNTVU1FX1BST1ZJREVEICs9ICJsaWJzZGwtbmF0
aXZlIgoKCiMgQ09ORl9WRVJTSU9OIGlzIGluY3JlYXNlZCBlYWNoIHRpbWUgYnVpbGQvY29uZi8g
Y2hhbmdlcyBpbmNvbXBhdGlibHkgYW5kIGlzIHVzZWQgdG8KIyB0cmFjayB0aGUgdmVyc2lvbiBv
ZiB0aGlzIGZpbGUgd2hlbiBpdCB3YXMgZ2VuZXJhdGVkLiBUaGlzIGNhbiBzYWZlbHkgYmUgaWdu
b3JlZCBpZgojIHRoaXMgZG9lc24ndCBtZWFuIGFueXRoaW5nIHRvIHlvdS4KQ09ORl9WRVJTSU9O
ID0gIjEiCgoKIwojIEN1c3RvbSBhZGRpdGlvbnMKIwoKIyBBZGRpdGlvbmFsIGR0Ym8ncwpLRVJO
RUxfREVWSUNFVFJFRV9hcHBlbmQgPSAiIG92ZXJsYXlzL21jcDI1MTUtY2FuMC5kdGJvIgoKIyBG
aXhlcyBmb3IgaW5jbHVzaW9uIG9mIG15c3FsClBBQ0tBR0VDT05GSUdfYXBwZW5kX3BuLXF0YmFz
ZSArPSAiIHNxbC1teXNxbCIKUVRfQ09ORklHX0ZMQUdTX2FwcGVuZF9wbi1xdGJhc2UgKz0gIiAt
SSAvdXNyL2luY2x1ZGUvbXlzcWwiClFUX0NPTkZJR19GTEFHU19hcHBlbmRfcG4tcXRiYXNlICs9
ICIgLUkgJHtTVEFHSU5HX0RJUl9UQVJHRVR9L3Vzci9pbmNsdWRlL215c3FsIgoKIyBvdmVybGF5
cy9zcGktYmNtMjgzNS5kdGJvIgoKI0lOSEVSSVQgKz0gInJtX3dvcmsiCklOSEVSSVQgKz0gImlt
YWdlLWJ1aWxkaW5mbyIKSU5IRVJJVCArPSAiaW50ZXJuYWwtYnVpbGQiCgojIEVuYWJsZXMgdXNl
IG9mIFF0UXVpY2tDb21waWxlciBpZiB5b3UgaGF2ZSBhY2Nlc3MgdG8gdGhlIGdlcnJpdCBwcm9q
ZWN0CiNFTkFCTEVfUVRRVUlDS0NPTVBJTEVSID0gIjEiCgpBQ0NFUFRfRlNMX0VVTEEgPSAiMSIK
TElDRU5TRV9GTEFHU19XSElURUxJU1QgPSAiY29tbWVyY2lhbCIKClFUX1NES19QQVRIID0gIi9o
b21lL2d3aWxzb24vUXQtNS45IgoKaW5jbHVkZSBjb25mL2Rpc3Ryby9pbmNsdWRlLyR7TUFDSElO
RX0ucHJlLmluYwo=

--_005_7794576a179e456683fff4ed8cc86b67sakurauscom_--
