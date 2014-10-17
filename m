Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60432E007B9; Fri, 17 Oct 2014 14:53:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6951E006EF
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 14:53:52 -0700 (PDT)
Received: from durham.keylevel.com ([88.97.63.243]:36651
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XfFSz-003k5p-Un; Fri, 17 Oct 2014 22:53:48 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CA+chaQcoC+SJNxhVLOH9E2He42DiBc_1M=AT4iz0YBtycZZQVw@mail.gmail.com>
Date: Fri, 17 Oct 2014 22:53:47 +0100
Message-Id: <4B77F48F-BBF9-4DCE-A146-BB72FA3BEAD6@keylevel.com>
References: <D8F05E17-2E19-41DC-ADDD-EB608B708A69@keylevel.com>
	<CA+chaQcoC+SJNxhVLOH9E2He42DiBc_1M=AT4iz0YBtycZZQVw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-3.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: DEFAULT_PREFERENCE not working as expected
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
X-List-Received-Date: Fri, 17 Oct 2014 21:53:57 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_97F91045-38F2-4A43-ABE3-266AAF74EDE3"

--Apple-Mail=_97F91045-38F2-4A43-ABE3-266AAF74EDE3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On 17 Oct 2014, at 22:37, Martin Jansa <martin.jansa@gmail.com> wrote:

> That's by (IMHO wrong) design:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2964

Thanks - I was wondering if layers had something to do with it.

> Instead of setting P_V 2.40 only for that single project which needs =
that newer libsoup, you need to set P_V to 2.38 for every other project =
which is using your layer.

I can work with that - the layer is being used to up-rev various recipes =
for bug fixes (e.g. bash) and to add later versions of things like =
gstreamer. It would be nice if the default was "keep it as is" with DP =
set to -1, but I think I'll need to create a distro to get that =
behaviour.

=46rom the link it looks as if layer priority may also be important, so =
I'll have a play with that when the current build finishes...

> On Fri, Oct 17, 2014 at 10:57 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
> I've got a layer that includes a recipe for libsoup at version 2.40.3 =
which sets DEFAULT_PREFERENCE =3D "-1".
>=20
> However, this version gets used when I build rather than the 2.38.? =
version in poky/meta (under danny). Why is this?
>=20
> --
>=20
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>=20
> ----
> You can tell you're getting older when your car insurance gets real =
cheap!
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_97F91045-38F2-4A43-ABE3-266AAF74EDE3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><br><div><div>On 17 Oct 2014, at 22:37, Martin Jansa =
&lt;<a =
href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr"><div>That's by (IMHO wrong) =
design:</div><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2964">https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D2964</a><br></div></blockquote=
><div><br></div><div>Thanks - I was wondering if layers had something to =
do with it.</div><br><blockquote type=3D"cite"><div =
dir=3D"ltr"><div>Instead of setting P_V 2.40 only for that single =
project which needs that newer libsoup, you need to set P_V to 2.38 for =
every other project which is using your =
layer.</div></div></blockquote><div><br></div><div>I can work with that =
- the layer is being used to up-rev various recipes for bug fixes (e.g. =
bash) and to add later versions of things like gstreamer. It would be =
nice if the default was "keep it as is" with DP set to -1, but I think =
I'll need to create a distro to get that =
behaviour.</div><div><br></div><div>=46rom the link it looks as if layer =
priority may also be important, so I'll have a play with that when the =
current build finishes...</div><br><blockquote type=3D"cite"><div =
class=3D"gmail_extra">On Fri, Oct 17, 2014 at 10:57 PM, Chris Tapp <span =
dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keylevel.com" =
target=3D"_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I've got a layer =
that includes a recipe for libsoup at version 2.40.3 which sets =
DEFAULT_PREFERENCE =3D "-1".<br>
<br>
However, this version gets used when I build rather than the 2.38.? =
version in poky/meta (under danny). Why is this?<br>
<br>
--<br>
<br>
Chris Tapp<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>=

<a href=3D"http://www.keylevel.com/" =
target=3D"_blank">www.keylevel.com</a><br>
<br>
----<br>
You can tell you're getting older when your car insurance gets real =
cheap!<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>
</blockquote></div><br><div apple-content-edited=3D"true">
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

--Apple-Mail=_97F91045-38F2-4A43-ABE3-266AAF74EDE3--
