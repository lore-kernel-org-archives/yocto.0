Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0385E00BBF; Sat, 23 Sep 2017 12:33:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.171 listed in dnsbl.sorbs.net]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 910A3E00798
	for <yocto@yoctoproject.org>; Sat, 23 Sep 2017 12:33:28 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id 21so6969849iof.6
	for <yocto@yoctoproject.org>; Sat, 23 Sep 2017 12:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8WC78BgAuMAHoSYgKQSqxVa/A9f0VPCAd6Tm4sXgfRc=;
	b=CsnhMBEjTqVpc4/1smVdkBhaYgi/v3tuwWd0DWd+rcXAm/lYSLu7k6vRyWtwhfzTsN
	6YR8NVaiE5GThxS6TZJJQ4R7NeS/jIVNeOiYYPJ5+TMYjFxD9WKtJdMBBG9tdgfWOxOL
	6PTTdtbXsheSpgO5TfQJpomH+QskcVGkpSHM9zYLnhnS8ej/H6HKqdyiHa5GH3MX/9Xg
	VsQbH98NZpueAFlA0SPNu2HBWodhG8IVIKfUsshhRqG/Y140aEs+jPlU3FjAaz3aAvOC
	6BIMLmdCjyUYTwclHD5IyopD4V6AMxw5b6DLNy7PYb1SchtS1BmkCpo8JDmtv+eCpYRl
	K+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8WC78BgAuMAHoSYgKQSqxVa/A9f0VPCAd6Tm4sXgfRc=;
	b=ecG+C+jA/2BtmWpz6cwWACwoLuMAtMUQ5jcdseHovufOSn8+hA3ycZJAv3u5/uYVsP
	s3TWOP3ggogsHafgjKM9W+JqxgC1Mzjkbhvgt24WSArH+xvCEBSZLKuN2bJhSiBudVQ4
	Gpd5SuQlfYpDIyJAZldBsv/2aoYxfDcJJGvv+B2c4luESCpQ7+Acjq77cVFygY5+9C50
	iEU5nDyq4sFfKzUTDoPQUrPDnLiXM4NCz8CGZCpOWb4FcLU8qyvbaGH0LLAembb12OJN
	Ie56WVUe+IMeFjD954dz7pPPD3LqOIfURZ/JulFcjJje78g9TVdgHjNkI4krWkB94D5i
	PLXQ==
X-Gm-Message-State: AHPjjUjsoV7JvHAsTk7FQsIkTI+kd90KUuEUGNbLfTGD2cWYz2ZJXdoe
	NNRFtYwKeZtHMqk2xrldTX74Xf4ypQzfQFHk+ZO8jw==
X-Google-Smtp-Source: AOwi7QCH2KFDDEUwJPHv9GGhFHyTNQzbIkRJKOPisQJFA9HtYsTkQvbkCX2AS6pTWPUqt/joFptugDkKZHuK1h/5NlM=
X-Received: by 10.107.32.70 with SMTP id g67mr4113468iog.77.1506195207782;
	Sat, 23 Sep 2017 12:33:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Sat, 23 Sep 2017 12:33:07 -0700 (PDT)
In-Reply-To: <CAGsrAHfGk6tXhYBawVSjCJnd+2JUZaD+_J-z__wwHivdS2+VwQ@mail.gmail.com>
References: <CAGsrAHcGAo=L8Oy3aWRwUD8QL=iQ-Hw7bc21X8HX-sOGVL31RA@mail.gmail.com>
	<CAGsrAHfGk6tXhYBawVSjCJnd+2JUZaD+_J-z__wwHivdS2+VwQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 23 Sep 2017 20:33:07 +0100
Message-ID: <CAJTo0LYhvE-BQCgeb1zgmtcQPcd09Zm6Cau_n9cT+5yuztdE0Q@mail.gmail.com>
To: mohammed aqdam <mohammedaqdam@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: do_configure error
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
X-List-Received-Date: Sat, 23 Sep 2017 19:33:29 -0000
Content-Type: multipart/alternative; boundary="001a1140ae2c5298a60559e06646"

--001a1140ae2c5298a60559e06646
Content-Type: text/plain; charset="UTF-8"

On 23 September 2017 at 06:56, mohammed aqdam <mohammedaqdam@gmail.com>
wrote:
>
> i'm getting the following error...
>
> root@pcz-ee207837-2:/u/my_poky/poky-2/poky/build# bitbake -k
rpi-test-image

  ^^^^

>  configure: error: you should not run configure as root

As it says, you're running as root.  I thought we bailed early if this
happened but obviously not.  Don't build as root, build as a normal user.

Ross

--001a1140ae2c5298a60559e06646
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 23 September 2017 at 06:56, mohammed aqdam &lt;<a href=
=3D"mailto:mohammedaqdam@gmail.com">mohammedaqdam@gmail.com</a>&gt; wrote:<=
br>&gt;<br>&gt; i&#39;m getting the following error...<br>&gt;<br>&gt; root=
@pcz-ee207837-2:/u/my_poky/poky-2/poky/build# bitbake -k rpi-test-image<br>=
<br>=C2=A0 ^^^^<div><br></div><div>&gt; =C2=A0configure: error: you should =
not run configure as root<br></div><div><br></div><div>As it says, you&#39;=
re running as root.=C2=A0 I thought we bailed early if this happened but ob=
viously not.=C2=A0 Don&#39;t build as root, build as a normal user.</div><d=
iv><br></div><div>Ross</div></div>

--001a1140ae2c5298a60559e06646--
