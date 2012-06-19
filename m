Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C8E3E0070C
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 08:22:30 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so5496914ggn.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 08:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wXNECSK2QpxBO1msGSLvflDodazMH0uDTPBHM7ieA+M=;
	b=cc5DEhPkZLib+pWgLbwukuC9V68+4VIb3Qh6F5/Mk2BRoQ0H1jwyBXd7ZOCcMS76jC
	WKNuMjy6JqkBXqZcrMdoO42gzByWtz9fO7cyNXma3Qo9SDXOATLDg0V+LEWomCcyNtLK
	2tVUEPLrAzpZ4WHtGz74hfd6S9lXu4ysxPMJa+6VNaxHowAov8dVW9INo7iDwNoChmxG
	y4tm+Z21Z4KHkcnKO/Pyen8OQsJokSJdz2PrT/EMinnM4p+Fk9d4rS3J4RTTDF43iejg
	6iNeUJLBA2I8vB4uvcf0W+tBaS+cUkxdckN2Na9y0kCFWbVTW5/tE/8NILelze/Au3NB
	tKCQ==
MIME-Version: 1.0
Received: by 10.60.14.9 with SMTP id l9mr20171768oec.17.1340119349348; Tue, 19
	Jun 2012 08:22:29 -0700 (PDT)
Received: by 10.76.166.202 with HTTP; Tue, 19 Jun 2012 08:22:29 -0700 (PDT)
In-Reply-To: <CAMKF1somsePvLLgK3d0f0A19zdvEXsPAOCs4M-YJQFoPSYyR_A@mail.gmail.com>
References: <4FDF9720.7080204@gmail.com> <87lijkuxir.fsf@sonatest.com>
	<4FDF9DC9.1000805@gmail.com>
	<CANFv2E=jfiY05Rxpnhkz4o6aKNatdoC3o2RD53MFbj3k7Q0yeg@mail.gmail.com>
	<CAMKF1sokUhf1LhfBxg_xK9R5JyvnFMswoHdB8xG7VJXT=AjDVg@mail.gmail.com>
	<CANFv2EkVK2NbXb4XCTz2K6ja61dWtORKX3_mrF49-P9dfkQhkQ@mail.gmail.com>
	<CAMKF1somsePvLLgK3d0f0A19zdvEXsPAOCs4M-YJQFoPSYyR_A@mail.gmail.com>
Date: Tue, 19 Jun 2012 11:22:29 -0400
Message-ID: <CANFv2Em4wDjq6LeFY5=cq7yUb2t6+rc4Q3k8AU4Nbn1pXNO6ow@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: basic recipe building - iperf
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jun 2012 15:22:31 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1eef8c648b904c2d4d930

--e89a8fb1eef8c648b904c2d4d930
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jun 19, 2012 at 10:20 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Jun 19, 2012 at 2:54 AM, James Abernathy <jfabernathy@gmail.com>
> wrote:
> > You must have missed the earlier discussion.  I first got the iperf 2.0.4
> > from meta-oe, but wanted 2.0.5, so I just added it to my private
> collection
> > of apps.
>
> you can post the update patch for meta-oe layer
>

I can pass along what I did for iperf 2.0.5 in Yocto, but I have no idea
what to do for OE.  All the commands in their 2.0.4, which worked when
copied to my meta-jfa directory, didn't mean much to me.  I just started
from scratch and created a new recipe based on autotools plus the patch
that Marc passed along.

Jim A

--e89a8fb1eef8c648b904c2d4d930
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Tue, Jun 19, 2012 at 10:20 AM, Khem Raj <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">ra=
j.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"im">On Tue, Jun 19, 2012 at 2:54 AM, James Abernathy &lt;<a h=
ref=3D"mailto:jfabernathy@gmail.com">jfabernathy@gmail.com</a>&gt; wrote:<b=
r>&gt; You must have missed the earlier discussion.=A0 I first got the iper=
f 2.0.4<br>
&gt; from meta-oe, but wanted 2.0.5, so I just added it to my private colle=
ction<br>&gt; of apps.<br><br></div>you can post the update patch for meta-=
oe layer<br></blockquote></div>
<div><br>I can pass along what I did for iperf 2.0.5 in Yocto, but I have n=
o idea what to do for OE.=A0 All the commands in their 2.0.4, which worked =
when copied to my meta-jfa directory, didn&#39;t mean much to me.=A0 I just=
 started from scratch and created a new recipe based on autotools plus the =
patch that Marc passed along.</div>

<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>

--e89a8fb1eef8c648b904c2d4d930--
