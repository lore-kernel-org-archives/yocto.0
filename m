Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2739E013AE
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 02:06:01 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id h2so3291259oag.38
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 02:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Cf+hJiu0C4SLaS7gxTYHTnSSVHgxzPz5hYPm3CsnHX8=;
	b=GSIXR0JMDgBiVfh+pAxBgcC3lxe/7YvlnT0CqAmveRI1isCnG03WvUqQozogiikidB
	dGlsMXKsQg38vroo7D5DAK7Dyo39/uidhnCrZ3cWWA0N00yBqTlXhsYuoxY3v22C4u6t
	okV29QNQz5l5HNYkPu7hnFORvQQ7cbNVltUup2JWEUpc8Lon0mwtK1G9OYUM1yCcmLpJ
	yXnxTHeQVx2rLaA+CCoko8D4LgSbKjS9H5pvndJEtiWbjH1zp0b1HLbE/7uZNdX/xHVv
	oYPtmgKKnnOFFuwbHTgWkfubKGU6xDN4XTIB2YGEZvznOiAV9yx3A9c4ve6+nuetB4eU
	AhWQ==
X-Received: by 10.60.132.230 with SMTP id ox6mr61568308oeb.66.1375175161100;
	Tue, 30 Jul 2013 02:06:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Tue, 30 Jul 2013 02:05:40 -0700 (PDT)
In-Reply-To: <4728393.KjK4Yh0aOO@helios>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<11092468.8KYSURtWvb@helios>
	<CA+Z6RkVbia4D2Z_1ZYnqJ4pUYPKHG8-X_C20xhVP7krt3mr=Dg@mail.gmail.com>
	<4728393.KjK4Yh0aOO@helios>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 30 Jul 2013 14:35:40 +0530
Message-ID: <CA+Z6RkWUnice-MrWSXpfA1_+cuFYXgukbfK69oFgmPjWow4W9g@mail.gmail.com>
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
X-List-Received-Date: Tue, 30 Jul 2013 09:06:03 -0000
Content-Type: multipart/alternative; boundary=047d7b41cbb8fb3fba04e2b6ea6f

--047d7b41cbb8fb3fba04e2b6ea6f
Content-Type: text/plain; charset=ISO-8859-1

>>I think the problem is this:

> require recipes-core/meta/meta-toolchain.bb
Yes, it worked.. Thanks

>>You shouldn't be adding this to an image recipe, and definitely not poky-
image.bbclass.
then? Is it possible to create .bbappend kind of file for .bbclass which
can append the information or I have to duplicate toolchain-script.bbclass
in my layer?

>>What version of the build system are you using?
I am using poky danny (8.0.2)

Regards
Navani


On Tue, Jul 30, 2013 at 1:57 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 30 July 2013 00:08:42 Navani Srivastava wrote:
> > I have done changes in .bbclass file. Could it be the reason for such
> > behavior?
> > Please find the attached recipe and bbclass.
>
> I think the problem is this:
>
> > require recipes-core/meta/meta-toolchain.bb
>
> You shouldn't be adding this to an image recipe, and definitely not poky-
> image.bbclass.
>
> What version of the build system are you using?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b41cbb8fb3fba04e2b6ea6f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>&gt;&gt;I think the problem is th=
is:<br>
<br>
&gt; require recipes-core/meta/<a href=3D"http://meta-toolchain.bb" target=
=3D"_blank">meta-toolchain.bb</a><br></div>Yes, it worked.. Thanks<br><br>&=
gt;&gt;You shouldn&#39;t be adding this to an image recipe, and definitely =
not poky-<br>


image.bbclass.<br></div>then? Is it possible to create .bbappend kind of fi=
le for .bbclass which can append the information or I have to duplicate too=
lchain-script.bbclass in my layer?<br><br>&gt;&gt;What version of the build=
 system are you using?<br>

</div>I am using poky danny (8.0.2)<br><br></div>Regards<br></div>Navani<br=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue=
, Jul 30, 2013 at 1:57 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.=
intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tuesday 30 July 2013 00=
:08:42 Navani Srivastava wrote:<br>
&gt; I have done changes in .bbclass file. Could it be the reason for such<=
br>
&gt; behavior?<br>
&gt; Please find the attached recipe and bbclass.<br>
<br>
</div>I think the problem is this:<br>
<br>
&gt; require recipes-core/meta/<a href=3D"http://meta-toolchain.bb" target=
=3D"_blank">meta-toolchain.bb</a><br>
<br>
You shouldn&#39;t be adding this to an image recipe, and definitely not pok=
y-<br>
image.bbclass.<br>
<br>
What version of the build system are you using?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--047d7b41cbb8fb3fba04e2b6ea6f--
