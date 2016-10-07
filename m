Return-Path: <randy.mort@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7775E00C75; Fri,  7 Oct 2016 16:14:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (randy.mort[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 632A7E00A54
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 16:14:54 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id i202so61292864ioi.2
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 16:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=IJl2THvVlCK7NIpjNp5TKyjhdY6eiD9CjbZRWR2vrkw=;
	b=yNf2J0/wHh9crCDk9zaj2SSVrS0b/R9MmOUZBYZIxddYVHdlF/5W63kqdDyrRhbI4M
	M4SScf99fI0h038YpqVuvugFd11u2UVlpcacel8psJRsN2dPwwClsPAuF1OsnBR+3bnU
	P7f5btJF9bK9jsbmyQmIuk3XAgKWsvM5lUHSwytexkkVCLddnuyFVM9eh2tUUnwm4zW9
	sCa0vlv/bG9bJZ6yKmgIhPQP6PUO6yZaecZJSoO60RGdnY7C2QttJOx5Is/HGTtQnB7E
	ImwIvFTvZpfjN6McHUXQf7+S2rWvsAY2NGISXTGVKS1gSGlhorNvpdfoky0z9rK8jNbu
	+wng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=IJl2THvVlCK7NIpjNp5TKyjhdY6eiD9CjbZRWR2vrkw=;
	b=cHlIo/zhKVARJg0LPIKYt7cLHGWnB1772HKHd98udHZecuOV2dfjow5zyfyKKV2Y4V
	VigSK0uVxwhATraRX9EybBvSvWNjcyTd6838T71sYJ6VzQiRTJFkt1WumqA3ZQ2mQjzY
	blcruOGd1zaYo82+Dai9SldL/J2AWwInQWjT8tgw0pLjIoLEofBgy+4rA2rjJYRO6R+j
	gHuxymywvfbieGa38/ReMbEvTvRfs37OhsUWXtXXZ+64IApV1p6OUp4TJ5sVRYxbJQBS
	Fx+CLMI91ZWFMwAdqzHWgu1GOCN73B4P3nVyvkzOsUO5cmGnw8wOv+pK5HT9fQ6x5ujJ
	cQ1g==
X-Gm-Message-State: AA6/9RlvZ65M8Xc7TJeNrZx+wwzWC6Yss94ug9ZzSvlXaGM/nGp8zdIAdNkqJiSHhnCOaA==
X-Received: by 10.107.14.78 with SMTP id 75mr23552473ioo.79.1475882094298;
	Fri, 07 Oct 2016 16:14:54 -0700 (PDT)
Received: from [192.168.0.17] (S0106f0f249854203.ss.shawcable.net.
	[174.2.14.158]) by smtp.gmail.com with ESMTPSA id
	u184sm2056910ith.4.2016.10.07.16.14.53
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 07 Oct 2016 16:14:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Randy Mortensen <randy.mort@gmail.com>
In-Reply-To: <FB4B6E4F-AA20-4156-958E-EB1C80F3726D@gmail.com>
Date: Fri, 7 Oct 2016 17:14:51 -0600
Message-Id: <4BCD9DA4-5C88-4A54-A0A6-01C8BC565283@gmail.com>
References: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
	<2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
	<A9CEB2A8-6D91-4DAA-9380-998669775326@stratagemsystems.com>
	<0DC30BE5-2A1D-43BE-BC15-DB8132E026B2@gmail.com>
	<C0308C46-B222-46A6-BF18-90D853C7B627@sierrawireless.com>
	<A7265EA8-CB91-4D1B-987B-6FE4EBE52417@gmail.com>
	<FB4B6E4F-AA20-4156-958E-EB1C80F3726D@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjdk build fails due to checksum mismatches from icedtea-native
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
X-List-Received-Date: Fri, 07 Oct 2016 23:14:58 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DB50748C-DF79-4487-8CE3-ECA4D5745CC4"

--Apple-Mail=_DB50748C-DF79-4487-8CE3-ECA4D5745CC4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 6, 2016, at 8:35 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>>=20
>> On Oct 6, 2016, at 7:07 PM, Randy Mortensen <randy.mort@gmail.com =
<mailto:randy.mort@gmail.com>> wrote:
>>=20
>>=20
>>> On Oct 5, 2016, at 7:14 PM, Darcy Watkins =
<dwatkins@sierrawireless.com> wrote:
>>>=20
>>>=20
>>>=20
>>>> On Oct 5, 2016, at 4:52 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>> On Oct 5, 2016, at 4:45 PM, Randy Mortensen =
<randym@stratagemsystems.com> wrote:
>>>>>> On Oct 5, 2016, at 5:04 PM, Darcy Watkins =
<dwatkins@sierrawireless.com> wrote:
>>>>>>=20
>>>>>> =46rom what I gleaned from recent discussions of fetcher errors, =
this is somehow connected with rollout of Python related security fixes =
to various Linux distributions and/or some ...-native recipes.
>>>>>>=20
>>>>>> It was a bunch of tar balls that are named as mercurial hashes =
from within iced tea rather than the yocto fetch. I worked around it by =
grabbing the tarballs from a different checkout since I didn't have time =
to dig into it.
>>>>>>=20
>>>>>> It affected a fresh checkout I was building from scratch.
>>>>>>=20
>>>>> Thanks for the response. This also happened to me when trying to =
build from scratch.
>>>>> For my clarification, did you already have the tar balls =
downloaded or were you able to download them from a previous (icedtea) =
commit somehow?
>>>=20
>>> I had the tar balls in a different build that I had around for some =
time.  The reason I never cached these ones in a shared location on our =
server was I felt that tar balls with small hashes as filenames was too =
prone to collisions, especially without a package name as a prefix.  I =
don't know if that is a convention of iced tea, or how the fetcher =
handles mercurial.
>>>=20
>>>> Can you check if the tarballs have been rebuilt upstream ? if so we =
should try to find out what changed.
>>>> It could also be an oversight that a recipe update forgot or =
updated the checksums wrongly. but we should try to root cause it
>>>=20
>>> I agree here.  We should root cause it.
>>>=20
>>>=20
>> I=E2=80=99m not sure how this is all supposed to work, but I managed =
to get past the fetch failures by changing the md5sum and sha256sum =
checksums in icedtea7-native_2.1.3.bb.
>> I used the the checksums helpfully suggested by bitbake when it =
reported the errors.
>>=20
>> I compared one of the problematic tar balls with a =E2=80=9Cgood=E2=80=9D=
 one from a previous download and the only change I could identify was 3 =
extra lines added to a hidden file .hgtag  (which I presume maps a tag =
to a commit). Not sure why requesting the same hg commit results in a =
different tarball output.
>>=20
>=20
> could it be that its generating the tarballs from mercurial directly =
and thats flawed somehow ?
That seems likely but I don=E2=80=99t know how to fix that.

I also don=E2=80=99t understand why the configure task fails after the =
fetch task successfully downloads the tarballs.
>=20
>=20
>> Now however iced tea fails to configure due to checksum errors. The =
configure task seems to re-download each tarball and check the sha256sum =
which is failing.
>>=20
>> I=E2=80=99m not sure where to go from here to try and resolve so any =
more help is welcome.


--Apple-Mail=_DB50748C-DF79-4487-8CE3-ECA4D5745CC4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 6, 2016, at 8:35 PM, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""><br class=3D"Apple-interchange-newline">On Oct 6, 2016, at =
7:07 PM, Randy Mortensen &lt;<a href=3D"mailto:randy.mort@gmail.com" =
class=3D"">randy.mort@gmail.com</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">On Oct 5, =
2016, at 7:14 PM, Darcy Watkins &lt;<a =
href=3D"mailto:dwatkins@sierrawireless.com" =
class=3D"">dwatkins@sierrawireless.com</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">On Oct 5, 2016, at 4:52 PM, Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" class=3D"">raj.khem@gmail.com</a>&gt; =
wrote:<br class=3D""><blockquote type=3D"cite" class=3D"">On Oct 5, =
2016, at 4:45 PM, Randy Mortensen &lt;<a =
href=3D"mailto:randym@stratagemsystems.com" =
class=3D"">randym@stratagemsystems.com</a>&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">On Oct 5, 2016, at 5:04 =
PM, Darcy Watkins &lt;<a href=3D"mailto:dwatkins@sierrawireless.com" =
class=3D"">dwatkins@sierrawireless.com</a>&gt; wrote:<br class=3D""><br =
class=3D"">=46rom what I gleaned from recent discussions of fetcher =
errors, this is somehow connected with rollout of Python related =
security fixes to various Linux distributions and/or some ...-native =
recipes.<br class=3D""><br class=3D"">It was a bunch of tar balls that =
are named as mercurial hashes from within iced tea rather than the yocto =
fetch. I worked around it by grabbing the tarballs from a different =
checkout since I didn't have time to dig into it.<br class=3D""><br =
class=3D"">It affected a fresh checkout I was building from scratch.<br =
class=3D""><br class=3D""></blockquote>Thanks for the response. This =
also happened to me when trying to build from scratch.<br class=3D"">For =
my clarification, did you already have the tar balls downloaded or were =
you able to download them from a previous (icedtea) commit somehow?<br =
class=3D""></blockquote></blockquote><br class=3D"">I had the tar balls =
in a different build that I had around for some time. &nbsp;The reason I =
never cached these ones in a shared location on our server was I felt =
that tar balls with small hashes as filenames was too prone to =
collisions, especially without a package name as a prefix. &nbsp;I don't =
know if that is a convention of iced tea, or how the fetcher handles =
mercurial.<br class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">Can you check if the tarballs have been rebuilt upstream ? if =
so we should try to find out what changed.<br class=3D"">It could also =
be an oversight that a recipe update forgot or updated the checksums =
wrongly. but we should try to root cause it<br class=3D""></blockquote><br=
 class=3D"">I agree here. &nbsp;We should root cause it.<br class=3D""><br=
 class=3D""><br class=3D""></blockquote>I=E2=80=99m not sure how this is =
all supposed to work, but I managed to get past the fetch failures by =
changing the md5sum and sha256sum checksums in =
icedtea7-native_2.1.3.bb.<br class=3D"">I used the the checksums =
helpfully suggested by bitbake when it reported the errors.<br =
class=3D""><br class=3D"">I compared one of the problematic tar balls =
with a =E2=80=9Cgood=E2=80=9D one from a previous download and the only =
change I could identify was 3 extra lines added to a hidden file .hgtag =
&nbsp;(which I presume maps a tag to a commit). Not sure why requesting =
the same hg commit results in a different tarball output.<br =
class=3D""><br class=3D""></blockquote><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><span style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; float: none; display: =
inline !important;" class=3D"">could it be that its generating the =
tarballs from mercurial directly and thats flawed somehow ?</span><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""></div></blockquote>That =
seems likely but I don=E2=80=99t know how to fix that.</div><div><br =
class=3D""></div><div>I also don=E2=80=99t understand why the configure =
task fails after the fetch task successfully downloads the tarballs.<br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><br =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D""><br style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><blockquote type=3D"cite" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D"">Now however iced tea fails to configure due to checksum =
errors. The configure task seems to re-download each tarball and check =
the sha256sum which is failing.<br class=3D""><br class=3D"">I=E2=80=99m =
not sure where to go from here to try and resolve so any more help is =
welcome.</blockquote></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_DB50748C-DF79-4487-8CE3-ECA4D5745CC4--
