Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43728E01415
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 23:56:43 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id dn14so1524900obc.40
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 23:56:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=jms15C9wpH6CsENvtdXXRvKvrPW93l4NypD6WGbL1HI=;
	b=ZCPUQZUhFpuLSBNR19WAieCie/pQdcQVsTGrs4yAkjF5llREHwHFsr0V1SSY+I9nQS
	GfIv1jpF8oviOjCx9bxq15dJzu0xSmyLTBztrQ/zSFFApe5QPE0z2h1BDenDek4ZKaOX
	n5FA9tKoeKGORt3B6s8UYBYWq/5xEAAyDmQk2oDvQElAv0oqsHom0pXtIKCL6V+E9oSS
	tNvfpg6x0GL9F00FCHRYgqX6GI/hvrMAwGisynyARB9GbDYwAsUIYPB7lyrXmGSm0FPY
	7sG+UsRUznI015e6TXU0asuOHix65S0mStEZVyjkTDYpxIZ1mETHEsiyMGfMbBhE16kJ
	18pQ==
X-Gm-Message-State: ALoCoQk8D/XS/8QEB42Pb+2YEcTMGZTEExYOkTu45ZHWXiQrvjRDiSgxaQdP9SXvs7vHshInJdkl
X-Received: by 10.60.62.38 with SMTP id v6mr5214174oer.45.1378364203192; Wed,
	04 Sep 2013 23:56:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.172.4 with HTTP; Wed, 4 Sep 2013 23:56:22 -0700 (PDT)
In-Reply-To: <779B7C6AC95A460FB7D94F91EAF86DF9@PAULD>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
	<8EB78E64DFE9436EAFB462E357C464EC@PAULD> <20130828072025.GC3544@jama>
	<DB63579B404D457F9DF825A744067092@PAULD>
	<CAGiJk9eztTXvCR4UjbtXTqRbjN+nKR6KKGgrFqKAvO4TSzSCAg@mail.gmail.com>
	<CAGiJk9chSv2CdBq4-TFJ77zeCtF-2QXjjh+WriQcUXJ5GgEEvA@mail.gmail.com>
	<779B7C6AC95A460FB7D94F91EAF86DF9@PAULD>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 5 Sep 2013 08:56:22 +0200
Message-ID: <CAP71Wjx8BeMn8PxwLVbzU58Pht=0P-9gcx95sKz6YTzrO-e5tQ@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Thu, 05 Sep 2013 06:56:46 -0000
Content-Type: multipart/alternative; boundary=089e0153761eb3e6b104e59d6c9c

--089e0153761eb3e6b104e59d6c9c
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 5, 2013 at 1:50 AM, Paul D. DeRocco <pderocco@ix.netcom.com>wrote:

> > From: Samuel Stirtzel
> >
> > If you change:
> >
> > COMPRESS_CMD_gz = "gzip -f -9 -c ${IMAGE_NAME}.rootfs.${type} >
> > ${IMAGE_NAME}.rootfs.${type}.gz"
> > COMPRESS_CMD_bz2 = "bzip2 -f -k ${IMAGE_NAME}.rootfs.${type}"
> >
> > in [...]/meta/classes/image_types.bbclass, then can try
> > pbzip2 / pigz.
>
> This raises a question that has come up for me before: is there a way to
> override something in a .bbclass, without just editing the file and
> therefore losing it whenever new metadata is released?
>

yes, you can ;-)


>  I really have
> little sense of the order in which things are read or obeyed in the whole
> bitbake process. Those variables look like they're read by the
> get_imagecmds() script; is there an opportunity for a recipe to change the
> value of COMPRESS_CMD_gz or _bz2 after it's defined, but before that
> script gets called?
>

there are 2 types of 'files'. Configuration files and recipes (.bb,
.bbclass, .bbappend). Configuration files are read in the order defined in
meta/conf/bitbake.conf (see toward the end, all .conf files are being
included). The order there will dicdacte "who overrides what". Then you can
use the various operators ( =, ?=, +=, ...).

For 'recipes' my understanding is that they are parsed line by line from
the beginning of the .bb file till the end. When reading a .bb file when
the parser encounters a 'require/include' or a 'inherit' it then parses the
corresponding file.

