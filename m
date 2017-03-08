Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1A47E00804; Wed,  8 Mar 2017 07:39:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 439F6E007AA
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 07:39:05 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id y76so71878840qkb.0
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 07:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BWsAVc63KPE7DO8948hOT74kaa7hw4HKEd2CwpSg3oY=;
	b=as+eLs+EY2Naa301Y/OvZL2QhGWWms7FPlRvq7lnaM5WxgSM6bWaSIq3e6PGKi+V4W
	cxCGEDtGiiNHFh+zpz/QNB6px1bArNPkQm65cvfCb265ajDpNnjmBzgYFJQrpYzIvZHM
	PxVIFSAoDJE+qhkqeJ3225K6c8kfT+a3J+OnR3HIAFywnh6nHeSSsJmMLZpeYsxWCLmA
	WEVIn7xpo5M527TXhKpAArRmCIHRyl6/g9koivhyaO92UT9ovctoQsPcWWWF5Ojeg3NY
	gOrSIA+uxX3IKkYRvQtxsIO0/9Yg1wpuxO8mkRAZBOvavGBmLWTi+tfrFRLJeQt2psTn
	jJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BWsAVc63KPE7DO8948hOT74kaa7hw4HKEd2CwpSg3oY=;
	b=RZ+Q3TaN+sWfYP6Hy1Yxx67vkL9bFwDR4akmTq8fsTzFrx7imCkE/SLotHO+hkZUkd
	CtggZvg9Hht1TZMZF+Z3YIDBAT6ogJWpojYdvTQ3TKQIosweu5oD+pCr4WSthlPTcFPb
	WlBGIc/0VLy9600JqvNIgORMtwLzGxmVIeF+T62vEIl3m2FWBZgjN7a2F4UOgQglcGeM
	2u0FbVx8EVihoSFu7rMrTA177ERn2KcjDwN5aHcW9MSQBbwrm/CBToAmlxUhnxeAwtam
	OOzNvf/vIOMVJAqVQokP5+0vzJmwu/zKpDTo3nWXDfai+/5meaWMlYes7eEpsIh3B7Po
	a6YA==
X-Gm-Message-State: AMke39laV4duwTli35D7AXYDUQ5bVDF8BHm53VK5O+dgYueHK/CXzU/17AXaJ3qWELeEq3OFslxg3Z0OKPVtjY8W
X-Received: by 10.55.1.134 with SMTP id u6mr8569687qkg.36.1488987545162; Wed,
	08 Mar 2017 07:39:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Wed, 8 Mar 2017 07:38:44 -0800 (PST)
In-Reply-To: <CADG2P4VOkc=f6-F8GwqM91MHY9Trw8A=7XU0skohOnsAxP+zJg@mail.gmail.com>
References: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
	<CAJTo0LbfX7tfNxuBB2df3XYvM2zKEDis4zMtpD3KcgEaQtJk3A@mail.gmail.com>
	<CADG2P4VOkc=f6-F8GwqM91MHY9Trw8A=7XU0skohOnsAxP+zJg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Mar 2017 15:38:44 +0000
Message-ID: <CAJTo0LbmYV=_CZU66+iuq9PQn0pXq1U9gZnB_jbsk8s=1Z7H0g@mail.gmail.com>
To: Dominig Ar Foll <dominig.arfoll@fridu.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gst-plugins-bad- Patch fails 'ensure-valid-sentinels-for-gst_structure_get-etc.patch'
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
X-List-Received-Date: Wed, 08 Mar 2017 15:39:09 -0000
Content-Type: multipart/alternative; boundary=001a114046c4b4aad6054a39edb0

--001a114046c4b4aad6054a39edb0
Content-Type: text/plain; charset=UTF-8

On 8 March 2017 at 15:10, Dominig Ar Foll <dominig.arfoll@fridu.net> wrote:

> yes, I now that I build the latest.
> I am checking in advance of phase what will break in Automotive Grade
> Linux (AGL) when 2.3 is coming out of the wood.
>

When 2.3 is released it won't be using the git gst-plugins-bad recipe by
default either.  I'll fix the recipe, but the git recipes are prone to
breakage as they're not that tested.

(this is why I want to remove them)

Ross

--001a114046c4b4aad6054a39edb0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 March 2017 at 15:10, Dominig Ar Foll <span dir=3D"ltr">&lt;<a href=3D"=
mailto:dominig.arfoll@fridu.net" target=3D"_blank">dominig.arfoll@fridu.net=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><font size=3D"-1">=
yes, I now that I build the latest.<br>
      I am checking in advance of phase what will break in Automotive
      Grade Linux (AGL) when 2.3 is coming out of the wood.<br></font></blo=
ckquote></div><br>When 2.3 is released it won&#39;t be using the git gst-pl=
ugins-bad recipe by default either.=C2=A0 I&#39;ll fix the recipe, but the =
git recipes are prone to breakage as they&#39;re not that tested.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">(this is why I =
want to remove them)</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a114046c4b4aad6054a39edb0--
