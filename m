Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5D90E00988; Wed,  4 Feb 2015 04:36:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.111.81 listed in list.dnswl.org]
Received: from BLU004-OMC2S6.hotmail.com (blu004-omc2s6.hotmail.com
	[65.55.111.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 562F7E0097F
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 04:36:28 -0800 (PST)
Received: from BLU437-SMTP71 ([65.55.111.72]) by BLU004-OMC2S6.hotmail.com
	over TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751);
	Wed, 4 Feb 2015 04:36:27 -0800
X-TMN: [MDStZBLkI7CzisreWrx6W0kqgWun5nVe]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BLU437-SMTP718143271D06CCD988046BAE3A0@phx.gbl>
MIME-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: James Abernathy <jfabernathy@outlook.com>
In-Reply-To: <CAJTo0Lb5rbHBHm6hKtzQW1Xq2V5Y8sxGV=FkatkDF3FsL=C8HA@mail.gmail.com>
Date: Wed, 4 Feb 2015 07:36:27 -0500
References: <BAY169-W106583E852FA55C530E914CAE3D0@phx.gbl>
	<CAJTo0Lb5rbHBHm6hKtzQW1Xq2V5Y8sxGV=FkatkDF3FsL=C8HA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.2070.6)
X-OriginalArrivalTime: 04 Feb 2015 12:36:26.0048 (UTC)
	FILETIME=[30F65400:01D04077]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ACPI powerbtn
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
X-List-Received-Date: Wed, 04 Feb 2015 12:36:35 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3744533E-0B6E-4D5C-81C3-556E93829EA9"

--Apple-Mail=_3744533E-0B6E-4D5C-81C3-556E93829EA9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"


> On Feb 3, 2015, at 4:34 PM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 3 February 2015 at 21:30, Jim Abernathy <jfabernathy@outlook.com =
<mailto:jfabernathy@outlook.com>> wrote:
> I need to add something that will 'shutdown -h now' when the power =
button is pressed.  I would figure that ACPI is already included in the =
core-image-base of the NUC bsp.
>=20
> Do I need to include a new file in /etc/acpi/events or do I need to =
include some package?
>=20
> I'm literally signing off for the day but for what it's worth =
core-image-sato does that already on my NUC, so there must be something =
in that image that makes it work...  maybe acpid or acpi-support isn't =
part of core-image-base?
>=20
> Ross

I went back and built core-image-sato and the power button does nothing. =
 I don=E2=80=99t see anything in the /etc/acpi/events directory.  Same =
as core-image-base.

Jim A


--Apple-Mail=_3744533E-0B6E-4D5C-81C3-556E93829EA9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 3, 2015, at 4:34 PM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 3 February 2015 at 21:30, Jim Abernathy <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:jfabernathy@outlook.com" =
target=3D"_blank" class=3D"">jfabernathy@outlook.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D"">I need to add something that will 'shutdown -h now' when the =
power button is pressed.&nbsp; I would figure that ACPI is already =
included in the core-image-base of the NUC bsp.<br class=3D""><br =
class=3D"">Do I need to include a new file in /etc/acpi/events or do I =
need to include some package?</div></blockquote></div><div =
class=3D"gmail_extra"><br class=3D""></div>I'm literally signing off for =
the day but for what it's worth core-image-sato does that already on my =
NUC, so there must be something in that image that makes it work... =
&nbsp;maybe acpid or acpi-support isn't part of =
core-image-base?</div><div class=3D"gmail_extra"><br class=3D""></div><div=
 class=3D"gmail_extra">Ross</div></div>
</div></blockquote></div><br class=3D""><div class=3D"">I went back and =
built core-image-sato and the power button does nothing. &nbsp;I don=E2=80=
=99t see anything in the /etc/acpi/events directory. &nbsp;Same as =
core-image-base.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Jim A</div><div class=3D""><br class=3D""></div></body></html>=

--Apple-Mail=_3744533E-0B6E-4D5C-81C3-556E93829EA9--
