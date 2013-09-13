Return-Path: <ashish.dalela@gmail.com>
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46F75E014F7
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 22:37:09 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id x18so1671960lbi.38
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 22:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bxXivfk+VoRfe7W+Qpa6Zf5sJQWc/0n6Oq2Xptpng/Q=;
	b=DBsM5XkVQR/+Sle6UmWJcUi7L3PMZBVex+1TD2+iNdm4xiVmDV6oy9Hr3jxmTc/EcD
	/vdfeDHxw4Y/YnB1sg/ehn2CMPPtSp8MGXub2bIaUDULPJDCn0FCBzEes+5uadT537/i
	KZ+PAoX8C5Sjv/iAZoOgdkpjEJ0Z0/Vr63B2ZqSX+jQfvDxrcfFFtrrovkFuOIpSViPJ
	NzZsXpXfmEDeCb3rlRj78BIDuhqU40cFjTjlixGQFhEvCifTGRKfgESHCdZFhwqmFkn5
	hIpvdmJZWGxsZwf1/bMSrXhtalv/zeriiWVYjPjfJlJ7b+c4Y0OoaytyoUq3IncttKui
	uRfg==
MIME-Version: 1.0
X-Received: by 10.112.168.35 with SMTP id zt3mr10326960lbb.11.1379050627502;
	Thu, 12 Sep 2013 22:37:07 -0700 (PDT)
Received: by 10.112.11.195 with HTTP; Thu, 12 Sep 2013 22:37:07 -0700 (PDT)
In-Reply-To: <2226787.84MgiCFZLh@helios>
References: <CABhkJRdQQ2HaXCrah=544uAn6Ys=gspTdmuSOa2VHv_gJASmKA@mail.gmail.com>
	<CAP71WjwqPUS3JTZAswd6ULWXX8CTh4_F1X_MLjJO8tAw47mOYg@mail.gmail.com>
	<CABhkJRc+Ae1oYAP8821rYU8z0d5C9cHpoXVXL3vXdVnzSbx2jA@mail.gmail.com>
	<2226787.84MgiCFZLh@helios>
Date: Fri, 13 Sep 2013 11:07:07 +0530
Message-ID: <CABhkJRcGqk79tFKhCY38iStq2Gt6GRkZ1xABu7w2yZVW+HxviA@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Error while building a custom image
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
X-List-Received-Date: Fri, 13 Sep 2013 05:37:10 -0000
Content-Type: multipart/alternative; boundary=001a11c34b48c7980604e63d3e8d

--001a11c34b48c7980604e63d3e8d
Content-Type: text/plain; charset=ISO-8859-1

Thanks! I was able to solve this. The problem was that I was missing the
${D} in the do_install.


On Thu, Sep 12, 2013 at 8:42 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Thursday 12 September 2013 19:31:59 Ashish Dalela wrote:
> > On Thu, Sep 12, 2013 at 7:27 PM, Nicolas Dechesne <
> > nicolas.dechesne@linaro.org> wrote:
> > > On Thu, Sep 12, 2013 at 3:52 PM, Ashish Dalela
> > > <ashish.dalela@gmail.com>wrote:
> > >> I tried a small change. I removed the packagegroup entry and added the
> > >> following to meta/recipes-extended/images/core-image-basic.bb
> > >>
> > >> IMAGE_INSTALL += "tpmc"
> > >>
> > >> Now, when I do a bitbake core-image-basic, I get this error:
> > >>
> > >> *Error: tpmc not found in the base feeds (qemux86 i586 i486 i386 x86
> > >> noarch any all).*
> > >> *
> > >> *
> > >> Can someone please help? It's probably something quite simple but I'm
> not
> > >> getting it.
> > >
> > > did you add your layer to BBLAYERS in conf/bblayer.conf file?
> > >
> > > does "bitbake tpmc" actually build your recipe?
> >
> > Yes, bitbake tpmc is successful.
> >
> > Also, I added my layer to the BBLAYERS in the build/conf/bblayers.conf
> file.
>
> Without further details it sounds like a "tpmc" package is being provided
> by a
> recipe, but when it came to packaging for that recipe, the "tpmc" package
> was
> empty. Check that the "tpmc" recipe has appropriate PACKAGES / FILES values
> and that files are being installed into the correct paths within in
> do_install.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c34b48c7980604e63d3e8d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks! I was able to solve this. The problem was that I w=
as missing the ${D} in the do_install.=A0</div><div class=3D"gmail_extra"><=
br><br><div class=3D"gmail_quote">On Thu, Sep 12, 2013 at 8:42 PM, Paul Egg=
leton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com=
" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Thursday 12 September 2=
013 19:31:59 Ashish Dalela wrote:<br>
&gt; On Thu, Sep 12, 2013 at 7:27 PM, Nicolas Dechesne &lt;<br>
&gt; <a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.dechesne@linaro=
.org</a>&gt; wrote:<br>
&gt; &gt; On Thu, Sep 12, 2013 at 3:52 PM, Ashish Dalela<br>
&gt; &gt; &lt;<a href=3D"mailto:ashish.dalela@gmail.com">ashish.dalela@gmai=
l.com</a>&gt;wrote:<br>
&gt; &gt;&gt; I tried a small change. I removed the packagegroup entry and =
added the<br>
&gt; &gt;&gt; following to meta/recipes-extended/images/<a href=3D"http://c=
ore-image-basic.bb" target=3D"_blank">core-image-basic.bb</a><br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; IMAGE_INSTALL +=3D &quot;tpmc&quot;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Now, when I do a bitbake core-image-basic, I get this error:<=
br>
&gt; &gt;&gt;<br>
</div>&gt; &gt;&gt; *Error: tpmc not found in the base feeds (qemux86 i586 =
i486 i386 x86<br>
&gt; &gt;&gt; noarch any all).*<br>
&gt; &gt;&gt; *<br>
<div class=3D"im">&gt; &gt;&gt; *<br>
&gt; &gt;&gt; Can someone please help? It&#39;s probably something quite si=
mple but I&#39;m not<br>
&gt; &gt;&gt; getting it.<br>
&gt; &gt;<br>
&gt; &gt; did you add your layer to BBLAYERS in conf/bblayer.conf file?<br>
&gt; &gt;<br>
&gt; &gt; does &quot;bitbake tpmc&quot; actually build your recipe?<br>
&gt;<br>
</div><div class=3D"im">&gt; Yes, bitbake tpmc is successful.<br>
&gt;<br>
&gt; Also, I added my layer to the BBLAYERS in the build/conf/bblayers.conf=
 file.<br>
<br>
</div>Without further details it sounds like a &quot;tpmc&quot; package is =
being provided by a<br>
recipe, but when it came to packaging for that recipe, the &quot;tpmc&quot;=
 package was<br>
empty. Check that the &quot;tpmc&quot; recipe has appropriate PACKAGES / FI=
LES values<br>
and that files are being installed into the correct paths within in do_inst=
all.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11c34b48c7980604e63d3e8d--
