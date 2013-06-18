Return-Path: <navani.srivastava@gmail.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92F38E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 09:16:02 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id fb19so4797146obc.37
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 09:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=UKTGWBamNP0pOkyJ+OBjxH8VydGlaP7k8+9oW7bI3d0=;
	b=YKNH+LtLEiErrVx1OTevlvaBUCYvR+UpaXNnFbPiQp9DOLq890HRaDXSb8LoAkg4af
	TfhnfPfpNOpiAFEUIG7mLYhHPYeyjEtW2a9bhPIErD+YyuZsbO1s7WJk6vJgxRsWN+fX
	gXGS2dovM0Cr+hD74mvvbLtDvb7ZRSdYEHexN2rhYZ2cxljVII2zQPo/uNwee4B2Eoi4
	1/rYs2s9cdb41cDhBgNm7YUnMsBOpTOqN368S10PyHDInV26BmAhwjD8hF4XH4/aTY4m
	AOUEnmnHDyquWyy1Y7v2Oe3Z1xqMmOdE98/x1iZiUkZT1ak6UL7AT3DyXeK0JNwrZrdV
	XzkQ==
X-Received: by 10.182.106.130 with SMTP id gu2mr12610236obb.0.1371572158511;
	Tue, 18 Jun 2013 09:15:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Tue, 18 Jun 2013 09:15:38 -0700 (PDT)
In-Reply-To: <CA+Z6RkWkUiy0omM_fYteVco1r_RQTbJdRpoqURrvrTAbB4ACgA@mail.gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1BA55B7D@POCITMSEXMB05.LntUniverse.com>
	<CA+Z6RkWkUiy0omM_fYteVco1r_RQTbJdRpoqURrvrTAbB4ACgA@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 18 Jun 2013 21:45:38 +0530
Message-ID: <CA+Z6RkUqGZS7bcrdLHokC8a8ZwuZx1ETF9gRqhm8bvRWZSbXNw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Qt build error for Debug and Release mode
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
X-List-Received-Date: Tue, 18 Jun 2013 16:16:04 -0000
Content-Type: multipart/alternative; boundary=089e015370f44ac4d904df70071b

--089e015370f44ac4d904df70071b
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

I am using poky-danny (Poky-8.0). I am facing problem in building Qt
application.

When we are building Qt application with =93qmake CONFIG+=3Ddebug && make=
=94 it
appends =93-g=94 to build the application in debug mode but when we are
building application in release mode by issuing following command  =93qmake
CONFIG+=3Drelease && make=94, then also it appends =93-g=94 to it.

So building Qt application in release mode also results in debug mode
output.

Any fix for this?

Thanks and Regards
Navani Kamal Srivastava

--089e015370f44ac4d904df70071b
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"HOEnZb"><div clas=
s=3D"h5"><p>Hi,</p>
<p>I am using poky-danny (Poky-8.0). I am facing problem in building Qt app=
lication.</p>
<p>When we are building Qt application with =93qmake CONFIG+=3Ddebug &amp;&=
amp; make=94 it appends =93-g=94 to build the application in debug mode but=
 when we are building application in release mode by issuing following comm=
and =A0=93qmake CONFIG+=3Drelease &amp;&amp; make=94, then also it appends =
=93-g=94 to it.</p>



<p>So building Qt application in release mode also results in debug mode ou=
tput.</p>
<p>Any fix for this?</p>
<p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>
</div></div></div><br></div>

--089e015370f44ac4d904df70071b--
