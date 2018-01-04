Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0148E00DD1; Thu,  4 Jan 2018 08:36:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07BDBE00DA3
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 08:36:16 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id z130so2778238ioe.13
	for <yocto@yoctoproject.org>; Thu, 04 Jan 2018 08:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1UyFWyk18gWGvf+wo35GfWUGPdTtpwpcJ7cadRwKCLQ=;
	b=I1ZQrE3qa0VZ8k16/3tuCbvsi/Zm/7pJLnrCigUstbfW7lgDDDvrd/mxP15DpYPLiz
	gBxL9po9Ujlk7AVMZZfCf0Q1uTa56B4cH/VmjB26YsFOHh9oixKBtkIMWCNdH7PqDIXx
	tcyh+u29Th1r5qKdkK/NVKkY4WcM6vD6eX2uLi8aIp2YvZlprODQbRX8Njd0PzGrzO+1
	mD17HATltrsP12CxsgM8VnOeLkfSMYkSCeeb3GYznd3ibS5xUy3xWBHcUpNqMcW8W1wM
	aXvROTUjF8zAuYw/nXNauuy2wDS27r2Wvo8NTFGuCmRITMmE67A6rF+lE98JqiLwdQKs
	R9og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1UyFWyk18gWGvf+wo35GfWUGPdTtpwpcJ7cadRwKCLQ=;
	b=UCLl8+92QZoJ4IrMG2rwNXI5uMjD61wKkXN5bzJgdLahzma3of1RO9M9vH1xvXXZwq
	R00R7uCztSM7MCsz2ABYsjzz4E/njTXL0CdkYnnB8eZfRW4VfcUSgOntFrHN+W64PF4Z
	XLCLlBYi3G8ZDzS7S7SYZrXM/OaelaEGwYsAKGVR0yVDoDuRsdukf+wi5qa6UdS6cNT7
	TNu2UrZtW099EuZuLRkwK1KpDuEAgojDJBmwGpHaLl4N6gFqDzt2u/r4oUPKET3OW+is
	DKpVpAahTjr0FGfNUpsLjrhecGJIatu4xLjaOD4LcXCSHEFg7ObdL24GupMZXpp96l0U
	8M3g==
X-Gm-Message-State: AKGB3mJBICEFK4vjzTtgfmIKDAcvFcAQIna24Z/+nUXHDnqZnj4HO0bY
	KEzZRtyuWyx5s7H4ovB9ykSNQNYyQmpLa2y6I8EZKg==
X-Google-Smtp-Source: ACJfBosj9eST8eIGsgZIAhq08hW5fXZiVUwdAT1lDZnyf08Az8q9wNU3u95dEY412Gu7zFkM9c/9KRk9GUxP2YsfJas=
X-Received: by 10.107.102.25 with SMTP id a25mr139070ioc.217.1515083776258;
	Thu, 04 Jan 2018 08:36:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.34.133 with HTTP; Thu, 4 Jan 2018 08:35:55 -0800 (PST)
In-Reply-To: <CAOLNbFa3bmtTmUEszDF4OQABgY411ieT3+0iJC1zkekk80CWfg@mail.gmail.com>
References: <CAOLNbFYp+U3gJbkWuw-7ViGHzsbLFSEb01P5QREjPPgHb1CV=Q@mail.gmail.com>
	<CAJTo0LZBqz2YrH5YFBcdOyK98_ngoEMSKpD=i1iimuy6tb2BgA@mail.gmail.com>
	<CAOLNbFa3bmtTmUEszDF4OQABgY411ieT3+0iJC1zkekk80CWfg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Jan 2018 16:35:55 +0000
Message-ID: <CAJTo0LZzwePmfR1jMFaE30i-963GJrd90bTBwa7pOnxuiWaZxQ@mail.gmail.com>
To: Rail Shafigulin <rail@esenciatech.com>
Cc: yocto@yoctoproject.org
Subject: Re: running autoreconf during a configuration step
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
X-List-Received-Date: Thu, 04 Jan 2018 16:36:18 -0000
Content-Type: multipart/alternative; boundary="089e082d07804a07310561f5eebd"

--089e082d07804a07310561f5eebd
Content-Type: text/plain; charset="UTF-8"

If you look at autotools.bbclass you'll see it already passes -i.

Ross

On 4 January 2018 at 16:20, Rail Shafigulin <rail@esenciatech.com> wrote:

