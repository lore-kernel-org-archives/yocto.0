Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45F69E00837; Mon, 26 Jan 2015 12:28:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDDBCE0082D
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 12:28:20 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:12980
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>)
	id 1YFqGZ-000Tvf-VM; Mon, 26 Jan 2015 20:28:17 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>
Date: Mon, 26 Jan 2015 20:28:06 +0000
Message-Id: <B99A39DA-A006-4E48-BDFF-9E9FB49CF11F@keylevel.com>
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<54C286DC.2030708@mlbassoc.com>
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>
	<54C645E4.9090801@mlbassoc.com>
	<BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>
	<54C662AD.5070209@mlbassoc.com>
	<BLU436-SMTP2158922E8CB275AC5BEC8FDAE350@phx.gbl>
	<BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>
To: James Abernathy <jfabernathy@outlook.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
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
X-List-Received-Date: Mon, 26 Jan 2015 20:28:26 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_95480C4B-0E1A-48E4-9A00-1A6C63D875E7"

--Apple-Mail=_95480C4B-0E1A-48E4-9A00-1A6C63D875E7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On 26 Jan 2015, at 19:31, James Abernathy <jfabernathy@outlook.com> =
wrote:

> I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL +=3D " =
packagegroup-base-wifi=94
>=20
> However, I have no wireless drivers.  I must have to add something to =
add the drivers and firmware to the kernel.  Not sure what though.

I'm not an expert here, but I think that adding kernel-modules and =
linux-firmware to your extra_install should give you what you need.

>=20
> Jim A
>=20
>> On Jan 26, 2015, at 11:09 AM, James Abernathy =
<jfabernathy@outlook.com> wrote:
>>=20
>>>=20
>>> On Jan 26, 2015, at 10:52 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>=20
>>> On 2015-01-26 08:26, James Abernathy wrote:
>>>>=20
>>>>> On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>> wrote:
>>>>>=20
>>>>> On 2015-01-26 06:29, James Abernathy wrote:
>>>>>>=20
>>>>>>> On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com =
<mailto:gary@mlbassoc.com>> wrote:
>>>>>>>=20
>>>>>>> On 2015-01-23 10:24, Jim Abernathy wrote:
>>>>>>>> I'm starting a project mostly for self-education.  I have =
already done the project using Ubuntu Server 14.04 using a Intel NUC and =
a Pandaboard as targets.  Now I want to see how
>>>>>>>> easy it is to move it to Yocto.
>>>>>>>>=20
>>>>>>>> Starting with the NUC, I can boot Dizzy 1.7.1 =
core-image-minimal and core-image-sato, both built with bitbake and not =
the prebuilt images. However, core-image-minimal doesn't have
>>>>>>>> WiFi and core-image-sato does, but I don't need all the GUI =
stuff.  It's a headless application.
>>>>>>>>=20
>>>>>>>> So what is recommended; eliminating the GUI from sato or adding =
wifi and wpa-supplicant, etc to minimal??  Also any pointers to how to =
do the adding/subtracting would be most
>>>>>>>> helpful.
>>>>>>>>=20
>>>>>>>> Once this is working all I have to do is put apache-tomcat, and =
openjdk-7-jre, then my application.
>>>>>>>=20
>>>>>>> We use just iw & wpa-supplicant and set up the configuration
>>>>>>> files manually (e.g. the wpa-supplicant configurations).
>>>>>>=20
>>>>>> Could you help with a little more details.  What I envision is =
adding an append statement of some kind to local.conf to load in the =
wireless related files to core-image-minimal,
>>>>>> same with openjdk-7-jre and tomcat7, but my first efforts have =
generated some unintelligible error for me.  So that=92s why I=92m =
looking for direction on where to start with this.
>>>>>=20
>>>>> What was the error you got?  I'll bet it was for 'iw' which
>>>>> is a package from meta-oe, so you'll need to add that layer
>>>>>=20
>>>>> Once you've added the meta-oe layer, you should be able to
>>>>> put this line in your local.conf:
>>>>> CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant=94
>>>>>=20
>>>> Okay, what I don=92t get is the fact that without any additional =
layers, bitbake core-image-sato builds all the WiFi features I need.  =
bitbake core-image-minimal does not.  So I=92m
>>>> thinking that there is some CORE_IMAGE_EXTRA_INSTALL statement that =
can just add what is needed without extra layers.
>>>>=20
>>>> I guess it just doesn=92t make sense to me right now.
>>>=20
>>> Try using
>>> CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
>>> which will bring in 'wireless-tools' and 'wpa-supplicant'.
>>>=20
>>> I prefer 'iw' to 'wireless-tools' as it is newer and [IMO]
>>> simpler to use.
>>>=20
>> Thanks, I found that I can clean build with just the wpa-supplicant =
added and I=92m hoping that will bring in the wifi drivers.  If it does, =
all I want to do is edit the /etc/interfaces file with the Static IP of =
the wlan0, the static IP of the eth0 and the wpa-xxx for the WKPA2_PSK =
information. =20
>>=20
>> Do I really need the tools?  I don=92t need CLI commands to change =
any network parameters later.
>>=20
>> Jim A
>>=20
>>> --=20
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>> --=20
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_95480C4B-0E1A-48E4-9A00-1A6C63D875E7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><br><div><div>On 26 Jan 2015, at 19:31, James =
Abernathy &lt;<a =
href=3D"mailto:jfabernathy@outlook.com">jfabernathy@outlook.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">I get a clean build when I add:&nbsp;CORE_IMAGE_EXTRA_INSTALL =
+=3D " packagegroup-base-wifi=94<div class=3D""><br class=3D""></div><div =
class=3D"">However, I have no wireless drivers. &nbsp;I must have to add =
something to add the drivers and firmware to the kernel. &nbsp;Not sure =
what though.</div></div></blockquote><div><br></div><div>I'm not an =
expert here, but I think that adding kernel-modules and linux-firmware =
to your extra_install should give you what you =
need.</div><div><br></div><blockquote type=3D"cite"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D""><div class=3D""><br =
class=3D""></div><div class=3D"">Jim A</div><div class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Jan 26, 2015, at 11:09 AM, James Abernathy &lt;<a =
href=3D"mailto:jfabernathy@outlook.com" =
class=3D"">jfabernathy@outlook.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><blockquote =
type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><br class=3D"Apple-interchange-newline">On Jan 26, 2015, at =
10:52 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" =
class=3D"">gary@mlbassoc.com</a>&gt; wrote:<br class=3D""><br =
class=3D"">On 2015-01-26 08:26, James Abernathy wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D""><blockquote=
 type=3D"cite" class=3D"">On Jan 26, 2015, at 8:49 AM, Gary Thomas =
