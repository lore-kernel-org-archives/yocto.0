Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09D65E00B68; Thu, 22 May 2014 22:34:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1525 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 May 2014 22:34:04 PDT
Received: from mail-ob0-f169.google.com (unknown [209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69741E00A2F
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 22:34:04 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id vb8so4945294obc.28
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 22:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZjZhWPEwilC7IJWShLPmtvIyI9XUHwl6CIPcIVrXyuE=;
	b=thqzygYIWkX4cnm8TBgOXoTkFbTZm/ta6Vv4t5XKVApuJEu9UGvvaJYmp77O+b1XRX
	xCjxTYbQ/iL3eRYoEiZq6znYnqjOuDMJPXrYa7NtDP3730wgGKoduo77Tp0BQki5D10Z
	D7Gcis9xaMm9v20uVJ/WRh99cZZVUX1o5fB7Ya98yLnpJjNVY7AnZCsDIBDA11Zudu09
	NBH9n1H4orI3/Zy4ADD0qcE3sJU30BwtQEeRJHFnNXkRPvC76odzO5ojmZq/knaYGy93
	Zu5uNfEGArx5ksL6GFqBGuNm9g6rBzfqNQWaRClmeedwqDqKjmaSlcPUAZJ8n7XCZVZf
	ghmQ==
MIME-Version: 1.0
X-Received: by 10.182.22.227 with SMTP id h3mr2213002obf.36.1400821369561;
	Thu, 22 May 2014 22:02:49 -0700 (PDT)
Received: by 10.182.207.42 with HTTP; Thu, 22 May 2014 22:02:49 -0700 (PDT)
In-Reply-To: <BLU185-W78D629C9B1F63B536ADE02C73E0@phx.gbl>
References: <mailman.19025.1400766628.26702.yocto@yoctoproject.org>
	<BLU185-W78D629C9B1F63B536ADE02C73E0@phx.gbl>
Date: Fri, 23 May 2014 10:32:49 +0530
Message-ID: <CAE_REAur8OFYCxEsRRrJYy=PE3Rs4V-C6UmJW+r16avOm+dL5Q@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Pushpa Teja <pushpa@jtechindia.in>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto help needed
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
X-List-Received-Date: Fri, 23 May 2014 05:34:09 -0000
Content-Type: multipart/alternative; boundary=001a11c2fd6c2068a404fa0a2418

--001a11c2fd6c2068a404fa0a2418
Content-Type: text/plain; charset=UTF-8

Hi,

You can go through bunch of very good documents available at
https://www.yoctoproject.org/documentation/current

For immediate, you can start with
http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html

//Gaurang Shastri


On Fri, May 23, 2014 at 10:09 AM, Pushpa Teja <pushpa@jtechindia.in> wrote:

> Good morning,
>                         I want to start to work on yacto please z provide
> me the guidance how to start it .
>
> Regards ,
> pushpa
>
>
>
>
> > From: yocto-request@yoctoproject.org
> > Subject: yocto Digest, Vol 44, Issue 103
> > To: yocto@yoctoproject.org
> > Date: Thu, 22 May 2014 06:50:28 -0700
> >
> > Send yocto mailing list submissions to
> > yocto@yoctoproject.org
> >
> > To subscribe or unsubscribe via the World Wide Web, visit
> > https://lists.yoctoproject.org/listinfo/yocto
> > or, via email, send a message with subject or body 'help' to
> > yocto-request@yoctoproject.org
> >
> > You can reach the person managing the list at
> > yocto-owner@yoctoproject.org
> >
> > When replying, please edit your Subject line so it is more specific
> > than "Re: Contents of yocto digest..."
> >
> >
> > Today's Topics:
> >
> > 1. Re: help needed (Alexandru Vaduva)
> > 2. Re: help needed (Burton, Ross)
> > 3. Re: [meta-mingw] build error (Stefan Seefeld)
> > 4. Re: help needed (Paul Eggleton)
> > 5. Re: help needed (Alexandru Vaduva)
> > 6. Re: Help with building app recipe (Diego Sueiro)
> >
> >
> > ----------------------------------------------------------------------
> >
> > Message: 1
> > Date: Thu, 22 May 2014 06:00:02 -0700 (PDT)
> > From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> > To: Paul Eggleton <paul.eggleton@linux.intel.com>
> > Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> > Subject: Re: [yocto] help needed
> > Message-ID:
> > <1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
> > Content-Type: text/plain; charset="us-ascii"
> >
> > The hack will put the line: require perl-ptest.incinside a if structure.
> > The if will test if ptest is in the image-features or not.
> >
> >
> > On Thursday, May 22, 2014 3:43 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> >
> >
> >
> > On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> > > it appear, it shouldn`t I believe.
> > > I have a hack to include the perl-ptest module only when
> > > ptest enabled on image_featuresbut it does not look nice.
> > > I do not believe this solves the problem.
> >
> > Sorry, I'm not quite following. What is this hack?
> >
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> > -------------- next part --------------
> > An HTML attachment was scrubbed...
> > URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/44f84bb2/attachment-0001.html
> >
> >
> > ------------------------------
> >
> > Message: 2
> > Date: Thu, 22 May 2014 14:09:24 +0100
> > From: "Burton, Ross" <ross.burton@intel.com>
> > To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> > Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
> > "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> > Subject: Re: [yocto] help needed
> > Message-ID:
> > <CAJTo0LaA9S1gJyO0g3nCn3vzyuVLON4-SyP9KUv0Gj+9KG16Aw@mail.gmail.com>
> > Content-Type: text/plain; charset=UTF-8
> >
> > On 22 May 2014 13:38, Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> wrote:
> > > it appear, it shouldn`t I believe.
> >
> > Can you share this depends.dot file please? For what it's worth, I
> > can't replicate this with oe-core master
> >
> > Ross
> >
> >
> > ------------------------------
> >
> > Message: 3
> > Date: Thu, 22 May 2014 09:10:30 -0400
> > From: Stefan Seefeld <stefan_seefeld@mentor.com>
> > To: Richard Purdie <richard.purdie@linuxfoundation.org>
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] [meta-mingw] build error
> > Message-ID: <537DF746.6060700@mentor.com>
> > Content-Type: text/plain; charset="utf-8"
> >
> > On 2014-05-22 02:10, Richard Purdie wrote:
> > > On Wed, 2014-05-21 at 16:45 -0400, Stefan Seefeld wrote:
> > >> Hello,
> > >>
> > >> I started experimenting with the meta-mingw layer today, using the
> > >> 'daisy' branch for both, poky as well as meta-mingw.
> > >>
> > >> Running `bitbake meta-toolchain`, the build process failed in one of
> the
> > >> last steps (1003 of 1005) with:
> > >>
> > >> ERROR: nativesdk-packagegroup-sdk-host not found in the base feeds
> > >> (x86_64-nativesdk-mingw32 noarch any all).
> > >>
> > >> Any idea what I may be missing ? I'm using
> > >>
> > >> MACHINE ??= "qemux86"
> > >> SDKMACHINE ?= "x86_64-mingw32"
> > >
> > > Which pacxkage backend were you using? If you didn't use ipk, I'd
> > > suggest trying it. In theory others should work but its ipk I've been
> > > using when working with those layers.
> >
> > OK, I was using rpm (the default), but now switched to ipk. That results
> > in a different error in meta/lib/oe/sdk.py:55, where do_populate() tries
> > to link ld.so.cache into a non-existent directory.
> > I have attempted a fix with the attached patch.
> >
> > With that, things now appear to be working. (I think things should also
> > work with 'rpm' as package backend, though, right ? Should I file a bug
> > report somewhere to put that on record ?)
> >
> > Thanks,
> > Stefan
> >
> >
> > --
> > Stefan Seefeld
> > CodeSourcery / Mentor Embedded
> > http://www.mentor.com/embedded-software/
> > -------------- next part --------------
> > A non-text attachment was scrubbed...
> > Name: sdk.py.diff
> > Type: text/x-patch
> > Size: 756 bytes
> > Desc: not available
> > URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/29c38402/attachment-0001.bin
> >
> >
> > ------------------------------
> >
> > Message: 4
> > Date: Thu, 22 May 2014 14:14:43 +0100
> > From: Paul Eggleton <paul.eggleton@linux.intel.com>
> > To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] help needed
> > Message-ID: <1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com>
> > Content-Type: text/plain; charset="us-ascii"
> >
> > On Thursday 22 May 2014 06:00:02 Alexandru Vaduva wrote:
> > > On Thursday, May 22, 2014 3:43 PM, Paul Eggleton
> > > <paul.eggleton@linux.intel.com> wrote:
> > > > On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> > > > > it appear, it shouldn`t I believe.
> > > > > I have a hack to include the perl-ptest module only when
> > > > > ptest enabled on image_featuresbut it does not look nice.
> > > > > I do not believe this solves the problem.
> > > >
> > > > Sorry, I'm not quite following. What is this hack?
> > >
> > > The hack will put the line: require perl-ptest.incinside a if
> structure.
> > > The if will test if ptest is in the image-features or not.
> >
> > There's nothing in that file that explicitly adds a dependency from perl
> (or
> > any other package) on the perl-ptest package. So far as far as I know,
> nobody
> > has yet reproduced the issue you're reporting. Are you building the
> exact same
> > version of the perl recipe? Have you modified the recipe at all?
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> >
> >
> > ------------------------------
> >
> > Message: 5
> > Date: Thu, 22 May 2014 06:24:58 -0700 (PDT)
> > From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
> > To: Paul Eggleton <paul.eggleton@linux.intel.com>
> > Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> > Subject: Re: [yocto] help needed
> > Message-ID:
> > <1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com>
> > Content-Type: text/plain; charset="us-ascii"
> >
> > I attached the depends .dot file and also a small perl-ptest.info file
> with only the perl-ptest occurences.
> >
> > On Thursday, May 22, 2014 4:15 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> >
> >
> >
> > On Thursday 22 May 2014 06:00:02 Alexandru Vaduva wrote:
> > > On Thursday, May 22, 2014 3:43 PM, Paul Eggleton
> > > <paul.eggleton@linux.intel.com> wrote:
> > > > On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:
> > > > > it appear, it shouldn`t I believe.
> > > > > I have a hack to include the perl-ptest module only when
> > > > > ptest enabled on image_featuresbut it does not look nice.
> > > > > I do not believe this solves the problem.
> > > >
> > > > Sorry, I'm not quite following. What is this hack?
> > >
> > > The hack will put the line: require perl-ptest.incinside a if
> structure.
> > > The if will test if ptest is in the image-features or not.
> >
> > There's nothing in that file that explicitly adds a dependency from perl
> (or
> > any other package) on the perl-ptest package. So far as far as I know,
> nobody
> > has yet reproduced the issue you're reporting. Are you building the
> exact same
> > version of the perl recipe? Have you modified the recipe at all?
> >
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> > -------------- next part --------------
> > An HTML attachment was scrubbed...
> > URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/0a852a50/attachment-0001.html
> >
> >
> > ------------------------------
> >
> > Message: 6
> > Date: Thu, 22 May 2014 10:50:03 -0300
> > From: Diego Sueiro <diego.sueiro@gmail.com>
> > To: Khem Raj <raj.khem@gmail.com>
> > Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Neuer User
> > <auslands-kv@gmx.de>
> > Subject: Re: [yocto] Help with building app recipe
> > Message-ID:
> > <CAMCfZKGM7JmHRvLYpeAeZukOUGDyEzzvvuQ9a_RpJS0t7r9wCw@mail.gmail.com>
> > Content-Type: text/plain; charset="iso-8859-1"
> >
> > Folks,
> >
> > I'm trying to accomplish this in a 64bits host machine. But I'm getting
> > errors the following error on compile task:
> >
> > | In file included from
> > /<snip>/tmp/sysroots/x86_64-linux/usr/include/python3.3m/Python.h:50:0,
> > | from ../../git/src/qpython_priv.h:22,
> > | from moc_qpython_priv.cpp:9:
> > | /<snip>/sysroots/x86_64-linux/usr/include/python3.3m/pyport.h:820:2:
> > error: #error "LONG_BIT definition appears wrong for platform (bad
> > gcc/glibc config?)."
> > | #error "LONG_BIT definition appears wrong for platform (bad gcc/glibc
> > config?)."
> > | ^
> >
> >
> > Searching on Google it says that this is a known bug when trying to
> > cross-compile Python stuff for 32bits machines on 64bits hosts.
> >
> > It seems that the guys from Buildroot could get this solved:
> > http://lists.busybox.net/pipermail/buildroot/2011-August/045257.html
> > I'm trying to find the "magical" patch to how to get this fixed.
> >
> > Also found this link too:
> > http://blog.devork.be/2009/02/compiling-32-bit-python-on-amd64.html
> >
> > But I'm not quite sure how to get this fixed on Yocto. Should it need to
> be
> > fixed on the pyotherside, or python3, or python3-native recipe?
> >
> >
> > Any directions are appreciated.
> >
> >
> >
> > Regards,
> >
> > --
> > *dS
> > Diego Sueiro
> >
> > Administrador do Embarcados
> > www.embarcados.com.br<
> http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego
> >
> >
> > /*long live rock 'n roll*/
> >
> >
> > On Sat, May 17, 2014 at 2:18 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >
> > > On Fri, May 16, 2014 at 5:33 AM, Neuer User <auslands-kv@gmx.de>
> wrote:
> > > > If I change the sed line to "#!/usr/bin/env python3", that would
> > > > probably work then. But would it break something else?
> > >
> > > would be fine.
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> > -------------- next part --------------
> > An HTML attachment was scrubbed...
> > URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20140522/fea3f300/attachment.html
> >
> >
> > ------------------------------
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> > End of yocto Digest, Vol 44, Issue 103
> > **************************************
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c2fd6c2068a404fa0a2418
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>You can go through bunch of very go=
od documents available at=C2=A0<a href=3D"https://www.yoctoproject.org/docu=
mentation/current">https://www.yoctoproject.org/documentation/current</a></=
div><div>
<br></div><div>For immediate, you can start with=C2=A0<a href=3D"http://www=
.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html">http=
://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html=
</a></div>
<div><br></div><div>//Gaurang Shastri</div></div><div class=3D"gmail_extra"=
><br><br><div class=3D"gmail_quote">On Fri, May 23, 2014 at 10:09 AM, Pushp=
a Teja <span dir=3D"ltr">&lt;<a href=3D"mailto:pushpa@jtechindia.in" target=
=3D"_blank">pushpa@jtechindia.in</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">


