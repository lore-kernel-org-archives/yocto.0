Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5554AE00DFF; Thu, 27 Oct 2016 22:00:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BAE1E00DF8
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 22:00:47 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id e6so30448915pfk.3
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 22:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ntuHJyUTcWAJYsvmTi46s4VaX+VRV/WGba07sPjK9c4=;
	b=0RN4Usu48PtPXv1hQqjsQu0DUtBw2kDHfvRtTgaDbEg18JoNr1c4ePgIvt3lAvI7C9
	iniGibQKgLhtgHhVxEMvZvDvUtB+Uu09Yebm1PH2yZys03uB854Bm6wYuMSbZWm59JJ7
	tQ5VCJYdeoRp2pAsxVUlK4w7pfxuTtJYbR/3k4epHvPpE4thsdKD6VuLVGdk4d8cH5D7
	D821dbN+STdxMx/EbrLQNGj1S9jZ7p7c5yRhwHmZkZoqFe+yKjqHoLNbCVyFOcSi9LRe
	Lg/Df6TR7Gcr+/Xd1mRPNnITPRwCxub2kOjd1uHyaJWq02W+BppVIKADjoxt60qvdU3g
	EpIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ntuHJyUTcWAJYsvmTi46s4VaX+VRV/WGba07sPjK9c4=;
	b=IhcRT1NX9KwFOGXM++z9cb/UsibeAmIJkD3FGarY6rKmmIrRrGcOigOfOf6halAzH9
	LL8Ut6SYrAmpMVJHKjzPMkZhU2Z9lOpgDyHezW1TiXWLYCgCx9QSl28Ts96O8SsKrxQn
	rF5WjNvEgdGWbfmXMzpbTkL+3rNCxXBi/mly2uq+zAxoR8y1U1CNh+HU2cTE8x5eUJ+a
	/uSduRHvlGTgYGoxgGBJZAYGPdk8Udq9/FjFL+hir1uPJxsTQV6dpqqOU5KEBHhSch+T
	vFet6ZO2/c88WJ/DEL5SSnHAi7sLG856GDbZ0pQFgHVB3tB6YjR0Ta/FQmIM5WwAX/He
	SEWA==
X-Gm-Message-State: ABUngvcYHfsTTflbKGkooGKGj8PyBS3DDbj/IiDnXlRPWtYshqV1bMlrSq8nNi37NdeA2A==
X-Received: by 10.98.59.153 with SMTP id w25mr21259061pfj.112.1477630847383;
	Thu, 27 Oct 2016 22:00:47 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:f559:242f:d781:af84?
	([2601:646:8882:b8c:f559:242f:d781:af84])
	by smtp.gmail.com with ESMTPSA id
	z11sm15231074pfd.49.2016.10.27.22.00.46
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 22:00:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <FCBF0B79-821F-4829-8664-A9BBC6A5804F@cisco.com>
Date: Thu, 27 Oct 2016 22:00:41 -0700
Message-Id: <C6FDCFC6-8B8F-44A8-9B09-C4BECC01E9CD@gmail.com>
References: <108EEEE7-FA01-47F4-BFC9-F03C15F37184@cisco.com>
	<102BA059-A58C-4917-8697-70387D6D0540@gmail.com>
	<FCBF0B79-821F-4829-8664-A9BBC6A5804F@cisco.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qlibc lib for Yocto Dizzy question
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
X-List-Received-Date: Fri, 28 Oct 2016 05:00:51 -0000
X-Groupsio-MsgNum: 32665
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4532F81E-011F-44E0-82A7-48A1CB90E21C";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_4532F81E-011F-44E0-82A7-48A1CB90E21C
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_27457345-F201-42D0-8363-AA8B13E4B9E6"

--Apple-Mail=_27457345-F201-42D0-8363-AA8B13E4B9E6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

if its just a static library and you want to include it in image you =
might have to add ${PN}-dev in your IMAGE_INSTALL

> On Oct 27, 2016, at 9:48 PM, Dinh Nguyen (dinhn) <dinhn@cisco.com> =
wrote:
>=20
> Thanks much for prompt response Khem.
>=20
> Yes,  qLibc is a simple library
> https://github.com/wolkykim/qlibc.git =
<https://github.com/wolkykim/qlibc.git>
>=20
> Thanks,
>   =E2=80=94Dinh
>=20
> From: Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>>
> Date: Thursday, October 27, 2016 at 9:00 PM
> To: dinhn <dinhn@cisco.com <mailto:dinhn@cisco.com>>
> Cc: "yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>" =
<yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
> Subject: Re: [yocto] qlibc lib for Yocto Dizzy question
>=20
>=20
>> On Oct 27, 2016, at 8:19 PM, Dinh Nguyen (dinhn) <dinhn@cisco.com =
<mailto:dinhn@cisco.com>> wrote:
>>=20
>>=20
>> Hi Yocto gurus,
>>=20
>> I am trying to add the qlibc lib to our Yocto 1.7.2 version.
>> Able to compile and build IPK packages with out any issue as shown =
below:
>>=20
>> =
dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp_ppc$ =
find tmp/deploy | grep qlibc
>> tmp/deploy/ipk/ppce500v2/qlibc-dbg_1.0-r0_ppce500v2.ipk
>> tmp/deploy/ipk/ppce500v2/qlibc-dev_1.0-r0_ppce500v2.ipk
>> tmp/deploy/licenses/qlibc
>> tmp/deploy/licenses/qlibc/generic_BSD-2-Clause
>> tmp/deploy/licenses/qlibc/LICENSE
>>=20
>> However, it is not included in the rootfs.manifest for building a LXC =
container.
>> I wonder whether I am missing in my recipe qlibc.bb or how to solve =
this issue?
>=20
> it seems that main package is empty. Is it just building a static ( .a =
) library ?
>=20
>>=20
>> Many thanks,
>>   =E2=80=94Dinh
>>=20
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>=20


