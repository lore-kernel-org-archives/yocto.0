Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 706CDE00AD8; Wed, 22 Jun 2016 13:37:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B18E00A6D
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:37:22 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id c74so4835941pfb.0
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 13:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=u6LTkqLINZvAjxGMiF5FZjy5yXKL3ZfNeI1SWbQOXbI=;
	b=GBKTYBWSNBub5ioJ4bMrl4+7VIvUqpzfG8giz2FRuxscYI2f78JDp+jRvo90tgZVrG
	y+qRlWS1rza4MWHznbnNgSiMKQxL8MoLWzT0gGtROIvipXpIWeOuiioRKBsxmeof8fww
	0xjn/v1nW07jHFoeShGjrQzU71THCdEtRoTU+hNoYtmfoWcdROVexUVO8ZQ0XQbU+Xic
	gjxBtU2SLueYx7B/15GGlxZJoF1IYNMr/F6vZDpHGB6++5R+8rzE8xm6YDLqzj/l50zF
	SdOAI0FqxmSR0YfhKjfgCrbgBQRQ7m5ZLW5+Al1lQbSAJsdk26YpDAAoh0oncq95y0GG
	YF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=u6LTkqLINZvAjxGMiF5FZjy5yXKL3ZfNeI1SWbQOXbI=;
	b=G/7oSL9fbDjjtzEJf54qF28SSfK9Qz9FTXvSIre7y05jYYEx3NinIDH/icqRs/lUDs
	27YWzIr9uN3diBT1Z1urIzh5kc2BTIrlgBKWIXPUWkFQrh2LAuMwl5zuP7y2aCXtl4/C
	FsMuj5w/4NehK8LLCBN7tlGpXu0vGiI3Y7YLRV5eRVtI50X4ah/27rOc0C5uelZ9OmQn
	WR4YXCtznnBFdvR1OAx59YrF28YBJsKIGG8VhxpLfc2Q/ByyodSNFsG/E69OWf0ASEQJ
	JO5xrCUMLJW9GCSXoetMEZCGuDGMBkS5SNgYSP+F7t6XShV/3AIfm2vk3AReifnsYxrg
	JGLQ==
X-Gm-Message-State: ALyK8tJaPAI+DoJ0SjsblaM5I206ZjCMgIZpvXM7fLu4mczEJU7FxRiXXo2kEbA486ygrA==
X-Received: by 10.98.216.199 with SMTP id e190mr37174237pfg.76.1466627842535; 
	Wed, 22 Jun 2016 13:37:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:115c:c15d:825f:58bc:113e?
	([2601:647:4c00:115c:c15d:825f:58bc:113e])
	by smtp.gmail.com with ESMTPSA id o6sm1929915pax.9.2016.06.22.13.37.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Jun 2016 13:37:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA600F4D@RCHEXMBP1.fnc.net.local>
Date: Wed, 22 Jun 2016 13:37:16 -0700
Message-Id: <8C92B09D-3FC8-4F39-9EF6-8047C6A40378@gmail.com>
References: <111ACD726EC3464BAED310F5EA7BEBDA600CE1@RCHEXMBP1.fnc.net.local>
	<CAJTo0LYWdLr=uBy_vZ9GeiNQhxjRZbYubNSCzfOd3dFFDfJ-og@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600E27@RCHEXMBP1.fnc.net.local>
	<CAJTo0La0PcLZtTbozgspB9nr6O81aq5rpjcHekiCQ2kZWYbAtg@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600F04@RCHEXMBP1.fnc.net.local>
	<CAJTo0LYBMWTkE4HzLxgwZf_ewkEOZeVnMJ_EOqQ6NypwSJro-A@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600F4D@RCHEXMBP1.fnc.net.local>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error applying patch - openvswitch
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
X-List-Received-Date: Wed, 22 Jun 2016 20:37:26 -0000
X-Groupsio-MsgNum: 30717
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8896D1F9-E0C2-4ABB-AF3D-3BBABB7A58DA";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8896D1F9-E0C2-4ABB-AF3D-3BBABB7A58DA
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FE6F374A-597E-4421-BA90-63989C929D86"