<div><div dir=3D"ltr">Good morning,<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 I want to start to work on yacto please z provi=
de me the guidance how to start it .<br><br>Regards ,<br>pushpa<br><br><br>=
<br><br><div>&gt; From: <a href=3D"mailto:yocto-request@yoctoproject.org" t=
arget=3D"_blank">yocto-request@yoctoproject.org</a><br>
&gt; Subject: yocto Digest, Vol 44, Issue 103<br>&gt; To: <a href=3D"mailto=
:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br>&g=
t; Date: Thu, 22 May 2014 06:50:28 -0700<br>&gt; <br>&gt; Send yocto mailin=
g list submissions to<br>
&gt; 	<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoc=
toproject.org</a><br>&gt; <br>&gt; To subscribe or unsubscribe via the Worl=
d Wide Web, visit<br>&gt; 	<a href=3D"https://lists.yoctoproject.org/listin=
fo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</=
a><br>
&gt; or, via email, send a message with subject or body &#39;help&#39; to<b=
r>&gt; 	<a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_blank"=
>yocto-request@yoctoproject.org</a><br>&gt; <br>&gt; You can reach the pers=
on managing the list at<br>
&gt; 	<a href=3D"mailto:yocto-owner@yoctoproject.org" target=3D"_blank">yoc=
to-owner@yoctoproject.org</a><br>&gt; <br>&gt; When replying, please edit y=
our Subject line so it is more specific<br>&gt; than &quot;Re: Contents of =
yocto digest...&quot;<br>
&gt; <br>&gt; <br>&gt; Today&#39;s Topics:<br>&gt; <br>&gt;    1. Re: help =
needed (Alexandru Vaduva)<br>&gt;    2. Re: help needed (Burton, Ross)<br>&=
gt;    3. Re: [meta-mingw] build error (Stefan Seefeld)<br>&gt;    4. Re: h=
elp needed (Paul Eggleton)<br>
&gt;    5. Re: help needed (Alexandru Vaduva)<br>&gt;    6. Re: Help with b=
uilding app recipe (Diego Sueiro)<br>&gt; <br>&gt; <br>&gt; ---------------=
-------------------------------------------------------<br>&gt; <br>&gt; Me=
ssage: 1<br>
&gt; Date: Thu, 22 May 2014 06:00:02 -0700 (PDT)<br>&gt; From: Alexandru Va=
duva &lt;<a href=3D"mailto:vaduvajanalexandru@yahoo.com" target=3D"_blank">=
vaduvajanalexandru@yahoo.com</a>&gt;<br>&gt; To: Paul Eggleton &lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;<br>
&gt; Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">=
yocto@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>&gt; Subject: Re: [=
yocto] help needed<br>
&gt; Message-ID:<br>&gt; 	&lt;<a href=3D"mailto:1400763602.12423.YahooMailN=
eo@web122506.mail.ne1.yahoo.com" target=3D"_blank">1400763602.12423.YahooMa=
ilNeo@web122506.mail.ne1.yahoo.com</a>&gt;<br>&gt; Content-Type: text/plain=
; charset=3D&quot;us-ascii&quot;<br>
&gt; <br>&gt; The hack will put the line: require perl-ptest.incinside a if=
 structure.<br>&gt; The if will test if ptest is in the image-features or n=
