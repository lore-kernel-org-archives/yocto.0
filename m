Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8924BE00ADF; Thu,  9 Feb 2017 06:36:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A8B5E00A51
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 06:36:14 -0800 (PST)
Received: by mail-qt0-f177.google.com with SMTP id v23so5407909qtb.0
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 06:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gXRHqgp4uegXUH/SXF4JG/W+saTkWZMDGv8GM91ULjA=;
	b=zAF3yO9VpQd0FZ1Tge92EzPPhvdj6eLxsjMVlqxqjhgt53akgomKz33HCWOKsygYIw
	1+OXZwEUtWgYZeAtdW+wcl5y9JBJAJFlnRCvW3YBzSHYH+0qrt8WHmgxsQlalvkpwmzv
	2YfcXAYWmVFAcyW9qxrE2G0mIYsY08hAhaYvR6pR0dHAMFwsB/uK64E7Z0naynvCSxlA
	mGFv5/cIMtO2q3D+xoKULlu3Blab+Bf+/RiKPZYX9miTxj9DhiNQx6NglQ9TLCMkvPVe
	gE7AMQVSrKKJGdhHaTLWJCjWWIX94JiantuKVFlpLdybyenSv57V42gsYdpCaigA2nEw
	sJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gXRHqgp4uegXUH/SXF4JG/W+saTkWZMDGv8GM91ULjA=;
	b=E3H64wvRDUseDyhkup9t9S72Ir02cjoNaYSumZSx0yAFh2lG4/LygoFfxEKTGyutGi
	itTIK9AEfMNzCWs6RuBVYC2zXLwpEjUz/EUjCTF21Rq+uDixtq8maPCu9dvoEj4vC85M
	ROhVqwo0uuY0+g+yi4xnhUnf0yMMjRsTZUcKoO2UoqkHgKkpUFZpRtd0WkQwT4Ol+iBO
	GK6UijqQXnCWheGPhPXShLZeMJwkWZ+oaCgS6a0Wq59F/bPifiFiez6nlji+5RV9Vj1B
	GMZaeCS8Q7lLBdevwS+UG0k6b8s+N8ahD5BkJRltY8RoJzvSKRaPr4LQMJ2Q2dLSEbWh
	daDg==
X-Gm-Message-State: AMke39ke3ASuT/r+KtVsf6bdnWFGW8NNq+oRRnisGomNjzRFhCXoSNaxkBxEC78CV2wOOh3A/knYlHrdvBsCdBBh
X-Received: by 10.237.62.232 with SMTP id o37mr2930052qtf.188.1486650974237;
	Thu, 09 Feb 2017 06:36:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 9 Feb 2017 06:35:53 -0800 (PST)
In-Reply-To: <1e710ec0-80d0-ecc5-dedd-1ea0b29e2a10@mlbassoc.com>
References: <8dce4c37-30db-f5aa-69b7-7c9653769994@mlbassoc.com>
	<CAJTo0LY01P0Mvtj1kmYsrmugk0Sz1exk3JoiWwNGkuKQbi3FHA@mail.gmail.com>
	<1e710ec0-80d0-ecc5-dedd-1ea0b29e2a10@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Feb 2017 14:35:53 +0000
Message-ID: <CAJTo0LZCMAENF30XVmY8HgDf5G45uaNixGU=1VKfg-kSYSMLYQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trimming images
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
X-List-Received-Date: Thu, 09 Feb 2017 14:36:16 -0000
Content-Type: multipart/alternative; boundary=001a11406f0e39b63b054819e77e

--001a11406f0e39b63b054819e77e
Content-Type: text/plain; charset=UTF-8

On 9 February 2017 at 14:33, Gary Thomas <gary@mlbassoc.com> wrote:

> usbutils depends on hwdb as it's mostly useless without it.  Maybe this is
>> the cause?
>>
>
> I'm sure it is (and it's a recent change, 2017-02-02, while I was on
> holiday)
>
> Is there some way to disable this, certainly in a case where I
> don't care about the device database?


Two options:
1) don't install usbutils
2) send a patch to change the depends to a recommends

Ross

--001a11406f0e39b63b054819e77e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 February 2017 at 14:33, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><span class=3D""><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">usbutils depends on hwdb as it&#39;s mostly useless without =
it.=C2=A0 Maybe this is the cause?<br>
</blockquote>
<br></span>
I&#39;m sure it is (and it&#39;s a recent change, 2017-02-02, while I was o=
n holiday)<br>
<br>
Is there some way to disable this, certainly in a case where I<br>
don&#39;t care about the device database?</blockquote></div><br>Two options=
:</div><div class=3D"gmail_extra">1) don&#39;t install usbutils</div><div c=
lass=3D"gmail_extra">2) send a patch to change the depends to a recommends<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</=
div></div>

--001a11406f0e39b63b054819e77e--
