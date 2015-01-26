Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A657E00836; Mon, 26 Jan 2015 07:26:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.111.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BLU004-OMC2S14.hotmail.com (blu004-omc2s14.hotmail.com
	[65.55.111.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2056E006AF
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 07:26:19 -0800 (PST)
Received: from BLU436-SMTP61 ([65.55.111.73]) by BLU004-OMC2S14.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Mon, 26 Jan 2015 07:26:17 -0800
X-TMN: [vaN5hSZmm/YyZwFVHy8K3yowEN7rxBFk]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>
MIME-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: James Abernathy <jfabernathy@outlook.com>
In-Reply-To: <54C645E4.9090801@mlbassoc.com>
Date: Mon, 26 Jan 2015 10:26:14 -0500
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<54C286DC.2030708@mlbassoc.com>
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>
	<54C645E4.9090801@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1993)
X-OriginalArrivalTime: 26 Jan 2015 15:26:15.0539 (UTC)
	FILETIME=[6CA78430:01D0397C]
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 26 Jan 2015 15:26:36 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_CDCE3927-4CBC-4180-AB2D-8910A50444E9"

--Apple-Mail=_CDCE3927-4CBC-4180-AB2D-8910A50444E9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"


> On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>=20
> On 2015-01-26 06:29, James Abernathy wrote:
>>=20
>>> On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>=20
>>> On 2015-01-23 10:24, Jim Abernathy wrote:
>>>> I'm starting a project mostly for self-education.  I have already =
done the project using Ubuntu Server 14.04 using a Intel NUC and a =
Pandaboard as targets.  Now I want to see how
>>>> easy it is to move it to Yocto.
>>>>=20
>>>> Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal =
and core-image-sato, both built with bitbake and not the prebuilt =
images. However, core-image-minimal doesn't have
>>>> WiFi and core-image-sato does, but I don't need all the GUI stuff.  =
It's a headless application.
>>>>=20
>>>> So what is recommended; eliminating the GUI from sato or adding =
wifi and wpa-supplicant, etc to minimal??  Also any pointers to how to =
do the adding/subtracting would be most helpful.
>>>>=20
>>>> Once this is working all I have to do is put apache-tomcat, and =
openjdk-7-jre, then my application.
>>>=20
>>> We use just iw & wpa-supplicant and set up the configuration
>>> files manually (e.g. the wpa-supplicant configurations).
>>=20
>> Could you help with a little more details.  What I envision is adding =
an append statement of some kind to local.conf to load in the wireless =
related files to core-image-minimal, same with openjdk-7-jre and =
tomcat7, but my first efforts have generated some unintelligible error =
for me.  So that=E2=80=99s why I=E2=80=99m looking for direction on =
where to start with this.
>=20
> What was the error you got?  I'll bet it was for 'iw' which
> is a package from meta-oe, so you'll need to add that layer
>=20
> Once you've added the meta-oe layer, you should be able to
> put this line in your local.conf:
>  CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant=E2=80=9D
>=20
Okay, what I don=E2=80=99t get is the fact that without any additional =
layers, bitbake core-image-sato builds all the WiFi features I need.  =
bitbake core-image-minimal does not.  So I=E2=80=99m thinking that there =
is some CORE_IMAGE_EXTRA_INSTALL statement that can just add what is =
needed without extra layers. =20

I guess it just doesn=E2=80=99t make sense to me right now.

Jim A


> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_CDCE3927-4CBC-4180-AB2D-8910A50444E9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 26, 2015, at 8:49 AM, Gary Thomas &lt;<a =
href=3D"mailto:gary@mlbassoc.com" class=3D"">gary@mlbassoc.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">On 2015-01-26 06:29, James Abernathy =
wrote:</span><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">On =
Jan 23, 2015, at 12:37 PM, Gary Thomas &lt;<a =
href=3D"mailto:gary@mlbassoc.com" class=3D"">gary@mlbassoc.com</a>&gt; =
wrote:<br class=3D""><br class=3D"">On 2015-01-23 10:24, Jim Abernathy =
wrote:<br class=3D""><blockquote type=3D"cite" class=3D"">I'm starting a =
project mostly for self-education. &nbsp;I have already done the project =
using Ubuntu Server 14.04 using a Intel NUC and a Pandaboard as targets. =
&nbsp;Now I want to see how<br class=3D"">easy it is to move it to =
Yocto.<br class=3D""><br class=3D"">Starting with the NUC, I can boot =
Dizzy 1.7.1 core-image-minimal and core-image-sato, both built with =
bitbake and not the prebuilt images. However, core-image-minimal doesn't =
have<br class=3D"">WiFi and core-image-sato does, but I don't need all =
the GUI stuff. &nbsp;It's a headless application.<br class=3D""><br =
class=3D"">So what is recommended; eliminating the GUI from sato or =
adding wifi and wpa-supplicant, etc to minimal?? &nbsp;Also any pointers =
to how to do the adding/subtracting would be most helpful.<br =
class=3D""><br class=3D"">Once this is working all I have to do is put =
apache-tomcat, and openjdk-7-jre, then my application.<br =
class=3D""></blockquote><br class=3D"">We use just iw &amp; =
wpa-supplicant and set up the configuration<br class=3D"">files manually =
(e.g. the wpa-supplicant configurations).<br class=3D""></blockquote><br =
class=3D"">Could you help with a little more details. &nbsp;What I =
envision is adding an append statement of some kind to local.conf to =
load in the wireless related files to core-image-minimal, same with =
openjdk-7-jre and tomcat7, but my first efforts have generated some =
unintelligible error for me. &nbsp;So that=E2=80=99s why I=E2=80=99m =
looking for direction on where to start with this.<br =
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
none; display: inline !important;" class=3D"">What was the error you =
got? &nbsp;I'll bet it was for 'iw' which</span><br style=3D"font-family: =
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
!important;" class=3D"">is a package from meta-oe, so you'll need to add =
that layer</span><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">Once you've added the =
meta-oe layer, you should be able to</span><br style=3D"font-family: =
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
!important;" class=3D"">put this line in your local.conf:</span><br =
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
!important;" class=3D"">&nbsp;CORE_IMAGE_EXTRA_INSTALL +=3D " iw =
wpa-supplicant=E2=80=9D</span><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""></div></blockquote>Okay, what I don=E2=80=99t get is the fact =
that without any additional layers, bitbake core-image-sato builds all =
the WiFi features I need. &nbsp;bitbake core-image-minimal does not. =
&nbsp;So I=E2=80=99m thinking that there is some =
CORE_IMAGE_EXTRA_INSTALL statement that can just add what is needed =
without extra layers. &nbsp;</div><div><br class=3D""></div><div>I guess =
it just doesn=E2=80=99t make sense to me right now.</div><div><br =
class=3D""></div><div>Jim A</div><div><br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
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
class=3D"">------------------------------------------------------------</s=
pan><br style=3D"font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span=
 style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">Gary Thomas =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;| &nbsp;Consulting for the</span><br =
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
!important;" class=3D"">MLB Associates =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;| &nbsp;&nbsp;&nbsp;Embedded world</span><br style=3D"font-family: =
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
!important;" =
class=3D"">------------------------------------------------------------</s=
pan><br style=3D"font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span=
 style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
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
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D""><a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a></span><br style=3D"font-family: =
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
!important;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></span></div><=
/blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_CDCE3927-4CBC-4180-AB2D-8910A50444E9--