ot.<br>&gt; <br>&gt; <br>&gt; On Thursday, May 22, 2014 3:43 PM, Paul Eggle=
ton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">=
paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt;  <br>&gt; <br>&gt; <br>&gt; On Thursday 22 May 2014 05:38:41 Alexandru=
 Vaduva wrote:<br>&gt; &gt; it appear, it shouldn`t I believe.<br>&gt; &gt;=
 I have a hack to include the perl-ptest module only when<br>&gt; &gt; ptes=
t enabled on image_featuresbut it does not look nice.<br>
&gt; &gt; I do not believe this solves the problem.<br>&gt; <br>&gt; Sorry,=
 I&#39;m not quite following. What is this hack?<br>&gt; <br>&gt; <br>&gt; =
Cheers,<br>&gt; Paul<br>&gt; <br>&gt; -- <br>&gt; <br>&gt; Paul Eggleton<br=
>
&gt; Intel Open Source Technology Centre<br>&gt; -------------- next part -=
-------------<br>&gt; An HTML attachment was scrubbed...<br>&gt; URL: &lt;<=
a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/2014052=
2/44f84bb2/attachment-0001.html" target=3D"_blank">http://lists.yoctoprojec=
t.org/pipermail/yocto/attachments/20140522/44f84bb2/attachment-0001.html</a=
>&gt;<br>
&gt; <br>&gt; ------------------------------<br>&gt; <br>&gt; Message: 2<br=
>&gt; Date: Thu, 22 May 2014 14:09:24 +0100<br>&gt; From: &quot;Burton, Ros=
s&quot; &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross=
.burton@intel.com</a>&gt;<br>
&gt; To: Alexandru Vaduva &lt;<a href=3D"mailto:vaduvajanalexandru@yahoo.co=
m" target=3D"_blank">vaduvajanalexandru@yahoo.com</a>&gt;<br>&gt; Cc: Paul =
Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a>&gt;,<br>
&gt; 	&quot;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoc=
to@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org"=
 target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>&gt; Subject: Re: [yoc=
to] help needed<br>
&gt; Message-ID:<br>&gt; 	&lt;<a href=3D"mailto:CAJTo0LaA9S1gJyO0g3nCn3vzyu=
VLON4-SyP9KUv0Gj%2B9KG16Aw@mail.gmail.com" target=3D"_blank">CAJTo0LaA9S1gJ=
yO0g3nCn3vzyuVLON4-SyP9KUv0Gj+9KG16Aw@mail.gmail.com</a>&gt;<br>&gt; Conten=
t-Type: text/plain; charset=3DUTF-8<br>
&gt; <br>&gt; On 22 May 2014 13:38, Alexandru Vaduva &lt;<a href=3D"mailto:=
vaduvajanalexandru@yahoo.com" target=3D"_blank">vaduvajanalexandru@yahoo.co=
m</a>&gt; wrote:<br>&gt; &gt; it appear, it shouldn`t I believe.<br>&gt; <b=
r>
&gt; Can you share this depends.dot file please?  For what it&#39;s worth, =
I<br>&gt; can&#39;t replicate this with oe-core master<br>&gt; <br>&gt; Ros=
s<br>&gt; <br>&gt; <br>&gt; ------------------------------<br>&gt; <br>
&gt; Message: 3<br>&gt; Date: Thu, 22 May 2014 09:10:30 -0400<br>&gt; From:=
 Stefan Seefeld &lt;<a href=3D"mailto:stefan_seefeld@mentor.com" target=3D"=
