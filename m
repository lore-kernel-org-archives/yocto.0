Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 643D3E008CA; Mon, 30 Jul 2018 07:50:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f181.google.com (mail-yb0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD8ABE0080A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 07:50:57 -0700 (PDT)
Received: by mail-yb0-f181.google.com with SMTP id c3-v6so4833290ybi.13
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 07:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rEo/1mQVtafn3J8u96WFi/064evFoucdqnUAbyQLCZY=;
	b=ZhTn9vWKuIFArCXM8CD5Ujv6hHM34Q5tNOdeDpDxdJ2OUasvt3RH4Kq+6m7nerS7Bg
	txdTgOu0i0reDdJJyU+SgisyQHxrQ5MV3AJAenfda+zgDWH79LpjKJzNfuWTbxQYzcqa
	KBJCgsS2aE1Uo76nzezDPkRpExMM2KE5L0quHlXWgBNwFcv/le9Vju2isirzwvbvFMGZ
	AAlTphs/Xtq5hY8Rc++P2du0DpuOQoOFsdv11GPDiatMJQTE3bC+XqGfMM/aZ32YcOrE
	owaO3SJzAPRjH39AhEOGVdemKSj9KAaYLs/6GSfjrA43kHdoDIeNz0/vg37cLVxT9gkJ
	4iEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rEo/1mQVtafn3J8u96WFi/064evFoucdqnUAbyQLCZY=;
	b=sAb8KO53NXA/IFG1R305KX4AjTWCSVsD5X+/ldfL6yeuRvvKAtHNDXnpwzQ5V/EVjR
	p6mrcpvZRCD6a0nw0W2kTvuv0TuXlBqmuIauYOIZg22K9VMsy7m+jtlEe55OUGko1amO
	72f21ujmvyENcSUjyCtKp1G6oue0Syu+ACDTKu9cpfo4fcdiUtCzLvJvG3Io1NWtZpz/
	Q5M1nr2PWO49eFPs+gn4JTo9A7/FVrhz+6F9ScJwxi+5W54lADCvrgrfJuL9A5s3JyxM
	vvD/xaKzF98V7/ss9LQOTMex7lxvnM39lEtF4nGcKGUEBYKRWRUPTI1ROGXT9A/SJC4G
	3NQg==
X-Gm-Message-State: AOUpUlE0RpHmfrF5S2HigMCKCQFEjCMLPvM45x67owk4DMgoeJeW065o
	riv5PEy1aijl2gOglyOCGwx6PDNdgNKRmsiMJGw=
X-Google-Smtp-Source: AAOMgpcRjMlDIDq6XoW1p+9AuQeSt7q7vhUVewfbL87IVXdP/87sbs7Tlp/uaVDoS53Mfxzp1XTIxAV0F4dyqhRxubI=
X-Received: by 2002:a25:b091:: with SMTP id
	f17-v6mr9289453ybj.167.1532962256928; 
	Mon, 30 Jul 2018 07:50:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAFeBWL4qPSzB=o8BicxhpW-xwi4BQhBFQPuajx5A0GA=X=znYg@mail.gmail.com>
	<CAJTo0Lb+KsKi2fKwEJx-KbDmbTnCPVwwNaM0M0-mO3G2xOeDeg@mail.gmail.com>
In-Reply-To: <CAJTo0Lb+KsKi2fKwEJx-KbDmbTnCPVwwNaM0M0-mO3G2xOeDeg@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Mon, 30 Jul 2018 10:50:45 -0400
Message-ID: <CAFeBWL6Mo3Cp8Ku+CfoyyGs_6PQ1Z+rSa4D9faCzwVAZ-PRHgA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] devtool add recipe with no srctree / fetchuri?
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
X-List-Received-Date: Mon, 30 Jul 2018 14:50:58 -0000
Content-Type: multipart/alternative; boundary="000000000000c743e6057238968e"

--000000000000c743e6057238968e
Content-Type: text/plain; charset="UTF-8"

Got it. Thank you for the prompt response.

On Mon, Jul 30, 2018 at 10:18 AM Burton, Ross <ross.burton@intel.com> wrote:

> devtool add's primary convenience is how it can examine the source and
> write the LICENSE correctly, the correct inherits, etc.  If you're
> just going to install a few files then just write a recipe from
> scratch.
>
> Ross
>
> On 30 July 2018 at 15:10, Adam Lee <adam.yh.lee@gmail.com> wrote:
> > Is it possible to run 'devtool add [recipe-name]' without 'srctree' or
> > 'fetchuri'?
> > I just want to add a simple recipe with a few files to be installed on
> the
> > target file system.
> > I can directly add a file in my meta-layer, but devtool is probably the
> more
> > correct approach.
> >
> > Adam
> >
> > --
> > _______________________________________________
> > Openembedded-core mailing list
> > Openembedded-core@lists.openembedded.org
> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
> >
>

--000000000000c743e6057238968e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Got it. Thank you for the prompt response.</div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr">On Mon, Jul 30, 2018 at 10:18 AM Burt=
on, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">devtool add&#39;s p=
rimary convenience is how it can examine the source and<br>
write the LICENSE correctly, the correct inherits, etc.=C2=A0 If you&#39;re=
<br>
just going to install a few files then just write a recipe from<br>
scratch.<br>
<br>
Ross<br>
<br>
On 30 July 2018 at 15:10, Adam Lee &lt;<a href=3D"mailto:adam.yh.lee@gmail.=
com" target=3D"_blank">adam.yh.lee@gmail.com</a>&gt; wrote:<br>
&gt; Is it possible to run &#39;devtool add [recipe-name]&#39; without &#39=
;srctree&#39; or<br>
&gt; &#39;fetchuri&#39;?<br>
&gt; I just want to add a simple recipe with a few files to be installed on=
 the<br>
&gt; target file system.<br>
&gt; I can directly add a file in my meta-layer, but devtool is probably th=
e more<br>
&gt; correct approach.<br>
&gt;<br>
&gt; Adam<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; Openembedded-core mailing list<br>
&gt; <a href=3D"mailto:Openembedded-core@lists.openembedded.org" target=3D"=
_blank">Openembedded-core@lists.openembedded.org</a><br>
&gt; <a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded=
-core" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/m=
ailman/listinfo/openembedded-core</a><br>
&gt;<br>
</blockquote></div>

--000000000000c743e6057238968e--
