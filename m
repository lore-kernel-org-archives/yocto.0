Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04336E00AA6; Wed,  7 Oct 2015 06:00:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6214E00BDE
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 06:00:07 -0700 (PDT)
Received: by qgx61 with SMTP id 61so14144989qgx.3
	for <yocto@yoctoproject.org>; Wed, 07 Oct 2015 06:00:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+0oEbQjqTrjchLXvPqsvUbm1Ln9fn5pr/MysFwrH8Ys=;
	b=lxg2v+ARxz+wWysl3FPgEfVcFHCt34XZmRanBT57WrvFnQRRGn0xe3+jyoI+qk6Sa5
	Hz2GT3CnMQnvGcfact7Jx6pqjXBIJr7jYgTWR1aTLO+U8BOKOt4s99QdzXMgByy9r3Wl
	JLwTdBXDoFKOuxBW7Sbd73iUVgfc7lTjoTibo9EbjbcrjPX4arfGxf4nDX+JxEcIFLDz
	+dc5/NPSLRfhE1qCTLp3Evd+FqNAzKdnsyQFwffsF0DwjX49tPJko7R9UvAw954TyPAP
	4fUb2EpyKJ1MKxaYKPILOOKazymL6mkaSoGoSXWosr68BBBQlUc4QPtVAroQceQoybCi
	g59Q==
X-Gm-Message-State: ALoCoQmAuyXnanRzRDodUlVhAMI8Dz2X8aLJoVFyqw7nR6XM19vI0NAr7qyfrfVdaomuZ8kadAko
X-Received: by 10.140.44.11 with SMTP id f11mr1188658qga.80.1444222805197;
	Wed, 07 Oct 2015 06:00:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Wed, 7 Oct 2015 05:59:45 -0700 (PDT)
In-Reply-To: <DB59870584238C45879465F0A2E5C3F17E16BB@IRVEXCHMB14.corp.ad.broadcom.com>
References: <DB59870584238C45879465F0A2E5C3F17E16BB@IRVEXCHMB14.corp.ad.broadcom.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 Oct 2015 13:59:45 +0100
Message-ID: <CAJTo0LYcHSOFt1zOWBwaWvJr_SqqkGaK7QWiQg2J=d+YGhVuqQ@mail.gmail.com>
To: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: tmp on NFS
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
X-List-Received-Date: Wed, 07 Oct 2015 13:00:13 -0000
Content-Type: multipart/alternative; boundary=001a113b41bc47f502052183538a

--001a113b41bc47f502052183538a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 7 October 2015 at 02:37, Luke (Lucas) Starrett <lstarret@broadcom.com>
wrote:

> I=E2=80=99m aware of the checks added by changes like this:
>
>
>
> patchwork.openembedded.org/patch/61107/
>
>
>
> However, I don=E2=80=99t see the reasoning/background documented as to ex=
actly
> what is actually broken when putting tmp on NFS.  Is it time skew, proble=
ms
> with concurrent file access, something else?
>

Follow the link in the patch to the referenced bug, and comment #8 by Mark
Hatle explains the problems that Wind River were seeing in testing:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5442#c8

(background: a lot of the sanity tests are from Wind River who appear to
have a pathological need to break software: what happens if I do a build
nested 20 directories deep, what happens if I've a space in the build
directory name, and so on)

Ross

--001a113b41bc47f502052183538a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 October 2015 at 02:37, Luke (Lucas) Starrett <span dir=3D"ltr">&lt;<a =
href=3D"mailto:lstarret@broadcom.com" target=3D"_blank">lstarret@broadcom.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal">I=E2=80=
=99m aware of the checks added by changes like this:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:0.5in"><a href=3D"http://patchw=
ork.openembedded.org/patch/61107/" target=3D"_blank">patchwork.openembedded=
.org/patch/61107/</a><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">However, I don=E2=80=99t see the reasoning/backgroun=
d documented as to exactly what is actually broken when putting tmp on NFS.=
=C2=A0 Is it time skew, problems with concurrent file access, something els=
e?</p></blockquote></div><br>Follow the link in the patch to the referenced=
 bug, and comment #8 by Mark Hatle explains the problems that Wind River we=
re seeing in testing:</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra"><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D5442#c8">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5442#c8</=
a><br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>(background: a lot of the sanity tests are from Wind River who appear to h=
ave a pathological need to break software: what happens if I do a build nes=
ted 20 directories deep, what happens if I&#39;ve a space in the build dire=
ctory name, and so on)</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a113b41bc47f502052183538a--