_blank">stefan_seefeld@mentor.com</a>&gt;<br>&gt; To: Richard Purdie &lt;<a=
 href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richa=
rd.purdie@linuxfoundation.org</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>&gt; Subject: Re: [yocto] [meta-mingw] build error<=
br>&gt; Message-ID: &lt;<a href=3D"mailto:537DF746.6060700@mentor.com" targ=
et=3D"_blank">537DF746.6060700@mentor.com</a>&gt;<br>
&gt; Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>&gt; <br>&gt;=
 On 2014-05-22 02:10, Richard Purdie wrote:<br>&gt; &gt; On Wed, 2014-05-21=
 at 16:45 -0400, Stefan Seefeld wrote:<br>&gt; &gt;&gt; Hello,<br>&gt; &gt;=
&gt;<br>
&gt; &gt;&gt; I started experimenting with the meta-mingw layer today, usin=
g the<br>&gt; &gt;&gt; &#39;daisy&#39; branch for both, poky as well as met=
a-mingw.<br>&gt; &gt;&gt;<br>&gt; &gt;&gt; Running `bitbake meta-toolchain`=
, the build process failed in one of the<br>
&gt; &gt;&gt; last steps (1003 of 1005) with:<br>&gt; &gt;&gt;<br>&gt; &gt;=
&gt; ERROR: nativesdk-packagegroup-sdk-host not found in the base feeds<br>=
&gt; &gt;&gt; (x86_64-nativesdk-mingw32 noarch any all).<br>&gt; &gt;&gt;<b=
r>
&gt; &gt;&gt; Any idea what I may be missing ? I&#39;m using<br>&gt; &gt;&g=
t;<br>&gt; &gt;&gt; MACHINE ??=3D &quot;qemux86&quot;<br>&gt; &gt;&gt; SDKM=
ACHINE ?=3D &quot;x86_64-mingw32&quot;<br>&gt; &gt; <br>&gt; &gt; Which pac=
xkage backend were you using? If you didn&#39;t use ipk, I&#39;d<br>
&gt; &gt; suggest trying it. In theory others should work but its ipk I&#39=
;ve been<br>&gt; &gt; using when working with those layers.<br>&gt; <br>&gt=
; OK, I was using rpm (the default), but now switched to ipk. That results<=
br>
&gt; in a different error in meta/lib/oe/sdk.py:55, where do_populate() tri=
es<br>&gt; to link ld.so.cache into a non-existent directory.<br>&gt; I hav=
e attempted a fix with the attached patch.<br>&gt; <br>&gt; With that, thin=
gs now appear to be working. (I think things should also<br>
&gt; work with &#39;rpm&#39; as package backend, though, right ? Should I f=
ile a bug<br>&gt; report somewhere to put that on record ?)<br>&gt; <br>&gt=
; Thanks,<br>&gt; 		Stefan<br>&gt; <br>&gt; <br>&gt; -- <br>&gt; Stefan See=
feld<br>
&gt; CodeSourcery / Mentor Embedded<br>&gt; <a href=3D"http://www.mentor.co=
m/embedded-software/" target=3D"_blank">http://www.mentor.com/embedded-soft=
ware/</a><br>&gt; -------------- next part --------------<br>&gt; A non-tex=
t attachment was scrubbed...<br>
&gt; Name: sdk.py.diff<br>&gt; Type: text/x-patch<br>&gt; Size: 756 bytes<b=
r>&gt; Desc: not available<br>&gt; URL: &lt;<a href=3D"http://lists.yoctopr=
oject.org/pipermail/yocto/attachments/20140522/29c38402/attachment-0001.bin=
" target=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20140522/29c38402/attachment-0001.bin</a>&gt;<br>
&gt; <br>&gt; ------------------------------<br>&gt; <br>&gt; Message: 4<br=
>&gt; Date: Thu, 22 May 2014 14:14:43 +0100<br>&gt; From: Paul Eggleton &lt=
;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eg=
gleton@linux.intel.com</a>&gt;<br>
&gt; To: Alexandru Vaduva &lt;<a href=3D"mailto:vaduvajanalexandru@yahoo.co=
m" target=3D"_blank">vaduvajanalexandru@yahoo.com</a>&gt;<br>&gt; Cc: <a hr=
ef=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.o=
rg</a><br>
&gt; Subject: Re: [yocto] help needed<br>&gt; Message-ID: &lt;<a href=3D"ma=
ilto:1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com" target=3D"_blank=
">1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com</a>&gt;<br>&gt; Cont=
ent-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
&gt; <br>&gt; On Thursday 22 May 2014 06:00:02 Alexandru Vaduva wrote:<br>&=
gt; &gt; On Thursday, May 22, 2014 3:43 PM, Paul Eggleton<br>&gt; &gt; &lt;=
<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.egg=
leton@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt; On Thursday 22 May 2014 05:38:41 Alexandru Vaduva wrote:<br>=
&gt; &gt; &gt; &gt; it appear, it shouldn`t I believe.<br>&gt; &gt; &gt; &g=
t; I have a hack to include the perl-ptest module only when<br>&gt; &gt; &g=
t; &gt; ptest enabled on image_featuresbut it does not look nice.<br>
&gt; &gt; &gt; &gt; I do not believe this solves the problem.<br>&gt; &gt; =
&gt; <br>&gt; &gt; &gt; Sorry, I&#39;m not quite following. What is this ha=
ck?<br>&gt; &gt;<br>&gt; &gt; The hack will put the line: require perl-ptes=
t.incinside a if structure.<br>
&gt; &gt; The if will test if ptest is in the image-features or not.<br>&gt=
; <br>&gt; There&#39;s nothing in that file that explicitly adds a dependen=
cy from perl (or <br>&gt; any other package) on the perl-ptest package. So =
far as far as I know, nobody <br>
&gt; has yet reproduced the issue you&#39;re reporting. Are you building th=
e exact same <br>&gt; version of the perl recipe? Have you modified the rec=
ipe at all?<br>&gt; <br>&gt; Cheers,<br>&gt; Paul<br>&gt; <br>&gt; -- <br>
&gt; <br>&gt; Paul Eggleton<br>&gt; Intel Open Source Technology Centre<br>=
&gt; <br>&gt; <br>&gt; ------------------------------<br>&gt; <br>&gt; Mess=
age: 5<br>&gt; Date: Thu, 22 May 2014 06:24:58 -0700 (PDT)<br>&gt; From: Al=
exandru Vaduva &lt;<a href=3D"mailto:vaduvajanalexandru@yahoo.com" target=
=3D"_blank">vaduvajanalexandru@yahoo.com</a>&gt;<br>
&gt; To: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com"=
 target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;<br>&gt; Cc: &quot;=
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a>&gt;<br>
&gt; Subject: Re: [yocto] help needed<br>&gt; Message-ID:<br>&gt; 	&lt;<a h=
ref=3D"mailto:1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com" t=
arget=3D"_blank">1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com=
</a>&gt;<br>
&gt; Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>&gt; <br>&=
gt; I attached the depends .dot file and also a small <a href=3D"http://per=
l-ptest.info" target=3D"_blank">perl-ptest.info</a> file with only the perl=
-ptest occurences.<br>
&gt; <br>&gt; On Thursday, May 22, 2014 4:15 PM, Paul Eggleton &lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt; wrote:<br>&gt;  <br>&gt; <br>&gt; <br>&gt; On Thursd=
ay 22 May 2014 06:00:02 Alexandru Vaduva wrote:<br>
&gt; &gt; On Thursday, May 22, 2014 3:43 PM, Paul Eggleton<br>&gt; &gt; &lt=
;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eg=
gleton@linux.intel.com</a>&gt; wrote:<br>&gt; &gt; &gt; On Thursday 22 May =
2014 05:38:41 Alexandru Vaduva wrote:<br>
&gt; &gt; &gt; &gt; it appear, it shouldn`t I believe.<br>&gt; &gt; &gt; &g=
t; I have a hack to include the perl-ptest module only when<br>&gt; &gt; &g=
t; &gt; ptest enabled on image_featuresbut it does not look nice.<br>&gt; &=
gt; &gt; &gt; I do not believe this solves the problem.<br>
&gt; &gt; &gt; <br>&gt; &gt; &gt; Sorry, I&#39;m not quite following. What =
is this hack?<br>&gt; &gt;<br>&gt; &gt; The hack will put the line: require=
 perl-ptest.incinside a if structure.<br>&gt; &gt; The if will test if ptes=
