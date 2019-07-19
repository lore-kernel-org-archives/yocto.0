Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2559E00C09; Fri, 19 Jul 2019 07:03:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
	[209.85.167.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A60C9E00A93
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 07:03:27 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id p197so21810998lfa.2
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 07:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=t0aeydPvKHhSKnOAGGTbRjruw7EIWN4qaMXXbRH3uzM=;
	b=VErMbzeZj5TAGNMrtAxTPnZWDSLmM/s222WowF4AFpf1ouygVcUgMDDFonTggJwqwD
	LbEdlwPY4yyJEAGCbyqzDocUKHJSTepH9SpyAkcfFVd9jefocKbOOdROMtESs3TVdJLN
	4mFDjqmoDZLax3sRwJZv9vPHezaqa4yv1M68BiUC70qOBEM0f7cl3eZrMdJeaPYbZiFo
	9TwmrHE1YSlLuhUxnMEPOeiTACER/5R521fGaDIr2tDkCY1kxaMF7FqC6OI91KVVkLOn
	JHoIUqcPjrZQtJuOJIhFmMwVccsGltbLQS7tPIvwZlJHH4wymRStuGPp/1ACMXyyPNmA
	pcaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=t0aeydPvKHhSKnOAGGTbRjruw7EIWN4qaMXXbRH3uzM=;
	b=hOnMlRqUiChy0KYO9q2YGbpi58TbO5IQUAklFAcvsA7A6mN5q0R7exd61wvdILiseC
	xU/HdkgdPY7Am3fwekrzGdDJf2H4fDkJgO83nWD654R8tCYxNTA05B2AAJShfsQOTYoi
	LUPvkkXNqPZSewJoI/SPzeOIzoIGyh6R/ZPv4iJYXttk7elp7lXaMTbjrDjggRRZA1hG
	iY9qRAjH4jAHgUmR1nqsJItjXgf6PBhcWBy4MWCZ4hgTd/pfx2HNbs2qTvtXtHcYg+4c
	WnJifo/Lh02H+kCQF4jrIsTUpXYfEFEh+9aDPZjSDUJnZ+Fkv+PppiQk2IRbXIQ9LAgP
	1CQA==
X-Gm-Message-State: APjAAAU6UMXuFaE5/qnBtIv8cD5WTo2WhdSr11upcoHufXYFpu77fP/4
	wXzVa1aGqjwVcYA0U6r4FlDokLVZ9h1G6UqRyHM=
X-Google-Smtp-Source: APXvYqwM5WExlvmKfTv6xSwAy86XolRkQzl6M+UPB2ESeEVB7gz+CB2h/Ry9A3dhFpZ2nD4hnALOELX742dTmOwNELM=
X-Received: by 2002:a19:6904:: with SMTP id e4mr4837326lfc.156.1563545006774; 
	Fri, 19 Jul 2019 07:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJDbqR8yPWRYX_2wT+Pk1+cuNcntWizg3hhZnA_vVVwnaA@mail.gmail.com>
	<CAAx3WaDTteqencYsxrb+1a_TgR8cazNUJ7-3VX9VxeePQkmRoQ@mail.gmail.com>
	<CAF_dkJB=p0EWosdL6cTe1YN+38KN8Qb8LuYoOvF06URR96oQCw@mail.gmail.com>
In-Reply-To: <CAF_dkJB=p0EWosdL6cTe1YN+38KN8Qb8LuYoOvF06URR96oQCw@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Fri, 19 Jul 2019 16:03:14 +0200
Message-ID: <CAAx3WaCKS21xWZ_b3jqJFm61D+_QPy0Aago0Tais8hVTyoKqKw@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to specify a different kernel for an image
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
X-List-Received-Date: Fri, 19 Jul 2019 14:03:29 -0000
Content-Type: multipart/alternative; boundary="000000000000b81b35058e093022"

--000000000000b81b35058e093022
Content-Type: text/plain; charset="UTF-8"

Hi Patrick,

Do I have to replicate (and maintain) all of the references to
> mymachine to also refer to my newly defined "installationmachine"?  Or
> can I tell Bitbake that "installationmachine" is the same as
> "mymachine", and just add/change new stuff for "installationmachine"?
>

I would approach in this way: in my meta-something/conf/machine:
- machine_base.inc where I put all the standard machine configuration for
production
- mymachine.conf
require conf/machine/machine_base.inc
- myinstallationmachine.conf
require conf/machine/machine_base.inc
PREFERRED_PROVIDER_virtual/kernel = "some-linux-provider"
Then in something.bbappend:
- If the property is common to both machines:
SRC_URI_append = " file://modifications.patch"
- if the property is machine specific:
SRC_URI_append_<MACHINE> = " file://machinespec.patch"
 In this way you have to maintain only the differences between your
machines, without redundancy.

2. My new image going to be used as an installation image for my
> production image.  So I need to include the production image (for
> MACHINE="mymachine")) deploy products in the image for my installation
> image.  How can I do that if I define a new MACHINE for the production
> image?
>

