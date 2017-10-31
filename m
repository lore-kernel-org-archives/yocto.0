Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93593E00D2E; Tue, 31 Oct 2017 15:43:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E665E00D1C
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 15:43:46 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id m16so2332647iod.1
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 15:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PPi9eOhVr6H659BHemUgV6glUpdkKOyefe0YbJwKdHI=;
	b=mszzrvspYncUakzlNCfrhm8OSJkhOjpcjkb9QbS/t+ZuWxJMQYfvT49PkVVvsKtjqr
	kjUG0M3jBvBHfRC9gJ0k4YZ7AfwDZ68TVGvSLclDOUegDgXlRQBzVF1Hm3OanBkivrM9
	n38GQWpjFNz9i5hSX/r9KLF09MDegyUOV+fxeQhOUaNN5Ah+TTM3SRQfxBOo5cgYZP+V
	EqX8COni5D3P7bAMNtAZYQFB+BQnd12znt9m5DY9AXlK/g4B64Ia9tdHr9f5MmtdKlp9
	bhKi78rfjwbj2Z6DR0xoqZu//hM9Pl+8l8eUrYNaWsGxehuYFG4MUJ4O/dX+9qN+5/XJ
	d5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PPi9eOhVr6H659BHemUgV6glUpdkKOyefe0YbJwKdHI=;
	b=KnUyFLxhAV6cmD1yrCxW4tCsZdM1C5wI422dslbvV5Z3HsQdsNEW7Gk06BExe19hOK
	1KWafkfQQDFz1PVBkEdhxD28haIn3eQcQwjJKkFIY0r0B3fwAhUMTlTN/LTDULFjexSQ
	CYbFDnoNRL2HPIWhuZBV1txS1JZx90Sg7EHYxVVlbTDe9zZTTEPZLjPBHeetz6ffq68i
	JTv+vYdPMNdc6n7LE5dcxVnuGoKTVy73/ziwTlP0huc+w5q1sM/Dnt63rvhvPP6pdptn
	gqsjuvjjwWB2Dq9z6l0JD5zYdgOLZDambbzaUMrXFkohX/MF12u2vKpU7lFU9p4BZilm
	fi9w==
X-Gm-Message-State: AMCzsaVPl7TS2Fo3W6sHjpjNtTaHiACCt86csRTgsaJzHk7Umxh9KW5X
	rPrf0wst5N2Fnb4E02RWy52tPaid9sGiXFkCuCdEJA==
X-Google-Smtp-Source: ABhQp+TT/xYxsWcKA0ggWHWicxvqiJ1EKijzkOiwYAEH9Eat/qW3zyO1nUDjhj6KzojioDjrq7M/CoUYPBueYwxeXtA=
X-Received: by 10.107.242.2 with SMTP id q2mr4613987ioh.48.1509489825751; Tue,
	31 Oct 2017 15:43:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Tue, 31 Oct 2017 15:43:25 -0700 (PDT)
In-Reply-To: <587799c6-cd3f-59c0-4b04-792c0fa1de8b@linux.intel.com>
References: <587799c6-cd3f-59c0-4b04-792c0fa1de8b@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Oct 2017 22:43:25 +0000
Message-ID: <CAJTo0LbRjuGie2HmMRAKObK=f8BJXyuTem29NTRyeYn1fJg32A@mail.gmail.com>
To: Dave Cobbley <david.j.cobbley@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ptest - single package
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
X-List-Received-Date: Tue, 31 Oct 2017 22:43:47 -0000
Content-Type: multipart/alternative; boundary="f4030438256cdb3ed9055cdf7c94"

--f4030438256cdb3ed9055cdf7c94
Content-Type: text/plain; charset="UTF-8"

On 31 October 2017 at 21:51, Dave Cobbley <david.j.cobbley@linux.intel.com>
wrote:

> Hey,
>
> I am trying to add a single ptest to my image without adding all ptests
> from all other packages in my distro.
>
> https://wiki.yoctoproject.org/wiki/Ptest only has instructions to add
> ptest-pkgs, but this is too large for my embedded platform.
>
> How can I install ptest-runner plus the single ptest from a specific
> recipe?
>

The ptest packages are normal packages, so just add [package]-ptest to the
image.  The ptest packages recommend ptest-runner automatically, so you
don't need to pull that in.

Ross

--f4030438256cdb3ed9055cdf7c94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 31 October 2017 at 21:51, Dave Cobbley <span dir=3D"ltr=
">&lt;<a href=3D"mailto:david.j.cobbley@linux.intel.com" target=3D"_blank">=
david.j.cobbley@linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"gmai=
l_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hey,<br>
<br>
I am trying to add a single ptest to my image without adding all ptests fro=
m all other packages in my distro.<br>
<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Ptest" rel=3D"noreferrer" tar=
get=3D"_blank">https://wiki.yoctoproject.org/<wbr>wiki/Ptest</a> only has i=
nstructions to add ptest-pkgs, but this is too large for my embedded platfo=
rm.<br>
<br>
How can I install ptest-runner plus the single ptest from a specific recipe=
?<br></blockquote><div><br></div><div>The ptest packages are normal package=
s, so just add [package]-ptest to the image.=C2=A0 The ptest packages recom=
mend ptest-runner automatically, so you don&#39;t need to pull that in.</di=
v><div><br></div><div>Ross=C2=A0</div></div></div></div>

--f4030438256cdb3ed9055cdf7c94--