t is in the image-features or not.<br>
&gt; <br>&gt; There&#39;s nothing in that file that explicitly adds a depen=
dency from perl (or <br>&gt; any other package) on the perl-ptest package. =
So far as far as I know, nobody <br>&gt; has yet reproduced the issue you&#=
39;re reporting. Are you building the exact same <br>
&gt; version of the perl recipe? Have you modified the recipe at all?<br>&g=
t; <br>&gt; <br>&gt; Cheers,<br>&gt; Paul<br>&gt; <br>&gt; -- <br>&gt; <br>=
&gt; Paul Eggleton<br>&gt; Intel Open Source Technology Centre<br>&gt; ----=
---------- next part --------------<br>
&gt; An HTML attachment was scrubbed...<br>&gt; URL: &lt;<a href=3D"http://=
lists.yoctoproject.org/pipermail/yocto/attachments/20140522/0a852a50/attach=
ment-0001.html" target=3D"_blank">http://lists.yoctoproject.org/pipermail/y=
octo/attachments/20140522/0a852a50/attachment-0001.html</a>&gt;<br>
&gt; <br>&gt; ------------------------------<br>&gt; <br>&gt; Message: 6<br=
>&gt; Date: Thu, 22 May 2014 10:50:03 -0300<br>&gt; From: Diego Sueiro &lt;=
<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sueiro@gm=
ail.com</a>&gt;<br>
&gt; To: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blan=
k">raj.khem@gmail.com</a>&gt;<br>&gt; Cc: &quot;<a href=3D"mailto:yocto@yoc=
toproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&quot; &lt;<a hr=
ef=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.o=
rg</a>&gt;,	Neuer User<br>
&gt; 	&lt;<a href=3D"mailto:auslands-kv@gmx.de" target=3D"_blank">auslands-=
kv@gmx.de</a>&gt;<br>&gt; Subject: Re: [yocto] Help with building app recip=
e<br>&gt; Message-ID:<br>&gt; 	&lt;<a href=3D"mailto:CAMCfZKGM7JmHRvLYpeAeZ=
ukOUGDyEzzvvuQ9a_RpJS0t7r9wCw@mail.gmail.com" target=3D"_blank">CAMCfZKGM7J=
mHRvLYpeAeZukOUGDyEzzvvuQ9a_RpJS0t7r9wCw@mail.gmail.com</a>&gt;<br>
&gt; Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>&gt; <br=
>&gt; Folks,<br>&gt; <br>&gt; I&#39;m trying to accomplish this in a 64bits=
 host machine. But I&#39;m getting<br>&gt; errors the following error on co=
