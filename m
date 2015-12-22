Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFD99E00C31; Tue, 22 Dec 2015 03:12:31 -0800 (PST)
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
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B792E0085A
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 03:12:29 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id e126so183412666ioa.1
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 03:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=64+6j8Pc08m3P737VhYWWYBowBtpcq6GOFS17WZzmBE=;
	b=12b1aE5jBpcI2DCgnZCcj8rY8XoYCIqj8jndcMf2C2PsjeXbPYK7Ghc0/kHMjtiH2Z
	ERrnVIYUxZsP+WIiVl7YT7fS3aIOh2x4jmkHC2AQWIYR3cB7e3y+lzmTDPX6IC2eLl4e
	x4XhEgQo6enZgZJj9frkmqOxHxfTzB8Sl0AyDb5Gu+dbRnGpsy58cwU+5e8r9fAkUpEy
	WC9K8yiDxJ3t9Xhz/QJItoSJbn8zfCaDBTBu9fW+qMsHHU3byFnsBMk0ObX23CJsxAng
	1cRobjAgBrUswzXjXA/TuhRjbtTwYtw0Knogp3Xo+qlOmvisExcclYcEcKANnOPYLwTB
	Susw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=64+6j8Pc08m3P737VhYWWYBowBtpcq6GOFS17WZzmBE=;
	b=CwN5HmiBo7Cgvi/lEmfQJxIKW6YgHbweXRk4watLi5rzSbZYwKEq7uGcNQNHztSypK
	VrYDndhcVndYTG0HiiEKLFPIn/d0MOpJzrFyN2PFojaMZhaiEL3vZn1+VC+xFBfYYtWc
	C0GNCl7marDCmEEpW4/WZqg05v5qxr5X2oO25JGuQXqTOjoIEX8Z3qnGMV5ymJruypD8
	IBsPTLiEauKok/S42dWrgsmZbpG68FCz6UQaHqIwODezG5Y47qr3iWPaJrwk5apJYp42
	uoy/h6SOKf67zQMyBMpOvGvBwX868XhxlvmNKl8DpGN1kXyPexa6NVz4XcYZD5gq7nWK
	Y+Hw==
X-Gm-Message-State: ALoCoQnFOb8jExCbNSWUclHAiZp79Ue465gpvVsN+N4Zqr7Cffs5G6EYEy4EQJzLKkouuU91CCZwC1RXjD96i9M/+ngh+tNwh5tkNx20/Eo9hS+IlyPVpmI=
X-Received: by 10.107.155.209 with SMTP id d200mr27308747ioe.133.1450782749453;
	Tue, 22 Dec 2015 03:12:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Tue, 22 Dec 2015 03:12:10 -0800 (PST)
In-Reply-To: <56791A82.7050809@arigo-software.de>
References: <56791A82.7050809@arigo-software.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 Dec 2015 11:12:10 +0000
Message-ID: <CAJTo0LYb8MokHk+gW4X1eq4orG28Uie8b8ss-YaSMZzXdyGQ6A@mail.gmail.com>
To: Simon Ruetzler <sruetzler@arigo-software.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto package naming
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
X-List-Received-Date: Tue, 22 Dec 2015 11:12:31 -0000
Content-Type: multipart/alternative; boundary=001a114034026d842805277aae16

--001a114034026d842805277aae16
Content-Type: text/plain; charset=UTF-8

On 22 December 2015 at 09:40, Simon Ruetzler <sruetzler@arigo-software.de>
wrote:

> Why is the demo package created with the libscom name? How can I disable
> this?
>

Because the default configuration enables debian.bbclass, which renames
packages if they contain just a library to be the soname of the library.

If you don't want this to happen in your distro, INHERIT_remove = "debian"
in your local.conf or distro configuration will stop it.

Ross

--001a114034026d842805277aae16
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 December 2015 at 09:40, Simon Ruetzler <span dir=3D"ltr">&lt;<a href=
=3D"mailto:sruetzler@arigo-software.de" target=3D"_blank">sruetzler@arigo-s=
oftware.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":7wj" class=3D"a3s" style=3D"overflow:hidden">Why is the demo package c=
reated with the libscom name? How can I disable this?<br></div></blockquote=
></div><br>Because the default configuration enables debian.bbclass, which =
renames packages if they contain just a library to be the soname of the lib=
rary.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=
If you don&#39;t want this to happen in your distro, INHERIT_remove =3D &qu=
ot;debian&quot; in your local.conf or distro configuration will stop it.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a114034026d842805277aae16--
