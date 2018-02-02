Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5780EE00D91; Fri,  2 Feb 2018 12:56:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75100E005B1
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 12:56:49 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id c17so24276554iod.1
	for <yocto@yoctoproject.org>; Fri, 02 Feb 2018 12:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MvwokQM5E/iaDa1ueRilJk4j7BAWuloMG+nPXyFPFlM=;
	b=fJfYMwDn75YxURw3YNMdeS82Qz4xobLqzrSJV2no3NJ90fIiqU7Aoyf+QQZXrJW9pl
	DtrNsYokAajI6jsdpWZKBPs04VYz2VGZ9I3IdESk8mWmwkZRGeboQs6YYSP+PWeVy/3d
	bajxdLAYLZkrvKcraTW61Q2gr4fVULr52yYfqRJFOeo6z5gXPJM14eWZW5akQLP+yXmN
	ttuoq671o7wIa+pJ7YjxdvglOgib5OzJdUO/BnTXhcik7AZRTUWgzjeKtZtuZwdNn5fh
	NoqffqNXuoOR++OsuLBG+628G1VxvqO9YGv5soIt0xQowUBzcX0jvfRCTrIMG2howd5c
	mqhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MvwokQM5E/iaDa1ueRilJk4j7BAWuloMG+nPXyFPFlM=;
	b=g4hAC6CBIfPLx8RnNzlylW+X/4MESq7lJP3dN6DTSQ3zfbyZ5lVQikLHdJ90soakh8
	HV78tnhG+TDHUr5jNl3jVm9NaMOCl9GMCszX3cW2r/kyy9MDQW7lIMyC3W6iJ1TZSutP
	FyVLplhdXvaSPSPlw7wSL24R6jwFpEPM3skabF3iNJ/twdcDwXHhXyIKVnSJThx+hOI6
	ZVPZH5a9xQSw409visBgGiBy0p3LCH7VGTceUW3W6i5N7/asgzxQ0zH9azMwaHkjwU+R
	HwWWYN11MowY+nCmhVZdpPrVRp8ybrxo3KNzO4ViT06ipkTmc/zwWlg85RlL1BkeACau
	5z4w==
X-Gm-Message-State: APf1xPBJOjx/K1oJZEo+I6hQj+VGLdoUOm87714gOT+lvlUEEUIL3fMd
	9Dyt6l6L9BJaYZGaXUm2TyzXyEdauMeqGAdJe+Yeww==
X-Google-Smtp-Source: AH8x226jNQKMGB9GmADTp+j2jDEgSgm8QXXDRwN+1kzUKbLRxwowwNIyhQpqRQW8MKj4rGbE0reLzY7nYwk6p9f6FNo=
X-Received: by 10.107.9.154 with SMTP id 26mr147135ioj.52.1517605008643; Fri,
	02 Feb 2018 12:56:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Fri, 2 Feb 2018 12:56:28 -0800 (PST)
In-Reply-To: <trinity-0d7d4d84-eeb2-4307-a506-329382201d9c-1517486579687@3c-app-gmx-bs66>
References: <trinity-0d7d4d84-eeb2-4307-a506-329382201d9c-1517486579687@3c-app-gmx-bs66>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 2 Feb 2018 20:56:28 +0000
Message-ID: <CAJTo0La3T3FULBJeQkap_TeXKv=ATGeRXVvXAo+ryi9j9wprAQ@mail.gmail.com>
To: Frank Smith <smith-f@gmx.de>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to create lighttpd with minimal configure options?
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
X-List-Received-Date: Fri, 02 Feb 2018 20:56:50 -0000
Content-Type: multipart/alternative; boundary="001a113ea2b6732d44056440f304"

--001a113ea2b6732d44056440f304
Content-Type: text/plain; charset="UTF-8"

On 1 February 2018 at 12:02, Frank Smith <smith-f@gmx.de> wrote:

> I want to create a minimal lighttpd package as small as possible.
> Therefore I created a bbappendfile with extra configure flags. As follows.
> But the changes seems to not have any effect at all. The size of my minimal
> rootfs.jffs2 increases from 3MB to 5.1MB.
>
> meta-iris/recipes-extended/lighttpd/lighttpd_%.bbappend
>
> LICENSE = "BSD"
>
> EXTRA_OECONF += "--enable-ipv6"
> EXTRA_OECONF += "--with-zlib"
> EXTRA_OECONF += "--without-openssl"
>
> How to build a minimal lighttpd package? I was also thinking about
> disabling unused modules, but how?
>
> Maybe I did not really understand, how to enable the ./configure options.
> Is this the right way to configure with an option?
>
> PACKAGECONFIG ??= "openssl pcre zlib \
>     [..]
> "
> PACKAGECONFIG[openssl] = "--with-openssl,--without-openssl,openssl"
>
> EXTRA_OECONF += "--without-openssl"
>

No, that's not how to use PACKAGECONFIG.

See the manual for an explanation of PACKAGECONFIG and how to use it:

http://www.yoctoproject.org/docs/2.5/ref-manual/ref-manual.html#var-PACKAGECONFIG

Ross

--001a113ea2b6732d44056440f304
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 1 February 2018 at 12:02, Frank Smith <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:smith-f@gmx.de" target=3D"_blank">smith-f@gmx.de</a>=
&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);=
padding-left:1ex"><div><div style=3D"font-family:Verdana;font-size:12px"><d=
iv style=3D"font-family:Verdana;font-size:12px">
<div>I want to create a minimal lighttpd package as small as possible. Ther=
efore I created a bbappendfile with extra configure flags. As follows. But =
the changes seems to not have any effect at all. The size of my minimal roo=
tfs.jffs2 increases from 3MB to 5.1MB.</div>

<div>=C2=A0</div>

<div>meta-iris/recipes-extended/<wbr>lighttpd/lighttpd_%.bbappend</div>

<div>=C2=A0</div>

<div>
<div>LICENSE =3D &quot;BSD&quot;</div>

<div>=C2=A0</div>

<div>EXTRA_OECONF +=3D &quot;--enable-ipv6&quot;<br>
EXTRA_OECONF +=3D &quot;--with-zlib&quot;<br>
EXTRA_OECONF +=3D &quot;--without-openssl&quot;</div>

<div>=C2=A0</div>

<div>How to build a minimal lighttpd package? I was also thinking about dis=
abling unused modules, but how?</div>

<div>=C2=A0</div>

<div>Maybe I did not really understand, how to enable the ./configure optio=
ns. Is this the right way to configure with an option?</div>

<div>=C2=A0</div>

<div>PACKAGECONFIG ??=3D &quot;openssl pcre zlib \<br>
=C2=A0=C2=A0=C2=A0 [..]<br>
&quot;</div>

<div>PACKAGECONFIG[openssl] =3D &quot;--with-openssl,--without-<wbr>openssl=
,openssl&quot;</div>

<div>=C2=A0</div>

<div>EXTRA_OECONF +=3D &quot;--without-openssl&quot;</div>
</div>
</div></div></div>
</blockquote></div><br></div><div class=3D"gmail_extra">No, that&#39;s not =
how to use PACKAGECONFIG.</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">See the manual for an explanation of PACKAGECONFIG and =
how to use it:</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra"><a href=3D"http://www.yoctoproject.org/docs/2.5/ref-manual/ref-man=
ual.html#var-PACKAGECONFIG">http://www.yoctoproject.org/docs/2.5/ref-manual=
/ref-manual.html#var-PACKAGECONFIG</a><br></div><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">Ross</div><div class=3D"gmail_extra"><=
br></div></div>

--001a113ea2b6732d44056440f304--