--Apple-Mail=_FE6F374A-597E-4421-BA90-63989C929D86
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

this patch is empty. Secondly, make sure that patch is generated =
relative to S

if you were not doing devtool workflow which I recommend to follow. You =
can also go into the ${S}
and generate the patch using quilt.

quilt new your.patch
quilt add ofproto.c
make changes to ofproto.c
quilt refresh
then copy patches/your.patch to metadata area and apply it by adding it =
to SRC_URI

> On Jun 22, 2016, at 1:24 PM, Rajasekaran, Monica =
<Monica.Rajasekaran@us.fujitsu.com> wrote:
>=20
> Hi Ross,
>=20
> I have attached the related files.
>=20
> openvswitch_2.0.0.bb is the recipe file and I have included my patch =
there as file://openvswitch-Firsttt.patch;patch=3D1 \ =
<file://///openvswitch-Firsttt.patch;patch=3D1%20/>.
>=20
> openvswitch-Firsttt.patch is my patch file.
>=20
> Ofproto.c is the original code.
>=20
> Ofproto_updated.c is the one with a couple of my changes and print =
statements.
>=20
> Thanks,
> Monica
>=20
> From: Burton, Ross [mailto:ross.burton@intel.com =
<mailto:ross.burton@intel.com>]
> Sent: Wednesday, June 22, 2016 3:16 PM
> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com =
<mailto:Monica.Rajasekaran@us.fujitsu.com>>
> Cc: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Subject: Re: [yocto] Error applying patch - openvswitch
>=20
> Without sharing your recipe or the patch, nobody can help.  Check that =
the SRC_URI correctly contains the patch, that it ends with .patch or =
.diff to be applied as a patch automatically, and verify that you =
actually rebuilt the recipe.
>=20
> Ross
>=20
> On 22 June 2016 at 21:07, Rajasekaran, Monica =
<Monica.Rajasekaran@us.fujitsu.com =
<mailto:Monica.Rajasekaran@us.fujitsu.com>> wrote:
> The folders in tmp/work on my source machine don=E2=80=99t have =
today=E2=80=99s date as last modified.
>=20
> Hmm=E2=80=A6 I don=E2=80=99t know what might be the mistake with =
applying the patch.
>=20
> Thanks,
> Monica
>=20
> From: Burton, Ross [mailto:ross.burton@intel.com =
<mailto:ross.burton@intel.com>]
> Sent: Wednesday, June 22, 2016 2:18 PM
> To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com =
<mailto:Monica.Rajasekaran@us.fujitsu.com>>
> Cc: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Subject: Re: [yocto] Error applying patch - openvswitch
>=20
>=20
> On 22 June 2016 at 19:25, Rajasekaran, Monica =
<Monica.Rajasekaran@us.fujitsu.com =
<mailto:Monica.Rajasekaran@us.fujitsu.com>> wrote:
> After applying the patches, I brought up my openvswitch which works =
correctly alongside the controller but I don=E2=80=99t see any of the =
print statements I added to view the changes inside. Is there a way to =
check the updated source code with my patch in the target machine ?
>=20
> Not really, but looking in the work directory (tmp/work) will tell you =
if it got applied.
>=20
> Ross
>=20
> =
<openvswitch_2.0.0.bb><openvswitch-Firsttt.patch><ofproto_updated.c><ofpro=
to.c>--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_FE6F374A-597E-4421-BA90-63989C929D86
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">this patch is empty. Secondly, make sure that patch is =
generated relative to S<div class=3D""><br class=3D""></div><div =
class=3D"">if you were not doing devtool workflow which I recommend to =
follow. You can also go into the ${S}</div><div class=3D"">and generate =
the patch using quilt.</div><div class=3D""><br class=3D""></div><div =
class=3D"">quilt new your.patch</div><div class=3D"">quilt add =
ofproto.c</div><div class=3D"">make changes to ofproto.c</div><div =
class=3D"">quilt refresh</div><div class=3D"">then copy =
patches/your.patch to metadata area and apply it by adding it to =
SRC_URI</div><div class=3D""><br class=3D""><div><blockquote type=3D"cite"=
 class=3D""><div class=3D"">On Jun 22, 2016, at 1:24 PM, Rajasekaran, =
