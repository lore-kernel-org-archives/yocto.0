Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3121CE00C66; Wed,  3 Feb 2016 18:26:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE4FEE00C61
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 18:26:45 -0800 (PST)
Received: by mail-pf0-f172.google.com with SMTP id o185so27192499pfb.1
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 18:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Nh8VTUZzv+5FTjr80nDamJpcpV0a83fHOQt4YS8t1uw=;
	b=ww0SHpI+qU8/LnAq8ViZNsAm793oLlwskbmBkLMH+2yAHj69y9mXFGvdUXKbz7J4vh
	9jCCfaQWGcMCCjtGaZk6J5oruXEMj4Gbp/JQyqt8gQ9FexagEKHfMo3en012VwNZxUB2
	RufR6FXM3aL729yGxdnGoDv1H+o0pxVFAnfjh7rIu3cSkTE5fgzIIICQbdm9ihE2CF1W
	TsGngZj29AVHwfTRGP/b3UDJfn5VOk038NdHwwFMa8XuYzi3IBHhk2NdOFEVA1nn6ape
	eKoC2QyZwpRmFZPzqHE5322Wh4AGfLFUG0zdvKMKs8abOb1+IEZL/iVUtDFmww9JiUSf
	U0dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=Nh8VTUZzv+5FTjr80nDamJpcpV0a83fHOQt4YS8t1uw=;
	b=AgQP1IkQdXoWNqKfiDuAeYM0q5bAakvq+MgdzFctjuQKHp27WC7ar6JJVNVOBmuLtd
	3J5bvaeuhvz1EsZ5USP/4UjaaMQyzQZzhnPgQtp8WyJ0QnkCZH09QKhCZJ2Tvow29Q8e
	RyciivV5Nt7g0lxJ6SvfnWniW2OeHRWuRzK+/8dChm6wlYwdbCDboYyfIObimNjPdq7h
	oj4ofZ7cL0ZK8j8Q2pFge0lSzIzkXMu5fHKsQ33DsEKyXDGHUHTpTO2Syp4uXCqhCzLz
	I8OrzKcagYu0sOitE/D57QMccTYDS6I4Fp7V52oQLwCvQOQNTHTOBIY6KO7GrdueDYff
	i5Aw==
X-Gm-Message-State: AG10YOS7QDtK1f7gLRhEONgErHnz9aRSFYWSe6wWD/ETQysRTMrlcFWi+GCr6wu1MgYLyw==
X-Received: by 10.98.89.78 with SMTP id n75mr7321655pfb.120.1454552804781;
	Wed, 03 Feb 2016 18:26:44 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:5dbc:6098:8447:2d4d?
	([2601:646:8802:5d5c:5dbc:6098:8447:2d4d])
	by smtp.gmail.com with ESMTPSA id
	b28sm12761083pfd.24.2016.02.03.18.26.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 03 Feb 2016 18:26:43 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <BLU168-W22A12B38E8A385104D458AEBD10@phx.gbl>
Date: Wed, 3 Feb 2016 18:26:38 -0800
Message-Id: <154C6660-9242-4FA0-9F28-5E54625AB4E8@gmail.com>
References: <BLU168-W10417EEA6212C31D453447BEBD10@phx.gbl>
	<F454D711-5EBF-45CA-9E9C-8344C6A6E558@gmail.com>
	<BLU168-W933818F9DA64A2BA0C3282EBD10@phx.gbl>
	<99E27708-5404-4FBF-9B73-4994698A3C7C@gmail.com>
	<BLU168-W22A12B38E8A385104D458AEBD10@phx.gbl>
To: Sridhar Pitchai <sridhar.pitchai@outlook.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: error: code model kernel does not support PIC mode
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
X-List-Received-Date: Thu, 04 Feb 2016 02:26:48 -0000
X-Groupsio-MsgNum: 28259
Content-Type: multipart/signed;
	boundary="Apple-Mail=_00520F0D-AD5B-46AC-BFBD-246DACFFB0B8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_00520F0D-AD5B-46AC-BFBD-246DACFFB0B8
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A322BB2C-1B45-4867-9046-C4426348FE20"

