Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0638E005A9; Wed,  7 Jan 2015 11:49:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [69.241.105.242 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D240AE002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 11:49:06 -0800 (PST)
Received: by mail-pd0-f177.google.com with SMTP id ft15so6531155pdb.8
	for <yocto@yoctoproject.org>; Wed, 07 Jan 2015 11:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=NogY24yXCQQLEUa42dYJ5tiP2W3MYAdN3+mIG9huooU=;
	b=Ob/gacz2y6OOPUEICThBgYSd+RFUlZrsmJlgrLHLc+hAWgs4ZaIXT/ahBVqFG05NKN
	BRGorCxXLaQ1nOtC2OTkW4WbjVoAmCGt4d8yXcbTnTy6G/j/3a+R3f0uTeNnFuoJTtKh
	ohXdRJ/gcpQKkdF+woB2MS2MW0PV+i8VesXtj+zLG7Sq/Nz+1Y6ttD3t0kK9sM+ry2Ct
	hZwfa5J1XqGJ+8i2EjE1Ahdp6q7MjW0aXy1WcrjSeb06U909QxUckTCMv0dA3DQ7XUut
	2fmmU1iEDrX+HR/WvcEvv65/W/O4ME1pLBEj4+Jxf8MkwvNYlhq4/x8pbR/tPrEK73hL
	aThA==
X-Received: by 10.66.184.48 with SMTP id er16mr8236324pac.61.1420660146131;
	Wed, 07 Jan 2015 11:49:06 -0800 (PST)
Received: from 10.177.194.201-ra01.everett.wa.seattle.comcast.net
	(fw01.everett.wa.seattle.comcast.net. [69.241.105.242])
	by mx.google.com with ESMTPSA id qp4sm2508571pbc.63.2015.01.07.11.49.04
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 07 Jan 2015 11:49:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAPbeDCmL40fUQ0zLr7xGR=UraZhDEMCjTSHS1eps4wLWH6_1hg@mail.gmail.com>
Date: Wed, 7 Jan 2015 11:49:03 -0800
Message-Id: <40D3BB2A-822B-4A02-B01D-D695CB02F09C@gmail.com>
References: <CAE_REAuUO358xnPwCcaApwwcz_vb3sW60bouATcV4xBu_riAOg@mail.gmail.com>
	<573D0D80-1040-45E4-A918-32324FFAE45D@gmail.com>
	<CAPbeDCmL40fUQ0zLr7xGR=UraZhDEMCjTSHS1eps4wLWH6_1hg@mail.gmail.com>
To: Jacob Kroon <jacob.kroon@gmail.com>
X-Mailer: Apple Mail (2.1993)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Want to add native-gcc in SDK tar ball
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
X-List-Received-Date: Wed, 07 Jan 2015 19:49:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_69367927-0379-480C-A99C-7CB4D1184988"

--Apple-Mail=_69367927-0379-480C-A99C-7CB4D1184988
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jan 7, 2015, at 10:52 AM, Jacob Kroon <jacob.kroon@gmail.com> =
wrote:
>=20
> On Wed, Jan 7, 2015 at 7:36 PM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
>=20
>> On Jan 7, 2015, at 6:57 AM, Gaurang Shastri <gmshastri@gmail.com =
<mailto:gmshastri@gmail.com>> wrote:
>>=20
>> Hi,
>>=20
>> Has anyone try to add native-gcc as part of SDK tarball ? Is it =
possible ?
>>=20
>> My aim is to have "gcc" (along with cross-gcc) as part of SDK.=20
>=20
> you can add tools-dk to EXTRA_IMAGE_FEATURES in local.conf or some =
other
> config metadata
> then bitbake -cpopulate_sdk <your image>
>=20
>=20
> I thought "tools-sdk" was for enabling compiling natively on $MACHINE =
?
> This request seems to be about getting a gcc for compiling natively on =
$SDKMACHINE, would "tools-sdk" help here too ?
>=20

ah I oversaw the message after native gcc and mistook it for SDK on =
device. Well, I think you need to start with writing nativesdk recipes =
for gcc in order to get this done


--Apple-Mail=_69367927-0379-480C-A99C-7CB4D1184988
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 7, 2015, at 10:52 AM, Jacob Kroon &lt;<a =
href=3D"mailto:jacob.kroon@gmail.com" =
class=3D"">jacob.kroon@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><div class=3D"gmail_quote">On Wed, =
Jan 7, 2015 at 7:36 PM, Khem Raj <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" =
class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
style=3D"word-wrap:break-word" class=3D""><br class=3D""><div =
class=3D""><span class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 7, 2015, at 6:57 AM, Gaurang Shastri &lt;<a =
href=3D"mailto:gmshastri@gmail.com" target=3D"_blank" =
class=3D"">gmshastri@gmail.com</a>&gt; wrote:</div><br class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><div =
class=3D""><div class=3D"">Hi,<br class=3D""><br class=3D""></div>Has =
anyone try to add native-gcc as part of SDK tarball ? Is it possible =
?<br class=3D""><br class=3D""></div>My aim is to have "gcc" (along with =
cross-gcc) as part of SDK. <br =
class=3D""></div></div></div></blockquote><div class=3D""><br =
class=3D""></div></span><div class=3D"">you can add tools-dk =
to&nbsp;<span style=3D"font-family:'Liberation Mono'" =
class=3D"">EXTRA_IMAGE_FEATURES in&nbsp;</span><font face=3D"Liberation =
Mono" class=3D"">local.conf or some other</font></div><div =
class=3D""><font face=3D"Liberation Mono" class=3D"">config =
metadata</font></div>then bitbake -cpopulate_sdk &lt;your =
image&gt;</div><div class=3D""><br class=3D""></div></div></blockquote><br=
 class=3D""></div>I thought "tools-sdk" was for enabling compiling =
natively on $MACHINE ?<br class=3D""></div><div class=3D"gmail_extra">This=
 request seems to be about getting a gcc for compiling natively on =
$SDKMACHINE, would "tools-sdk" help here too ?<br class=3D""><br =
class=3D""></div></div>
</div></blockquote></div><br class=3D""><div class=3D"">ah I oversaw the =
message after native gcc and mistook it for SDK on device. Well, I think =
you need to start with writing nativesdk recipes for gcc in order to get =
this done</div><div class=3D""><br class=3D""></div></body></html>=

--Apple-Mail=_69367927-0379-480C-A99C-7CB4D1184988--
