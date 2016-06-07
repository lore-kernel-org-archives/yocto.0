Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A395FE00C28; Tue,  7 Jun 2016 09:20:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14974E006E9
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 09:20:32 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id z123so94962349itg.0
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 09:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PMExogw1G1elkeS1ictzN4N2n5bpwJ7zk26TRmtINjw=;
	b=A+dtrL2pYs2E2viD83xEkybX/O2/QZWwOVf7Hst6bL6EdjhM4WwA7/rO39VjQ9ODN5
	mTtgpm3/2pFPfs8OpDcyWTVPZRhcmiGRDtuHmBtP6vQc0GhWcnkP4quBEjPds9M5Fh5q
	cMVOtfU627oRtOX7R/i60fHVedTzZ1SgRbVLiYXN1x//QnbnoWM+SZLptHtZafecKbV1
	Frxs0S4dYIWjUthcO4uZBtYd1gTk1AsyqwVlox/h+9Hd+LAVDIqxMhWlUwb72pLmtZkG
	A4MCmCdRd6n1YcVOVBHq5uf7fveNT4J5e4iCT8v+/WK3YV4PEQOZVbgj/dvalst8hRO2
	kYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PMExogw1G1elkeS1ictzN4N2n5bpwJ7zk26TRmtINjw=;
	b=Rrcut4ERQETJxaiSsWGOIrOgeVn4ulVvvS7xPdiG2qt0PgcumuLorfv7dKkhmXYO6/
	Smwh/L8JP1HxctsEEM6AaO34JQzx6gZ2h0jVFsECgbTBWDO5rQzEY7X7TFMXC0RucEmF
	0tDMGXakYVFOaj/tZiegI6yFYLuJRIFArSSMeG9ZtYCyTBlOe6EQsXIfoRVOOI/dh81g
	XDZiEtod3xJveZMtAwwIL+okYvjf10W+MsQ4jd91IeyM4QTUZx4U5549HcdgRGOX7ISX
	6xXtn92gPPOwZyxkdxfjB9zLkL2hvS/kTu3qlV6NrstTNAZpFVp2FDPwdvxkDkqtuFPt
	w66Q==
X-Gm-Message-State: ALyK8tJpAHnBjyu5AAjJIE9PT5zyFfRSAy7wzxIBZNnS0h57c37EgfRbXpTs70Kmusisq67Yn8SpLZowl1wtKnyl
X-Received: by 10.36.246.75 with SMTP id u72mr1048968ith.38.1465316432117;
	Tue, 07 Jun 2016 09:20:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 7 Jun 2016 09:20:12 -0700 (PDT)
In-Reply-To: <CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
References: <575456D5.4080800@mlbassoc.com>
	<CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 Jun 2016 17:20:12 +0100
Message-ID: <CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What's this
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
X-List-Received-Date: Tue, 07 Jun 2016 16:20:34 -0000
Content-Type: multipart/alternative; boundary=94eb2c1189806b95960534b29154

--94eb2c1189806b95960534b29154
Content-Type: text/plain; charset=UTF-8

On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com> wrote:

> It means the hash calculated my the bitbake master was different to the
> hash calculated when the worker started up.  This usually means that you're
> using something like ${TIME} in the recipe but not marking it appropriatly
> so the cache ignores it.  Do you have a base-files bbappend that writes a
> timestamp?
>

The always wise Joshua reminds me that if your DISTRO_VERSION contains
${DATETIME} then this happens.  If you're doing this then you'll want to
set [vardepsexclude] on DISTRO_VERSION to stop the DATETIME from getting
into the cache (or not put the current date/time into the distro version).

Ross

--94eb2c1189806b95960534b29154
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 June 2016 at 17:02, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra">I=
t means the hash calculated my the bitbake master was different to the hash=
 calculated when the worker started up.=C2=A0 This usually means that you&#=
39;re using something like ${TIME} in the recipe but not marking it appropr=
iatly so the cache ignores it.=C2=A0 Do you have a base-files bbappend that=
 writes a timestamp?</div></blockquote><div><br></div><div>The always wise =
Joshua reminds me that if your DISTRO_VERSION contains ${DATETIME} then thi=
s happens.=C2=A0 If you&#39;re doing this then you&#39;ll want to set [vard=
epsexclude] on DISTRO_VERSION to stop the DATETIME from getting into the ca=
che (or not put the current date/time into the distro version).</div><div><=
br></div><div>Ross</div></div></div></div>

--94eb2c1189806b95960534b29154--
