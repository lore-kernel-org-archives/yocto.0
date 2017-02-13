Return-Path: <whulxh@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91F6AE00A0A; Sun, 12 Feb 2017 21:58:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (whulxh[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EFA8E0082E
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 21:58:47 -0800 (PST)
Received: by mail-qk0-f196.google.com with SMTP id u25so13269672qki.2
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 21:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UlEE6uqsD56SZJHknEZK5ErnN+eufAz7Zsx4+/vMpaQ=;
	b=o3mm9OdSCZ6w6b67f+F/dIfyCKHh0EvEgW9MxmS9dBze5hj2w0HoF877Xz1+bS03Ks
	A4UHFge4mSKnAIUPibxO7JmVLtZobdCZbSC3CR/i+BxUg22mxs54xoukgirMKrNEReV7
	awpnZ62xmbhEXwxk5sxGRNHKJ9Dlow+kpVHJcnwqxqhdz8yW7keYglytMUliOZHRE0wC
	LCmjmp//NTR86ZaQec/vNeRdK11Lxpc1WFGEVkOaBId7i4ptWTx/UpBDo0h5+YyHsaXc
	VZ7dlbzBVck/5OGSHq2JxojoYjojgxNfzltDctiPdy2Ywi0CP1AN0wvclODjBMKSkqRW
	zomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UlEE6uqsD56SZJHknEZK5ErnN+eufAz7Zsx4+/vMpaQ=;
	b=U30j9QZ7+X2xfQGvBLcceqgGMgYjcVffHn6R5zyxJFGuX2oVPLk7edTDi3+gBR6Uhi
	dlrVWC+dLwSWL7IqN07MEg+e7rKY6j94aiKsFxQl8f0Bo7I71yYx1KoDJgnUtlyxd1qe
	JQbpJ8dDBRvBhuzq5J6R1UFJDZKIj9WYL7OJPHZLOrzta9ReTI+BjPycSws5hbxR+ruS
	tM3WCX2BMvQmg7pvHyqikQskDj0F5ntZPr9wA3+DaEQ1EzzecB9DzNMG/WuueJMQS5Wo
	GRrEVSf1RR5FNwCudX1vwEfK9zLUBOjl08sAYzslZ3EN24iTIKZs5UbUHc99pmtlGs31
	JT5g==
X-Gm-Message-State: AMke39nqxMdkChNFqYl/GBqwaLS0x42xwKt9mg8h432l8LhJ2eiDx9yUwkWMf2NENP/RYBEBbRxA27fkwqbcbw==
X-Received: by 10.55.136.2 with SMTP id k2mr18991842qkd.310.1486965526769;
	Sun, 12 Feb 2017 21:58:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.43.98 with HTTP; Sun, 12 Feb 2017 21:58:46 -0800 (PST)
In-Reply-To: <CAMKF1srwUOY7VH0S_PfnpbMmr9ONaUrXMHkHcDvUCz+k-0GHyQ@mail.gmail.com>
References: <CAFxSfziYaKn98sUWbUuPbYiXVWXXpqu4vRdbR=BNP8QV2t+yrQ@mail.gmail.com>
	<CAMKF1srwUOY7VH0S_PfnpbMmr9ONaUrXMHkHcDvUCz+k-0GHyQ@mail.gmail.com>
From: Xiaohui Liu <whulxh@gmail.com>
Date: Sun, 12 Feb 2017 21:58:46 -0800
Message-ID: <CAFxSfzjO7ah2pYMzM2p0HUK9FuSKH34i4bvfsQ5vF4SY5t7oow@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to gracefully disable a setscene task?
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
X-List-Received-Date: Mon, 13 Feb 2017 05:58:51 -0000
Content-Type: multipart/alternative; boundary=94eb2c07259a0435c80548632406

--94eb2c07259a0435c80548632406
Content-Type: text/plain; charset=UTF-8

Hi Khem,

Thanks, it works like a charm.

On Fri, Feb 10, 2017 at 5:24 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Feb 10, 2017 at 3:05 PM, Xiaohui Liu <whulxh@gmail.com> wrote:
> > Hi everyone,
> >
> > I tried to disable a setscene task as below:
> >
> > do_populate_lic_setscene () {
> >    exit 1
> > }
> >
>
> you could use something like
>
> deltask  do_populate_lic_setscene
>
> > It works but shows a warning:
> >
> > WARNING: Logfile for failed setscene task is
> > /data/users/xhliu/poky/build-arm/tmp/work/armada39x-poky-
> linux-gnueabi/linux-terragraph/4.4.8-r0/temp/log.do_populate_lic_setscene.
> 2825388
> > WARNING: Setscene task 1
> > (/data/users/xhliu/poky/meta-terragraph/recipes-kernel/linux/
> linux-terragraph_4.4.8.bb,
> > do_populate_lic_setscene) failed with exit code '1' - real task will be
> run
> > instead
> >
> > Any way to disable it without the warning? Thanks in advance.
> >
> > Best,
> > Xiaohui
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--94eb2c07259a0435c80548632406
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem,<div><br></div><div>Thanks, it works like a charm.=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fr=
i, Feb 10, 2017 at 5:24 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Fri, Feb 10, 20=
17 at 3:05 PM, Xiaohui Liu &lt;<a href=3D"mailto:whulxh@gmail.com">whulxh@g=
mail.com</a>&gt; wrote:<br>
&gt; Hi everyone,<br>
&gt;<br>
&gt; I tried to disable a setscene task as below:<br>
&gt;<br>
&gt; do_populate_lic_setscene () {<br>
&gt;=C2=A0 =C2=A0 exit 1<br>
&gt; }<br>
&gt;<br>
<br>
</span>you could use something like<br>
<br>
deltask=C2=A0 do_populate_lic_setscene<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; It works but shows a warning:<br>
&gt;<br>
&gt; WARNING: Logfile for failed setscene task is<br>
&gt; /data/users/xhliu/poky/build-<wbr>arm/tmp/work/armada39x-poky-<wbr>lin=
ux-gnueabi/linux-<wbr>terragraph/4.4.8-r0/temp/log.<wbr>do_populate_lic_set=
scene.<wbr>2825388<br>
&gt; WARNING: Setscene task 1<br>
&gt; (/data/users/xhliu/poky/meta-<wbr>terragraph/recipes-kernel/<wbr>linux=
/<a href=3D"http://linux-terragraph_4.4.8.bb" rel=3D"noreferrer" target=3D"=
_blank">linux-terragraph_4.4.8.<wbr>bb</a>,<br>
&gt; do_populate_lic_setscene) failed with exit code &#39;1&#39; - real tas=
k will be run<br>
&gt; instead<br>
&gt;<br>
&gt; Any way to disable it without the warning? Thanks in advance.<br>
&gt;<br>
&gt; Best,<br>
&gt; Xiaohui<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--94eb2c07259a0435c80548632406--
