Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8655AE0096A; Mon, 29 Jun 2015 08:53:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13917E00947
	for <yocto@yoctoproject.org>; Mon, 29 Jun 2015 08:53:21 -0700 (PDT)
Received: by qkhu186 with SMTP id u186so96571674qkh.0
	for <yocto@yoctoproject.org>; Mon, 29 Jun 2015 08:53:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=rlHVL+TX4tEmxaEXlPH2QbSX8ZU3I79aN6FLITuHZmY=;
	b=XpZanR15u+TzzAjIrlApaJrV9CaMumwdwDpl7R4hCiWCF1gT/d+eYrczUTg0EbrH/W
	tv7aLeqEOuJFSNFifj/jEFpDRyPtQ5zwrNwThuJiNbYDjs9ChRawTCISKwGfS6vMdG9n
	woXgZWL0X5z3XOtjMHNHBTbukn0PuZLUMMrCVCYnKUvpEbT7oDxu9GDMKGZ7LddhL6UZ
	NXIBnm8BGNLaWbZzMWPP5egiGHhMgc+OZ8ymEdaiq37gkOLd4VWZ8Uqj2ARoTLjCutwm
	Ex/zfwiapQ3tqN7t25kPEXwhR66ho7JJr/Rr5BpkEXGIHVsCfA5SmbrhYnBpF+yMHxiU
	KYVQ==
X-Gm-Message-State: ALoCoQm/c97DIMGAuakm46mC52mWn8BWBG9tcHJrpX1Rwz6S0MwFIp0+4rHdkXJ0lLIl+gquSBKA
X-Received: by 10.140.89.100 with SMTP id u91mr7747278qgd.15.1435593200602;
	Mon, 29 Jun 2015 08:53:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Mon, 29 Jun 2015 08:53:01 -0700 (PDT)
In-Reply-To: <CA+89abzJG1v9v7AUpRmexJnQs2S7GMYuAVe3McWygm=vnmbnQQ@mail.gmail.com>
References: <CA+89abzJG1v9v7AUpRmexJnQs2S7GMYuAVe3McWygm=vnmbnQQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Jun 2015 16:53:01 +0100
Message-ID: <CAJTo0LaisgY3iST7_umKK=5vaPU3VsBj=BeQK6Z=0qibsQHuMw@mail.gmail.com>
To: Daniel Gallagher <dgallagher@219design.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Automatic Virtual Keyboard?
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
X-List-Received-Date: Mon, 29 Jun 2015 15:53:23 -0000
Content-Type: multipart/alternative; boundary=001a11c1334ec3a7f00519aa1646

--001a11c1334ec3a7f00519aa1646
Content-Type: text/plain; charset=UTF-8

On 19 June 2015 at 16:33, Daniel Gallagher <dgallagher@219design.com> wrote:

> I'm trying to get matchbox-keyboard to pop up automatically for text input
> fields, and ran across this bug report:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6774
>
> I've tried setting
>
> HAVE_TOUCHSCREEN=1
>
> HAVE_KEYBOARD=0
>
> in /etc/formfactor/machconfig as suggested in this post:
> https://lists.yoctoproject.org/pipermail/yocto/2011-September/002951.html
> but that doesn't seem to have any effect in fido.
>
> Does anyone have a workaround for this bug in fido?
>

Sadly not, it appears that something regressed and I've not had the time to
sort it out.  Do you have matchbox-keyboard-im installed?

Ross

--001a11c1334ec3a7f00519aa1646
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 June 2015 at 16:33, Daniel Gallagher <span dir=3D"ltr">&lt;<a href=3D=
"mailto:dgallagher@219design.com" target=3D"_blank">dgallagher@219design.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I&#39;m tryi=
ng to get matchbox-keyboard to pop up automatically for text input fields, =
and ran across this bug report: <a href=3D"https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D6774" target=3D"_blank">https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D6774</a></div><div><br></div><div>I&#39;ve tried setti=
ng</div><div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;paddi=
ng:0px"><div>HAVE_TOUCHSCREEN=3D1</div></blockquote><blockquote style=3D"ma=
rgin:0px 0px 0px 40px;border:none;padding:0px"><div>HAVE_KEYBOARD=3D0</div>=
</blockquote>in /etc/formfactor/machconfig as suggested in this post:=C2=A0=
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2011-September/00=
2951.html" target=3D"_blank">https://lists.yoctoproject.org/pipermail/yocto=
/2011-September/002951.html</a> but that doesn&#39;t seem to have any effec=
t in fido.</div><div><br></div><div>Does anyone have a workaround for this =
bug in fido?</div></blockquote></div><br>Sadly not, it appears that somethi=
ng regressed and I&#39;ve not had the time to sort it out.=C2=A0 Do you hav=
e matchbox-keyboard-im installed?</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--001a11c1334ec3a7f00519aa1646--
