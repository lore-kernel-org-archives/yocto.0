Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05662E0083D; Mon, 24 Apr 2017 04:12:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80DCDE0077F
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 04:12:16 -0700 (PDT)
Received: by mail-qt0-f178.google.com with SMTP id c45so109947378qtb.1
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 04:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qQbTcCIv3/f/t1/KHIuZB7MIPvf3Q6Hd3V8BLylp5xU=;
	b=1R3YgZm79bvXb1SIEOSBOhrv5q8x22s4zN64h9FJ97tQWmeFinKdNpuT7y87WI5lsS
	ESZbBvRG81EKWgYvny3HHHOV7zRKRZ1UED29FnhJAU5va2iObiQColvIxK0hPZIUo1sR
	WYsiof1pimgHrllC2zkrvMMMRqMKbn/qxqY60vV6CPTqBaI2BD4Qgrr4wkZC2V9KxuCv
	buTZsCmGLm/pxXHgdd5bXRY8W8lhVZH5uuDdARizsAp+8qV4Xvrfa6nmhV4jWD0YXXpM
	1vP5BNLvnqrIWNKc+ncRK55pH3XQHgEYAhc/gWiOvUMRo1XGScENmAau51xumP4qnq+A
	+lHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qQbTcCIv3/f/t1/KHIuZB7MIPvf3Q6Hd3V8BLylp5xU=;
	b=RwIo+SrOtkUnp8hoF2KCyk4MTHCBqimRNlSzF7kWjHJgv9ygUJhouNFm1BQDfNOdcd
	oSngtnSKuKA8LIPPGJd8Ko/NfguLKx5m2HyxAX6Tz2yIdIbV4mjR/+daPwBABrynajqW
	1zy8wT/z7usP3OEfV13dfLJNrwCw7/bF5WtvGSqCE6r5P52JFsX/0L4gNAyrmu85tP+k
	z+cH+PcdMscB2DNO+5Lq1USm5qEuO5W7ikXq9tH3PKcP8q+3qAMpaa/mzo/euKiBVKzO
	AZPJE/A20LIPBhsI+5jssP7CSNPm3TnUyUKYo8AHQuxGIjVJC61gcaWSG7ZvuSLSCW4O
	YyBQ==
X-Gm-Message-State: AN3rC/74nSEGA0zKMCaNkhSdr0FYmR09I958JrHb6Z+0NYAu1XVIAdL9
	4HbwbT/+rcfWvFFLBfTjbvUkxFd4rAIg
X-Received: by 10.200.34.242 with SMTP id g47mr24441015qta.109.1493032336251; 
	Mon, 24 Apr 2017 04:12:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 04:11:55 -0700 (PDT)
In-Reply-To: <CAJTo0LYc7nRX2zsPJkP3ZdmnenBxP=fCNUbc_H6L1vePDHjn_g@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
	<CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
	<CAJTo0LYc7nRX2zsPJkP3ZdmnenBxP=fCNUbc_H6L1vePDHjn_g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 12:11:55 +0100
Message-ID: <CAJTo0LZxsyHC7zjc7Z=wdS5_7NizgnCh=qkPM5munBkGWOmyGg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 11:12:19 -0000
Content-Type: multipart/alternative; boundary=001a114037d40a7980054de7aeb2

--001a114037d40a7980054de7aeb2
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 11:29, Burton, Ross <ross.burton@intel.com> wrote:

> I'm getting that with 4.9.15 from meta-intel, should I be telling Saul to
> update the BSP with some fixes you've made?
>

Or ideally telling myself to update meta-intel for the fixes that Saul has
already merged...

Ross

--001a114037d40a7980054de7aeb2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 11:29, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra"=
>I&#39;m getting that with 4.9.15 from meta-intel, should I be telling Saul=
 to update the BSP with some fixes you&#39;ve made?</div></blockquote><div>=
<br></div><div>Or ideally telling myself to update meta-intel for the fixes=
 that Saul has already merged...</div><div><br></div><div>Ross=C2=A0</div><=
/div><br></div></div>

--001a114037d40a7980054de7aeb2--