This is not clear to me. With 'installation image' do you mean a full image
(bootloader, kernel, rootfs etc)?
Can you give me some more details about this use case?

Best regards,
Gabriele

Il giorno ven 19 lug 2019 alle ore 14:49 Patrick Doyle <wpdster@gmail.com>
ha scritto:

> On Fri, Jul 19, 2019 at 1:58 AM Gabriele Zampieri
> <gabbla.malist@gmail.com> wrote:
> >
> > Hi,
> >
> > you could define two machines, where the manufacturing one is just an
> overlay of the production one. If the two kernels differs only for their
> config, you can specify different defconfig based on machine. If you need a
> completely different kernel, just specify
> PREFERRED_PROVIDER_virtual/kernel in manufacturing overlay
>
> Hi Gabriele,
> I wondered about that, but I get confused about the MACHINE concept in
> Yocto/OE/bitbake...
>
> 1. If I define a new machine, but I have a lot of recipes conditioned
> on the old machine, how do I say "This is the same as machine A, but
> with these differences"?  I have defined a machine now ("mymachine")
> and have recipes and .bbappend files with things like this in them:
>
> SRC_URI_mymachine += "file:/blah/blah/blah"
> do_install_append_mymachine() {
>   do_stuff()
> }
>
> Do I have to replicate (and maintain) all of the references to
> mymachine to also refer to my newly defined "installationmachine"?  Or
> can I tell Bitbake that "installationmachine" is the same as
> "mymachine", and just add/change new stuff for "installationmachine"?
>
> I hope my confusion here makes sense, but since it's confusion, it's
> tough to tell :-)
>
> 2. My new image going to be used as an installation image for my
> production image.  So I need to include the production image (for
> MACHINE="mymachine")) deploy products in the image for my installation
> image.  How can I do that if I define a new MACHINE for the production
> image?
>
> Thank you so much for the suggestion... it confirms that I am looking
> in the right places and thinking about the right things... I just
> don't know how to solve this problem.
>
> I'm also surprised that it's not a more general problem... which leads
> me to believe that I must be thinking about this the wrong way.
>
> Thanks again.
>
> --wpd
>

--000000000000b81b35058e093022
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Patrick,</div><div><br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div>Do I have to replicate (and maintain) all=
 of the references to<br>
mymachine to also refer to my newly defined &quot;installationmachine&quot;=
?=C2=A0 Or<br>
can I tell Bitbake that &quot;installationmachine&quot; is the same as<br>
&quot;mymachine&quot;, and just add/change new stuff for &quot;installation=
machine&quot;?</div></blockquote><div><br></div><div>I would approach in th=
is way: in my meta-something/conf/machine:</div><div style=3D"margin-left:4=
0px">- machine_base.inc where I put all the standard machine configuration =
for production<br></div><div style=3D"margin-left:40px">- mymachine.conf <b=
r></div><div style=3D"margin-left:80px">require conf/machine/machine_base.i=
nc</div><div style=3D"margin-left:40px">- myinstallationmachine.conf</div><=
div style=3D"margin-left:80px">require conf/machine/machine_base.inc</div><=
div style=3D"margin-left:80px"><span class=3D"gmail-im">PREFERRED_PROVIDER_=
virtual/kernel =3D &quot;some-linux-provider&quot;<br></span></div><div><sp=
an class=3D"gmail-im">Then in something.bbappend:</span></div><div style=3D=
"margin-left:40px"><span class=3D"gmail-im">- If the property is common to =
both machines:</span></div><div style=3D"margin-left:80px"><span class=3D"g=
mail-im">SRC_URI_append =3D &quot; file://modifications.patch&quot;</span><=
/div><div style=3D"margin-left:40px"><span class=3D"gmail-im">- if the prop=
erty is machine specific:</span></div><div style=3D"margin-left:80px"><span=
 class=3D"gmail-im">SRC_URI_append_&lt;MACHINE&gt; =3D &quot; file://machin=