mpile task:<br>
&gt; <br>&gt; | In file included from<br>&gt; /&lt;snip&gt;/tmp/sysroots/x8=
6_64-linux/usr/include/python3.3m/Python.h:50:0,<br>&gt; |                 =
 from ../../git/src/qpython_priv.h:22,<br>&gt; |                  from moc_=
qpython_priv.cpp:9:<br>
&gt; | /&lt;snip&gt;/sysroots/x86_64-linux/usr/include/python3.3m/pyport.h:=
820:2:<br>&gt; error: #error &quot;LONG_BIT definition appears wrong for pl=
atform (bad<br>&gt; gcc/glibc config?).&quot;<br>&gt; |  #error &quot;LONG_=
BIT definition appears wrong for platform (bad gcc/glibc<br>
&gt; config?).&quot;<br>&gt; |   ^<br>&gt; <br>&gt; <br>&gt; Searching on G=
oogle it says that this is a known bug when trying to<br>&gt; cross-compile=
 Python stuff for 32bits machines on 64bits hosts.<br>&gt; <br>&gt; It seem=
s that the guys from Buildroot could get this solved:<br>
&gt; <a href=3D"http://lists.busybox.net/pipermail/buildroot/2011-August/04=
5257.html" target=3D"_blank">http://lists.busybox.net/pipermail/buildroot/2=
011-August/045257.html</a><br>&gt; I&#39;m trying to find the &quot;magical=
&quot; patch to how to get this fixed.<br>
&gt; <br>&gt; Also found this link too:<br>&gt; <a href=3D"http://blog.devo=
rk.be/2009/02/compiling-32-bit-python-on-amd64.html" target=3D"_blank">http=
://blog.devork.be/2009/02/compiling-32-bit-python-on-amd64.html</a><br>&gt;=
 <br>
