Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47499E00B66; Wed, 13 Jan 2016 12:20:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A04EDE00B46
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:20:03 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id mw1so156647874igb.1
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 12:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=C5ijS2fZTUKVp9XuMs1nqPUkxoQIptVvZG5YoMs83tk=;
	b=TEP7lVGewHD0RPFoa6uGQdodNFDpn/1whc5Z8hjw8D7DPUJH+ewo7AjJ8Wk8QavNjs
	tuSKzVV6ywCutFgvwXBC/uW4ZnRPSWKDTVZTRObhnaxqqy6KfPzszXSHHD18kTifr3RS
	k/Ig/l5L/MmWT6Tfc/JbjkdKfiEjbbTE0jxib//Mct9VcyfXq4NRK9jAbXbRlfy231GM
	mqO66iHeMY+LCB21VEVO59jML7UdZuuwgHqfvPOs81bXTBuAdTGj25qITxzyBwGgGcoK
	bfk4nicUVRgBeTYdOgKfA2Si4EiIJFr4qtgg16Mlh1ebrxhpqPF3FY44EPFO8HEuMFm8
	qiMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=C5ijS2fZTUKVp9XuMs1nqPUkxoQIptVvZG5YoMs83tk=;
	b=DSBzse0jvetJ42HEVUOan6rn0rpgU399mWi6JdtGVbEHCd8d35G/1OfVam9RNoZAlN
	olAMM+911n97bJZZ7WQQVnKvirFLg5GLrcU52IqA2BIgSWhwPXz38pt1ONc+X1qiMWq1
	iOhVNbbcEHN3uRnzkl/0uQeG7y0YSW6m+vOHJNwxB4ZSe6YTy06JESvuuFjNq9XCnFca
	svp+OE9Aft5ysYldUffuRdTE8PdYz4RPgM7BbKUVlrtj5esHwWWcFOkDeOajjlmVE3cF
	bkT2+gDcJ+2mDntZsRGwK0HMOZIszQ9inbgX7swNxq9H/yoMEk1ikMmLwuvs9T9bp1C5
	WyZA==
X-Gm-Message-State: ALoCoQnWG9Hh/638ZXo0kDfhQuUBTLEC+nQgYLGY9eZC0UF9S++N2q1WsrUEeAmy35oqL52tVBOJYO0X1WnJ1aOIsyUgMT8MXpUGunrAkwV7PZ44TnAuJiY=
X-Received: by 10.50.55.4 with SMTP id n4mr819462igp.64.1452716402390; Wed, 13
	Jan 2016 12:20:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 13 Jan 2016 12:19:42 -0800 (PST)
In-Reply-To: <1597083.J1Q8K4j3y3@peggleto-mobl.ger.corp.intel.com>
References: <37b747fd-ad90-45e9-b3cc-4595c4d83661@fmsmsx108.amr.corp.intel.com>
	<CAHiDW_GGH6X3vyFXe5+JCZz3pn8L0HPDfxN3BsjT3nbYC_oj_w@mail.gmail.com>
	<56968498.5070207@linux.intel.com>
	<1597083.J1Q8K4j3y3@peggleto-mobl.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Jan 2016 20:19:42 +0000
Message-ID: <CAJTo0LZA8dDFJJ-+RLay9brMubTcBbxPa1gEPst5e1XFxf-0YA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Anibal Limon <anibal.limon@intel.com>
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
X-List-Received-Date: Wed, 13 Jan 2016 20:20:04 -0000
Content-Type: multipart/alternative; boundary=e89a8f3b9b491fd21805293ce553

--e89a8f3b9b491fd21805293ce553
Content-Type: text/plain; charset=UTF-8

On 13 January 2016 at 20:03, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> I'd question the value of -a as well; the tool is supposed to be smart
> enough
> to show you the things that matter and hide everything else by default. If
> it's not doing that effectively then we should fix it.
>

If this is turning into a "how can we make buildhistory-diff better" thread
then I'd love it if there were a way to hide PKGR changes.  I've a PR
service running locally but don't really care if a PR changed in the
context of diffs.

Ross

--e89a8f3b9b491fd21805293ce553
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 January 2016 at 20:03, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":410" class=3D"a3s" style=3D"overflow:hidden">I&#39;d question the valu=
e of -a as well; the tool is supposed to be smart enough<br>
to show you the things that matter and hide everything else by default. If<=
br>
it&#39;s not doing that effectively then we should fix it.<br></div></block=
quote></div><br>If this is turning into a &quot;how can we make buildhistor=
y-diff better&quot; thread then I&#39;d love it if there were a way to hide=
 PKGR changes.=C2=A0 I&#39;ve a PR service running locally but don&#39;t re=
ally care if a PR changed in the context of diffs.</div><div class=3D"gmail=
_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--e89a8f3b9b491fd21805293ce553--
