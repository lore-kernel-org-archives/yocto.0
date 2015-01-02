Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FAC3E008F6; Fri,  2 Jan 2015 12:20:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 490E9E0082F
	for <yocto@yoctoproject.org>; Fri,  2 Jan 2015 12:20:14 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:27850
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>)
	id 1Y78hc-004F00-FS; Fri, 02 Jan 2015 20:20:10 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAPbeDCn2hDGC0rum6qU2kZGT_LBG8V_9iB--yAT=S69m6aPocA@mail.gmail.com>
Date: Fri, 2 Jan 2015 20:20:07 +0000
Message-Id: <DADCC55B-9BE8-4662-9DB3-42AF16800D1E@keylevel.com>
References: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
	<CAPbeDCn2hDGC0rum6qU2kZGT_LBG8V_9iB--yAT=S69m6aPocA@mail.gmail.com>
To: Jacob Kroon <jacob.kroon@gmail.com>
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
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel configuration
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
X-List-Received-Date: Fri, 02 Jan 2015 20:20:19 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4175E09C-5ECF-4777-80F4-3DA968306B4F"

--Apple-Mail=_4175E09C-5ECF-4777-80F4-3DA968306B4F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On 2 Jan 2015, at 16:26, Jacob Kroon <jacob.kroon@gmail.com> wrote:

> Hi Chris,
>=20
> On Fri, Jan 2, 2015 at 3:52 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
> I thought I knew how to do this, but... ;-)
>=20
> I'm trying to add configuration items to the valleyisland BSP. I've =
got the following bbappend:
>=20
> File: linux-yocto_3.10.bbappend
> -------
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> SRC_URI +=3D " file://enable-hid-apple.cfg"
> SRC_URI +=3D " file://enable-R8169.cfg"
>=20
> However, these .cfg fragments aren't even getting pulled into the =
build area.
>=20
> Adding a reference to a non-existent file is ignored when I would have =
expected to see a fetch error
>=20
> SRC_URI +=3D "file://fsdfsdfdsfsd"
>=20
> What else do I need to do to get my .cfg files pulled in?
>=20
> =20
> How does your layer.conf look like ? Especially, do you have the =
*.bbappend files added to BBFILES ?=20

The bbappend is being found as adding invalid content to it produces a =
parsing error.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


--Apple-Mail=_4175E09C-5ECF-4777-80F4-3DA968306B4F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><br><div><div>On 2 Jan 2015, at 16:26, Jacob Kroon =
&lt;<a href=3D"mailto:jacob.kroon@gmail.com">jacob.kroon@gmail.com</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr">Hi Chris,<br><br>On Fri, Jan 2, 2015 at =
3:52 PM, Chris Tapp <span dir=3D"ltr">&lt;<a =
href=3D"mailto:opensource@keylevel.com" =
target=3D"_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><div =
class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; =
border-left-width: 1px; border-left-style: solid; border-left-color: =
rgb(204, 204, 204); padding-left: 1ex; position: static; z-index: =
auto;">I thought I knew how to do this, but... ;-)<br>
<br>
I'm trying to add configuration items to the valleyisland BSP. I've got =
the following bbappend:<br>
<br>
File: linux-yocto_3.10.bbappend<br>
-------<br>
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"<br>
<br>
SRC_URI +=3D " <a =
href=3D"file:///enable-hid-apple.cfg">file://enable-hid-apple.cfg</a>"<br>=

SRC_URI +=3D " <a =
href=3D"file:///enable-R8169.cfg">file://enable-R8169.cfg</a>"<br>
<br>
However, these .cfg fragments aren't even getting pulled into the build =
area.<br>
<br>
Adding a reference to a non-existent file is ignored when I would have =
expected to see a fetch error<br>
<br>
SRC_URI +=3D "<a =
href=3D"file:///fsdfsdfdsfsd">file://fsdfsdfdsfsd</a>"<br>
<br>
What else do I need to do to get my .cfg files pulled in?<br>
<br></blockquote><div>&nbsp;</div><div>How does your layer.conf look =
like ? Especially, do you have the *.bbappend files added to BBFILES ? =
<br></div></div></div></div></blockquote><div><br></div><div>The =
bbappend is being found as adding invalid content to it produces a =
parsing error.</div></div><br><div apple-content-edited=3D"true">
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
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
Helvetica; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: =
0px;"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: =
after-white-space;"><div>--</div><div><br></div><div>Chris =
Tapp</div><div><a =
href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a></div><=
div><a =
href=3D"http://www.keylevel.com">www.keylevel.com</a></div><div><br></div>=
</div></span></div></div></div></div></div></body></html>=

--Apple-Mail=_4175E09C-5ECF-4777-80F4-3DA968306B4F--
