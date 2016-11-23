Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF2AAE00A6B; Wed, 23 Nov 2016 02:51:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D068E0098A
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 02:51:12 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id w33so7691872qtc.3
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 02:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=245pJ00Z3R4WTZkawzhCQqE+jY1IjwXFoZHtSWho/zQ=;
	b=yxCCf03sDqs6NitE5pl5aQ9T7k7NFeenf4YpuqyIMYSMGMMGa2R02dQogY2HBARzuX
	lWtPZl5uyBxEzGZSMRsDeoHSXuXLmRd1bbIfIlovHmRln4m0Vq5ygvPe/fHi5aN02Vx2
	RtyTS3UWzPmAa/VyRREKLziwtYEz2lPCstMFRBaZGL1TDhcqoB5zLyRaXeNdXYkV3JqI
	63QWd4Wc1ypQJPRjb1rZSQQuAGhkhCeOW3qKNQwzaz2uQQRldmertv7ZLf+AZmgcT7AA
	Nl9Plj1txeGW1tEiSqms8Q5b6f3peru5YA9aDjl5mRdhiB99CZuPB+16mwCYImS/0Egu
	K+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=245pJ00Z3R4WTZkawzhCQqE+jY1IjwXFoZHtSWho/zQ=;
	b=gtxQh4UbsVGkhg2clOFtNvW+Hu401jsFC3dPpB7TIOig2DOIfJ7tV3eEXOEpODtVIZ
	5RVn0S2ez7YQu7WZLO81zExuHsiAYui7RgdgNJFJEAPoeVHLDEcfCX5c4QD/kOSuXLQu
	b42KFefVt6EQm6L0pV0OZdGeuvAOfIYltLhO6DP5Vqm6icfI8AfesxIzeuem35N8ioNC
	yVWyfO9PCefjUl9UiG1Bg6hC9OcXHHLabS5Cw7S3FhxDNcPTSYfJT5Vy8zbG6ND9mE62
	SWMHillsHzQYZryvrCpFlfjJqvwuY+Q3B+e7gXfoq6xb/5M6l07xMkVKi9K+xnRghT80
	cigg==
X-Gm-Message-State: AKaTC01Z3poLtyy18FGeAYlb1FWOczm3qQGcU+Cf+8Um/w6LWV+ybBuMyUfrDd93tBSH6JnvnlvDmfwWrTji8AMz
X-Received: by 10.237.37.77 with SMTP id w13mr2098670qtc.197.1479898271249;
	Wed, 23 Nov 2016 02:51:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Wed, 23 Nov 2016 02:50:50 -0800 (PST)
In-Reply-To: <1587381958.322993.1479895234059@mail.yahoo.com>
References: <1587381958.322993.1479895234059.ref@mail.yahoo.com>
	<1587381958.322993.1479895234059@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Nov 2016 10:50:50 +0000
Message-ID: <CAJTo0LbHi-79qj7B9PoOt0jyLaxeHU6aUTwwaiOsiXbi1Ra4xw@mail.gmail.com>
To: Oliver <urnen81@yahoo.es>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Use recipes but not whole layer
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
X-List-Received-Date: Wed, 23 Nov 2016 10:51:15 -0000
Content-Type: multipart/alternative; boundary=001a114108eac30f620541f5aa94

--001a114108eac30f620541f5aa94
Content-Type: text/plain; charset=UTF-8

On 23 November 2016 at 10:00, Oliver <urnen81@yahoo.es> wrote:

> When a layer is included in the build (conf/bblayers.conf), all the
> bbappends and distro configurations, apply to the current build. Is there
> something additional which the build is affected after a layer included?
>

As per the Yocto Project guidelines, layers that do this are broken.  A BSP
layer should only introduce changes that affect the BSP, distro layers
shouldn't contain general purpose recipes, and everything that is
distro-specific should be isolated using overrides.

If a layer breaks these rules in dramatic ways I'd start by filing a bug or
patches, but you may find the whitelist class useful:

https://github.com/ostroproject/meta-ostro/blob/master/meta-ostro/classes/whitelist.bbclass

Ross

--001a114108eac30f620541f5aa94
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 November 2016 at 10:00, Oliver <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:urnen81@yahoo.es" target=3D"_blank">urnen81@yahoo.es</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex"><div id=3D"gmail-m_-2871216520387573030yui_3_16_0_1_1=
479894428778_14412">When a layer is included in the build (conf/bblayers.co=
nf), all the bbappends and distro configurations, apply to the current buil=
d. Is there something additional which the build is affected after a layer =
included?</div><div id=3D"gmail-m_-2871216520387573030yui_3_16_0_1_14798944=
28778_14411"></div></blockquote></div><br>As per the Yocto Project guidelin=
es, layers that do this are broken.=C2=A0 A BSP layer should only introduce=
 changes that affect the BSP, distro layers shouldn&#39;t contain general p=
urpose recipes, and everything that is distro-specific should be isolated u=
sing overrides.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">If a layer breaks these rules in dramatic ways I&#39;d start by f=
iling a bug or patches, but you may find the whitelist class useful:</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D"h=
ttps://github.com/ostroproject/meta-ostro/blob/master/meta-ostro/classes/wh=
itelist.bbclass">https://github.com/ostroproject/meta-ostro/blob/master/met=
a-ostro/classes/whitelist.bbclass</a><br></div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114108eac30f620541f5aa94--
