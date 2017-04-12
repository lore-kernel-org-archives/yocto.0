Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0234AE00ADD; Wed, 12 Apr 2017 03:50:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f174.google.com (mail-yb0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6356EE00A9B
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 03:50:35 -0700 (PDT)
Received: by mail-yb0-f174.google.com with SMTP id l201so5694341ybf.0
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 03:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aTUuji5eDneBzOWzAh7S4Pye/Ntvm3/q0Wds5MhNRqY=;
	b=EZY9MF0qGhiXnsVmHMcLGRvsdc/aNcZ+laMMYHcc89ERTxSk1DMfIFuIV3H9brhtSe
	bK7FMcurgYUkw1C0w6wS/xQ2XliQvgcfWOHvAcixYM9l5T1rehokB759I6VociQixUyD
	ceg8fg7mjEGVr+OuYxUlhYwbqsbIwy4js+jCPay0ZsWKwMy9PYzohfno0FXOD74pPNsv
	CF5oGdLJOzPhSncGlxkrU0MvveL0ERbOoGW5TeEPJMDs0vICUjBW6RYjU1O+G8W28N8N
	FuZKjSrB4Z5dBjta9lb4pHJ7DKHTI2lkwzuqCED/f2wCxzPOCyD5N5itzfxyGvalGO1V
	Q9TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aTUuji5eDneBzOWzAh7S4Pye/Ntvm3/q0Wds5MhNRqY=;
	b=W4+Sn0BCKJ2ylvxALu/AqUC7p1X/3diM26uN4elhyA/iWtNioNqs9iSMo2tZLyjBeR
	vRN7BrjirvnROzP6azOfPIRB3vR9BG9lZniUKWy2axTpXBzwdGHPdhSyyrhy+pff7zGZ
	CdaoRbeRi7kssfF1LvXQr8KwJn4HFJQY8kYsCi5CNoymoA4f805DYaPzlBZeeATwtazw
	j+ZwnveBmgwYUHkzwy39K1Rff+Hm3deq8nFQePz6y6IeALBQXN8zqwfmwJYAKYV3hCUz
	6/U1brLUpHkJDJIsml1s9XgnFnHfniXrKEtuMuMS+yhx0ueYEonw7nBK4kPFkEagECbC
	X0eg==
X-Gm-Message-State: AN3rC/4K9hoDVSBdpxlrVt30rDe0Kq2rgVhM14MmOR+sv8hHZx+Z3FIjslcOI8bnToa9LJmFymTYHeQZJ/AH4/4m
X-Received: by 10.37.177.162 with SMTP id h34mr8064766ybj.68.1491994235200;
	Wed, 12 Apr 2017 03:50:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.121.75 with HTTP; Wed, 12 Apr 2017 03:50:04 -0700 (PDT)
In-Reply-To: <1971160.7GEiT5quOD@peggleto-mobl.ger.corp.intel.com>
References: <ba1a6361-3fd4-63f7-3752-63c75dff1347@xevo.com>
	<CAHiDW_FKOO2kGXxLs3NiB3yPmGh2OE1xec0Fdgnt2JuVmBvN_Q@mail.gmail.com>
	<1971160.7GEiT5quOD@peggleto-mobl.ger.corp.intel.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 12 Apr 2017 13:50:04 +0300
Message-ID: <CAHiDW_GipiELX4dDs3sYPm7V9SUGZnQDLOLbwJM0eiJBoQFaQA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Relicensing an Apache-licensed recipe as MIT
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
X-List-Received-Date: Wed, 12 Apr 2017 10:50:38 -0000
Content-Type: multipart/alternative; boundary=f403045eb120657ba4054cf5fa70

--f403045eb120657ba4054cf5fa70
Content-Type: text/plain; charset=UTF-8

On 12 April 2017 at 12:54, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> On Wednesday, 12 April 2017 7:14:00 PM NZST Jussi Kukkonen wrote:
> > On 11 April 2017 at 23:52, Martin Kelly <mkelly@xevo.com> wrote:
> > > I'm thinking about integrating the open-vm-tools recipe from
> openswitch[1]
> > > into openembedded (it massively improves the performance of VMWare
> guests)
> > > but first I have a question about licensing. The openswitch repository
> is
> > > Apache-licensed while the openembedded layers are all MIT licensed. I'm
> > > not
> > > a lawyer, but my understanding is that the Apache license is a
> superset of
> > > the MIT license (it includes a patent clause that the MIT license
> lacks),
> > > and therefore MIT code can be relicensed as Apache but not the other
> way
> > > around.
> >
> > The license of the layer refers to the licensing of the recipe files
> > themselves: the source code licenses of the projects the recipes fetch
> and
> > build are another thing. As long as the source code license is an open
> > source one there should be no complaints about integrating into an
> > openembedded layer.
> >
> > To be completely clear: The LICENSE variable in a recipe refers to the
> > source code license of the project to be built and should be set based on
> > the licensing info found within the version of source code that we fetch
> > and build. The recipe files are licensed according to the LICENSE and/or
> > COPYING files of the layer it is in.
> >
> > By the way, a quick search on layers.openembedded.org reveals this:
> > http://git.openswitch.net/cgit/openswitch/ops-build/
> tree/yocto/openswitch/me
> > ta-foss-openswitch/recipes-extended/open-vm-tools/open-
> vm-tools_10.0.5.bb
> > (it seems to think the correct license is GPL).
>
> This is muddying the waters somewhat - the LICENSE variable has nothing to
> do
> with this. We're only concerned with the license of the recipe itself.
>


Thanks Paul: I was indeed confused and did not understand this was about an
existing recipe even though it was clearly explained in the original post.
Sorry for the noise.

Jussi

--f403045eb120657ba4054cf5fa70
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 12 April 2017 at 12:54, Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"">On Wednesday, 12 April 2017 7:14:00 PM NZST Jussi Kukkonen wro=
te:<br>
&gt; On 11 April 2017 at 23:52, Martin Kelly &lt;<a href=3D"mailto:mkelly@x=
evo.com">mkelly@xevo.com</a>&gt; wrote:<br>
</span><span class=3D"">&gt; &gt; I&#39;m thinking about integrating the op=
en-vm-tools recipe from openswitch[1]<br>
&gt; &gt; into openembedded (it massively improves the performance of VMWar=
e guests)<br>
&gt; &gt; but first I have a question about licensing. The openswitch repos=
itory is<br>
&gt; &gt; Apache-licensed while the openembedded layers are all MIT license=
d. I&#39;m<br>
&gt; &gt; not<br>
&gt; &gt; a lawyer, but my understanding is that the Apache license is a su=
perset of<br>
&gt; &gt; the MIT license (it includes a patent clause that the MIT license=
 lacks),<br>
&gt; &gt; and therefore MIT code can be relicensed as Apache but not the ot=
her way<br>
&gt; &gt; around.<br>
&gt;<br>
&gt; The license of the layer refers to the licensing of the recipe files<b=
r>
&gt; themselves: the source code licenses of the projects the recipes fetch=
 and<br>
&gt; build are another thing. As long as the source code license is an open=
<br>
&gt; source one there should be no complaints about integrating into an<br>
&gt; openembedded layer.<br>
&gt;<br>
&gt; To be completely clear: The LICENSE variable in a recipe refers to the=
<br>
&gt; source code license of the project to be built and should be set based=
 on<br>
&gt; the licensing info found within the version of source code that we fet=
ch<br>
&gt; and build. The recipe files are licensed according to the LICENSE and/=
or<br>
&gt; COPYING files of the layer it is in.<br>
&gt;<br>
&gt; By the way, a quick search on <a href=3D"http://layers.openembedded.or=
g" rel=3D"noreferrer" target=3D"_blank">layers.openembedded.org</a> reveals=
 this:<br>
&gt; <a href=3D"http://git.openswitch.net/cgit/openswitch/ops-build/tree/yo=
cto/openswitch/me" rel=3D"noreferrer" target=3D"_blank">http://git.openswit=
ch.net/<wbr>cgit/openswitch/ops-build/<wbr>tree/yocto/openswitch/me</a><br>
&gt; ta-foss-openswitch/recipes-<wbr>extended/open-vm-tools/<a href=3D"http=
://open-vm-tools_10.0.5.bb" rel=3D"noreferrer" target=3D"_blank">open-<wbr>=
vm-tools_10.0.5.bb</a><br>
&gt; (it seems to think the correct license is GPL).<br>
<br>
</span>This is muddying the waters somewhat - the LICENSE variable has noth=
ing to do<br>
with this. We&#39;re only concerned with the license of the recipe itself.<=
br></blockquote><div><br></div><div><br></div><div>Thanks Paul: I was indee=
d confused and did not understand this was about an existing recipe even th=
ough it was clearly explained in the original post. Sorry for the noise.</d=
iv><div><br></div><div>Jussi</div></div></div></div>

--f403045eb120657ba4054cf5fa70--
