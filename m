Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1891FE007DC; Fri, 17 Oct 2014 14:37:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46A95E00796
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 14:37:04 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id z12so1755439wgg.25
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 14:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PCX2/rTe8l6gR+nJZ+/1a6m+cvs/0CmZBkW7Y8FaGFw=;
	b=zAdm6kL51PDq5sjlNgaDvuftHtiIL+Lsx5bY5ewXVOFopSReHx6EGyWwzES6iJYaHD
	HlvIByshTl/HQZ47DPTFwiVDGKMuq3aGEcB0521OzTRLrLtl23JbvPoXqO17ErAJY9pL
	iNC3Xg9UXP1v0sN9X7m5sI89GI5E8jamIjWGArwKhoJhzyPDKZUdsrkzOLKAqU39DxS9
	fUdyC9StTWb646ZTgR5M3h0+gqSvlAYeWnT43qWGE3SFluqfnZlwSYLCzmQEc4IQ2Cd4
	skpz8P4et1hKBI85sWrfTpwQ8GF+XawH2euNzw1YpZLguB19kADYI8dSoXwghww5CYTq
	6J/w==
MIME-Version: 1.0
X-Received: by 10.194.240.68 with SMTP id vy4mr13964719wjc.36.1413581823573;
	Fri, 17 Oct 2014 14:37:03 -0700 (PDT)
Received: by 10.194.82.103 with HTTP; Fri, 17 Oct 2014 14:37:03 -0700 (PDT)
In-Reply-To: <D8F05E17-2E19-41DC-ADDD-EB608B708A69@keylevel.com>
References: <D8F05E17-2E19-41DC-ADDD-EB608B708A69@keylevel.com>
Date: Fri, 17 Oct 2014 23:37:03 +0200
Message-ID: <CA+chaQcoC+SJNxhVLOH9E2He42DiBc_1M=AT4iz0YBtycZZQVw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
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
X-List-Received-Date: Fri, 17 Oct 2014 21:37:07 -0000
Content-Type: multipart/alternative; boundary=001a11c1b3127485db0505a52af6

--001a11c1b3127485db0505a52af6
Content-Type: text/plain; charset=UTF-8

That's by (IMHO wrong) design:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2964

Instead of setting P_V 2.40 only for that single project which needs that
newer libsoup, you need to set P_V to 2.38 for every other project which is
using your layer.

On Fri, Oct 17, 2014 at 10:57 PM, Chris Tapp <opensource@keylevel.com>
wrote:

> I've got a layer that includes a recipe for libsoup at version 2.40.3
> which sets DEFAULT_PREFERENCE = "-1".
>
> However, this version gets used when I build rather than the 2.38.?
> version in poky/meta (under danny). Why is this?
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap!
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c1b3127485db0505a52af6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That&#39;s by (IMHO wrong) design:</div><a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2964">https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D2964</a><br><div><br></div><div>Instead of=
 setting P_V 2.40 only for that single project which needs that newer libso=
up, you need to set P_V to 2.38 for every other project which is using your=
 layer.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Fri, Oct 17, 2014 at 10:57 PM, Chris Tapp <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:opensource@keylevel.com" target=3D"_blank">opensource@keylevel.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;ve got a =
layer that includes a recipe for libsoup at version 2.40.3 which sets DEFAU=
LT_PREFERENCE =3D &quot;-1&quot;.<br>
<br>
However, this version gets used when I build rather than the 2.38.? version=
 in poky/meta (under danny). Why is this?<br>
<br>
--<br>
<br>
Chris Tapp<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
br>
<br>
----<br>
You can tell you&#39;re getting older when your car insurance gets real che=
ap!<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11c1b3127485db0505a52af6--
