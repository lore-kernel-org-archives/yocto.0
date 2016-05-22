Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36AFCE00D76; Sun, 22 May 2016 02:00:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD87BE00D06
	for <yocto@yoctoproject.org>; Sun, 22 May 2016 02:00:38 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id z189so14172077itg.0
	for <yocto@yoctoproject.org>; Sun, 22 May 2016 02:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Cft3XrP9T1GkMXoJtWwLYm9zX6a0Wsuwfij+/QOfkMc=;
	b=ACAR6tqMnAUfFG5gx+va3v+agIgZ4JJOIw2147lUDHqJON8CpsWkLUk8Sl4+W/OeAC
	Fr9OuIceGIgzk2kTMtMyK6O+5MPzwlRWXMO8osQV02EUefuE8rp2a8q6lG9gn+2eOyO/
	b7ivYY5Slwsawx5z8baCud45NuTE4xL7EOP3j7vIkHbuMbqDlvC/Q7Tp9w2TlO4VgaSj
	yXeLqbh2BHoEtuExWZ9hu6bZitwmUinMl9i1qv1ZY+jVlL+2AsUoMCHOdza+IvgkPnJN
	HI5Sl9HAaTCyOxMLpEkqFQGvHKry25taQm9m/DCtzttf5BH+3xlBH+IyYSff89yV1kwU
	fV6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Cft3XrP9T1GkMXoJtWwLYm9zX6a0Wsuwfij+/QOfkMc=;
	b=epUDcvND5IXOW71j7jsk4QD9wIkZVWpuJURkTAnfXLySZBV95nZidpzTdzHJqhXfN9
	W/gpXBk+SiixfX/akCzMfG+G63E+9ujyW4j7Iey7eDjtuTCPFiIKo5thXQ3CmAAhu2ua
	dhKdENbcAP57eaSaXGQviUJv4jPXVyfpCZKtlxHdN8hxHrneP/DpJviZAMablGfwTUDx
	cNb3WUIqwjfL96vIdQBbsiQAaA1g9La1iDde9aEdaSLAivnwImQm5OatAfZXmK7eavZR
	P9ykNUK0ekPn1PZNLBTG2h4odbLuX2Q4ex0zYf8SqbCi6KRtGgDD3LfR3waoZLsNGi29
	6kOA==
X-Gm-Message-State: ALyK8tKQeR8nn5QNmRtr9RphsTWSAI3qIwBL7z0idFu3FfRYyeOQoMFEwn1YHL1cMw+/ds1nwsWxC8WLzHnUNyNC
X-Received: by 10.36.217.79 with SMTP id p76mr307441itg.38.1463907637601; Sun,
	22 May 2016 02:00:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Sun, 22 May 2016 02:00:18 -0700 (PDT)
In-Reply-To: <BLU171-W1085648A84ED37DD927FDC3C84C0@phx.gbl>
References: <BLU171-W1085648A84ED37DD927FDC3C84C0@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 22 May 2016 10:00:18 +0100
Message-ID: <CAJTo0LZ_PzKa8BMNvYmYtNa8ddO-PY0DLgjQcOTqnqaRrZiQaw@mail.gmail.com>
To: Bjorn Sorensen <bsoren@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sysroot error, need SSTATE_DUPWHITELIST variable. How?
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
X-List-Received-Date: Sun, 22 May 2016 09:00:41 -0000
Content-Type: multipart/alternative; boundary=001a1145ed9eb9415a05336a8e5a

--001a1145ed9eb9415a05336a8e5a
Content-Type: text/plain; charset=UTF-8

On 22 May 2016 at 00:52, Bjorn Sorensen <bsoren@hotmail.com> wrote:

> I need to have two separate recipes for "libftdi" and "ftdi-eeprom" in my
> meta layer, which both of them are build dependencies for one package. The
> issue is that the said packages are actually in one tarball and when I
> build "libftdi" it builds both of them. So then when the "ftdi-eeprom"
> recipe gets called and tries to install its files, I get a "populate_sysroot"
> error.
>
>
Why don't you change the recipes so that ftdi-eeprom only installs the
eeprom portions and not libftdi?  Or just don't build depend on libftdi if
ftdi-eeprom is also building libftdi?

Ross

--001a1145ed9eb9415a05336a8e5a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 May 2016 at 00:52, Bjorn Sorensen <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:bsoren@hotmail.com" target=3D"_blank">bsoren@hotmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><p style=3D"margin-bottom:1em;bo=
rder:0px;clear:both;color:rgb(36,39,41);line-height:19.5px;background-color=
:rgb(255,255,255)"><font face=3D"Arial, sans-serif" size=3D"3">I need to ha=
ve two separate recipes for &quot;libftdi&quot; and &quot;ftdi-eeprom&quot;=
 in my meta layer, which both of them are build dependencies for one packag=
e. The issue is that the said packages are actually in one tarball and when=
 I build &quot;libftdi&quot; it builds both of them. So then when the &quot=
;ftdi-eeprom&quot; recipe gets called and tries to install its files, I get=
 a &quot;<span style=3D"white-space:pre-wrap">populate_sysroot&quot; error.=
</span></font></p><p style=3D"margin-bottom:1em;border:0px;clear:both;color=
:rgb(36,39,41);line-height:19.5px;background-color:rgb(255,255,255)"></p></=
blockquote></div><br>Why don&#39;t you change the recipes so that ftdi-eepr=
om only installs the eeprom portions and not libftdi?=C2=A0 Or just don&#39=
;t build depend on libftdi if ftdi-eeprom is also building libftdi?</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a1145ed9eb9415a05336a8e5a--
