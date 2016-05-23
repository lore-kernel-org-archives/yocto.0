Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3B8AE00E39; Mon, 23 May 2016 07:24:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B95E00CB0
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 07:24:23 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id b65so135470535oia.1
	for <yocto@yoctoproject.org>; Mon, 23 May 2016 07:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DVEDerTNirfeD3yYXlrkl1GqcMc8RTgrQRQj3IPllqg=;
	b=BDVUVoXCDmlxWG+OWSmSH0rRMArO4Be/uusWXSm3rDpYxHqJbLLzal416i7Ccdt0h/
	Lf4juwmllAffO437dIbTfjoIiLQiCf7oYe/Hg1R10Mw6nsr2jF3HwZT0wYO6uPuhGaZZ
	+4b0c2OxtlBzGMbVOa3oAMlGx0UbuKxfPQscniYzwn2Zd3GBp8AsUF3hzDCk25qmqDRi
	knGS2KmzKtFxSwRiRNZj8ICvcT/lULHaGU2wd8Csf6vwMz6M/OD6L8BiG3gzXkX0u++2
	g8kBder/mihrdQHTjFpnOh/bGfejSa4OvZh8I4OSBdVSPOP2RJ9nsuIzDC4jZhmMIB1S
	yHxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DVEDerTNirfeD3yYXlrkl1GqcMc8RTgrQRQj3IPllqg=;
	b=VWs7h1pd0PbyJpgmn0EiTtGhT7DeyFUxamNhz2n7JoDoJs8POTq0wV6Q1NPM9pEG0R
	90Z7HKkUWR4CEdIT1bMBAZ1QVq0Zxiyy4VyBVOKRjUL9PL7hvtSRZ0L7VD7vcr0XX+y9
	5r/dFIWCsOoujMkaiffnmuqTSpMXHzlrc+lKHeFGQkG5K7y6ddyu96i27F0um7GOzomZ
	F5jCTrlmFiqwsK+Ocs0TqG/bRYyTAUVS6JdhLIr4Iuo7RuiDrukB7kXKT0lyS0CAVubi
	7Tks0QPUIACgDRi24g8ha8idQIMh5IgCyasJV9YIgTmIvsjJ1k9n/6X4gXtlmYOmwkcw
	6djw==
X-Gm-Message-State: AOPr4FVbzMth5zwjPNBvlXDSnF96LYWIBsB2XwmDTOEfFcDh8w2wq6sqE5ob3dUncD9i5nDJodkoMdlBIz2zbSVL
X-Received: by 10.157.37.66 with SMTP id j2mr9927145otd.119.1464013462875;
	Mon, 23 May 2016 07:24:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.61.5 with HTTP; Mon, 23 May 2016 07:23:53 -0700 (PDT)
In-Reply-To: <OFD3CFEA30.52570675-ONC1257FBC.0049688D-C1257FBC.004AD217@esa-grimma.de>
References: <OFD3CFEA30.52570675-ONC1257FBC.0049688D-C1257FBC.004AD217@esa-grimma.de>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 23 May 2016 17:23:53 +0300
Message-ID: <CAHiDW_FWrZ_1LVLuNL5aRUuZ-pEfFvDL4Tog40+=9=N8qdYWNQ@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How can I set a recipe that its binaries become available at cross-compile time?
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
X-List-Received-Date: Mon, 23 May 2016 14:24:25 -0000
Content-Type: text/plain; charset=UTF-8

On 23 May 2016 at 16:37,  <S.Jaritz@esa-grimma.de> wrote:
> Hej
>
> I a cmake based application, some code generation via dbusxx-xml2cpp. It is
> provided by the dbuss-c++ lib. A recipe can be found under:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/meta-ivi-demo/recipes-extended/dbus-c++?id=b90c2a20744e1e82b2169a88e68d7677bec907b6

You shouldn't need a separate native recipe: 'BBCLASSEXTEND =
"native"' in the main recipe should work.

> It working and it's compiling & linking, "dbusxx-xml2cpp" is included at the
> native build.
>
> How can I set a recipe that its binaries become available at cross-compile
> time?

If dbus-c++ installs the binaries properly and another recipe depends
on dbus-c++-native then the binaries should be in the native sysroot
during the other recipes build. As an example see dbus-glib and
connman-gnome in oe-core: dbus-glib-native provides dbus-binding-tool
which connman-gnome uses during build.

HTH,
  Jussi

