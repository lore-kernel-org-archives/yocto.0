Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EF7CE00995
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 16:30:33 -0800 (PST)
Received: by mail-vc0-f177.google.com with SMTP id if17so700071vcb.36
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 16:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=BgGsIR/jl0MKS1m9eI1o09+dJTyLs098ioTRx7Kmvw4=;
	b=Is6GsK7+URY6KcPZcYqEeGuUOflQwLUp08oU7gZvtGKgpxGdPoQUnq5iEQtGQ+W6DH
	mb5I4bkljKmOGV+2l98ioKbdxUYcA5DwymJ5bz8IyH5qXD+IqCHdXe95ytZswnn+jEr7
	NaeG7yhWmwCAnPljv3P5hBZ4RgkIpX7lIsSw/q4cHO01u0AJ9J2qeJMEBRqanvTRmf5W
	otbjEdQs9CMkIYHlNmOyw2azvdfxZviVGNDyUj35oP8wet4D9h9epArbakLv3dYux0dR
	Jj4gzyxrM7mRkQGlETcXILAtPYfDjCRzS33OGYS36RHn7J30wEsooKLRP3dNFG6XxIeo
	2C+g==
MIME-Version: 1.0
X-Received: by 10.52.61.133 with SMTP id p5mr9917681vdr.4.1394152232478; Thu,
	06 Mar 2014 16:30:32 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Thu, 6 Mar 2014 16:30:32 -0800 (PST)
In-Reply-To: <CAMKF1srUeJ-Djk_ibR=PYW9MS3FVX20psJZMMguxYEVWdwoVJQ@mail.gmail.com>
References: <1394028560.17657.YahooMailNeo@web163103.mail.bf1.yahoo.com>
	<CAMKF1spN_KT1-PtQR22ixmQ=xTxBoAht04AY11CauCz0ba0BiQ@mail.gmail.com>
	<CAA7h+Eqr8bVtsoYoNA7EWhUJZ63L27botuvLiBhx5O5CwLF2+Q@mail.gmail.com>
	<CAMKF1srUeJ-Djk_ibR=PYW9MS3FVX20psJZMMguxYEVWdwoVJQ@mail.gmail.com>
Date: Thu, 6 Mar 2014 17:30:32 -0700
Message-ID: <CAA7h+Epd3vWbrH5eOm5SYzT7X97sJ6Y6yH61=21W7CnuTQzNjQ@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Khem Raj <raj.khem@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding headers to tool chain
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
X-List-Received-Date: Fri, 07 Mar 2014 00:30:36 -0000
Content-Type: multipart/alternative; boundary=001a1136b38e946c2304f3f95c99

--001a1136b38e946c2304f3f95c99
Content-Type: text/plain; charset=ISO-8859-1

Khem,
I did the following, but still no headers and source in /usr/src:

bitbake meta-toolchain

bitbake -cpopulate_sdk gumstix-console-image




On Thu, Mar 6, 2014 at 12:34 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Mar 6, 2014 at 11:12 AM, Rick Bianchi
> <bianchirickkutta@gmail.com> wrote:
> > Khem,
> > Is this the same process if I needed to get the kernel headers and source
> > onto the build?
> >
>
> this is application development so kernel headers for userspace will be
> there.
>
> >
> > On Wed, Mar 5, 2014 at 2:15 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker <joelparker27@yahoo.com>
> >> wrote:
> >> > $ bitbake meta-toolchain
> >>
> >> do bitbake -cpopulate_sdk <image-to-which-you-added-sqlite>
> >> and install that SDK
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>

--001a1136b38e946c2304f3f95c99
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div>Khem,<br></div><div>I did the following, but still no headers and source in /usr/src:</div><div><br></div><div>bitbake meta-toolchain</div><div><br></div><div>bitbake -cpopulate_sdk gumstix-console-image</div>
<div><br></div><div><br></div><div class="gmail_extra"><br><br><div class="gmail_quote">On Thu, Mar 6, 2014 at 12:34 PM, Khem Raj <span dir="ltr">&lt;<a href="mailto:raj.khem@gmail.com" target="_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="">On Thu, Mar 6, 2014 at 11:12 AM, Rick Bianchi<br>
&lt;<a href="mailto:bianchirickkutta@gmail.com">bianchirickkutta@gmail.com</a>&gt; wrote:<br>
&gt; Khem,<br>
&gt; Is this the same process if I needed to get the kernel headers and source<br>
&gt; onto the build?<br>
&gt;<br>
<br>
</div>this is application development so kernel headers for userspace will be there.<br>
<div class="HOEnZb"><div class="h5"><br>
&gt;<br>
&gt; On Wed, Mar 5, 2014 at 2:15 PM, Khem Raj &lt;<a href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Mar 5, 2014 at 6:09 AM, Joel Parker &lt;<a href="mailto:joelparker27@yahoo.com">joelparker27@yahoo.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; $ bitbake meta-toolchain<br>
&gt;&gt;<br>
&gt;&gt; do bitbake -cpopulate_sdk &lt;image-to-which-you-added-sqlite&gt;<br>
&gt;&gt; and install that SDK<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt;&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div>

--001a1136b38e946c2304f3f95c99--
