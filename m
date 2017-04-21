Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E452E0095F; Fri, 21 Apr 2017 09:45:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.175 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E89BE0074B
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:45:20 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id g60so74137410qtd.3
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YzQJJMuMJma4GmbmKqphIibjhDl3BFDmtBhwx9j3Ghs=;
	b=eToYzGcLN+owJzPxOvVcANgX6vwRtJL30sqlCP20uR/ELhGTlkvHU5WW7Nyasu6zHg
	Q+vm+KVxAjcM3kJhqK+Q3TZ4AyWgVEdczWR9gTcIo0Z+nm87r17lM8anKT0/KjAIkuik
	3EeZXHRCoSLZBnHMXlkMezKBGaEcd8NCApaNX5X4HSrNJNArTCol+tr4ucqwpLee6wSx
	YIdxfjgaWoz6m8lYX3JxS5Nmv7KiPBXhjwDkPZYSN7pl2AU3kYWVkBsFU65gwS7NMsjG
	SBGecfwip0YwdRj2aZJG+bH0vKObokZJWCOSg+9pNniT6+6WKkl+qG9uz4r2lrmaY1tp
	lsQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YzQJJMuMJma4GmbmKqphIibjhDl3BFDmtBhwx9j3Ghs=;
	b=jlxrpT8rJa/dIm7qCSeb81AqOpC3AtgfDB/m7v8PSVJBTtAQonshhZGqGoI28l5LTz
	QFCUAsTjLqqsf892/iD3kOBWmk6CfkwFeZYzoyTAqPu1PaH6S4gWsiELC5sTJbs/MtkT
	UbMMm283XdGPWzx9t7isGnwdbvHIRNjYjcRYuw9eg2I1Fz3CpX1oSyLd8tWBMU7xPKkK
	Ax2n8y7uqO9FScNHQhDPhj9NYHQikYsRyByI0WKvMG7VWM70KNMKQxD+34MhkV4+DTS8
	Z9av6e/bEbLmBAPIFpsYkY5k7Jy3CGseVncZ5fqhQw26KxcOmBErjebGnw2WKBt9XGPM
	EHDw==
X-Gm-Message-State: AN3rC/6bA9/pDoXRoeNlj0v0UNYmTdWVVvuAJVlSkks9nktG3Io/NRPv
	vzPiDqUxrG5SQq58aOPLVuqRyb7OqviH
X-Received: by 10.200.46.26 with SMTP id r26mr15473598qta.197.1492793119330;
	Fri, 21 Apr 2017 09:45:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 21 Apr 2017 09:44:58 -0700 (PDT)
In-Reply-To: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
References: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Apr 2017 17:44:58 +0100
Message-ID: <CAJTo0LaKzeHPpizRCSnSZiWnihYRTtns8aeBtCFt495mH61ukA@mail.gmail.com>
To: David Bensoussan <dbensoussan@synapticon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake core-image-base -c do_populate_sdk fails with glibc (unmet dependencies)
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
X-List-Received-Date: Fri, 21 Apr 2017 16:45:25 -0000
Content-Type: multipart/alternative; boundary=001a114708cc99e11e054daffb10

--001a114708cc99e11e054daffb10
Content-Type: text/plain; charset=UTF-8

On 21 April 2017 at 12:37, David Bensoussan <dbensoussan@synapticon.com>
wrote:

> DISTRO_FEATURES_LIBC = "libc-locales libc-locale-code"
>

Unless you really need to, don't fiddle stuff like this.  Can you share
your local.conf?

Ross

--001a114708cc99e11e054daffb10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 April 2017 at 12:37, David Bensoussan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dbensoussan@synapticon.com" target=3D"_blank">dbensoussan@synapt=
icon.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>DIS=
TRO_FEATURES_LIBC =3D &quot;libc-locales libc-locale-code&quot;<br></div></=
blockquote></div><br>Unless you really need to, don&#39;t fiddle stuff like=
 this.=C2=A0 Can you share your local.conf?</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114708cc99e11e054daffb10--