&gt; But I&#39;m not quite sure how to get this fixed on Yocto. Should it n=
eed to be<br>&gt; fixed on the pyotherside, or python3, or python3-native r=
ecipe?<br>&gt; <br>&gt; <br>&gt; Any directions are appreciated.<br>&gt; <b=
r>
&gt; <br>&gt; <br>&gt; Regards,<br>&gt; <br>&gt; --<br>&gt; *dS<br>&gt; Die=
go Sueiro<br>&gt; <br>&gt; Administrador do Embarcados<br>&gt; <a href=3D"h=
ttp://www.embarcados.com.br" target=3D"_blank">www.embarcados.com.br</a>&lt=
;<a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp=
;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=
=3D"_blank">http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp=
;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego</a>&gt;<=
br>
&gt; <br>&gt; /*long live rock &#39;n roll*/<br>&gt; <br>&gt; <br>&gt; On S=
at, May 17, 2014 at 2:18 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.=
com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>&gt; <br>&gt; &=
gt; On Fri, May 16, 2014 at 5:33 AM, Neuer User &lt;<a href=3D"mailto:ausla=
nds-kv@gmx.de" target=3D"_blank">auslands-kv@gmx.de</a>&gt; wrote:<br>
&gt; &gt; &gt; If I change the sed line to &quot;#!/usr/bin/env python3&quo=
t;, that would<br>&gt; &gt; &gt; probably work then. But would it break som=
ething else?<br>&gt; &gt;<br>&gt; &gt; would be fine.<br>&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>&gt; &gt; yoct=
o mailing list<br>&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a><br>&gt; &gt; <a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopr=
oject.org/listinfo/yocto</a><br>
&gt; &gt;<br>&gt; -------------- next part --------------<br>&gt; An HTML a=
ttachment was scrubbed...<br>&gt; URL: &lt;<a href=3D"http://lists.yoctopro=
ject.org/pipermail/yocto/attachments/20140522/fea3f300/attachment.html" tar=
get=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachments/20=
140522/fea3f300/attachment.html</a>&gt;<br>
&gt; <br>&gt; ------------------------------<span class=3D"HOEnZb"><font co=
lor=3D"#888888"><br>&gt; <br>&gt; -- <br>&gt; _____________________________=
__________________<br>&gt; yocto mailing list<br>&gt; <a href=3D"mailto:yoc=
to@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>&gt; <br>&gt; <b=
r>&gt; End of yocto Digest, Vol 44, Issue 103<br>&gt; *********************=
*****************<br>
</font></span></div> 		 	   		  </div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c2fd6c2068a404fa0a2418--
