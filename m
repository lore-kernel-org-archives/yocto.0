Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E928AE006EA; Sat, 14 Jan 2017 11:49:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16EDFE004E5
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:49:54 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP; 14 Jan 2017 11:49:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208,217";a="53058968"
Received: from oamoraso-mobl.amr.corp.intel.com ([10.254.1.5])
	by orsmga005.jf.intel.com with ESMTP; 14 Jan 2017 11:49:53 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
Message-Id: <6694C76C-B48D-48A1-AEFB-A3B458279EC6@linux.intel.com>
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Sat, 14 Jan 2017 11:49:55 -0800
In-Reply-To: <656A5471-015B-4BE2-BEDA-7B9C98423EB8@sentientblue.com>
To: Roger Smith <roger@sentientblue.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
	<CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
	<448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
	<a0f910e1-e4e3-a36c-54f8-029cd72bae83@windriver.com>
	<23A9A636-C738-4FF6-962F-DCDC107A7AA8@bmw-carit.de>
	<656A5471-015B-4BE2-BEDA-7B9C98423EB8@sentientblue.com>
X-Mailer: Apple Mail (2.3259)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Sat, 14 Jan 2017 19:49:56 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_81776E31-6926-4FF8-851C-B9BC80B26162"

--Apple-Mail=_81776E31-6926-4FF8-851C-B9BC80B26162
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 14, 2017, at 11:45 AM, Roger Smith <roger@sentientblue.com> =
wrote:
>=20
>>=20
>> On Jan 13, 2017, at 12:50 AM, Clemens Lang =
<Clemens.Lang@bmw-carit.de> wrote:
>>=20
>> Hi,
>>=20
>>=20
>>> On 12 Jan 2017, at 23:59, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>>>=20
>>> As far as I know pseudo and the security introduced in 10.11 that =
affect
>>> preloading is likely the biggest technical problem... everything =
else is just
>>> "it's not Linux=E2=80=9D.
>>=20
>> With System Integrity Protection disabled, pseudo should still work =
as it did before, if that=E2=80=99s an acceptable step for you.
>>=20
>> If it isn=E2=80=99t, Apple=E2=80=99s new limitations can also be =
worked around in pseudo by hooking the exec(2) and posix_spawn(2) =
syscalls, checking if the binary to be executed is under system =
integrity protection, making a copy without the SIP-bit if it is and =
transparently running that copy instead. That code would need to be =
written, though (Let me know if you want to do that, I have the code for =
a different project.). It=E2=80=99s probably only a matter of time until =
Apple prevents that from working, too, though, e.g. by making some =
standard system tools signed binaries that no longer load preloaded =
libraries.
>>=20
>>=20
>=20
>=20
> This topic could have been clarified better, since there are multiple =
ways to =E2=80=9Cbuild=E2=80=9D Yocto Project in  MacOS X,
>=20
> Is Building Yocto project on a POSIX system, a desire for the Yocto =
project? It would allow support on all bsd UNIX=E2=80=99s including =
macOS
>=20

Many of us use Mac laptops for development, so I think the answer is =
yes. As Mark mentioned, it has been an issue of time and resources. We =
would welcome patches :)

>=20
> There are many teams inside Apple that use Linux systems for one =
reason or another. They would appreciate  building open source tools out =
the door without some other additional overhead..=20
>=20
> Replacing a platforms POSIX version of tools with gnu versions  =
because your build environment didn=E2=80=99t like it, seems like a step =
backwards for these types of initiatives.=20
>=20
> Curious to know about long term support for POSIX systems.=20
>=20
> Apple spent alot of time and effor years ago to vertify OS X as POSIX =
compliant.
>=20
> Roger
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_81776E31-6926-4FF8-851C-B9BC80B26162
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 14, 2017, at 11:45 AM, Roger Smith &lt;<a =
href=3D"mailto:roger@sentientblue.com" =
class=3D"">roger@sentientblue.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><blockquote =
type=3D"cite" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D""><br =
class=3D"Apple-interchange-newline">On Jan 13, 2017, at 12:50 AM, =
Clemens Lang &lt;<a href=3D"mailto:Clemens.Lang@bmw-carit.de" =
class=3D"">Clemens.Lang@bmw-carit.de</a>&gt; wrote:<br class=3D""><br =
class=3D"">Hi,<br class=3D""><br class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D"">On 12 Jan 2017, at 23:59, Mark Hatle &lt;<a =
href=3D"mailto:mark.hatle@windriver.com" =
class=3D"">mark.hatle@windriver.com</a>&gt; wrote:<br class=3D""><br =
class=3D"">As far as I know pseudo and the security introduced in 10.11 =
that affect<br class=3D"">preloading is likely the biggest technical =
problem... everything else is just<br class=3D"">"it's not Linux=E2=80=9D.=
<br class=3D""></blockquote><br class=3D"">With System Integrity =
Protection disabled, pseudo should still work as it did before, if =
that=E2=80=99s an acceptable step for you.<br class=3D""><br class=3D"">If=
 it isn=E2=80=99t, Apple=E2=80=99s new limitations can also be worked =
around in pseudo by hooking the exec(2) and posix_spawn(2) syscalls, =
checking if the binary to be executed is under system integrity =
protection, making a copy without the SIP-bit if it is and transparently =
running that copy instead. That code would need to be written, though =
(Let me know if you want to do that, I have the code for a different =
project.). It=E2=80=99s probably only a matter of time until Apple =
prevents that from working, too, though, e.g. by making some standard =
system tools signed binaries that no longer load preloaded libraries.<br =
class=3D""><br class=3D""><br class=3D""></blockquote><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">This topic could have been clarified =
better, since there are multiple ways to =E2=80=9Cbuild=E2=80=9D Yocto =
Project in &nbsp;MacOS X,</span><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">Is Building Yocto project on a POSIX system, a =
desire for the Yocto project? It would allow support on all bsd UNIX=E2=80=
=99s including macOS</span><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""></div></blockquote><div><br class=3D""></div>Many of us use =
Mac laptops for development, so I think the answer is yes. As Mark =
mentioned, it has been an issue of time and resources. We would welcome =
patches :)</div><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">There are many teams inside Apple that =
use Linux systems for one reason or another. They would appreciate =
&nbsp;building open source tools out the door without some other =
additional overhead..<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">Replacing a platforms POSIX version of =
tools with gnu versions &nbsp;because your build environment didn=E2=80=99=
t like it, seems like a step backwards for these types of =
initiatives.<span class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">Curious to know about long term support =
for POSIX systems.<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">Apple spent alot of time and effor years =
ago to vertify OS X as POSIX compliant.</span><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">Roger</span><br style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><span =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D"">yocto@yoctoproject.org</a><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></body></html>=

--Apple-Mail=_81776E31-6926-4FF8-851C-B9BC80B26162--
