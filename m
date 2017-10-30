Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D070E00DA3; Mon, 30 Oct 2017 09:03:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marc.ferland[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9D77E00CC3
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 09:03:28 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id g11so8403313vkd.13
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 09:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=a15mULAhAJOnvrWxRnzl2b2zLpBKsaA7iRkThbOaP70=;
	b=P8OYXuWRxbLKv9W8ew5QER5j6BUtzZpWDW623GCukmaxYuHAdcVzLRrrffsxOjBdl9
	s7oLf312ivp1c1TEHRDmnnyl7mJi5xglSwlb3bl4W3GXZ0y34bqG97laq0IZ3vHrDOE+
	CQor3g5LN+DEJcJRTDKx8qSpSEJPYJt10Io/qMYO6Pqc8o9qY4olWYKnWLl2qGC+kn8M
	UtT2XRhaHltxC38eXaX00Zlm1rOYCJYB79s4n3dWP4FthrQljWfSTma/0nM3jNUUbOI2
	l9wqCSlfxBpVtGhbG0a4XaLp04n9dAOUr7tNI9+OQJ5UvzmJ9h5caC3qJMj5P4nvOtw0
	gnSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=a15mULAhAJOnvrWxRnzl2b2zLpBKsaA7iRkThbOaP70=;
	b=r6OaJNMJye2BDpQ/tKJPMCiNOlcvMacmR3V2YcLWcLG009q92ozOPckA0yQYCo6q6a
	LDPfWNCmUrrTduOZANyUH6HPu+2i67HJjg3rvcnEB24GA8tRim+A2fiheOccviqxBbSA
	LbdMXVjxCGOAniV95AvVjRNXmkfTZRnP9Qyw3QI5LLcF753nrXzKPu08f9L83yWwnAbC
	JecvKKy0jMBgJbDoSld2dcIndLrog643pu2C5EhFGSSGpr2Fk3Jw4NaWTzj5Sg98rTN0
	vTnubFEU3iYvhtLqpayI15EzvpVm7HM4VW8tORgxhOpLHduR07H35dV4IAmyN3nVV3En
	SaOQ==
X-Gm-Message-State: AMCzsaVcddbNVoNGQa11bz39eJAH8Sa4McpO8iQStx1jp+NJVTCnNZoM
	oGnC/x910lbmzmBfSvITgNpC/F7f39Ucg2g8bgo=
X-Google-Smtp-Source: ABhQp+QDuaWC4OGXgo9zC+6blMOPPwm6KneaxMEwDgaqvGpt3qHDrlZNrHT02FS+3EQc2phWapwABeta+K5xE+hX6nE=
X-Received: by 10.31.169.137 with SMTP id s131mr7039113vke.86.1509379407754;
	Mon, 30 Oct 2017 09:03:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.153.7 with HTTP; Mon, 30 Oct 2017 09:03:27 -0700 (PDT)
In-Reply-To: <336e9042-22f7-db2c-57dd-ba6182ab1707@linux.intel.com>
References: <alpine.DEB.2.11.1710301727001.31359@lakka.kapsi.fi>
	<336e9042-22f7-db2c-57dd-ba6182ab1707@linux.intel.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Mon, 30 Oct 2017 12:03:27 -0400
Message-ID: <CAMRMzCDpQfqXCoMJh5_VmzUpUFAgjU+jf8KDyJh_GrRf_xsb_g@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: /etc/resolv.conf symlink
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
X-List-Received-Date: Mon, 30 Oct 2017 16:03:29 -0000
Content-Type: multipart/alternative; boundary="001a11425bf06e3a4c055cc5c76a"

--001a11425bf06e3a4c055cc5c76a
Content-Type: text/plain; charset="UTF-8"

FWIW,

I'm using pyro and had to cherry-pick:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=00e4662e55f66570cae29240c22b4d74b79d3ca5

To make systemd-resolved and systemd-networkd work as expected.

Marc

On Mon, Oct 30, 2017 at 11:54 AM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 10/30/2017 05:37 PM, Anders Montonen wrote:
>
>> I'm hoping someone could clarify how the symlink generation from
>> /etc/resolv.conf to systemd's runtime /run/systemd/resolve/resolv.conf
>> is supposed to work when resolved is not enabled.
>>
>
> I think we have a bug for it:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11969
>
> Please comment, propose patches etc.
>
> Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11425bf06e3a4c055cc5c76a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>FWIW,<br><br></div>I&#39;m using pyro and h=
ad to cherry-pick: <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/pok=
y/commit/?id=3D00e4662e55f66570cae29240c22b4d74b79d3ca5">http://git.yoctopr=
oject.org/cgit/cgit.cgi/poky/commit/?id=3D00e4662e55f66570cae29240c22b4d74b=
79d3ca5</a><br><br></div>To make systemd-resolved and systemd-networkd work=
 as expected.<br><br></div>Marc<br></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Mon, Oct 30, 2017 at 11:54 AM, Alexander Kanavin=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com"=
 target=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><span class=3D"">On 10/30/2017 05:37 PM, =
Anders Montonen wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I&#39;m hoping someone could clarify how the symlink generation from /etc/r=
esolv.conf to systemd&#39;s runtime /run/systemd/resolve/<a href=3D"http://=
resolv.co">resolv.co</a><wbr>nf is supposed to work when resolved is not en=
abled.<br>
</blockquote>
<br></span>
I think we have a bug for it:<br>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11969" rel=
=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.<wbr>org/sh=
ow_bug.cgi?id=3D11969</a><br>
<br>
Please comment, propose patches etc.<br>
<br>
Alex<div class=3D"HOEnZb"><div class=3D"h5"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a11425bf06e3a4c055cc5c76a--
