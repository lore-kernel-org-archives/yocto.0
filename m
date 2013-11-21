Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C73ABE005B7
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 14:26:34 -0800 (PST)
Received: by mail-oa0-f43.google.com with SMTP id i7so485944oag.16
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 14:26:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=C4tGfWDClXp7CVq4QtiQ4onj6iaTYRupSRWOuwS5Qkc=;
	b=aowyujWnH12dcIZs4XxBbdx73LoyUMEE6udhNVBjTMd4fJYLcTJd+OYzqzGHBKgHmQ
	cdozyP671GNxutj6TZtHCuyJgOqQZGEKPW5KJinLRYlOfj5DesDGE9/v5DcXdtRxnygP
	2MgnUoKApFA+aLnfB8jSBGT6mepiodzI8N74Q0+41ZZcgr/C4kvBxhxHpqsaIi92rbA3
	Uq7j/XwU/qFHpCw3fXyNzYediyrDKU7qUxn5yiT7UtWdTFDptrJZJN7SpyEoJlS0T/jl
	8dM0p7hLRDC1bnc7z0EGvMvZRP/jlrDEuHGxJAwtzcUxqUtVOobXp8PEC5yBLKdNFBWN
	mTog==
X-Gm-Message-State: ALoCoQlyeNvHVAJ4Ww9udlfufyILsEFxoCpggepKWQcnLi5PvknTw79rwZQpLKJ1PaOavydQ9qyT
X-Received: by 10.182.250.163 with SMTP id zd3mr7623542obc.20.1385072793344;
	Thu, 21 Nov 2013 14:26:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.156.40 with HTTP; Thu, 21 Nov 2013 14:26:13 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F50894@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311211327360.10963@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F50894@ORSMSX101.amr.corp.intel.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 21 Nov 2013 23:26:13 +0100
Message-ID: <CAP71WjyfTp3RvhQFrg937dOdREsaO8PUPq7GmaY6m=a=47wJmg@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: FW: strange explanation of how to add a package to an existing recipe
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
X-List-Received-Date: Thu, 21 Nov 2013 22:26:35 -0000
Content-Type: multipart/alternative; boundary=089e01634ec2d5f0c004ebb76376

--089e01634ec2d5f0c004ebb76376
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 21, 2013 at 7:35 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> >suggests that, to customize an image, you should copy the existing .bb
> file for
> >that image to another name and add a line like:
> >
> >  IMAGE_INSTALL += "strace"
> >
> >but rather than *copy* the entire image file, isn't it easier to use
> what's
> >already being used; that is, just "include" or "require" the existing .bb
> file.
> >example: core-image-minimal-mtdutils.bb contains:
>

i would agree with the doc. while it is tempting to include/require a
'minimal' image, and it is simpler at first sight, eventually you will need
to have full control of all your image. especially when your 'image' is
your 'product' that gets deployed. In such circumstances I believe it is
more appropriate to not rely on an external recipe. e.g. if the minimal
image you include change, all your derived images change too...

it's kind of a 'taste' choice, and you might want to choose to do
differently, but still the best recommendation to me is to own your image
recipes completely...

alternatively, there can be some corner case when you include/require as
the parsing of the recipe is done 'serially'. so the place where you
include/require in your .bb file might matter, if you play around with some
CORE IMAGE variable... and that's kind of tough things to debug.

--089e01634ec2d5f0c004ebb76376
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Nov 21, 2013 at 7:35 PM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<=
a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rif=
enbark@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":5sn" style=3D"overflow:hidden">&=
gt;suggests that, to customize an image, you should copy the existing .bb f=
ile for<br>


&gt;that image to another name and add a line like:<br>
&gt;<br>
&gt; =A0IMAGE_INSTALL +=3D &quot;strace&quot;<br>
&gt;<br>
&gt;but rather than *copy* the entire image file, isn&#39;t it easier to us=
e what&#39;s<br>
&gt;already being used; that is, just &quot;include&quot; or &quot;require&=
quot; the existing .bb file.<br>
&gt;example: <a href=3D"http://core-image-minimal-mtdutils.bb" target=3D"_b=
lank">core-image-minimal-mtdutils.bb</a> contains:<br></div></blockquote></=
div><br>i would agree with the doc. while it is tempting to include/require=
 a &#39;minimal&#39; image, and it is simpler at first sight, eventually yo=
u will need to have full control of all your image. especially when your &#=
39;image&#39; is your &#39;product&#39; that gets deployed. In such circums=
tances I believe it is more appropriate to not rely on an external recipe. =
e.g. if the minimal image you include change, all your derived images chang=
e too...=A0</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">it&#39;s ki=
nd of a &#39;taste&#39; choice, and you might want to choose to do differen=
tly, but still the best recommendation to me is to own your image recipes c=
ompletely...</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">alternative=
ly, there can be some corner case when you include/require as the parsing o=
f the recipe is done &#39;serially&#39;. so the place where you include/req=
uire in your .bb file might matter, if you play around with some CORE IMAGE=
 variable... and that&#39;s kind of tough things to debug.</div>

</div>

--089e01634ec2d5f0c004ebb76376--