--Apple-Mail=_A322BB2C-1B45-4867-9046-C4426348FE20
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Feb 3, 2016, at 5:45 PM, Sridhar Pitchai =
<sridhar.pitchai@outlook.com> wrote:
>=20
> SDK looks fine. i was able to compile with it with direct make on my =
local system.
>=20
> make -C /path/to/sdk/systems/linux/user/x86-generic_64-3_19
>=20
> this works just fine.  I am trying to make my image through yocto =
recipe and i am facing this issue.
>=20
> infact doing a make @
>=20
> build/tmp/work/............./system/linux/user/x86-generic_64-3_19
>=20
> works as well.
>=20
> but if i do bitbake -v sdk i am facing this failure.

> What am i missing ?
>=20

may be you should look into SDK code and see why its throwing that =
error.
this error is coming from this SDK

> Subject: Re: [yocto] error: code model kernel does not support PIC =
mode
> From: raj.khem@gmail.com <mailto:raj.khem@gmail.com>
> Date: Wed, 3 Feb 2016 17:38:16 -0800
> CC: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> To: sridhar.pitchai@outlook.com <mailto:sridhar.pitchai@outlook.com>
>=20
> talk to folks whoever is providing you that SDK
>=20
> On Feb 3, 2016, at 5:37 PM, Sridhar Pitchai =
<sridhar.pitchai@outlook.com <mailto:sridhar.pitchai@outlook.com>> =
wrote:
>=20
> Sure, i will get rid of it.  But i get the same error without it as =
well.  I added it to see if this can help get the compile through. but =
it didn't.
>=20
> What am i missing here. the MACHINE is "qemux84-64"
>=20
> Subject: Re: [yocto] error: code model kernel does not support PIC =
mode
> From: raj.khem@gmail.com <mailto:raj.khem@gmail.com>
> Date: Wed, 3 Feb 2016 17:30:38 -0800
> CC: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> To: sridhar.pitchai@outlook.com <mailto:sridhar.pitchai@outlook.com>
>=20
>=20
> On Feb 3, 2016, at 5:24 PM, Sridhar Pitchai =
<sridhar.pitchai@outlook.com <mailto:sridhar.pitchai@outlook.com>> =
wrote:
>=20
> Hi,
> I trying to write a simple recipe which will be building some static =
libraries. the makefile has the "-fPIC" enabled. when i try to compile =
it using simple yocto recipe, i am getting this error.
>=20
> "
> | =
/home/sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky-linux/sdk/1.=
0-r0/sdk-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtrans.c:1:0: =
error: code model kernel does not support PIC mode
> |  =
/***********************************************************************
> |  ^
>=20
>=20
> "
>=20
> recipe:
>=20
> "
> SUMMARY =3D "TEST"
>=20
> LICENSE =3D "CLOSED"
> PR =3D "r0"
> PROVIDES =3D "pi-swos-bcm-sdk"
>=20
> # BCM SDK inconsistant with parallel make
> PARALLEL_MAKE =3D ""
>=20
> FILESEXTRAPATHS_prepend =3D "${THISDIR}:"
> SRC_URI =3D " <> <>file://6.4.8/sdk.tar.gz <file:///6.4.8/sdk.tar.gz> =
\
>     "
>=20
> MAKEFLAGS_append =3D " -fPIC =93
>=20
> why do you need this ? get rid of it. Atleast for kernel module part.
>=20
> do_compile() {
>     oe_runmake -C =
${WORKDIR}/sdk-all-6.4.8/systems/linux/user/x86-generic_64-3_19
> }
> "
>=20
> Can someone help me on this.
>=20
> thanks,
> Sridhar Pitchai
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_A322BB2C-1B45-4867-9046-C4426348FE20
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Feb 3, 2016, at 5:45 PM, Sridhar Pitchai &lt;<a =
href=3D"mailto:sridhar.pitchai@outlook.com" =
class=3D"">sridhar.pitchai@outlook.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">SDK looks fine. i was able =
to compile with it with direct make on my local system.<div class=3D""><br=
 class=3D""></div><div class=3D""><span style=3D"font-family: Calibri;" =
class=3D"">make -C =
/path/to/sdk/systems/linux/user/x86-generic_64-3_19</span></div><div =
class=3D""><font face=3D"Calibri" class=3D""><br =
class=3D""></font></div><div class=3D""><font face=3D"Calibri" =
class=3D"">this works just fine. &nbsp;I am trying to make my image =
through yocto recipe and i am facing this issue.</font></div><div =
class=3D""><font face=3D"Calibri" class=3D""><br =
class=3D""></font></div><div class=3D""><font face=3D"Calibri" =
class=3D"">infact doing a make @&nbsp;</font></div><div class=3D""><font =
face=3D"Calibri" class=3D""><br class=3D""></font></div><div =
class=3D""><font face=3D"Calibri" =
class=3D"">build/tmp/work/............./system/linux/user/x86-generic_64-3=
_19&nbsp;</font></div><div class=3D""><font face=3D"Calibri" =
class=3D""><br class=3D""></font></div><div class=3D""><font =
face=3D"Calibri" class=3D"">works as well.</font></div><div =
class=3D""><font face=3D"Calibri" class=3D""><br =
class=3D""></font></div><div class=3D""><font face=3D"Calibri" =
class=3D"">but if i do bitbake -v sdk i am facing this =
failure.&nbsp;</font></div></div></div></blockquote><div><br =
class=3D""></div><blockquote type=3D"cite" class=3D""><div class=3D""><div=
 dir=3D"ltr" style=3D"font-family: Calibri; font-size: 16px; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D""><div class=3D""><font =
face=3D"Calibri" class=3D"">What am i missing ?<br class=3D""></font><br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>may be you should look into SDK code and see why =
its throwing that error.</div><div>this error is coming from this =
SDK</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" style=3D"font-family: Calibri; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><div =
class=3D""><div class=3D""><hr id=3D"stopSpelling" class=3D"">Subject: =
Re: [yocto] error: code model kernel does not support PIC mode<br =
class=3D"">From:<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a><br =
class=3D"">Date: Wed, 3 Feb 2016 17:38:16 -0800<br class=3D"">CC:<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">To:<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:sridhar.pitchai@outlook.com" =
class=3D"">sridhar.pitchai@outlook.com</a><br class=3D""><br =
class=3D"">talk to folks whoever is providing you that SDK<div =
class=3D""><br class=3D""><div class=3D""><blockquote class=3D""><div =
class=3D"">On Feb 3, 2016, at 5:37 PM, Sridhar Pitchai &lt;<a =
href=3D"mailto:sridhar.pitchai@outlook.com" =
class=3D"">sridhar.pitchai@outlook.com</a>&gt; wrote:</div><br =
class=3D"ecxApple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px;" class=3D"">Sure, i will get rid of it. =
&nbsp;But i get the same error without it as well. &nbsp;I added it to =
see if this can help get the compile through. but it didn't.&nbsp;<div =
class=3D""><br class=3D""></div><div class=3D"">What am i missing here. =
the MACHINE is "qemux84-64"<br class=3D""><br class=3D""><div =
class=3D""><hr id=3D"ecxstopSpelling" class=3D"">Subject: Re: [yocto] =
error: code model kernel does not support PIC mode<br =
class=3D"">From:<span class=3D"ecxApple-converted-space">&nbsp;</span><a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a><br =
class=3D"">Date: Wed, 3 Feb 2016 17:30:38 -0800<br class=3D"">CC:<span =
class=3D"ecxApple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">To:<span =
class=3D"ecxApple-converted-space">&nbsp;</span><a =
href=3D"mailto:sridhar.pitchai@outlook.com" =
class=3D"">sridhar.pitchai@outlook.com</a><br class=3D""><br =
class=3D""><br class=3D""><div class=3D""><blockquote class=3D""><div =
class=3D"">On Feb 3, 2016, at 5:24 PM, Sridhar Pitchai &lt;<a =
href=3D"mailto:sridhar.pitchai@outlook.com" =
class=3D"">sridhar.pitchai@outlook.com</a>&gt; wrote:</div><br =
class=3D"ecxApple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px;" class=3D"">Hi,<div class=3D"">I trying to =
write a simple recipe which will be building some static libraries. the =
makefile has the "-fPIC" enabled. when i try to compile it using simple =
yocto recipe, i am getting this error.</div><div class=3D""><br =
class=3D""></div><div class=3D"">"</div><div class=3D""><div class=3D"">| =
/home/sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky-linux/sdk/1.=
0-r0/sdk-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtrans.c:1:0: =
error: code model kernel does not support PIC mode</div><div class=3D"">| =
&nbsp;/*******************************************************************=
****</div><div class=3D"">| =
&nbsp;^</div></div></div></div></blockquote><div class=3D""><br =
class=3D""></div><blockquote class=3D""><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px;" class=3D""><div class=3D""><br =
class=3D""></div><div class=3D""><span style=3D"font-size: 12pt;" =
class=3D"">"</span></div><div class=3D""><br class=3D""></div><div =
class=3D"">recipe:</div><div class=3D""><br class=3D""></div><div =
class=3D"">"</div><div class=3D""><div class=3D"">SUMMARY =3D =
"TEST"</div><div class=3D""><br class=3D""></div><div class=3D"">LICENSE =
=3D "CLOSED"</div><div class=3D"">PR =3D "r0"</div><div =
class=3D"">PROVIDES =3D "pi-swos-bcm-sdk"</div><div class=3D""><br =
class=3D""></div><div class=3D""># BCM SDK inconsistant with parallel =
make</div><div class=3D"">PARALLEL_MAKE =3D ""</div><div class=3D""><br =
class=3D""></div><div class=3D"">FILESEXTRAPATHS_prepend =3D =
"${THISDIR}:"</div><div class=3D"">SRC_URI =3D "<a target=3D"_blank" =
class=3D""></a><a target=3D"_blank" class=3D""></a><a =
href=3D"file:///6.4.8/sdk.tar.gz" =
class=3D"">file://6.4.8/sdk.tar.gz</a><span =
class=3D"ecxApple-converted-space">&nbsp;</span>\</div><div =
class=3D"">&nbsp; &nbsp; "</div><div class=3D""><br class=3D""></div><div =
class=3D"">MAKEFLAGS_append =3D " -fPIC =
=93</div></div></div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">why do you need this ? get rid of it. =
Atleast for kernel module part.</div><br class=3D""><blockquote =
class=3D""><div class=3D""><div dir=3D"ltr" style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px;" class=3D""><div class=3D""><div =
class=3D"">do_compile() {</div><div class=3D"">&nbsp; &nbsp; oe_runmake =
-C =
${WORKDIR}/sdk-all-6.4.8/systems/linux/user/x86-generic_64-3_19</div><div =
class=3D"">}</div></div><div class=3D"">"</div><div class=3D""><br =
class=3D""></div><div class=3D"">Can someone help me on this.</div><div =
class=3D""><br class=3D""></div><div class=3D"">thanks,</div><div =
class=3D"">Sridhar Pitchai</div></div><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; display: inline !important;" class=3D"">--<span =
class=3D"ecxApple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px;" class=3D""><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px;" class=3D""><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Calibri; font-size: 16px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px;" =
class=3D""><a href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family:=
 Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px;" class=3D"">yocto@yoctoproject.org</a><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div></div></div></div></div></blockquote></div></div></div></div></=
div></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_A322BB2C-1B45-4867-9046-C4426348FE20--

--Apple-Mail=_00520F0D-AD5B-46AC-BFBD-246DACFFB0B8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaytuIACgkQuwUzVZGdMxRjFgCfQuK22d0nTbimZPyE09RYUiQG
VhgAnRoQ/c6d0sL6PqwoRbQhASR/zGB3
=DXLF
-----END PGP SIGNATURE-----

--Apple-Mail=_00520F0D-AD5B-46AC-BFBD-246DACFFB0B8--
