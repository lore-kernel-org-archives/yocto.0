Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40248E00EE5; Fri, 22 Apr 2016 12:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07AE0E00849
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 12:29:39 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id u185so129133954iod.3
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 12:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vTGgMYSOu9DpWYrxm6HZLLGf81Yr1aHjHoK0DUKDdVQ=;
	b=UV8lxD4EXccf57v/m+wOhP4n98j13x79QxRfuaNUNPZV4MvaWDqvts/JSCSG/crTwF
	GGCiYfhF5zaIiDHwSSE1OyMvT371mYbmSi8oOuZ3crLiprqclDODDGvC9fD2vzdfohAR
	IMjeYqSMKPT7McQJ3WWfu4Pf+GBI40qPAY3C9Oy4KrYp7rANI18RTzCxNvFW6IwfVES5
	MIX4phBmGukpvqwrzptfSQ0mqx7BDsYZRKNyzQHM6cXoLBP7w3O7OMMYzXQvhy/ZtlA2
	Prhy3ag2hUYz6yjpO3RJpVGFEMlo6iCIjh2Gu+nuPisxNwTBeqzq0WTEJdzrDz7xVv5+
	/cwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vTGgMYSOu9DpWYrxm6HZLLGf81Yr1aHjHoK0DUKDdVQ=;
	b=U5Wn6IV50dVJXPi8c0DrfJltwbL2YGkDS+LCeibYH5M3QEkwOpT4AqPfPUqgrt1oZs
	f2T0ZHgQb4kQ6OW6CxRtAWSepzrHQjWxNA+1+T78BwzyTlNwlu8P1g+3PW8Nx80oBM/B
	ZZ9m6K3/DijX5ogtAYGF3t0t/99GQDdgpCagjbyqu5GmsPJX7LSRHYVucfcaVjh/qhN7
	pFfs4tOa87hcErEJ8VthRMloiCMiJhdrbAPRaUU/39sf8C5wfUIR1TcUEyuvM4bsIbfP
	WNSMv3XiyRgUf6MUbY9lPRRsUDQwwnSdvo9APZfyzQSOCra8k92Kq6/DsuPAIMHdtUTp
	a1QQ==
X-Gm-Message-State: AOPr4FVgsQYQSY+P9tM+pbKJmeO4z/t6sJYC7363v6/Rt+vy6rXPWN1NXc2/Uwa84VjKgViEVFjJ5w/ebI0ePr1P
X-Received: by 10.107.51.213 with SMTP id z204mr1829400ioz.148.1461353379164; 
	Fri, 22 Apr 2016 12:29:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 22 Apr 2016 12:29:19 -0700 (PDT)
In-Reply-To: <20160422170410.GB23308@linux-yxv0>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E570F86EE@fmsmsx111.amr.corp.intel.com>
	<20160422170410.GB23308@linux-yxv0>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 22 Apr 2016 20:29:19 +0100
Message-ID: <CAJTo0LYnK-sd+d1bkJN39AhkAN0t+42Nonm38Qyy3BXm1nLYdw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW17
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
X-List-Received-Date: Fri, 22 Apr 2016 19:29:43 -0000
Content-Type: multipart/alternative; boundary=001a11440cd00e8bc8053117d943

--001a11440cd00e8bc8053117d943
Content-Type: text/plain; charset=UTF-8

On 22 April 2016 at 18:04, Trevor Woerner <twoerner@gmail.com> wrote:
>
> Have the eSDK and CROPS projects been announced publicly? Are they
available
> for us to "play with"?


eSDK is the "extensible SDK', or what appears when you do bitbake image -c
populate_sdk_ext.  This should be in the manual already, the tl;dr is that
its an SDK you can manipulate after installation.

CROPS is docker magic to do builds on Windows/Mac.  Todor did a
presentation at ELC: http:
//events.linuxfoundation.org/sites/events/files/slides/Todor_Minchev_CROPS_ELC_2016.pdf
<http://events.linuxfoundation.org/sites/events/files/slides/Todor_Minchev_CROPS_ELC_2016.pdf>

Ross

--001a11440cd00e8bc8053117d943
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>On 22 April 2016 at 18:04, Trevor Woerner &lt;<a href=
=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br>&gt;<br=
>&gt; Have the eSDK and CROPS projects been announced publicly? Are they av=
ailable<br>&gt; for us to &quot;play with&quot;?<br><br><br>eSDK is the &qu=
ot;extensible SDK&#39;, or what appears when you do bitbake image -c popula=
te_sdk_ext.=C2=A0 This should be in the manual already, the tl;dr is that i=
ts an SDK you can manipulate after installation.<br><br>CROPS is docker mag=
ic to do builds on Windows/Mac.=C2=A0 Todor did a presentation at ELC: http=
:<a href=3D"http://events.linuxfoundation.org/sites/events/files/slides/Tod=
or_Minchev_CROPS_ELC_2016.pdf">//events.linuxfoundation.org/sites/events/fi=
les/slides/Todor_Minchev_CROPS_ELC_2016.pdf</a><div><br></div><div>Ross</di=
v></div>

--001a11440cd00e8bc8053117d943--