> How do I add parameters to it? I need to run autoreconf -i. Didn't
> find any EXTRA_OE<something> variables.
>
> On Thu, Jan 4, 2018 at 8:15 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
> > On 4 January 2018 at 15:45, Rail Shafigulin <rail@esenciatech.com>
> wrote:
> >>
> >> I'm somewhat new to Yocto. Trying to build libsoc,
> >> https://github.com/jackmitch/libsoc. The steps are outlined here,
> >> https://github.com/jackmitch/libsoc#manually-building. The first one
> >> is to run autoreconf -i. I've been looking through documentation but
> >> didn't find anything on how to do it. Is there an EXTRA_OE<something>
> >> variable? I did run bitbake -e | grep EXTRA_OE but didn't the only one
> >> that is remotely related to it is EXTRA_OECONFIG, but it is for
> >> ./configure step. I would appreciate any help with it.
> >
> >
> > The autotools class will run autoreconf and then configure, so you just
> need
> > to inherit that class.
> >
> > Ross
>
>
>
> --
> Rail Shafigulin
> Software Engineer
> Esencia Technologies
>
> --
>
>
>
>
> *ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
> Santa Clara CA 95054
> ________________________________________________________
>
> Phone: +1 408 736 8284 Fax: +1 408 519 3475
> http://www.esenciatech.com | http://www.lnttechservices.com
>
>
>

--089e082d07804a07310561f5eebd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you look at autotools.bbclass you&#39;ll see it already=
 passes -i.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On 4 January 2018 at 16:20, Rail Shafigulin <=
span dir=3D"ltr">&lt;<a href=3D"mailto:rail@esenciatech.com" target=3D"_bla=
nk">rail@esenciatech.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">How do I add parameters to it? I need to run autoreconf -i. Didn&#39;=
t<br>
find any EXTRA_OE&lt;something&gt; variables.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Thu, Jan 4, 2018 at 8:15 AM, Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt; On 4 January 2018 at 15:45, Rail Shafigulin &lt;<a href=3D"mailto:rail=
@esenciatech.com">rail@esenciatech.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m somewhat new to Yocto. Trying to build libsoc,<br>
&gt;&gt; <a href=3D"https://github.com/jackmitch/libsoc" rel=3D"noreferrer"=
 target=3D"_blank">https://github.com/jackmitch/<wbr>libsoc</a>. The steps =
are outlined here,<br>
&gt;&gt; <a href=3D"https://github.com/jackmitch/libsoc#manually-building" =
rel=3D"noreferrer" target=3D"_blank">https://github.com/jackmitch/<wbr>libs=
oc#manually-building</a>. The first one<br>
&gt;&gt; is to run autoreconf -i. I&#39;ve been looking through documentati=
on but<br>
&gt;&gt; didn&#39;t find anything on how to do it. Is there an EXTRA_OE&lt;=
something&gt;<br>
&gt;&gt; variable? I did run bitbake -e | grep EXTRA_OE but didn&#39;t the =
only one<br>
&gt;&gt; that is remotely related to it is EXTRA_OECONFIG, but it is for<br=
>
&gt;&gt; ./configure step. I would appreciate any help with it.<br>
&gt;<br>
&gt;<br>
&gt; The autotools class will run autoreconf and then configure, so you jus=
t need<br>
&gt; to inherit that class.<br>
&gt;<br>
&gt; Ross<br>
<br>
<br>
<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">--<br>
Rail Shafigulin<br>
Software Engineer<br>
Esencia Technologies<br>
<br>
--<br>
<br>
<br>
<br>
<br>
*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,<br>
Santa Clara CA 95054<br>
______________________________<wbr>__________________________<br>
<br>
Phone: <a href=3D"tel:%2B1%20408%20736%208284" value=3D"+14087368284">+1 40=
8 736 8284</a> Fax: <a href=3D"tel:%2B1%20408%20519%203475" value=3D"+14085=
193475">+1 408 519 3475</a><br>
<a href=3D"http://www.esenciatech.com" rel=3D"noreferrer" target=3D"_blank"=
>http://www.esenciatech.com</a> | <a href=3D"http://www.lnttechservices.com=
" rel=3D"noreferrer" target=3D"_blank">http://www.lnttechservices.com</a><b=
r>
<br>
<br>
</div></div></blockquote></div><br></div>

--089e082d07804a07310561f5eebd--
