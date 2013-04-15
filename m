Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1567AE01498
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 05:26:45 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id y10so1371844wgg.33
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 05:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=pLJLg63LNwYEiuETS0rAAvy47rwJIlPzqcd4Nq4s3fM=;
	b=MOwhbWs2xyog/hYC8x9jUnLW+pg1ml6zL/sLDp4vIoXT3KDDSMWsXdR3GLSA3eKV+I
	RDn1vhQNkv3msWXGF1RvpJBw/p3uwl4PpCIhTxAjHKEQe2b3eUskLwTpf9dyR5SzDsgt
	XqeI5mOTE0rE8nW5nFTn5Cyh2eBUHUYcp6YkSvx49MX3oLwX3sxWex42POqv71FjKlca
	dOI4O4n5Sks7/PY48eR53+s1XHyB5OS5ezwhnvgGj+cYscDb4Llo585TrDxDQ/7DKqvI
	QQ8GtW8w0Kcv14TNfcVgWGgwIXN35r0KpPsi/Hpx63h7JOWU3fAf6dnt0krHNxkJ0oSW
	ac7Q==
MIME-Version: 1.0
X-Received: by 10.194.178.100 with SMTP id cx4mr17879473wjc.47.1366028805181; 
	Mon, 15 Apr 2013 05:26:45 -0700 (PDT)
Received: by 10.194.243.137 with HTTP; Mon, 15 Apr 2013 05:26:45 -0700 (PDT)
In-Reply-To: <B60DC3E72D20B040854608D81E44050F64F451AB07@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<alpine.DEB.2.02.1304150722160.22880@oneiric>
	<B60DC3E72D20B040854608D81E44050F64F451AB07@GUREXMB01.ASIAN.AD.ARICENT.COM>
Date: Mon, 15 Apr 2013 14:26:45 +0200
Message-ID: <CA+chaQd+OwrQK7K=pTnsx=XEmHS4_FO=rp2d_eXKLJy71UULDA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Krishna Dwivedi <Krishna.Dwivedi@aricent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Arguement list too big error in bitbake meta-toolchain for MIPS architechture-Gentle Reminder
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
X-List-Received-Date: Mon, 15 Apr 2013 12:26:46 -0000
Content-Type: multipart/alternative; boundary=089e013d1be8af976704da655d59

--089e013d1be8af976704da655d59
Content-Type: text/plain; charset=UTF-8

I had similar issue, but in my case it wasn't even showing it's /bin/cp
having problems, actually it was failing like this with tar and only one
argument :/

http://lists.linuxtogo.org/pipermail/openembedded-core/2013-January/035089.html


On Mon, Apr 15, 2013 at 2:21 PM, Krishna Dwivedi <
Krishna.Dwivedi@aricent.com> wrote:

