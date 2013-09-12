Return-Path: <ashish.dalela@gmail.com>
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05375E013DF
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 06:52:29 -0700 (PDT)
Received: by mail-la0-f46.google.com with SMTP id eh20so8608719lab.19
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 06:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=dHmoAr+OeUkdEcKuAccp4MPEg47hXgboneykbOmJwhg=;
	b=Th98Q0Ve9Ih14AvlmwRHpE3z3ElMxSU4eU9R/k9uYzSHTSE2CBbPJQReABm5f5fpOe
	GLN7a5xOMMlTaaey2F0D9TElWoQ15A/l4Yc60CWYUfEmnv0cx2f733KStG9zK44ScDQJ
	rwq9HHsgCNxvmLzQTk7q2A0ONX1stvWVw4z4n60p7B7sq+RaPut3uI5KHG6BdBqc2AfJ
	kjfUEJB9hyW925n/hORLbpxqMIeCZ0oTq4YWqGD16cqRXnLaTHszmkuhbv0AzpLBCetH
	5xEP0evBxuEKa/JzZ0SGBpPpsUJm6Imr8H/cy05x2MK71Nqu/Zj3my7hPFi2t0FSW6+q
	A34Q==
MIME-Version: 1.0
X-Received: by 10.152.18.131 with SMTP id w3mr161685lad.47.1378993947453; Thu,
	12 Sep 2013 06:52:27 -0700 (PDT)
Received: by 10.112.11.195 with HTTP; Thu, 12 Sep 2013 06:52:27 -0700 (PDT)
In-Reply-To: <CABhkJRdQQ2HaXCrah=544uAn6Ys=gspTdmuSOa2VHv_gJASmKA@mail.gmail.com>
References: <CABhkJRdQQ2HaXCrah=544uAn6Ys=gspTdmuSOa2VHv_gJASmKA@mail.gmail.com>
Date: Thu, 12 Sep 2013 19:22:27 +0530
Message-ID: <CABhkJRcxDY13w5fWcSVg1Bv6cD-=h1rUTm557JqLB8U3FD=NCw@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 12 Sep 2013 13:52:33 -0000
Content-Type: multipart/alternative; boundary=089e014942ee62adb804e6300cfb

--089e014942ee62adb804e6300cfb
Content-Type: text/plain; charset=ISO-8859-1

I tried a small change. I removed the packagegroup entry and added the
following to meta/recipes-extended/images/core-image-basic.bb

IMAGE_INSTALL += "tpmc"

Now, when I do a bitbake core-image-basic, I get this error:

*Error: tpmc not found in the base feeds (qemux86 i586 i486 i386 x86 noarch
any all).*
*
*
Can someone please help? It's probably something quite simple but I'm not
getting it.

Thanks
-Ashish




On Thu, Sep 12, 2013 at 4:52 PM, Ashish Dalela <ashish.dalela@gmail.com>wrote:

> Hi,
>
> I am new to the Yocto project and trying to build a custom image (I have
> built the standard images - e.g. core-image-basic and run them).
>
> I added a meta-mylayer directory in the poky directory and added a recipe
> for a component "tpmc". Then I modified the core-image-basic recipe and
> added a packagegroup-tpmc. This packagegroup is defined to build and
> package my component "tpmc". The packagegroup is defined in the
> yocto:~/poky-dylan-9.0.2/meta/recipes-extended/packagegroups directory.
>
> When I build the core-image-basic, at the end (while executing do_rootfs)
> I see the below error:
>
> *| Computing transaction...error: Can't install
> packagegroup-tpmc-1.0-r6@all: no package provides tpmc*
>
> What am I doing wrong? Any hints anyone can give me?
>
> Thanks
> -Ashish
>

--089e014942ee62adb804e6300cfb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>I tried a small change. I removed the packagegrou=
p entry and added the following to meta/recipes-extended/images/<a href=3D"=
http://core-image-basic.bb">core-image-basic.bb</a>=A0</div><div><br></div>=
<div>
<div>IMAGE_INSTALL +=3D &quot;tpmc&quot;</div></div><div><br></div><div>Now=
, when I do a bitbake core-image-basic, I get this error:</div><div><br></d=
iv><div><div><b>Error: tpmc not found in the base feeds (qemux86 i586 i486 =
i386 x86 noarch any all).</b></div>
</div><div><b><br></b></div><div>Can someone please help? It&#39;s probably=
 something quite simple but I&#39;m not getting it.</div><div><br></div><di=
v>Thanks</div><div>-Ashish</div><div><br></div><div><br></div></div><div cl=
ass=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Sep 12, 2013 at 4:52 PM, Ashish =
Dalela <span dir=3D"ltr">&lt;<a href=3D"mailto:ashish.dalela@gmail.com" tar=
get=3D"_blank">ashish.dalela@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">
<div dir=3D"ltr">Hi,<div><br></div><div>I am new to the Yocto project and t=
rying to build a custom image (I have built the standard images - e.g. core=
-image-basic and run them).</div><div><br></div><div>I added a meta-mylayer=
 directory in the poky directory and added a recipe for a component &quot;t=
pmc&quot;. Then I modified the core-image-basic recipe and added a packageg=
roup-tpmc. This packagegroup is defined to build and package my component &=
quot;tpmc&quot;. The packagegroup is defined in the yocto:~/poky-dylan-9.0.=
2/meta/recipes-extended/packagegroups directory.</div>

<div><br></div><div>When I build the core-image-basic, at the end (while ex=
ecuting do_rootfs) I see the below error:</div><div><br></div><div><div><b>=
| Computing transaction...error: Can&#39;t install packagegroup-tpmc-1.0-r6=
@all: no package provides tpmc</b></div>

</div><div><br></div><div>What am I doing wrong? Any hints anyone can give =
me?</div><div><br></div><div>Thanks</div><span class=3D"HOEnZb"><font color=
=3D"#888888"><div>-Ashish</div></font></span></div>
</blockquote></div><br></div>

--089e014942ee62adb804e6300cfb--
