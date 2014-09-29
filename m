Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1334E00873; Mon, 29 Sep 2014 01:55:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.98 listed in list.dnswl.org]
Received: from exprod8og109.obsmtp.com (exprod8og109.obsmtp.com [64.18.3.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B8BE00869
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 01:55:17 -0700 (PDT)
Received: from mail-wi0-f181.google.com ([209.85.212.181]) (using TLSv1) by
	exprod8ob109.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCkedFQ46xgahtAWfGRQMbPXlXBQ/kSQ@postini.com;
	Mon, 29 Sep 2014 01:55:18 PDT
Received: by mail-wi0-f181.google.com with SMTP id n3so1406971wiv.14
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 01:55:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=I+LkkAxoaHN449rBKcak9MgbdVgvsKi2hQEeUkd/+k4=;
	b=docTINvYUWoQC+VdXBVNCBsyd/JGT6taPWyWbEDcDCL5UJqHCg4RmoBepQXDVQ4Pun
	ielFy+Jk8gO0fO5zpNHs6D/XHkhjj4NzsuUdym/szIMlLz+6mfl7EVvNIg7lVNgpa69n
	xWoHKLmPpJYJ+W1v1dMWHYCsF7up3C+PbbpiUAngMLwg3QY18UOdDKCmb01XnwqszMa8
	E2YKVb8SFGYcBW7U5eOxQs5FNIrjP6iQwe4LClkgjBJnMNvr1H+vJyqow5/ClLU9BoIZ
	bMYYNJPSKtjdbty6MsiScT8MH/OSQUMRIHmPzST/9hriHGDsaegZHg+uylZGC/ccpSIs
	pXBQ==
X-Gm-Message-State: ALoCoQn3a3yiO7KkVJJjpoLA3K/tbZq4+dvBwFlPJzE42uYc4MQGOcxYmzurs91XoL6N+GYv/5dk77jMjgt/hNvOdf1iUMKEwZyEOJmpK5gzFAXoeAb3i30EMrQH7KOT/gQZlyq7d/bdTMGfIsTWfeiamj5/AdOQUg==
X-Received: by 10.180.104.201 with SMTP id gg9mr45888912wib.15.1411980915770; 
	Mon, 29 Sep 2014 01:55:15 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.180.104.201 with SMTP id gg9mr45888902wib.15.1411980915669; 
	Mon, 29 Sep 2014 01:55:15 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Mon, 29 Sep 2014 01:55:15 -0700 (PDT)
In-Reply-To: <2647971.Ts2ODotvJE@peggleto-mobl5.ger.corp.intel.com>
References: <CAJrRHk4r+MngXE5oAUhde40u+KNNS9FYMjGDJw0NR1oqJU-9LQ@mail.gmail.com>
	<5194477.G6vUEZEebf@peggleto-mobl5.ger.corp.intel.com>
	<CAJrRHk58ivpRq3GD8XbNp9YOCdivLhCK_36=p16RgHqR3ZO2GA@mail.gmail.com>
	<2647971.Ts2ODotvJE@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 29 Sep 2014 16:55:15 +0800
Message-ID: <CAJrRHk6ha1X-vogZRK6xzMbF61AaWiqc+eTKeoBcHFt47g3gsA@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Wildcard in RDEPENDS when exporting perl modules to SDK
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
X-List-Received-Date: Mon, 29 Sep 2014 08:55:20 -0000
Content-Type: multipart/alternative; boundary=f46d043d6559e8ccb10504306cdd

--f46d043d6559e8ccb10504306cdd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Paul,

Thank you for the clarification.

- Joseph

On Mon, Sep 29, 2014 at 4:39 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Monday 29 September 2014 08:09:33 Joseph Andrew de la Pe=C3=B1a wrote:
> > On Fri, Sep 26, 2014 at 5:02 PM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> > > There isn't, but you can just add nativesdk-perl-modules to your SDK
> (via
> > > appending to TOOLCHAIN_TARGET_TASK) to accomplish the same thing -
> it's a
> > > meta-package that will bring in all of the core modules.
> >
> > I would like to ask why you specifically noted the TOOLCHAIN_TARGET_TAS=
K
> > and not the TOOLCHAIN_HOST_TASK?
> > Why are you inclined to putting it into the target sysroot and not the
> host
> > sysroot? Or plainly what are the guidelines on where to put the unit to
> > that toolchain task?
>
> Actually I had this wrong, it should be TOOLCHAIN_HOST_TASK - it's not a
> target package. Where to put a particular package in the two parts of the
> SDK
> depends on where the package is normally designed to run - the build host
> or
> the target.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--f46d043d6559e8ccb10504306cdd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Paul,<div><br></div><div>Thank you for the clarif=
ication.</div><div><br></div><div>- Joseph</div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Mon, Sep 29, 2014 at 4:39 PM, Paul =
Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.=
com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><span class=3D"">On Monday 29 September 2=
014 08:09:33 Joseph Andrew de la Pe=C3=B1a wrote:<br>
&gt; On Fri, Sep 26, 2014 at 5:02 PM, Paul Eggleton &lt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.i=
ntel.com</a>&gt; wrote:<br>
</span><span class=3D"">&gt; &gt; There isn&#39;t, but you can just add nat=
ivesdk-perl-modules to your SDK (via<br>
&gt; &gt; appending to TOOLCHAIN_TARGET_TASK) to accomplish the same thing =
- it&#39;s a<br>
&gt; &gt; meta-package that will bring in all of the core modules.<br>
&gt;<br>
</span><span class=3D"">&gt; I would like to ask why you specifically noted=
 the TOOLCHAIN_TARGET_TASK<br>
&gt; and not the TOOLCHAIN_HOST_TASK?<br>
&gt; Why are you inclined to putting it into the target sysroot and not the=
 host<br>
&gt; sysroot? Or plainly what are the guidelines on where to put the unit t=
o<br>
&gt; that toolchain task?<br>
<br>
</span>Actually I had this wrong, it should be TOOLCHAIN_HOST_TASK - it&#39=
;s not a<br>
target package. Where to put a particular package in the two parts of the S=
DK<br>
depends on where the package is normally designed to run - the build host o=
r<br>
the target.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--f46d043d6559e8ccb10504306cdd--
