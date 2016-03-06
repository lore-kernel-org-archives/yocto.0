Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2E5AE00BB9; Sun,  6 Mar 2016 14:39:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [89.248.60.180 listed in list.dnswl.org]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from a180.4uh.net (unknown [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 399FEE0084E
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 14:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default;
	h=To:References:Message-Id:Cc:Date:In-Reply-To:
	From:Content-Type:Mime-Version:Subject;
	bh=tCcEfhwxVFuR0urEhpY6YXEa7BZjUD2Q0O2KZLTaGiA=;
	b=Xfa9Ie8Km7BLKCqD+SbCsoiRCV
	aiSJPYtKBNlELr1kgLfQ0dM46tbBdt7e7/IOuCd/Q0ijQ7cZ+gqrVu9Ko1H+vNsKPZf8Gw3HPL1Il
	GCHqIAhCbarNktEFzFQ0ekIPl0KF9CchVDdJT91QV9KJKdxLb/aYbax6Csol8rpK9/+o=; 
Received: from durham.keylevel.com ([88.97.63.243]:7269
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.86_1) (envelope-from <opensource@keylevel.com>)
	id 1achK1-000fNd-6v; Sun, 06 Mar 2016 22:38:45 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <BAY181-W538F4FDB696298C602C191AEB00@phx.gbl>
Date: Sun, 6 Mar 2016 22:38:41 +0000
Message-Id: <31886292-F1E6-477C-B24E-BFB9F7493942@keylevel.com>
References: <BAY181-W538F4FDB696298C602C191AEB00@phx.gbl>
To: Mark Brown <mkbrown32@hotmail.com>
X-Mailer: Apple Mail (2.3112)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
X-Authenticated-Sender: a180.4uh.net: chris.tapp@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Controlling Bitbake Memory usage under Windows/Virtualbox/Ubuntu platform
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
X-List-Received-Date: Sun, 06 Mar 2016 22:39:05 -0000
X-Groupsio-MsgNum: 28869
Content-Type: multipart/signed;
	boundary="Apple-Mail=_11BFE973-F52E-40EA-8646-5FFACAE687B3";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_11BFE973-F52E-40EA-8646-5FFACAE687B3
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_EC770960-ACC3-4B27-89F1-03C32FEE20DB"

--Apple-Mail=_EC770960-ACC3-4B27-89F1-03C32FEE20DB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

On 6 Mar 2016, at 22:08, Mark Brown <mkbrown32@hotmail.com> wrote:
>=20
> I do not see anything in the Bitbake manual for controlling how much =
memory
> Bitbake should consider itself entitled to consume in the
> development platform within which it runs.
>=20
> Running it on //Windows 7 64//i7-2620M//Virtualbox//Ubuntu 14 =
32-bit//,
> I told Virtualbox to allow Ubuntu to use 1.5 GBytes, but Windows Task =
Manager
> indicates the whole Virtualbox/Ubuntu thread is using only 160 MBytes
> -- and is generating approximately 1,000 page faults per second.

What memory usage does the Ubuntu VM report?

>  Perhaps as a result, this Gumstix Overo build has completed only 760 =
out of 3792
> total tasks in 21 hours -- at this rate it will complete in 5-6 days.

Not used a VM to build in ages, but I used to build an image from =
scratch in about 10 hours running on a dual core Macbook Pro. The same =
build takes about 1 hour on an 8 thread i7 with 16GB RAM and SSDs for =
the build work area, peaking at about 10GB RAM usage with local.conf set =
to use 16 threads and 16 parallel makes (BB_NUMBER_THREADS and =
PARALLEL_MAKE both at 16) - later Yocto versions set these for you based =
on the number of cores available to the build host.

Another thing to consider - if this is the first build, then you=E2=80=99l=
l be downloading a load of stuff from the internet. How fast is your =
connection? Subsequent builds will be much quicker as the files required =
will then be stored locally.

>  How does the user terminate Bitbake at its current stage, increase =
the memory it is using,
> and then restart in order to speed up this process ?
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


--Apple-Mail=_EC770960-ACC3-4B27-89F1-03C32FEE20DB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">On 6 Mar 2016, at 22:08, Mark Brown &lt;<a =
href=3D"mailto:mkbrown32@hotmail.com" =
class=3D"">mkbrown32@hotmail.com</a>&gt; wrote:<br =
class=3D""><div><blockquote type=3D"cite" class=3D""><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">I do not see anything in the =
Bitbake manual for controlling how much memory<br class=3D"">Bitbake =
should consider itself entitled to consume in the<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">development =
platform within which it runs.<br class=3D"">&nbsp;<br class=3D"">Running =
it on //Windows 7 64//i7-2620M//Virtualbox//Ubuntu 14 32-bit//,<br =
class=3D"">I told Virtualbox to allow Ubuntu to use 1.5 GBytes, but =
Windows Task Manager<br class=3D"">indicates the whole Virtualbox/Ubuntu =
thread is using only 160 MBytes<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">--&nbsp;and =
is generating approximately 1,000 page faults per second.<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div>What =
memory usage does the Ubuntu VM report?</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">&nbsp;Perhaps as a result, =
this Gumstix Overo build has completed only 760 out of 3792<br =
class=3D"">total tasks in 21 hours -- at this rate it will complete in =
5-6 days.<br class=3D""></div></div></blockquote><div><br =
class=3D""></div><div>Not used a VM to build in ages, but I used to =
build an image from scratch in about 10 hours running on a dual core =
Macbook Pro. The same build takes about 1 hour on an 8 thread i7 with =
16GB RAM and SSDs for the build work area, peaking at about 10GB RAM =
usage with local.conf set to use 16 threads and 16 parallel makes =
(BB_NUMBER_THREADS and PARALLEL_MAKE both at 16) - later Yocto versions =
set these for you based on the number of cores available to the build =
host.</div><div><br class=3D""></div><div>Another thing to consider - if =
this is the first build, then you=E2=80=99ll be downloading a load of =
stuff from the internet. How fast is your connection? Subsequent builds =
will be much quicker as the files required will then be stored =
locally.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" style=3D"font-family: Calibri; font-size: =
16px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D"">&nbsp;How =
does the user terminate Bitbake at its current stage, increase the =
memory it is using,<br class=3D"">and then restart in order to speed up =
this process ?<br class=3D"">&nbsp;<br class=3D""></div><span =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; float: none; display: inline =
!important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><span style=3D"font-family: =
Calibri; font-size: 16px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; float: =
none; display: inline !important;" class=3D"">yocto mailing =
list</span><br style=3D"font-family: Calibri; font-size: 16px; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"font-family: Calibri; =
font-size: 16px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D"">yocto@yoctoproject.org</a><br style=3D"font-family: Calibri; =
font-size: 16px; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
style=3D"font-family: Calibri; font-size: 16px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a></div></blockq=
uote></div><br class=3D""><div class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; line-height: normal; border-spacing: 0px;"><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D""><div =
class=3D"">--</div><div class=3D""><br class=3D""></div><div =
class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br class=3D""></div><div class=3D"">----</div><div =
class=3D"">You can tell you're getting older when your car insurance =
gets real cheap!</div></div></span></div></div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_EC770960-ACC3-4B27-89F1-03C32FEE20DB--

--Apple-Mail=_11BFE973-F52E-40EA-8646-5FFACAE687B3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJW3LF6AAoJEAM2GeiJDBSGGIQQAIQjziu/+6BhlOdgrhNr+Su2
bpr1ywuNPVQ4MQDMbVdnrDlSmnmCdBW+f4V9l0zL1X/YAaVA1Fbp8ykrOMfjspSj
60+HV5HxfRYkhq0xsRt4z165nbob9gSMs4k1tQl0udKUTXYYUITZ5/bhO0LwlZ/U
cLk0tr1ZXHa9bdehGgZdm0s2+nG2Q1pm3F50H2/RjeNEXZ7BC2kGXuXaAaStXSha
K8c8FnMJ/PrQN7Acmh1x9Ar7ubJ38I8SjG9I5Jl8ifnKVXbZBHNwe7+ABNWZQsx8
061dK2iBE9wPAZjSiOW+R77GKoGZdIkVT1fCFjpmGAGXo2CLO9HaFROTMYZQSuE3
iSEn1jkNEcAiZ2mBfrT39AGJwnOYPuZpmfW0xQlrwCEuEmurvdpGcGse2YecxkOX
bL0Fm7SbiX3tPGx26yhW5VlX1PXo3DndRwq9nZXv3jfU65VsOTgUiIIPuwhU3pIl
lqXLiHL0qpr1/AYLKeqXcG9PfrHc621rihe/9/CMSKIFjSEAdDz7lACgYu1N6LO5
EdGbqzch+EGprzeACuWcUhuuw79VKSpKrw2EzOjT31tlTdW8efkWe8RdPrurSXJL
ZE1d254cLpTwbZ2wZ3gRG+qqmNsm+lDMyvInGKpVZsiRinvdTyrVW18gKYF0xMyr
lqIiL4UAVxS3w9ovgRcU
=KNQ6
-----END PGP SIGNATURE-----

--Apple-Mail=_11BFE973-F52E-40EA-8646-5FFACAE687B3--
