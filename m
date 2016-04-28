Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CB1BE00DAD; Thu, 28 Apr 2016 03:52:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33974E00DA3
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 03:52:19 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id f89so72978409ioi.0
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 03:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=adrc37HF8UMyikHzjm+UwY1fIqw1wFDnjuj1xJQ4lTc=;
	b=SFk2iLMM0hR7XFaAQsMJE8gAoT5mBTnrsvu4K8MmIEBwmFNR1mq1V0/dDIrXTNWUG6
	UldjobIGtEblSTJwmvDDcuugNZj+kn7OH4SrTJChkZ/iDna69imLIhBpZKvtNfjpifoT
	84dKvSgdvSZp3b8k2kU1xm7/okN3FUZcVPkIQDJPw8UIkyyOv96mXEA2QDrPAn+wM2PT
	53uj7/0AUul9yX0k7HyGC/ZQWBmFEQ4JyaYeSOBJ1oTzU9dhRkAeIUaGAnyvOnhDSPYZ
	ANf+N3Y9rQakPyPEY7wAObzP/N6LCFf5zyrDaOZ3GOVi5SOeAQ5YPKfOW2Rc8hVA8e6p
	qYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=adrc37HF8UMyikHzjm+UwY1fIqw1wFDnjuj1xJQ4lTc=;
	b=byVzOsYc+tqBgguVQcPASl+PPzXnjzyikX6w63f/HcIhJGZDjkPcTL7glkuDBVGNk5
	U8770dtYZOdK+9B47tbARk5coDgVrN29KTRQ5UVJ4/IgO5F4oJiTU9hMsTfBgZHtzRek
	MgQq4/A9YbE1drnz2TQOgtsRlQihcunmI1vF/0keZxIg9nKirwQbFv90GquGq8J7LXqf
	gFuzt4jRULCXWVbGwcRryg+RQMwXVARuXTQl/vvbkohY1JSc1coaby/8+XoTqbYSxcFL
	EmtAl/FVjgyQ0P6jn7aNEH2IqguSGPWgfH9hdhv4LxeITCo65ePY+GXMXNIDCcUBpf1O
	REgg==
X-Gm-Message-State: AOPr4FVLo9GSnKoRL4uR2WDdjxkVOgaETUUSHdSromS1mmkyzw8cbk1adgb6O5MVaVu94DR4n3Dj4bfYecTW7SsC
X-Received: by 10.107.135.211 with SMTP id r80mr17759919ioi.133.1461840739247; 
	Thu, 28 Apr 2016 03:52:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Thu, 28 Apr 2016 03:51:59 -0700 (PDT)
In-Reply-To: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Apr 2016 11:51:59 +0100
Message-ID: <CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 10:52:21 -0000
Content-Type: multipart/alternative; boundary=001a113ed20afb52f205318951bf

--001a113ed20afb52f205318951bf
Content-Type: text/plain; charset=UTF-8

On 28 April 2016 at 10:50, <S.Jaritz@esa-grimma.de> wrote:

> I like to include the hiredis library. I created a recipe and modified the
> EXTRA_OEMAKE. The compilation works (in the git directory object, "so" and
> "a" files are generated). But the generated files are not placed into
> packages.
>
> Any ideas?
>

You need to look at the makefile to see if it has an install target, and if
it does what it's called, and if it has a way of controlling where files
actually go (both respecting $prefix instead of /usr, and letting you
relocate via ${D} so it doesn't try and install to /usr on your build
machine).  If it does all of those right then you can write a do_install()
that just calls the right make commands.  Chances are that it does
something wrong and it's easier to just write a do_install() that creates
directories and copies files manually.

This is why it doesn't happen automatically unless you're using something
like automake - there's no standard way.

Ross

--001a113ed20afb52f205318951bf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 April 2016 at 10:50,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jarit=
z@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif"=
>I like to include the hiredis library.
I created a recipe and modified the EXTRA_OEMAKE. The compilation works
(in the git directory object, &quot;so&quot; and &quot;a&quot; files are
generated). But the generated files are not placed into packages.</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">Any ideas?</font>
<br></blockquote></div><br>You need to look at the makefile to see if it ha=
s an install target, and if it does what it&#39;s called, and if it has a w=
ay of controlling where files actually go (both respecting $prefix instead =
of /usr, and letting you relocate via ${D} so it doesn&#39;t try and instal=
l to /usr on your build machine).=C2=A0 If it does all of those right then =
you can write a do_install() that just calls the right make commands.=C2=A0=
 Chances are that it does something wrong and it&#39;s easier to just write=
 a do_install() that creates directories and copies files manually.</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">This is why i=
t doesn&#39;t happen automatically unless you&#39;re using something like a=
utomake - there&#39;s no standard way.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--001a113ed20afb52f205318951bf--
