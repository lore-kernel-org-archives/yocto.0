Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 291CBE00F39; Mon, 22 Aug 2016 13:38:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF5D8E00F2A
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 13:38:17 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id e63so14880153ith.1
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 13:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CiVn3eCh1Kn35MJ+xAQ///9LOqp2Z+gf7di4MSKcQNo=;
	b=Ket2WeKdk268ROa+Q8gd1D7zzxHBc0E/q2M4i0nHAOqzluvT8lV06AjeirnF/77Nz/
	MHxRvdoyT0ku8vqnBNGu89y6v6eZ7XOkGytbbnLERmgdghWTwA4hXx3/QP5xcnBvz88Z
	gfV0iELtwzoObqcUL6SvT+oHEWxrpxqsPfeVIq0miJQG5fHmmlmnRex5wwSk9fkRvbZc
	T5g0+IOribts1dAWTAqRMR3MSrkNbuclB0x0axLCQlg8gtqmFYBmeaU5uptyLX9U6RQj
	4ECYpYmgLwscwLmQcyMfvvvKBz9YBPOqNa7VvBgl+kUKGmTDZDz7V8xyOBVe8Jmb7epZ
	Wi6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CiVn3eCh1Kn35MJ+xAQ///9LOqp2Z+gf7di4MSKcQNo=;
	b=jKAf1UsGhF/wOo71ugYPjA39MxZwkp1FFw0Hfb7dB2NJ9mYXBFmSpADdx1GPUmc+h9
	L666MbqzB2CZzssT8Ce3hw2vM87jsG2m3AMt69H1W4+DZIa9KG2VdCCvM33n9fzj2FBK
	+nm2zFTudV0Y+9AU+zZ08UQhaLf+lP+B0b+RJGQoAKS27dhEGCyf1wWEfNztj8BLMpFY
	BQLqc3vWGWE5X6+x9UG9VDtN0R9iBVn/j8ty6e8aJ42pp7Z9DmZLFXTSBkAU2QgEIDuy
	ubdVxgvn1kQrjBvXUjATyRJZC7OFAc9QMFupMO/uIdmPma670G5200sF+quegJaXXxcH
	VG5Q==
X-Gm-Message-State: AEkoouvEjGG6NsSICFDQSW6PWVWis/q1QPVkbITh7b968UNAknmufUc9OXa6/SvPxlzlbcUF1WNrjw51nvaT6syW
X-Received: by 10.36.57.211 with SMTP id l202mr23200948ita.22.1471898296976;
	Mon, 22 Aug 2016 13:38:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Mon, 22 Aug 2016 13:37:56 -0700 (PDT)
In-Reply-To: <20160819084237.GC16863@mbabyjoh-desk.ger.corp.intel.com>
References: <1471593718-23587-1-git-send-email-maxin.john@intel.com>
	<20160819081331.xuaqej3p7l6yon7m@jama>
	<20160819084237.GC16863@mbabyjoh-desk.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Aug 2016 21:37:56 +0100
Message-ID: <CAJTo0LY4dgMJz_mh37BQhnkhSCkcOvrn1z0vm51thAGAJGgMnA@mail.gmail.com>
To: "Maxin B. John" <maxin.john@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: [meta-qt4][PATCH 1/2] qt4-embedded.inc: provide PACKAGECONFIG for tslib
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
X-List-Received-Date: Mon, 22 Aug 2016 20:38:21 -0000
Content-Type: multipart/alternative; boundary=001a114ab3ca231bad053aaf079e

--001a114ab3ca231bad053aaf079e
Content-Type: text/plain; charset=UTF-8

On 19 August 2016 at 09:42, Maxin B. John <maxin.john@intel.com> wrote:

> (A quick grep in meta-qt4 for PACKAGECONFIG_CONFARGS returned zero results)
>

FWIW it's a relatively new feature: when PACKAGECONFIG is evaluated it
writes the enabled/disabled values to PACKAGECONFIG_CONFARGS, which classes
can then use to set the relevant variable.  For now it also sets
EXTRA_OECONF but that was meant to be changed now that we're unfrozen.

Martin, would you be able to write and test the change to remove
EXTRA_OECONF from the PACKAGECONFIG handling?

Ross

--001a114ab3ca231bad053aaf079e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 August 2016 at 09:42, Maxin B. John <span dir=3D"ltr">&lt;<a href=3D"=
mailto:maxin.john@intel.com" target=3D"_blank">maxin.john@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":ad" class=3D"a=
3s aXjCH m156a1f6df4a5787b">(A quick grep in meta-qt4 for PACKAGECONFIG_CON=
FARGS returned zero results)<br></div></blockquote></div><br>FWIW it&#39;s =
a relatively new feature: when PACKAGECONFIG is evaluated it writes the ena=
bled/disabled values to PACKAGECONFIG_CONFARGS, which classes can then use =
to set the relevant variable.=C2=A0 For now it also sets EXTRA_OECONF but t=
hat was meant to be changed now that we&#39;re unfrozen.</div><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">Martin, would you be abl=
e to write and test the change to remove EXTRA_OECONF from the PACKAGECONFI=
G handling?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a114ab3ca231bad053aaf079e--