Monica &lt;<a href=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" =
class=3D"">Monica.Rajasekaran@us.fujitsu.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;"><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">Hi Ross,<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">I have attached the =
related files.<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">openvswitch_2.0.0.bb is =
the recipe file and I have included my patch there as<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"file://///openvswitch-Firsttt.patch;patch=3D1%20/" style=3D"color:=
 purple; text-decoration: underline;" =
class=3D"">file://openvswitch-Firsttt.patch;patch=3D1 \</a>.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">openvswitch-Firsttt.patch=
 is my patch file.<o:p class=3D""></o:p></span></div><div style=3D"margin:=
 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">Ofproto.c is the =
original code.<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">Ofproto_updated.c is =
the one with a couple of my changes and print statements.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><i class=3D""><span style=3D"font-size: 11pt; font-family: =
Calibri, sans-serif; color: rgb(31, 73, 125);" class=3D"">Thanks,<o:p =
class=3D""></o:p></span></i></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><i class=3D""><span style=3D"font-size: 11pt; font-family: =
Calibri, sans-serif; color: rgb(31, 73, 125);" class=3D"">Monica<o:p =
class=3D""></o:p></span></i></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><b class=3D""><span style=3D"font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">From:</span></b><span style=3D"font-size:=
 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>Burton, Ross [<a =
href=3D"mailto:ross.burton@intel.com" style=3D"color: purple; =
text-decoration: underline;" =
class=3D"">mailto:ross.burton@intel.com</a>]<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><b =
class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Wednesday, June 22, 2016 =
3:16 PM<br class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Rajasekaran, Monica &lt;<a =
href=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" style=3D"color: =
purple; text-decoration: underline;" =
class=3D"">Monica.Rajasekaran@us.fujitsu.com</a>&gt;<br class=3D""><b =
class=3D"">Cc:</b><span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" class=3D"">yocto@yoctoproject.org</a><br =
class=3D""><b class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Re: [yocto] Error applying =
patch - openvswitch<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D"">Without sharing your =
recipe or the patch, nobody can help.&nbsp; Check that the SRC_URI =
correctly contains the patch, that it ends with .patch or .diff to be =
applied as a patch automatically, and verify that you actually rebuilt =
the recipe.<o:p class=3D""></o:p></div><div class=3D""><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D"">Ross<o:p class=3D""></o:p></div></div></div><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div class=3D""><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D"">On 22 June 2016 at 21:07, Rajasekaran, Monica &lt;<a =
href=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" target=3D"_blank" =
style=3D"color: purple; text-decoration: underline;" =
class=3D"">Monica.Rajasekaran@us.fujitsu.com</a>&gt; wrote:<o:p =
class=3D""></o:p></div><blockquote style=3D"border-style: none none none =
solid; border-left-color: rgb(204, 204, 204); border-left-width: 1pt; =
padding: 0in 0in 0in 6pt; margin: 5pt 0in 5pt 4.8pt;" class=3D""><div =
class=3D""><div class=3D""><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">The folders in tmp/work on my source =
machine don=E2=80=99t have today=E2=80=99s date as last =
modified.</span><o:p class=3D""></o:p></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">&nbsp;</span><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">Hmm=E2=80=A6 I don=E2=80=99t know what =
might be the mistake with applying the patch.</span><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><i =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">Thanks,</span></i><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><i =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">Monica</span></i><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><b =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D"">From:</span></b><span style=3D"font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>Burton, Ross =
[mailto:</span><a href=3D"mailto:ross.burton@intel.com" target=3D"_blank" =
style=3D"color: purple; text-decoration: underline;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">ross.burton@intel.com</span></a><span style=3D"font-size: =
11pt; font-family: Calibri, sans-serif;" class=3D"">]<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><b =
class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Wednesday, June 22, 2016 =
2:18 PM<br class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Rajasekaran, Monica =
&lt;</span><a href=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" =
target=3D"_blank" style=3D"color: purple; text-decoration: underline;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D"">Monica.Rajasekaran@us.fujitsu.com</span></a><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">&gt;<br class=3D""><b class=3D"">Cc:</b><span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" style=3D"color: =
purple; text-decoration: underline;" class=3D""><span style=3D"font-size: =
11pt; font-family: Calibri, sans-serif;" =
class=3D"">yocto@yoctoproject.org</span></a><span style=3D"font-size: =
11pt; font-family: Calibri, sans-serif;" class=3D""><br class=3D""><b =
class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Re: [yocto] Error applying =
patch - openvswitch</span><o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D"">&nbsp;<o:p class=3D""></o:p></div><div =
class=3D""><div class=3D""><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D"">&nbsp;<o:p class=3D""></o:p></div><div class=3D""><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D"">On 22 June 2016 at 19:25, Rajasekaran, =
Monica &lt;<a href=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" =
target=3D"_blank" style=3D"color: purple; text-decoration: underline;" =
class=3D"">Monica.Rajasekaran@us.fujitsu.com</a>&gt; wrote:<o:p =
class=3D""></o:p></div><div class=3D""><div class=3D""><blockquote =
style=3D"border-style: none none none solid; border-left-color: rgb(204, =
204, 204); border-left-width: 1pt; padding: 0in 0in 0in 6pt; margin: 5pt =
0in 5pt 4.8pt;" class=3D""><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">After applying the patches, I brought up =
my openvswitch which works correctly alongside the controller but I =
don=E2=80=99t see any of the print statements I added to view the =
changes inside. Is there a way to check the updated source code with my =
patch in the target machine ?</span><o:p =
class=3D""></o:p></div></blockquote></div></div></div><div class=3D""><div=
 class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><br class=3D"">Not =