--Apple-Mail=_27457345-F201-42D0-8363-AA8B13E4B9E6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">if its just a static library and you want to include it in =
image you might have to add ${PN}-dev in your IMAGE_INSTALL<div =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 27, 2016, at 9:48 PM, Dinh Nguyen (dinhn) &lt;<a =
href=3D"mailto:dinhn@cisco.com" class=3D"">dinhn@cisco.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D"">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D"">

<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; font-family: Calibri, =
sans-serif;" class=3D"">
<div class=3D"">
<div class=3D"">Thanks much for prompt response Khem.&nbsp;</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Yes, &nbsp;<span style=3D"color: rgb(102, 102, 102); =
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, =
Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI =
Symbol'; orphans: 2; widows: 2; background-color: rgb(255, 255, 255);" =
class=3D"">qLibc
 is a simple library</span></div>
<div class=3D""><a href=3D"https://github.com/wolkykim/qlibc.git" =
class=3D"">https://github.com/wolkykim/qlibc.git</a></div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Thanks,</div>
<div class=3D"">&nbsp; =E2=80=94Dinh</div>
<div style=3D"font-size: 14px;" class=3D"">
<div id=3D"MAC_OUTLOOK_SIGNATURE" class=3D""></div>
</div>
</div>
<div style=3D"font-size: 14px;" class=3D""><br class=3D"">
</div>
<span id=3D"OLK_SRC_BODY_SECTION" style=3D"font-size: 14px;" class=3D"">
<div style=3D"font-family: Calibri; font-size: 12pt; text-align: left; =
border-width: 1pt medium medium; border-style: solid none none; padding: =
3pt 0in 0in; border-top-color: rgb(181, 196, 223);" class=3D"">
<span style=3D"font-weight:bold" class=3D"">From: </span>Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt;<br class=3D"">
<span style=3D"font-weight:bold" class=3D"">Date: </span>Thursday, =
October 27, 2016 at 9:00 PM<br class=3D"">
<span style=3D"font-weight:bold" class=3D"">To: </span>dinhn &lt;<a =
href=3D"mailto:dinhn@cisco.com" class=3D"">dinhn@cisco.com</a>&gt;<br =
class=3D"">
<span style=3D"font-weight:bold" class=3D"">Cc: </span>"<a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a>" &lt;<a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a>&gt;<br class=3D"">
<span style=3D"font-weight:bold" class=3D"">Subject: </span>Re: [yocto] =
qlibc lib for Yocto Dizzy question<br class=3D"">
</div>
<div class=3D""><br class=3D"">
</div>
<span style=3D"mso-bookmark:_MailOriginalBody" class=3D"">
<div class=3D"">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D"">
<br class=3D"">
<div class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On Oct 27, 2016, at 8:19 PM, Dinh Nguyen (dinhn) &lt;<a =
href=3D"mailto:dinhn@cisco.com" class=3D"">dinhn@cisco.com</a>&gt; =
wrote:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; font-size: 14px; font-family: =
Calibri, sans-serif;" class=3D"">
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Hi Yocto gurus,</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">I am trying to add the qlibc lib to our Yocto 1.7.2 =
version.</div>
<div class=3D"">Able to compile and build IPK packages with out any =
issue as shown below:</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">
<div =
class=3D"">dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/=
yp_ppc$ find tmp/deploy | grep qlibc</div>
<div =
class=3D"">tmp/deploy/ipk/ppce500v2/qlibc-dbg_1.0-r0_ppce500v2.ipk</div>
<div =
class=3D"">tmp/deploy/ipk/ppce500v2/qlibc-dev_1.0-r0_ppce500v2.ipk</div>
<div class=3D"">tmp/deploy/licenses/qlibc</div>
<div class=3D"">tmp/deploy/licenses/qlibc/generic_BSD-2-Clause</div>
<div class=3D"">tmp/deploy/licenses/qlibc/LICENSE</div>
</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">However, it is not included in the&nbsp;rootfs.manifest =
for building a LXC container. &nbsp;</div>
<div class=3D"">I wonder whether I am missing in my recipe qlibc.bb or =
how to solve this issue?</div>
</div>
</div>
</blockquote>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">it seems that main package is empty. Is it just building =
a static ( .a ) library ?</div>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; font-size: 14px; font-family: =
Calibri, sans-serif;" class=3D"">
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Many thanks,</div>
<div class=3D"">&nbsp; =E2=80=94Dinh</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">
<div id=3D"" class=3D""></div>
</div>
</div>
-- <br class=3D"">
_______________________________________________<br class=3D"">
yocto mailing list<br class=3D"">
<a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D"">
</div>
</blockquote>
</div>
<br class=3D"">
</div>
</div>
</span></span>
</div>

</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_27457345-F201-42D0-8363-AA8B13E4B9E6--

--Apple-Mail=_4532F81E-011F-44E0-82A7-48A1CB90E21C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgS230ACgkQuwUzVZGdMxTbGgCfYjWznOO4iHTmDAeXaI760de+
zPoAn0RgnMkLvuKTIJHq780R825/Y1n4
=mU8E
-----END PGP SIGNATURE-----

--Apple-Mail=_4532F81E-011F-44E0-82A7-48A1CB90E21C--
