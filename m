Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70F6CE00CF2; Tue, 31 Oct 2017 07:15:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11B02E00C78
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 07:15:17 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id l24so14759290pgu.11
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 07:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KCq1BMfSvvbx4dF2+2mVusgQqEy1pPUQR3Ts0ydHqJc=;
	b=bI5RFsLktSaZuR7SG4E/wOLNSiSo1ulbMavKSiUEBwkN2cWLJXd6IbqyDTdSrjKPpM
	K3YO1m/20HDkrjmHM/+StFcB4/YK0BwLOMy8IHSUXeXMfZ1EHVmJ3LNXcXt8u/VGc2zR
	Wz2qr2oKkCKEiThdXTy0h71/xwNlB2PxG9wOhmHI3pV4gnEHNh0PzudMpMW0q+2AMkXo
	HYQ5W5SUJypYwGEq+yzS2CWxI7L0btg9f3aGXH8LI4XJXNwf9ztxUq1p5GGgc+qsIIm7
	Ip9+rpvsaDnzc/oox7YAeVQEQmUPShoqrL6HbhInGRWqWbGykI4CVhllOLwtJvDbE0Wu
	5z1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KCq1BMfSvvbx4dF2+2mVusgQqEy1pPUQR3Ts0ydHqJc=;
	b=srE0pg8kSQD1oKj4QxdENuw/m6A0wFC9VonIc1mnGDa6uE5CJWAEEiRE7Ruey3nX1X
	6cT/YbRzGGl4iz8Ndr+NwJDckZ1gVMRrnUimU6P1v4GEpJSrgseEyjRGFpmPc9aAIF96
	Hy4AYiP7wg7YEa3S5YwPmcfhmtEol/bpdUssGGtqIqJCqy9aQ/xVElLP3+/lezdI/zV5
	GIKRPpREYo995DsIe/0nuDIJCFglLKHjIPtlBKhU3kg+EVZyfku1Xai0B4c4Yjizx/xF
	Xo/ploKk3R2m8C3Qdvh/li5W7u6oE4TrHiYl7FV1vwHKK/DJg7rWu4c1pw5Wt0mL+3VB
	R0jw==
X-Gm-Message-State: AMCzsaUGpstUf39VlAu2q4pNtvIfzJWr+VnpzSNNGttN0ar5uIsWBA2J
	tM14Q7Z0FLr7GP/I6koLNICc0ZMb0In3XmZB1FU=
X-Google-Smtp-Source: ABhQp+TULMGYP2z0ZUJY0eE6zJ7eWKyGQfJCQcytaSCSr2YPPwgUYog5dvfQe5eFbSKtuRPee2sppVem8QblTJQf2Eo=
X-Received: by 10.99.109.14 with SMTP id i14mr1934824pgc.355.1509459317446;
	Tue, 31 Oct 2017 07:15:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.141.9 with HTTP; Tue, 31 Oct 2017 07:15:16 -0700 (PDT)
In-Reply-To: <CAMKF1spbS2++NDZ8=mifSPP+i-TOMn1bmNQTnx+H6HdwsPkaDQ@mail.gmail.com>
References: <CAOsp8o87Tu-jsEQts=f-kmM1mtwcMrDN0eM-Zs0w0c+iF36gFQ@mail.gmail.com>
	<CAMKF1spbS2++NDZ8=mifSPP+i-TOMn1bmNQTnx+H6HdwsPkaDQ@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
Date: Tue, 31 Oct 2017 09:15:16 -0500
Message-ID: <CAOsp8o_a353XUeojQdeLq-AuqL=eXNwBoma57=C6Cq=29q02GA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Using site.conf
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
X-List-Received-Date: Tue, 31 Oct 2017 14:15:18 -0000
Content-Type: multipart/alternative; boundary="f403045c3c086b5c6b055cd86257"

--f403045c3c086b5c6b055cd86257
Content-Type: text/plain; charset="UTF-8"

Is there an example of this somewhere? I haven't had any luck in
documentation or example code to see how to make the site.conf be used.

On Mon, Oct 30, 2017 at 6:16 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Oct 27, 2017 at 11:59 AM, Michael Habibi <mikehabibi@gmail.com>
> wrote:
> > I'm a bit confused about the usage of site.conf. I see a sample in the
> poky
> > distro area, but I'm not sure how this actually gets copied into a
> site.conf
> > and actually used by deployed versions of our distribution.
> >
> > Is there some extra step I need to take to ensure site.conf.sample from
> my
> > own distributions conf directory gets copied and actually used by our
> > engineers' environments?
>
> yes, you need to do that as part of workspace setup.
>
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--f403045c3c086b5c6b055cd86257
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there an example of this somewhere? I haven&#39;t had a=
ny luck in documentation or example code to see how to make the site.conf b=
e used.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On M=
on, Oct 30, 2017 at 6:16 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=
=3D"h5">On Fri, Oct 27, 2017 at 11:59 AM, Michael Habibi &lt;<a href=3D"mai=
lto:mikehabibi@gmail.com">mikehabibi@gmail.com</a>&gt; wrote:<br>
&gt; I&#39;m a bit confused about the usage of site.conf. I see a sample in=
 the poky<br>
&gt; distro area, but I&#39;m not sure how this actually gets copied into a=
 site.conf<br>
&gt; and actually used by deployed versions of our distribution.<br>
&gt;<br>
&gt; Is there some extra step I need to take to ensure site.conf.sample fro=
m my<br>
&gt; own distributions conf directory gets copied and actually used by our<=
br>
&gt; engineers&#39; environments?<br>
<br>
</div></div>yes, you need to do that as part of workspace setup.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--f403045c3c086b5c6b055cd86257--
