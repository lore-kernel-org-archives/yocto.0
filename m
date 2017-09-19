Return-Path: <parkch98@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E968AE00C89; Mon, 18 Sep 2017 22:10:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (parkch98[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEAC0E00A38
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 22:10:15 -0700 (PDT)
Received: by mail-wr0-f169.google.com with SMTP id l39so2013368wrl.12
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 22:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=bMJ39+IUsKuX1YavjEw8ncrrhCL+6Of5pg5FQDK5YFk=;
	b=DcBIyjZniuIB1spywcGoWdZbnmSHgaRCpPJoOkwsjF64i5r2iq6w6OK37JP+y1CBDp
	U9FOj4c/Md5+Qvea2qQ5nzVNWoNMvPGryxcYaSnsWCzuazQeO0YZCmCbdD68Owg2PW4c
	7+gIUZWev9cuVjRBO6EhUL3mFI280h8zvkh+j2l7nxoFQfQW01laa6zXl2Os4t3sZxvo
	M8s5pHHuodnoVl1xHZORY0q22pfiDuxmYOm1ifzVilv4HQyU5oZkAKSP48wy9oXCGj3R
	8y7VqqZJNlcVJINQJH2URXaE+etKMXARuobaVFaWT3IqxDFroa5qBFrfWd/s2Vek8uIG
	IkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=bMJ39+IUsKuX1YavjEw8ncrrhCL+6Of5pg5FQDK5YFk=;
	b=DIy5MHoYgK9sShNS/+X/ejOWIq87XUrTGU5myd+9QxX1/rElthV+njUVbiuxKiWUPz
	bcdhoDsWD6wlIHGI22YBjVRA6Jg9x7961N1qY2KjTKMT2aUUmnjzcLaxsQIP6bDq1uRQ
	Dxi8casigAhV+Ah4B2rIbryE7EwqKp2m5JBn9yedh7TtGPZvgcJW+e0yARyw3J/aOYyz
	0HWnYgx5j9UdM9CiNpbNhUCXWD7ZXepnl8Hkdz+PA8amvrxfZ55DUx7N/MpKhioaqjX+
	2yfwEMtqPKK7Er8QDVfCD57mX2cKXrI1YMuy0g7cb73bTvLrx/ThVkTLdCjpbAhuBaxd
	xg1g==
X-Gm-Message-State: AHPjjUgi2APtdfeVdoUA5s/puH/qxm+24bVc2y5Mp95bC9K//8AHdlQj
	DB7S/P4JdF26MXVcknhBZbLYtJGS5bQUAIfCS8U=
X-Google-Smtp-Source: AOwi7QDh9AX1n7MYNSy7orHFiBwbrV21TELT7kuj3/gmoAsYGu/bpAIZo9L+Jvbhr45ebp9pJ9eWYWbG638GukwUlsU=
X-Received: by 10.223.169.247 with SMTP id b110mr162299wrd.31.1505797814341;
	Mon, 18 Sep 2017 22:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <76d0f29a-b6d7-6dc3-1b18-4ef001f487c9@windriver.com>
	<CAPTzV15N3SqnOTcvoiGvj5F1d7RNZkwNGYBPTkpNsKcDCLUNKQ@mail.gmail.com>
	<0832fa19-40ff-d644-c959-c8483988d473@windriver.com>
In-Reply-To: <0832fa19-40ff-d644-c959-c8483988d473@windriver.com>
From: Chanho Park <parkch98@gmail.com>
Date: Tue, 19 Sep 2017 05:10:03 +0000
Message-ID: <CAPTzV17O-hdYvbUUo=KDMp_VNoMTmzL6M2WnrG440WukXhknYw@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>, yocto@yoctoproject.org
Subject: Re: [meta-selinux] Update announcement
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
X-List-Received-Date: Tue, 19 Sep 2017 05:10:16 -0000
Content-Type: multipart/alternative; boundary="001a113c5248d3d4ae055983df8d"

--001a113c5248d3d4ae055983df8d
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, 19 Sep 2017 at 12:15 PM Mark Hatle <mark.hatle@windriver.com> wrote:

> On 9/18/17 9:34 PM, Chanho Park wrote:
> > Hi Mark,
> >
> > Thanks for the update.
> > When I ran the semanage tool, I got below errors.
> >
> >> ImportError: No module named lib2to3.pgen2.parse
> >
> > Does the setools use python3 instead of the python2?
>
> Are you running this on the target or as part of the build?  Part of the
> system
> requires meta-python components to operate properly.  If this piece
> requires
> additional components that are not set as requirements, it's a bug.


Yes. I already added the meta-openembedded/meta-python. The morty
branch(20151208) does not have the problem.
I'll look at what I missed.


>
> Patches welcome.  (I did not experience this when I did a build.)


Sure. If I find the problem, I'll make the patch.

Best Regards,
Chanho Park

--001a113c5248d3d4ae055983df8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hi,</div><br><div class=3D"gmail_quote"><div dir=3D"=
auto">On Tue, 19 Sep 2017 at 12:15 PM Mark Hatle &lt;<a href=3D"mailto:mark=
.hatle@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">On 9/18/17 9:34 PM, Chanho Park wrote:<br>
&gt; Hi Mark,<br>
&gt;<br>
&gt; Thanks for the update.<br>
&gt; When I ran the semanage tool, I got below errors.<br>
&gt;<br>
&gt;&gt; ImportError: No module named lib2to3.pgen2.parse<br>
&gt;<br>
&gt; Does the setools use python3 instead of the python2?<br>
<br>
Are you running this on the target or as part of the build?=C2=A0 Part of t=
he system<br>
requires meta-python components to operate properly.=C2=A0 If this piece re=
quires<br>
additional components that are not set as requirements, it&#39;s a bug.</bl=
ockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Yes. I already added=
 the meta-openembedded/meta-python. The morty branch(20151208) does not hav=
e the problem.</div><div dir=3D"auto">I&#39;ll look at what I missed.</div>=
<div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
Patches welcome.=C2=A0 (I did not experience this when I did a build.)</blo=
ckquote><div dir=3D"auto"><br></div><div dir=3D"auto">Sure. If I find the p=
roblem, I&#39;ll make the patch.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Best Regards,</div><div dir=3D"auto">Chanho Park</div></div></div=
>

--001a113c5248d3d4ae055983df8d--
