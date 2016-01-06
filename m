Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43DF4E00C7D; Wed,  6 Jan 2016 01:17:47 -0800 (PST)
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
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08A25E00803
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 01:17:42 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id t15so1708212igr.0
	for <yocto@yoctoproject.org>; Wed, 06 Jan 2016 01:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HdyhpehqUJr7yMKrB2wfvoayCxV6Xl6byKfdvzLLhVE=;
	b=WdmG0hmnGCZrelOBdOvByo6qMctRrue9cInKMIgFg+Q6Fdjdht4dA9xyIGLuUAv4C3
	XXmhOKMOY7EseijtHG0WBzAPYkQFVuBgqbHrSNdLt5RDtx0Lu51VMJg9cJzwMOO2yuOZ
	5mkdf3nprSl9xLpjnjZil3o4yFtCA0tkt0FmaR3dWALa2sYs7JwtTkQnHcqkFtFJsu7m
	5pe4LPNQ/8flYVSpFWpF/imdWWdWRnbvehxwZmihPtbDdQYi+5vtpLYGBpNc4DTWeg4d
	RZsiLxyo/AraOsDF5QFDY7NrA/yhAfkWDRHVQyZgsD+e8Hhcm48Oz4p+jPpstf/6k6Yx
	CpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=HdyhpehqUJr7yMKrB2wfvoayCxV6Xl6byKfdvzLLhVE=;
	b=RmSnNhBQeOukBjL3f4U5MJly0PEC+pIWi1RRHSxkwKOYiZZjzPZLpP7UTt4kZLxVyW
	8/Dars7o1z3KZ95v2AqwlTS1TpEttCeJfxtPmApc41UytmeAweAThd+Njv4OtqN3xhIu
	z8YcGYUV7QyuNdI0mLL4HzcHv9uDx9TWgDbgn4Q22NHXA+o1ExCzIdEH/V4AtqhbnQjC
	v3v1qHXTtR9QU8N4Ol7KKA3NupULUs72iG0Swu8THjJFzXWXDGjw4k7bo3AjQJS9KpNj
	/9M/SR6Fh48iOWlX9nFrirIoYfAxOBc6IsJrJJiruj2q46N0lI/WM4vOCJDBfZyHxZwV
	FYSg==
X-Gm-Message-State: ALoCoQmoJCH7v2GMH/54HOoG58W1/Z1jbVDBzGV6yYqWDKWNKXRpJsF3KhjqKAFxR8aJ8HMsrGIl7V9Xc5GwcbLsXzaXYde0VnzvJh3Y6uwyRU3wVV9wSTc=
X-Received: by 10.50.111.111 with SMTP id ih15mr6228101igb.78.1452071862293;
	Wed, 06 Jan 2016 01:17:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 6 Jan 2016 01:17:22 -0800 (PST)
In-Reply-To: <CAO-QM6MtD1Un5BZc3mVh3Mx+KNX-fc344qYVzXRe+NuUx=9kiQ@mail.gmail.com>
References: <CAO-QM6MtD1Un5BZc3mVh3Mx+KNX-fc344qYVzXRe+NuUx=9kiQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Jan 2016 09:17:22 +0000
Message-ID: <CAJTo0La=tGVHF90FfrR08N01fsNzocOucWd9VzMVEQmUVfQ=nA@mail.gmail.com>
To: Renjith Vijayan <renjithvjn@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Rsyslog-ImJournal dependencies in Yocto
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
X-List-Received-Date: Wed, 06 Jan 2016 09:17:47 -0000
Content-Type: multipart/alternative; boundary=089e0149be348a75410528a6d311

--089e0149be348a75410528a6d311
Content-Type: text/plain; charset=UTF-8

On 6 January 2016 at 04:07, Renjith Vijayan <renjithvjn@gmail.com> wrote:

> checking for LIBSYSTEMD_JOURNAL... no
> | configure: error: Package requirements (libsystemd-journal >= 197) were
> not met:
> |
> | No package 'libsystemd-journal' found
> |
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> | installed software in a non-standard prefix.
>

The configure script is looking for the old systemd library names, you'll
either need to patch the configure script to look for the new names (just
libsystemd) or enable the "compat" PACKAGECONFIG in systemd.

To be honest I think we should probably enable compat by default.

Ross

--089e0149be348a75410528a6d311
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 January 2016 at 04:07, Renjith Vijayan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:renjithvjn@gmail.com" target=3D"_blank">renjithvjn@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"font-siz=
e:12.8px">checking for LIBSYSTEMD_JOURNAL... no</div><div style=3D"font-siz=
e:12.8px">| configure: error: Package requirements (libsystemd-journal &gt;=
=3D 197) were not met:</div><div style=3D"font-size:12.8px">|</div><div sty=
le=3D"font-size:12.8px">| No package &#39;libsystemd-journal&#39; found</di=
v><div style=3D"font-size:12.8px">|</div><div style=3D"font-size:12.8px">| =
Consider adjusting the PKG_CONFIG_PATH environment variable if you</div><di=
v style=3D"font-size:12.8px">| installed software in a non-standard prefix.=
</div></blockquote></div><br>The configure script is looking for the old sy=
stemd library names, you&#39;ll either need to patch the configure script t=
o look for the new names (just libsystemd) or enable the &quot;compat&quot;=
 PACKAGECONFIG in systemd.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">To be honest I think we should probably enable compat =
by default.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--089e0149be348a75410528a6d311--
