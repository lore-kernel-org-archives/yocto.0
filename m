Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC62E00837; Mon, 26 Jan 2015 13:02:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.111.76 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BLU004-OMC2S1.hotmail.com (blu004-omc2s1.hotmail.com
	[65.55.111.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26BA7E0082D
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 13:02:33 -0800 (PST)
Received: from BLU437-SMTP76 ([65.55.111.73]) by BLU004-OMC2S1.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Mon, 26 Jan 2015 13:02:32 -0800
X-TMN: [yYAsle2JdurBgwPdQta+7TeHGIbTHzJZ]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BLU437-SMTP766ECAED786626FC4812EBAE350@phx.gbl>
MIME-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: James Abernathy <jfabernathy@outlook.com>
In-Reply-To: <B99A39DA-A006-4E48-BDFF-9E9FB49CF11F@keylevel.com>
Date: Mon, 26 Jan 2015 16:02:29 -0500
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<54C286DC.2030708@mlbassoc.com>
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>
	<54C645E4.9090801@mlbassoc.com>
	<BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>
	<54C662AD.5070209@mlbassoc.com>
	<BLU436-SMTP2158922E8CB275AC5BEC8FDAE350@phx.gbl>
	<BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>
	<B99A39DA-A006-4E48-BDFF-9E9FB49CF11F@keylevel.com>
To: Chris Tapp <opensource@keylevel.com>
X-Mailer: Apple Mail (2.1993)
X-OriginalArrivalTime: 26 Jan 2015 21:02:31.0102 (UTC)
	FILETIME=[663A1DE0:01D039AB]
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Mon, 26 Jan 2015 21:02:43 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_AF41BA37-CF45-46BF-841F-06AC507F7353"

--Apple-Mail=_AF41BA37-CF45-46BF-841F-06AC507F7353
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"


> On Jan 26, 2015, at 3:28 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>=20
>=20
> On 26 Jan 2015, at 19:31, James Abernathy <jfabernathy@outlook.com =
<mailto:jfabernathy@outlook.com>> wrote:
>=20
>> I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL +=3D " =
packagegroup-base-wifi=94
>>=20
>> However, I have no wireless drivers.  I must have to add something to =
add the drivers and firmware to the kernel.  Not sure what though.
>=20
> I'm not an expert here, but I think that adding kernel-modules and =
linux-firmware to your extra_install should give you what you need.
>=20

Well you are right!  All I added was:
CORE_IMAGE_EXTRA_INSTALL +=3D =93 packagegroup-base-wifi kernel-modules =
linux-firmware=94

After booting this image via USB on a NUC, I had all the drivers for LAN =
and WiFi devices and the 80211 firmware so I should be able to make it =
work now. =20

Thanks all,

Jim A

>>=20
>> Jim A
>>=20
>>> On Jan 26, 2015, at 11:09 AM, James Abernathy =
<jfabernathy@outlook.com <mailto:jfabernathy@outlook.com>> wrote:
>>>=20
>>>>=20
>>>> On Jan 26, 2015, at 10:52 AM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>> wrote:
>>>>=20
>>>> On 2015-01-26 08:26, James Abernathy wrote:
>>>>>=20
>>>>>> On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>>> wrote:
>>>>>>=20
>>>>>> On 2015-01-26 06:29, James Abernathy wrote:
>>>>>>>=20
>>>>>>>> On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>>> wrote:
>>>>>>>>=20
>>>>>>>> On 2015-01-23 10:24, Jim Abernathy wrote:
>>>>>>>>> I'm starting a project mostly for self-education.  I have =
already done the project using Ubuntu Server 14.04 using a Intel NUC and =
a Pandaboard as targets.  Now I want to see how
>>>>>>>>> easy it is to move it to Yocto.
>>>>>>>>>=20
>>>>>>>>> Starting with the NUC, I can boot Dizzy 1.7.1 =
core-image-minimal and core-image-sato, both built with bitbake and not =
the prebuilt images. However, core-image-minimal doesn't have
>>>>>>>>> WiFi and core-image-sato does, but I don't need all the GUI =
stuff.  It's a headless application.
>>>>>>>>>=20
>>>>>>>>> So what is recommended; eliminating the GUI from sato or =
adding wifi and wpa-supplicant, etc to minimal??  Also any pointers to =
how to do the adding/subtracting would be most
>>>>>>>>> helpful.
>>>>>>>>>=20
>>>>>>>>> Once this is working all I have to do is put apache-tomcat, =
and openjdk-7-jre, then my application.
>>>>>>>>=20
>>>>>>>> We use just iw & wpa-supplicant and set up the configuration
>>>>>>>> files manually (e.g. the wpa-supplicant configurations).
>>>>>>>=20
>>>>>>> Could you help with a little more details.  What I envision is =
adding an append statement of some kind to local.conf to load in the =
wireless related files to core-image-minimal,
>>>>>>> same with openjdk-7-jre and tomcat7, but my first efforts have =
generated some unintelligible error for me.  So that=92s why I=92m =
looking for direction on where to start with this.
>>>>>>=20
>>>>>> What was the error you got?  I'll bet it was for 'iw' which
>>>>>> is a package from meta-oe, so you'll need to add that layer
>>>>>>=20
>>>>>> Once you've added the meta-oe layer, you should be able to
>>>>>> put this line in your local.conf:
>>>>>> CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant=94
>>>>>>=20
>>>>> Okay, what I don=92t get is the fact that without any additional =
layers, bitbake core-image-sato builds all the WiFi features I need.  =
bitbake core-image-minimal does not.  So I=92m
>>>>> thinking that there is some CORE_IMAGE_EXTRA_INSTALL statement =
that can just add what is needed without extra layers.
>>>>>=20
>>>>> I guess it just doesn=92t make sense to me right now.
>>>>=20
>>>> Try using
>>>> CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
>>>> which will bring in 'wireless-tools' and 'wpa-supplicant'.
>>>>=20
>>>> I prefer 'iw' to 'wireless-tools' as it is newer and [IMO]
>>>> simpler to use.
>>>>=20
>>> Thanks, I found that I can clean build with just the wpa-supplicant =
added and I=92m hoping that will bring in the wifi drivers.  If it does, =
all I want to do is edit the /etc/interfaces file with the Static IP of =
the wlan0, the static IP of the eth0 and the wpa-xxx for the WKPA2_PSK =
information. =20
>>>=20
>>> Do I really need the tools?  I don=92t need CLI commands to change =
any network parameters later.
>>>=20
>>> Jim A
>>>=20
>>>> --=20
>>>> ------------------------------------------------------------
>>>> Gary Thomas                 |  Consulting for the
>>>> MLB Associates              |    Embedded world
>>>> ------------------------------------------------------------
>>>> --=20
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>>>=20
>>> --=20
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --
>=20
> Chris Tapp
> opensource@keylevel.com <mailto:opensource@keylevel.com>
> www.keylevel.com <http://www.keylevel.com/>
>=20
> ----
> You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_AF41BA37-CF45-46BF-841F-06AC507F7353
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="windows-1252"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 26, 2015, at 3:28 PM, Chris Tapp &lt;<a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><div class=3D""><br =
class=3D"Apple-interchange-newline">On 26 Jan 2015, at 19:31, James =
Abernathy &lt;<a href=3D"mailto:jfabernathy@outlook.com" =
class=3D"">jfabernathy@outlook.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite" =
class=3D""><div class=3D"" style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">I get =
a clean build when I add:&nbsp;CORE_IMAGE_EXTRA_INSTALL +=3D " =
packagegroup-base-wifi=94<div class=3D""><br class=3D""></div><div =
class=3D"">However, I have no wireless drivers. &nbsp;I must have to add =
something to add the drivers and firmware to the kernel. &nbsp;Not sure =
what though.</div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">I'm not an expert here, but I think =
that adding kernel-modules and linux-firmware to your extra_install =
should give you what you need.</div><div class=3D""><br =
class=3D""></div></div></div></blockquote><div><br class=3D""></div>Well =
you are right! &nbsp;All I added was:</div><div>CORE_IMAGE_EXTRA_INSTALL =
+=3D =93 packagegroup-base-wifi kernel-modules =
linux-firmware=94</div><div><br class=3D""></div><div>After booting this =
image via USB on a NUC, I had all the drivers for LAN and WiFi devices =
and the 80211 firmware so I should be able to make it work now. =
&nbsp;</div><div><br class=3D""></div><div>Thanks all,</div><div><br =
class=3D""></div><div>Jim A</div><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"" style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div =
class=3D""><br class=3D""></div><div class=3D"">Jim A</div><div =
class=3D""><br class=3D""><div class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">On Jan 26, 2015, at 11:09 AM, James Abernathy =
&lt;<a href=3D"mailto:jfabernathy@outlook.com" =
class=3D"">jfabernathy@outlook.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><blockquote =
type=3D"cite" class=3D"" style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><br =
class=3D"Apple-interchange-newline">On Jan 26, 2015, at 10:52 AM, Gary =
Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" =
class=3D"">gary@mlbassoc.com</a>&gt; wrote:<br class=3D""><br =
class=3D"">On 2015-01-26 08:26, James Abernathy wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D""><blockquote=
 type=3D"cite" class=3D"">On Jan 26, 2015, at 8:49 AM, Gary Thomas =
&lt;<a href=3D"mailto:gary@mlbassoc.com" =
class=3D"">gary@mlbassoc.com</a><span =
class=3D"Apple-converted-space">&nbsp;</span>&lt;<a =
href=3D"mailto:gary@mlbassoc.com" =
class=3D"">mailto:gary@mlbassoc.com</a>&gt;&gt; wrote:<br class=3D""><br =
class=3D"">On 2015-01-26 06:29, James Abernathy wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D""><blockquote=
 type=3D"cite" class=3D"">On Jan 23, 2015, at 12:37 PM, Gary Thomas =
&lt;<a href=3D"mailto:gary@mlbassoc.com" =
class=3D"">gary@mlbassoc.com</a><span =
class=3D"Apple-converted-space">&nbsp;</span>&lt;<a =
href=3D"mailto:gary@mlbassoc.com" =
class=3D"">mailto:gary@mlbassoc.com</a>&gt;&gt; wrote:<br class=3D""><br =
class=3D"">On 2015-01-23 10:24, Jim Abernathy wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">I'm starting a project =
mostly for self-education. &nbsp;I have already done the project using =
Ubuntu Server 14.04 using a Intel NUC and a Pandaboard as targets. =
&nbsp;Now I want to see how<br class=3D"">easy it is to move it to =
Yocto.<br class=3D""><br class=3D"">Starting with the NUC, I can boot =
Dizzy 1.7.1 core-image-minimal and core-image-sato, both built with =
bitbake and not the prebuilt images. However, core-image-minimal doesn't =
have<br class=3D"">WiFi and core-image-sato does, but I don't need all =
the GUI stuff. &nbsp;It's a headless application.<br class=3D""><br =
class=3D"">So what is recommended; eliminating the GUI from sato or =
adding wifi and wpa-supplicant, etc to minimal?? &nbsp;Also any pointers =
to how to do the adding/subtracting would be most<br =
class=3D"">helpful.<br class=3D""><br class=3D"">Once this is working =
all I have to do is put apache-tomcat, and openjdk-7-jre, then my =
application.<br class=3D""></blockquote><br class=3D"">We use just iw =
&amp; wpa-supplicant and set up the configuration<br class=3D"">files =
manually (e.g. the wpa-supplicant configurations).<br =
class=3D""></blockquote><br class=3D"">Could you help with a little more =
details. &nbsp;What I envision is adding an append statement of some =
kind to local.conf to load in the wireless related files to =
core-image-minimal,<br class=3D"">same with openjdk-7-jre and tomcat7, =
but my first efforts have generated some unintelligible error for me. =
&nbsp;So that=92s why I=92m looking for direction on where to start with =
this.<br class=3D""></blockquote><br class=3D"">What was the error you =
got? &nbsp;I'll bet it was for 'iw' which<br class=3D"">is a package =
from meta-oe, so you'll need to add that layer<br class=3D""><br =
class=3D"">Once you've added the meta-oe layer, you should be able to<br =
class=3D"">put this line in your local.conf:<br =
class=3D"">CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant=94<br =
class=3D""><br class=3D""></blockquote>Okay, what I don=92t get is the =
fact that without any additional layers, bitbake core-image-sato builds =
all the WiFi features I need. &nbsp;bitbake core-image-minimal does not. =
&nbsp;So I=92m<br class=3D"">thinking that there is some =
CORE_IMAGE_EXTRA_INSTALL statement that can just add what is needed =
without extra layers.<br class=3D""><br class=3D"">I guess it just =
doesn=92t make sense to me right now.<br class=3D""></blockquote><br =
class=3D"">Try using<br class=3D"">CORE_IMAGE_EXTRA_INSTALL +=3D " =
packagegroup-base-wifi"<br class=3D"">which will bring in =
'wireless-tools' and 'wpa-supplicant'.<br class=3D""><br class=3D"">I =
prefer 'iw' to 'wireless-tools' as it is newer and [IMO]<br =
class=3D"">simpler to use.<br class=3D""><br class=3D""></blockquote><span=
 class=3D"" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;">Thanks, I found that I can clean =
build with just the wpa-supplicant added and I=92m hoping that will =
bring in the wifi drivers. &nbsp;If it does, all I want to do is edit =
the /etc/interfaces file with the Static IP of the wlan0, the static IP =
of the eth0 and the wpa-xxx for the WKPA2_PSK information. =
&nbsp;</span><br class=3D"" style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><br =
class=3D"" style=3D"font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span class=3D""=
 style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;">Do I really need the tools? &nbsp;I don=92t need CLI =
commands to change any network parameters later.</span><br class=3D"" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><br class=3D"" style=3D"font-family:=
 Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><span class=3D"" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;">Jim A</span><br class=3D"" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><br class=3D"" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><blockquote type=3D"cite" class=3D"" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;">--<span =
class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">------------------------------------------------------------<br=
 class=3D"">Gary Thomas =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;| &nbsp;Consulting for the<br class=3D"">MLB =
Associates =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;| &nbsp;&nbsp;&nbsp;Embedded world<br =
class=3D"">------------------------------------------------------------<br=
 class=3D"">--<span class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D""></blockquote><br class=3D"" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><span class=3D"" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br class=3D"" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><span class=3D"" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;">_______________________________________________</span><br =
class=3D"" style=3D"font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span class=3D""=
 style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;">yocto mailing list</span><br class=3D"" style=3D"font-family:=
 Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><a href=3D"mailto:yocto@yoctoproject.org"=
 class=3D"" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">yocto@yoctoproject.org</a><br class=3D"" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" class=3D"" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: =
0px;">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockquote>=
</div><br class=3D""></div></div>--<span =
class=3D"Apple-converted-space">&nbsp;</span><br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D""></blockquote></div><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><div apple-content-edited=3D"true" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><div style=3D"letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><div style=3D"letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; border-spacing: 0px;"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D""><div =
class=3D"">--</div><div class=3D""><br class=3D""></div><div =
class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com/" =
class=3D"">www.keylevel.com</a></div><div class=3D""><br =
class=3D""></div><div class=3D"">----</div><div class=3D"">You can tell =
you're getting older when your car insurance gets real =
cheap!</div></div></span></div></div></div></div></div></div></blockquote>=
</div><br class=3D""></body></html>=

--Apple-Mail=_AF41BA37-CF45-46BF-841F-06AC507F7353--