espec.patch&quot;</span></div><span class=3D"gmail-im">=C2=A0In this way yo=
u have to maintain only the differences between your machines, without redu=
ndancy.<br></span><div><div><div style=3D"margin-left:80px"><span class=3D"=
gmail-im"><br></span></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div><span class=3D"gmail-im">2. My new image going to be used as an inst=
allation image for my<br>
production image.=C2=A0 So I need to include the production image (for<br>
MACHINE=3D&quot;mymachine&quot;)) deploy products in the image for my insta=
llation<br>
image.=C2=A0 How can I do that if I define a new MACHINE for the production=
<br>
image?</span></div></blockquote></div><div><br></div><div>This is not clear=
 to me. With &#39;installation image&#39; do you mean a full image (bootloa=
der, kernel, rootfs etc)?</div><div>Can you give me some more details about=
 this use case?</div><div><br></div><div>Best regards, <br></div><div>Gabri=
ele<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">Il giorno ven 19 lug 2019 alle ore 14:49 Patrick Doyle &=
lt;<a href=3D"mailto:wpdster@gmail.com">wpdster@gmail.com</a>&gt; ha scritt=
o:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Jul 1=
9, 2019 at 1:58 AM Gabriele Zampieri<br>
&lt;<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbla.mal=
ist@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; you could define two machines, where the manufacturing one is just an =
overlay of the production one. If the two kernels differs only for their co=
nfig, you can specify different defconfig based on machine. If you need a c=
ompletely different kernel, just specify=C2=A0 PREFERRED_PROVIDER_virtual/k=
ernel in manufacturing overlay<br>
<br>
Hi Gabriele,<br>
I wondered about that, but I get confused about the MACHINE concept in<br>
Yocto/OE/bitbake...<br>
<br>
1. If I define a new machine, but I have a lot of recipes conditioned<br>
on the old machine, how do I say &quot;This is the same as machine A, but<b=
r>
with these differences&quot;?=C2=A0 I have defined a machine now (&quot;mym=
achine&quot;)<br>
and have recipes and .bbappend files with things like this in them:<br>
<br>
SRC_URI_mymachine +=3D &quot;file:/blah/blah/blah&quot;<br>
do_install_append_mymachine() {<br>
=C2=A0 do_stuff()<br>
}<br>
<br>
Do I have to replicate (and maintain) all of the references to<br>
mymachine to also refer to my newly defined &quot;installationmachine&quot;=
?=C2=A0 Or<br>
can I tell Bitbake that &quot;installationmachine&quot; is the same as<br>
&quot;mymachine&quot;, and just add/change new stuff for &quot;installation=
machine&quot;?<br>
<br>
I hope my confusion here makes sense, but since it&#39;s confusion, it&#39;=
s<br>
tough to tell :-)<br>
<br>
2. My new image going to be used as an installation image for my<br>
production image.=C2=A0 So I need to include the production image (for<br>
MACHINE=3D&quot;mymachine&quot;)) deploy products in the image for my insta=
llation<br>
image.=C2=A0 How can I do that if I define a new MACHINE for the production=
<br>
image?<br>
<br>
Thank you so much for the suggestion... it confirms that I am looking<br>
in the right places and thinking about the right things... I just<br>
don&#39;t know how to solve this problem.<br>
<br>
I&#39;m also surprised that it&#39;s not a more general problem... which le=
ads<br>
me to believe that I must be thinking about this the wrong way.<br>
<br>
Thanks again.<br>
<br>
--wpd<br>
</blockquote></div>

--000000000000b81b35058e093022--