really, but looking in the work directory (tmp/work) will tell you if it =
got applied.<o:p class=3D""></o:p></div></div></div></div><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D"">&nbsp;<o:p =
class=3D""></o:p></div></div><div class=3D""><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D"">Ross<o:p =
class=3D""></o:p></div></div></div></div></div></blockquote></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div></div><span =
id=3D"cid:6BF8C0E6-D90F-47FA-8B89-EBEB63152F9B@hsd1.ca.comcast.net">&lt;op=
envswitch_2.0.0.bb&gt;</span><span =
id=3D"cid:7F895D88-D37A-41B2-A2A0-A757B0D928F1@hsd1.ca.comcast.net">&lt;op=
envswitch-Firsttt.patch&gt;</span><span =
id=3D"cid:620F44A2-65FB-4D90-9177-3D841F12CB1F@hsd1.ca.comcast.net">&lt;of=
proto_updated.c&gt;</span><span =
id=3D"cid:D99FF3D0-D81E-44EF-A814-B77771F22552@hsd1.ca.comcast.net">&lt;of=
proto.c&gt;</span><span style=3D"font-family: Times-Roman; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; =
display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Times-Roman; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
float: none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; font-family: Times-Roman; font-size: 14px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 style=3D"color: purple; text-decoration: underline; font-family: =
Times-Roman; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""></div></body></html>=

--Apple-Mail=_FE6F374A-597E-4421-BA90-63989C929D86--

--Apple-Mail=_8896D1F9-E0C2-4ABB-AF3D-3BBABB7A58DA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldq9wAACgkQuwUzVZGdMxRnsACglFQYmn+UjbIgQk+Cw2N6bWlQ
LLUAnj1uea6lhIKU4vUi/3y/bULO3fr+
=vLli
-----END PGP SIGNATURE-----

--Apple-Mail=_8896D1F9-E0C2-4ABB-AF3D-3BBABB7A58DA--
