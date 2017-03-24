Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C3BDE007AD; Fri, 24 Mar 2017 06:57:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC590E003C1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:57:43 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id d191so2346920ywe.2
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 06:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fWP4V12qJ1h/nBlDRDdCvTluv4pIdBesV0vIrXRk9i8=;
	b=ixg1ZKMuF/1ervmaLkR9AOTXOjUqe5PjJ1duwEiMJJOA/+80bQmr13ZFHWzDA7wVnT
	PGF9Jv7QIwB8Bv4GpdpLFQLB26QeTLBFGGJYmGGoqSJB+kLeJepWqCgI+bcBP/6F/rCQ
	FU+1i3xbdknnIiASTdZcNLIqeWQvUfmSKNemMkBbbAhMC1fGw4CFO4b78eqCk9aqlHFi
	Tm9YC7FLAJMj6N/E7WCIWNHPHhAF25aiaOB/AagcidibKVX7FYgLEJMfY16TiSEZPsL9
	9vWYAWmyVZ06qjN0kLqE1caeM4z22zbOtzURpCKTlVoastTfv6l81J8AFiRLNis4cmv7
	Xg+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fWP4V12qJ1h/nBlDRDdCvTluv4pIdBesV0vIrXRk9i8=;
	b=ovka8vP7hXijlL63uaHzIY/HYYSTWzolvrMc1zt5W+XAsHByHVDq2wgmxZyc9fbmX8
	UuAprNp8f5SNS227aunltAJQ6pb/MgkHVrQjq8GjKvYgQuI2TUxSftWJmYzHr6XMc/I9
	amqNbFRdTxWm89dIJ9ldy4Pagp+62+MJW97tBqw0xlpWsEkPbm6IOG36qH0QBYD9Cj5V
	xrB5cqV2o5cD5YFncKRs0oI1QjP7HzpdY6g2JtGv9OGmfr65mDUsOl0LCdRHdvFKaUDf
	waNz8PfwfDkFi+IAVI6fceqsfQ4RxWQZMAeCEmpALpa4GqN8hj8nd3aDWP5oSR7REthx
	ip6w==
X-Gm-Message-State: AFeK/H05UsX5ASAr9l73JXTSP/pzEfbg+3Po0GIDTq0j1pn3Y5Qmj9oEKSqzoYSQZKBWKUqlAkGzinJO24uEy8gO
X-Received: by 10.129.197.74 with SMTP id o10mr5878210ywj.183.1490363862437;
	Fri, 24 Mar 2017 06:57:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.81.136 with HTTP; Fri, 24 Mar 2017 06:57:12 -0700 (PDT)
In-Reply-To: <4ef15c52-0e08-05da-ef3b-2772c6999bae@kiversal.com>
References: <4ef15c52-0e08-05da-ef3b-2772c6999bae@kiversal.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 24 Mar 2017 15:57:12 +0200
Message-ID: <CAHiDW_HqE0w0h-W5ZY+eqkc3==LgpJuvagE3Z6UxBk-GD2KBOw@mail.gmail.com>
To: =?UTF-8?Q?Stefano_Zu=C3=ADn?= <szuin@kiversal.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: PHP5 Recipe
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
X-List-Received-Date: Fri, 24 Mar 2017 13:57:44 -0000
Content-Type: multipart/alternative; boundary=94eb2c1a54fa9b691d054b7a60ba

--94eb2c1a54fa9b691d054b7a60ba
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 24 March 2017 at 12:57, Stefano Zu=C3=ADn <szuin@kiversal.com> wrote:
>
> Good Morning,
>
> I am trying to use php in a simple poky kernel in a core-image-minimal
image. But I have some problems to get it working. I have also tried using
core-image-full-cmdline image having the same result explained after this.
>
> When I cook the recipe everything is OK. I can find inside the
/build/tmp/work/armv5e-poky-linux-gnueabi/php/5.6.23-r0/image/ directory
all the necessary files to have php running. but unfortunately, when I run
the emulator with my image I can't find all these files. Just in
/usr/lib/php5/php/ are Structures and XML directories. I have also added in
my conf/local.conf file IMAGE_INSTALL_append=3D" php".


Hi,

It'll help if you are more specific: which files did you expect to see but
did not?

Alternatively, you can look at the FILES_* variables in the recipe (or
$WORKDIR/packages-split/ directories): It's likely that the files you want
are not in "php" but another package like php-cli or php-cgi.

 - Jussi

--94eb2c1a54fa9b691d054b7a60ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 24 March 2017 at 12:57, Stefano Zu=C3=ADn &lt;<a href=
=3D"mailto:szuin@kiversal.com">szuin@kiversal.com</a>&gt; wrote:<br>&gt;<br=
>&gt; Good Morning,<br>&gt;<br>&gt; I am trying to use php in a simple poky=
 kernel in a core-image-minimal image. But I have some problems to get it w=
orking. I have also tried using core-image-full-cmdline image having the sa=
me result explained after this.<br>&gt;<br>&gt; When I cook the recipe ever=
ything is OK. I can find inside the /build/tmp/work/armv5e-poky-linux-gnuea=
bi/php/5.6.23-r0/image/ directory all the necessary files to have php runni=
ng. but unfortunately, when I run the emulator with my image I can&#39;t fi=
nd all these files. Just in /usr/lib/php5/php/ are Structures and XML direc=
tories. I have also added in my conf/local.conf file IMAGE_INSTALL_append=
=3D&quot; php&quot;.<br><br><br>Hi,<br><br>It&#39;ll help if you are more s=
pecific: which files did you expect to see but did not?<br><br>Alternativel=
y, you can look at the FILES_* variables in the recipe (or $WORKDIR/package=
s-split/ directories): It&#39;s likely that the files you want are not in &=
quot;php&quot; but another package like php-cli or php-cgi.<br><br>=C2=A0- =
Jussi</div>

--94eb2c1a54fa9b691d054b7a60ba--