in your specific case, COMPRESS_CMD_gz is set in
 meta/classes/image_types.bbclass, which is inherited in image.bbclass. So
if you want to override it, you need to do it *after* your inherit "image"
in your own image .bb file (or core-image, if that's what you use).

you can how bitbake parsed a variable with:

bitbake -e <image> | grep ^VARIABLE.

E.g. in my image, after adding:

inherit core-image
+COMPRESS_CMD_gz="my_own_gz"



$ bitbake -e my-generic-image | grep ^COMPRESS_CMD_gz
COMPRESS_CMD_gz="my_own_gz"

--089e0153761eb3e6b104e59d6c9c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 5, 2013 at 1:50 AM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom.c=
om</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":23y" style=3D"overflow:hidden">&gt; From: Samu=
el Stirtzel<br>


<div class=3D"im">&gt;<br>
&gt; If you change:<br>
&gt;<br>
&gt; COMPRESS_CMD_gz =3D &quot;gzip -f -9 -c ${IMAGE_NAME}.rootfs.${type} &=
gt;<br>
&gt; ${IMAGE_NAME}.rootfs.${type}.gz&quot;<br>
&gt; COMPRESS_CMD_bz2 =3D &quot;bzip2 -f -k ${IMAGE_NAME}.rootfs.${type}&qu=
ot;<br>
&gt;<br>
&gt; in [...]/meta/classes/image_types.bbclass, then can try<br>
&gt; pbzip2 / pigz.<br>
<br>
</div>This raises a question that has come up for me before: is there a way=
 to<br>
override something in a .bbclass, without just editing the file and<br>
therefore losing it whenever new metadata is released?</div></blockquote><d=
iv><br></div><div>yes, you can ;-)</div><div>=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border=
-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<div id=3D":23y" style=3D"overflow:hidden"> I really have<br>
little sense of the order in which things are read or obeyed in the whole<b=
r>
bitbake process. Those variables look like they&#39;re read by the<br>
get_imagecmds() script; is there an opportunity for a recipe to change the<=
br>
value of COMPRESS_CMD_gz or _bz2 after it&#39;s defined, but before that<br=
>
script gets called?<div class=3D""><div id=3D":23o" class=3D"" tabindex=3D"=
0"></div></div></div></blockquote></div><br></div><div class=3D"gmail_extra=
">there are 2 types of &#39;files&#39;. Configuration files and recipes (.b=
b, .bbclass, .bbappend). Configuration files are read in the order defined =
in meta/conf/bitbake.conf (see toward the end, all .conf files are being in=
cluded). The order there will dicdacte &quot;who overrides what&quot;. Then=
 you can use the various operators ( =3D, ?=3D, +=3D, ...).</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">For &#39;re=
cipes&#39; my understanding is that they are parsed line by line from the b=
eginning of the .bb file till the end. When reading a .bb file when the par=
ser encounters a &#39;require/include&#39; or a &#39;inherit&#39; it then p=
arses the corresponding file.=A0</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">in your spe=
cific case, COMPRESS_CMD_gz is set in =A0meta/classes/image_types.bbclass, =
which is inherited in image.bbclass. So if you want to override it, you nee=
d to do it *after* your inherit &quot;image&quot; in your own image .bb fil=
e (or core-image, if that&#39;s what you use).=A0</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">you can how=
 bitbake parsed a variable with:</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">bitbake -e &lt;image&gt; | grep ^VARIABLE.</div>=
<div class=3D"gmail_extra">

<br></div><div class=3D"gmail_extra">E.g. in my image, after adding:</div><=
div class=3D"gmail_extra"><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">inherit core-image</div><div class=3D"gmail_extra">+COMPRE=
SS_CMD_gz=3D&quot;my_own_gz&quot; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div>

<div><br></div></div><div class=3D"gmail_extra">$ bitbake -e my-generic-ima=
ge | grep ^COMPRESS_CMD_gz=A0</div><div class=3D"gmail_extra">COMPRESS_CMD_=
gz=3D&quot;my_own_gz&quot;</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">

<br></div></div>

--089e0153761eb3e6b104e59d6c9c--
