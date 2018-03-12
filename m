Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6004CE00E39; Mon, 12 Mar 2018 04:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C49D7E00DA4
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 04:59:00 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id l187-v6so11068116ith.4
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 04:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=N110/SJL3N5DFC6GiBoSA8BNzDptjpJlGFciZK/fh6s=;
	b=nwukGvanDXnPCu0eso9pYCT61dA5h2LKaEUnoCN0SkPnzHAW85eSrOSN9pZsrj2IQ+
	Tg/1yvjSHE87P3I0UX2lwvwCkEjhaoK5DdynBaKBFpqlCskmi3h3FwveHbTciwAdYNIj
	kNwaWHwMmTXgLabcWs0Pv0+jONI5iKNNpHWKjDZrkiVIfBhsFEPfcfuQqAN59kpLvL09
	jZuT3RoDgVq8Qtuu1vI+9vGZFFngWnjhDkBzgC9Rsfd8majC2qV6Wj2AyzTD+csUHoSl
	l6tt9I9Q63V/dGEkRyEHZJRW1gWUBKLHj/gdBAz0U0EV51wN4GZGpqQTk4ny0E759ehE
	8KeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=N110/SJL3N5DFC6GiBoSA8BNzDptjpJlGFciZK/fh6s=;
	b=qs1bfrULxZJei811WEMfdNLwEcAknOOjc7t7UnQ3+yEnfSYmqKMp1BR3or92s8pXma
	eb34INDo5IOwePsjXNMqa85zGsN2YsH+aMPAQIyTg3+wDY8x6hFV6cNnzaznBmpW7r0r
	QNp/0A7met5StzKzAfBo8/O95oVLyd6TnwGYzBiCoLyklBH7DpDOj4e4j6hXHP0vRmiw
	mXH9MZC+/BJE59MX6ZtaLRuu4qbdKxkn4rc97fr8Dm28s8tnKhjUFqpNIi0cYGTHB/Qt
	uMt3NLN6FOFz9uOCp22ezJ5k7EzAmtISUvU760i3zXHSgSsIxgjI9z3mbWVN3mCvpY8X
	R/mw==
X-Gm-Message-State: AElRT7H6YIZ3jB5yGpp+BSqBj9hyPrhMmEfWZy4eF3hZ53ycJwykj/X5
	RaeeyNSA0Xac3+7dcf8u8iZrL3IO4SQLpShO/9m92w==
X-Google-Smtp-Source: AG47ELtvKmKT1xoMr1LeT+ySy8U5QGWBlYGSUu/S9jAaRiL+6ZWw0tOeb0Csr2w9Yf4mXqipjn94cFGtKo0EoRrrH4Q=
X-Received: by 10.36.198.7 with SMTP id j7mr8175459itg.34.1520855940029; Mon,
	12 Mar 2018 04:59:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 12 Mar 2018 04:58:39 -0700 (PDT)
In-Reply-To: <CAKYr3zzndywLdf220YPUoCWLLNsuZgXmN_wOaYhqi=G0T63dMw@mail.gmail.com>
References: <CAKYr3zzndywLdf220YPUoCWLLNsuZgXmN_wOaYhqi=G0T63dMw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Mar 2018 11:58:39 +0000
Message-ID: <CAJTo0LbUJHFNVhGi7xkgdOKWhvUwynuCNuKcvvJB1esxoGPYUQ@mail.gmail.com>
To: Outback Dingo <outbackdingo@gmail.com>
Cc: "Yocto-mailing-." <yocto@yoctoproject.org>
Subject: Re: Function failed: do_package_qa
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
X-List-Received-Date: Mon, 12 Mar 2018 11:59:01 -0000
Content-Type: multipart/alternative; boundary="94eb2c089ed60f8101056735dec8"

--94eb2c089ed60f8101056735dec8
Content-Type: text/plain; charset="UTF-8"

At a guess as I don't have any of your recipes to look at, jsonparser and
dltwrapper packages are broken and putting the libraries into the -dev
packages.  That probably caused a QA warning too.

Ross

On 12 March 2018 at 11:53, Outback Dingo <outbackdingo@gmail.com> wrote:

> ERROR: QA Issue: r4-hub rdepends on dltwrapper-dev [dev-deps]
> ERROR: QA Issue: r4-hub rdepends on jsonparser-dev [dev-deps]
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in: log.do_package_qa.21297
>
> seems ive created a bitbake recipe, which depends on a couple of
> libraries to be built, so i created the bitbake for the libs and all
> appears to build fine, however seeing the failure above its basically
> telling me something isnt being created during the packaging process
> for the libs to be properly included in the image, they does exist a
> pkgname-dev.ipkg for each of the libs but not a packagename.ipkg ...
> any ideas... its kind of holding me up at this point.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c089ed60f8101056735dec8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">At a guess as I don&#39;t have any of your recipes to look=
 at, jsonparser and dltwrapper packages are broken and putting the librarie=
s into the -dev packages.=C2=A0 That probably caused a QA warning too.<div>=
<br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On 12 March 2018 at 11:53, Outback Dingo <span dir=3D"ltr">&l=
t;<a href=3D"mailto:outbackdingo@gmail.com" target=3D"_blank">outbackdingo@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">ERROR: Q=
A Issue: r4-hub rdepends on dltwrapper-dev [dev-deps]<br>
ERROR: QA Issue: r4-hub rdepends on jsonparser-dev [dev-deps]<br>
ERROR: QA run found fatal errors. Please consider fixing them.<br>
ERROR: Function failed: do_package_qa<br>
ERROR: Logfile of failure stored in: log.do_package_qa.21297<br>
<br>
seems ive created a bitbake recipe, which depends on a couple of<br>
libraries to be built, so i created the bitbake for the libs and all<br>
appears to build fine, however seeing the failure above its basically<br>
telling me something isnt being created during the packaging process<br>
for the libs to be properly included in the image, they does exist a<br>
pkgname-dev.ipkg for each of the libs but not a packagename.ipkg ...<br>
any ideas... its kind of holding me up at this point.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c089ed60f8101056735dec8--
