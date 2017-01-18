Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF961E00AB7; Wed, 18 Jan 2017 03:29:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.180 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D26E00AB3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 03:29:11 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id 11so9788842qkl.3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 03:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BiuyHAt1YMSrwojXAlwnpmnb3IrHp2KITKI8sYyyqsw=;
	b=unjK3atDTD0DR3JN2xvlj+9oft8MBeOGqS79DuZrtz7ib2LvKy6T3cmVQuNm5ogf1y
	UgUnRfeVaRgztSjUKifdAvgTqgHM+LAapoD0G9xeYGIrBA1CYctIXwJTnKWUTkwhq6ki
	+5fR/SjscNIIqpV6kCoTFejI9g+t1JyYozhFPoKodEW6le4iiiZ9+DeUVWhzUEZYEKvl
	709Q5DcmCjQWrtyxDaGuH/ncSBMX3Z+jrz8SOKOU/hnLZWgE8I+5A+7oHPGp5O9oVWsh
	5/zJ5WMVcM7DDhzVH7GQ5ABQ5LRhC7DHGko0Z+P8gfmZGscIZ/9XKrno2b8KC17ucQ3V
	HnVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BiuyHAt1YMSrwojXAlwnpmnb3IrHp2KITKI8sYyyqsw=;
	b=bEZ5GnKgNCuhQUx2mleej5BJrUWewDqdSBvYCYcCi2tz7rT0ILri4hePHtOtQYEHtX
	xGk3AsLoGqdAoSOCUDxrVKOBip1fcpA8YuM1aXWP8vXtMiefZ7PM9vZucKrqJ1N9eJSD
	y6EsokfZaok0yXdLCIM8gnld3nrLOEx9S9Bo8LCecN1UuNZ13QRB5qZ1VhGuYu3uahIc
	SH4L9u6xrUrkNio++h9Am+tcOa6ioubDHhbRVNWCL0oij5uQQDktepyuUASDceTjnPHK
	48YQeTCexSzCt9C/NnThV29yIW49Ssod9P9ybGFi38yEodx7WbsX+Df9j8/aJNwyg+r+
	w4pg==
X-Gm-Message-State: AIkVDXJ9+3jEP6+3s4cADb5YcRTpCmwMe9KSR0iOibugmb0MgyhqRgUD9esfnDYcJhg1hSDHbrbE2GkX+dOI+KEg
X-Received: by 10.55.176.194 with SMTP id z185mr2370929qke.26.1484738950347;
	Wed, 18 Jan 2017 03:29:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Wed, 18 Jan 2017 03:28:49 -0800 (PST)
In-Reply-To: <6bf7b6d1-fcbc-6f27-6694-4742e3f4f8e5@mlbassoc.com>
References: <709d0576-a880-c109-b602-73cf671a96ae@mlbassoc.com>
	<CAJTo0LZina7gy9PAiEj_1Wusvfi8HDMpqfHg5oYKkJbHBdsxgA@mail.gmail.com>
	<6bf7b6d1-fcbc-6f27-6694-4742e3f4f8e5@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Jan 2017 11:28:49 +0000
Message-ID: <CAJTo0LYL5JtzNV7S-E68h=6hMrzBkrrquF9-wOWQ=wHOsVk2TA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: sstate-cache and native recipes
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
X-List-Received-Date: Wed, 18 Jan 2017 11:29:12 -0000
Content-Type: multipart/alternative; boundary=94eb2c060ce6b855d605465cb9ea

--94eb2c060ce6b855d605465cb9ea
Content-Type: text/plain; charset=UTF-8

On 18 January 2017 at 09:51, Gary Thomas <gary@mlbassoc.com> wrote:

> How would one change the recipe to reflect that?  Is there an
> override that effectively says "not -native"?
>

do_install_class-target.

Ross

--94eb2c060ce6b855d605465cb9ea
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 January 2017 at 09:51, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":lp" class=3D"a3s aXjC=
H m159b11482d8222e7">How would one change the recipe to reflect that?=C2=A0=
 Is there an<br>
override that effectively says &quot;not -native&quot;?<br></div></blockquo=
te></div><br>do_install_class-target.</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c060ce6b855d605465cb9ea--
