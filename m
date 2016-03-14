Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC378E00D4A; Mon, 14 Mar 2016 05:46:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5214AE00BE8
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 05:46:38 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id n190so220731570iof.0
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 05:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zkpKAm2ptFmVtJu0CxOlMnEiBtrr17vsKDQFw/vaa2E=;
	b=MiRJhsY1/qPR0VvCaWwQgdqWbCix3cp0QkbjYOYyoRm0ZvdcHBAiCRwlUbxBSUHX1E
	k6WrKPWG0YbDXR9PXA1Cu63nCzI9UcdP61zTcmHRs7v261zB0sZEYWQGo3RYNMCYt/WA
	YwTFMnaLYUMSq6HaScTWkrJrbOEFanXLl0+KPTwB6HRy0VJeorMt8kEI3N+QTlxQut5v
	AMCQNGRXtBI/0LuTVtP4WUO8z4n54qEBja9iToNUROsGNwRye2+64cD47/P873Xfd6BM
	wz9KATjCINBnqNCvn5ujF9bVRZaeEUNnjMOJlAMEVE93jdwAndCwimJmze14OJnJIq8L
	EyUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zkpKAm2ptFmVtJu0CxOlMnEiBtrr17vsKDQFw/vaa2E=;
	b=d0SgcZbr+tIPJ/lYNlDLwx+GpvyxoAneBVdDlyS8zHaYg3z0FEv5LMfcMDsIVjH8Mz
	sDx+uZ1HTK0DOOdRMplXr5GjoWlxLq9AgKCavNWn1uOVs8sjVhbXC0XawYDT9PE3ib91
	2RmhnQS+2zcoffEmzQu4GH0VkfXBIyZREOvnOT969XzXbRMaVpcLDV0kH3kXjyf6tx10
	Rf4b2+B77nIw9vNz397zGxd0oQJRCklqL2BMlQgoV5bSVRT3o5gCBsB5ltunHU7dQP0O
	WEaD4ep6ysHBAu7c5TD8TFKtV5AFB5bGJp32QKM+PnBQrpLWA4D+J1YUSrrTho2qiIpa
	GKcA==
X-Gm-Message-State: AD7BkJIfM1xm3cfKsQJX42gjLIrJguCdGHHyM18fiFYIWBI3cziRSuJBQz9OSSRQXZg5aQXRCCZxtjxiIm7UXd03
X-Received: by 10.107.16.19 with SMTP id y19mr21682550ioi.148.1457959598328;
	Mon, 14 Mar 2016 05:46:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 14 Mar 2016 05:46:19 -0700 (PDT)
In-Reply-To: <56E6B182.1060505@mlbassoc.com>
References: <56E6B182.1060505@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 14 Mar 2016 12:46:19 +0000
Message-ID: <CAJTo0LZYi3PK2KJC3vqrN2AVwMGSN=dVZZckWk_0XpNsvu9jeA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange build dependency
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
X-List-Received-Date: Mon, 14 Mar 2016 12:46:42 -0000
Content-Type: multipart/alternative; boundary=001a113fd1eaf4a291052e01ab7c

--001a113fd1eaf4a291052e01ab7c
Content-Type: text/plain; charset=UTF-8

On 14 March 2016 at 12:41, Gary Thomas <gary@mlbassoc.com> wrote:

> How can I find out what's going on here?
>

bitbake-whatchanged is generally helpful here.  Do a build in one
configuration, switch to the other, run bitbake-whatchanged.  It will
identify the hashes that have changed and try and chase them down.

That said perl is quite a deep recipe so rebuilding that will certainly
bubble up the tree causing all sorts of rebuilds.

Ross

--001a113fd1eaf4a291052e01ab7c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 March 2016 at 12:41, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":338" class=3D"a3s" styl=
e=3D"overflow:hidden">How can I find out what&#39;s going on here?<br></div=
></blockquote></div><br>bitbake-whatchanged is generally helpful here.=C2=
=A0 Do a build in one configuration, switch to the other, run bitbake-whatc=
hanged.=C2=A0 It will identify the hashes that have changed and try and cha=
se them down.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">That said perl is quite a deep recipe so rebuilding that will certa=
inly bubble up the tree causing all sorts of rebuilds.</div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113fd1eaf4a291052e01ab7c--