> Hi Robert,
>
> I am trying on fedora 18 and I am continuously running into this issue.
>
> Regards,
> Krishna
>
> -----Original Message-----
> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> Sent: Monday, April 15, 2013 4:57 PM
> To: Krishna Dwivedi
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Arguement list too big error in bitbake
> meta-toolchain for MIPS architechture-Gentle Reminder
>
> On Mon, 15 Apr 2013, Krishna Dwivedi wrote:
>
> > Hi All,
> >
> > I am trying to build recipe meta-toolchain for MIPS architecture but
> > running into errors. Can anyone please let me know, if I am missing
> > anything here or what could be root cause of this and how can I fix
> > it. I have followed these steps:
> >
> > 1)In  WORKDIR/build/conf/local.conf-I selected MACHINE ?= "qemumips" for
> mips architechture.
> >
> > 2)source oe-init-build-env.
>
> > 3)bitbake meta-toolchain.
> >
> > In third step,I am running into these errors:
> >
> > NOTE: recipe nativesdk-gettext-0.18.2-r0: task do_configure: Started
> >
> > ERROR: Error executing a python function in
> > /home/netlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-locale_2.17.bb
> :
> >
> > CalledProcessError: Command 'cp
> > -al/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-l
> > ocale/2.17-r0/packages-sp
> > lit/*/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc
> > -locale/2.17-r0/sstate-buil d-package//packages-split' returned
> > non-zero exit status 126 with output /bin/sh: /bin/cp:
> > Argument list too long
>
> ... snip ...
>
>   i just did the above on my ubuntu system -- qemumips and "bitbake
> meta-toolchain" -- and i can see that step running right now among 4
> running tasks:
>
> 0: nativesdk-gettext-0.18.2-r0 do_configure (pid 6695)
>
>   man, sure seems to be taking a while, while other tasks complete and are
> replaced by new tasks.  oh, wait, it just completed, replaced by:
>
> 2: nativesdk-gettext-0.18.2-r0 do_compile (pid 12727)
>
> so the configure step seems to have succeeded. in other words, works for
> me. and:
>
> $ ls -l /bin/sh
> lrwxrwxrwx 1 root root 4 May 22  2012 /bin/sh -> bash $
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
>
>
>
>
> ===============================================================================
> Please refer to http://www.aricent.com/legal/email_disclaimer.html
> for important disclosures regarding this electronic communication.
>
> ===============================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e013d1be8af976704da655d59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I had similar issue, but in my case it wasn&#39;t even sho=
wing it&#39;s /bin/cp having problems, actually it was failing like this wi=
th tar and only one argument :/<div><br></div><div><a href=3D"http://lists.=
linuxtogo.org/pipermail/openembedded-core/2013-January/035089.html">http://=
lists.linuxtogo.org/pipermail/openembedded-core/2013-January/035089.html</a=
><br>
</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Mon, Apr 15, 2013 at 2:21 PM, Krishna Dwivedi <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:Krishna.Dwivedi@aricent.com" target=3D"_blank">Krishna.Dwivedi=
@aricent.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Robert,<br>
<br>
I am trying on fedora 18 and I am continuously running into this issue.<br>
<br>
Regards,<br>
Krishna<br>
<div class=3D"im"><br>
-----Original Message-----<br>
From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@crashcourse.ca">rpj=
day@crashcourse.ca</a>]<br>
Sent: Monday, April 15, 2013 4:57 PM<br>
To: Krishna Dwivedi<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
</div><div class=3D"im">Subject: Re: [yocto] Arguement list too big error i=
n bitbake meta-toolchain for MIPS architechture-Gentle Reminder<br>
<br>
On Mon, 15 Apr 2013, Krishna Dwivedi wrote:<br>
<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I am trying to build recipe meta-toolchain for MIPS architecture but<b=
r>
&gt; running into errors. Can anyone please let me know, if I am missing<br=
>
&gt; anything here or what could be root cause of this and how can I fix<br=
>
&gt; it. I have followed these steps:<br>
&gt;<br>
&gt; 1)In =C2=A0WORKDIR/build/conf/local.conf-I selected MACHINE ?=3D &quot=
;qemumips&quot; for mips architechture.<br>
&gt;<br>
&gt; 2)source oe-init-build-env.<br>
<br>
&gt; 3)bitbake meta-toolchain.<br>
&gt;<br>
&gt; In third step,I am running into these errors:<br>
&gt;<br>
&gt; NOTE: recipe nativesdk-gettext-0.18.2-r0: task do_configure: Started<b=
r>
&gt;<br>
&gt; ERROR: Error executing a python function in<br>
&gt; /home/netlogic/yocto/poky/meta/recipes-core/eglibc/<a href=3D"http://e=
glibc-locale_2.17.bb" target=3D"_blank">eglibc-locale_2.17.bb</a>:<br>
&gt;<br>
&gt; CalledProcessError: Command &#39;cp<br>
&gt; -al/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-l=
<br>
&gt; ocale/2.17-r0/packages-sp<br>
&gt; lit/*/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc=
<br>
</div>&gt; -locale/2.17-r0/sstate-buil d-package//packages-split&#39; retur=
ned<br>
<div class=3D"im">&gt; non-zero exit status 126 with output /bin/sh: /bin/c=
p:<br>
&gt; Argument list too long<br>
<br>
... snip ...<br>
<br>
=C2=A0 i just did the above on my ubuntu system -- qemumips and &quot;bitba=
ke meta-toolchain&quot; -- and i can see that step running right now among =
4 running tasks:<br>
<br>
0: nativesdk-gettext-0.18.2-r0 do_configure (pid 6695)<br>
<br>
=C2=A0 man, sure seems to be taking a while, while other tasks complete and=
 are replaced by new tasks. =C2=A0oh, wait, it just completed, replaced by:=
<br>
<br>
2: nativesdk-gettext-0.18.2-r0 do_compile (pid 12727)<br>
<br>
so the configure step seems to have succeeded. in other words, works for me=
. and:<br>
<br>
$ ls -l /bin/sh<br>
lrwxrwxrwx 1 root root 4 May 22 =C2=A02012 /bin/sh -&gt; bash $<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ottawa, Ontario, CA=
NADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" target=3D"_blank">http://crash=
course.ca</a><br>
<br>
Twitter: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=
=3D"http://twitter.com/rpjday" target=3D"_blank">http://twitter.com/rpjday<=
/a><br>
LinkedIn: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://ca.linkedin.com=
/in/rpjday" target=3D"_blank">http://ca.linkedin.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
<br>
<br>
<br>
</div><div class=3D"im">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Please refer to <a href=3D"http://www.aricent.com/legal/email_disclaimer.ht=
ml" target=3D"_blank">http://www.aricent.com/legal/email_disclaimer.html</a=
><br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--089e013d1be8af976704da655d59--
