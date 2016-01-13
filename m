Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DD4AE00B6D; Wed, 13 Jan 2016 12:28:44 -0800 (PST)
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
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 263BBE00B66
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:28:39 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id 77so399694833ioc.2
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=1HfOX+efm5cyrPvaIuLXsMR7iDQlzyLEXBOiYWSZDxI=;
	b=KeVLkTA5kD84M6XrTNscLLHxa8XajIebTX/tZeEuiEHukvYlHn+fJ5v2KipYpGA3PR
	dg1cj5x9Or7TTapbccU2cnOEiGg2FIrUgFV+VrESiVvO9IAEYc+EwqaHFuca5R3pj+lt
	TY7M2VkspuKY5wFUlC6IGrPq+RGi3HIHeZ8BwIV2dD8wIg1qfAI6zC4F1TBhfa8kC2zU
	sw+clXd6nE+RXe/oKj0frcXeJ44pHPrIdxoIKxfpgb0BfsLUaopV644rsCEMUZZlIQcB
	Mncmn6N5I0c1ft6K36rg2d7Hg3s7MyGdOcfYjyxmKvU005XIjYw+ob4Uo9EJjk5SYQMf
	d/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=1HfOX+efm5cyrPvaIuLXsMR7iDQlzyLEXBOiYWSZDxI=;
	b=Tgn7acUuCXmdz+2pzP2TwjkWX0BeGIc1Xuyg25HmMScaCvcCpEX7t62au3RMhcdBm4
	CLcuQRlIrXLKMIVndC1pOvFhr39rN5urmDwc2HN1BkI5UDfT3Af8BebPvMDEaMTBQpH9
	WgBuCqAz9YcMwy6gIwVCvHy1U/GuuZql53izK6zWZ4lANelFT/Z4K/mD1aXGPlMuo+8H
	0roNowr+q+g9JtYAd3imGGNZdWLw9oL6mjSNVQ4sadnymKK7iM1/eGQpBYfRKaT0uP0T
	vR7PJOkHxgCrPgLnD7GdVES5x3a1QPlb/OPxeQx69LloQuHeRL31l20pG5kgX1UDmKad
	3bOw==
X-Gm-Message-State: ALoCoQnbdWZEXaZlBo+rm91POLQVp0zYxVicKIEKEq4QULln7VU4doqzTDZo6G+JZvMfotqbO9LSgCcmobCIY5CkSKoc6MImSNCb5pkZ1aGCR7bmeHuYCdU=
X-Received: by 10.107.164.161 with SMTP id d33mr799658ioj.148.1452716919340;
	Wed, 13 Jan 2016 12:28:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 13 Jan 2016 12:28:19 -0800 (PST)
In-Reply-To: <5696B318.50709@intel.com>
References: <37b747fd-ad90-45e9-b3cc-4595c4d83661@fmsmsx108.amr.corp.intel.com>
	<CAHiDW_GGH6X3vyFXe5+JCZz3pn8L0HPDfxN3BsjT3nbYC_oj_w@mail.gmail.com>
	<56968498.5070207@linux.intel.com>
	<1597083.J1Q8K4j3y3@peggleto-mobl.ger.corp.intel.com>
	<CAJTo0LZA8dDFJJ-+RLay9brMubTcBbxPa1gEPst5e1XFxf-0YA@mail.gmail.com>
	<5696B318.50709@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Jan 2016 20:28:19 +0000
Message-ID: <CAJTo0Lag6P2bmUF-D32p0q3tn=JearNuhS+55i7v=d5w_4LLEA@mail.gmail.com>
To: Anibal Limon <anibal.limon@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AUH] gpgme: upgrading to 1.6.0 SUCCEEDED
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
X-List-Received-Date: Wed, 13 Jan 2016 20:28:44 -0000
Content-Type: multipart/alternative; boundary=001a1141c976efd8d505293d039f

--001a1141c976efd8d505293d039f
Content-Type: text/plain; charset=UTF-8

On 13 January 2016 at 20:27, Anibal Limon <anibal.limon@intel.com> wrote:

> If we don't use -a option the PKGR changes are not shown. I don't know
> if buildhistory-diff needs another improvements :D.
>

Yeah, my request was general, not specific to AUH.

That's probably because the AUH doesn't enable a PR server, but I have one
locally and always need to buildhistory-diff |grep -v PKGR.

Ross

--001a1141c976efd8d505293d039f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 January 2016 at 20:27, Anibal Limon <span dir=3D"ltr">&lt;<a href=3D"=
mailto:anibal.limon@intel.com" target=3D"_blank">anibal.limon@intel.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1vx" class=
=3D"a3s" style=3D"overflow:hidden">If we don&#39;t use -a option the PKGR c=
hanges are not shown. I don&#39;t know<br>
if buildhistory-diff needs another improvements :D.<br></div></blockquote><=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Yeah, =
my request was general, not specific to AUH.</div><div class=3D"gmail_extra=
"><br></div>That&#39;s probably because the AUH doesn&#39;t enable a PR ser=
ver, but I have one locally and always need to buildhistory-diff |grep -v P=
KGR.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--001a1141c976efd8d505293d039f--