&lt;<a href=3D"mailto:gary@mlbassoc.com" class=3D"">gary@mlbassoc.com</a> =
&lt;<a href=3D"mailto:gary@mlbassoc.com" =
class=3D"">mailto:gary@mlbassoc.com</a>&gt;&gt; wrote:<br class=3D""><br =
class=3D"">On 2015-01-26 06:29, James Abernathy wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D""><blockquote=
 type=3D"cite" class=3D"">On Jan 23, 2015, at 12:37 PM, Gary Thomas =
&lt;<a href=3D"mailto:gary@mlbassoc.com" class=3D"">gary@mlbassoc.com</a> =
&lt;<a href=3D"mailto:gary@mlbassoc.com" =
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
 style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">Thanks, I found that I can clean build with just =
the wpa-supplicant added and I=92m hoping that will bring in the wifi =
drivers. &nbsp;If it does, all I want to do is edit the /etc/interfaces =
file with the Static IP of the wlan0, the static IP of the eth0 and the =
wpa-xxx for the WKPA2_PSK information. &nbsp;</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family:=
 Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">Do I really need the tools? &nbsp;I don=92t need =
CLI commands to change any network parameters later.</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family:=
 Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">Jim A</span><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">--<span class=3D"Apple-converted-space">&nbsp;</span><br =
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
class=3D""></blockquote><br style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">yocto mailing list</span><br style=3D"font-family:=
 Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></div></div>-- =
<br>_______________________________________________<br>yocto mailing =
list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https=
://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br><div =
apple-content-edited=3D"true">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div =
style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><div style=3D"color: rgb(0, 0, 0); letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><div =
style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; border-spacing: 0px;"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: =
after-white-space;"><div>--</div><div><br></div><div>Chris =
Tapp</div><div><a =
href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><=
div><a =
href=3D"http://www.keylevel.com">www.keylevel.com</a></div><div><br></div>=
<div>----</div><div>You can tell you're getting older when your car =
insurance gets real cheap!</div></div></span></div></div></div></div>
</div>
<br></body></html>=

--Apple-Mail=_95480C4B-0E1A-48E4-9A00-1A6C63D875E7--
