Return-Path: <navani.srivastava@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7BA1E002E2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:14:36 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id up14so1840236obb.39
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8AYm2GACitQ/QjBB6Ifg3elE/2WdYgmzYtkfUZR0ti4=;
	b=Mt1u2zE/BeIHPbdPaCCzt3bOr3dqVeged2xw5NEGUs13XC6Q7RJRSCY7dg7CF6Xgz0
	LPKtu3gGGKtQZ0IID9lfL60G3lKBpXhEw/CMNml713oWBI9sW9SEureZ6XMTxl8W+2BD
	k/fwVdok+83FZNoLvAz5dJ2hIjjaWmty5By7bBxN6qOAKYFa2PF+Zw3gvPCNmD79OYOq
	hsCIL7wY+ShV1kplRbNHWc5romjaDnhR9Bs3Qk+iovQVxNDTfZmEa0JNoEGdujv54B0K
	j3gEhNBC9sFodabGDkINxeDcab1V1ztmORPjjmAS9udSlWz1njCZu3/snDxb7Rdi5H2l
	16Rg==
X-Received: by 10.182.110.226 with SMTP id id2mr3164569obb.95.1375290875735;
	Wed, 31 Jul 2013 10:14:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Wed, 31 Jul 2013 10:14:15 -0700 (PDT)
In-Reply-To: <1843652.5ibqSWhFnV@helios>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<4728393.KjK4Yh0aOO@helios>
	<CA+Z6RkWUnice-MrWSXpfA1_+cuFYXgukbfK69oFgmPjWow4W9g@mail.gmail.com>
	<1843652.5ibqSWhFnV@helios>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 31 Jul 2013 22:44:15 +0530
Message-ID: <CA+Z6RkXAc-Lt75q3B7OYPCq5gTUiUncveE5pN2eBO5nvoQOzLw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: bitbake -c populate_sdk -v poky-image
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
X-List-Received-Date: Wed, 31 Jul 2013 17:14:38 -0000
Content-Type: multipart/alternative; boundary=089e0112ce201c78cd04e2d1dc36

--089e0112ce201c78cd04e2d1dc36
Content-Type: text/plain; charset=ISO-8859-1

I did whatever you suggested and it worked at first shot.. Thanks a lot :)

>>In that case why are you using poky-image.bbclass?
It's is my custom recipe name suggested for the project :) Can't do
anything..



On Tue, Jul 30, 2013 at 4:18 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 30 July 2013 14:35:40 Navani Srivastava wrote:
> > > I think the problem is this:
> > > require recipes-core/meta/meta-toolchain.bb
> >
> > Yes, it worked.. Thanks
> >
> > > You shouldn't be adding this to an image recipe, and definitely not
> poky-
> > > image.bbclass.
> > then? Is it possible to create .bbappend kind of file for .bbclass which
> > can append the information or I have to duplicate
> toolchain-script.bbclass
> > in my layer?
>
> Sure, you can add the script append and the additional TOOLCHAIN_HOST_TASK
> items in an additional bbclass in your layer and then inherit that in your
> image recipe; just don't require meta-toolchain.bb because that has other
> side-effects.
>
> > >>What version of the build system are you using?
> >
> > I am using poky danny (8.0.2)
>
> OK, in that case why are you using poky-image.bbclass? That was replaced by
> core-image.bbclass in the edison release if I recall correctly, which was
> quite a while ago.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e0112ce201c78cd04e2d1dc36
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I did whatever you suggested and it worked at first s=
hot.. Thanks a lot :)<br><br>&gt;&gt;In that case why are you using poky-im=
age.bbclass?<br></div>It&#39;s is my custom recipe name suggested for the p=
roject :) Can&#39;t do anything.. <br>

<div><div><br></div></div></div><div class=3D"gmail_extra"><br><br><div cla=
ss=3D"gmail_quote">On Tue, Jul 30, 2013 at 4:18 PM, Paul Eggleton <span dir=
=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tuesday 30 July 2013 14=
:35:40 Navani Srivastava wrote:<br>
&gt; &gt; I think the problem is this:<br>
&gt; &gt; require recipes-core/meta/<a href=3D"http://meta-toolchain.bb" ta=
rget=3D"_blank">meta-toolchain.bb</a><br>
&gt;<br>
&gt; Yes, it worked.. Thanks<br>
&gt;<br>
&gt; &gt; You shouldn&#39;t be adding this to an image recipe, and definite=
ly not poky-<br>
&gt; &gt; image.bbclass.<br>
&gt; then? Is it possible to create .bbappend kind of file for .bbclass whi=
ch<br>
&gt; can append the information or I have to duplicate toolchain-script.bbc=
lass<br>
&gt; in my layer?<br>
<br>
</div>Sure, you can add the script append and the additional TOOLCHAIN_HOST=
_TASK<br>
items in an additional bbclass in your layer and then inherit that in your<=
br>
image recipe; just don&#39;t require <a href=3D"http://meta-toolchain.bb" t=
arget=3D"_blank">meta-toolchain.bb</a> because that has other<br>
side-effects.<br>
<div class=3D"im"><br>
&gt; &gt;&gt;What version of the build system are you using?<br>
&gt;<br>
&gt; I am using poky danny (8.0.2)<br>
<br>
</div>OK, in that case why are you using poky-image.bbclass? That was repla=
ced by<br>
core-image.bbclass in the edison release if I recall correctly, which was<b=
r>
quite a while ago.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--089e0112ce201c78cd04e2d1dc36--
