Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A630E008DC; Fri, 27 Feb 2015 02:35:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ABD4E0077E
	for <yocto@yoctoproject.org>; Fri, 27 Feb 2015 02:35:41 -0800 (PST)
Received: by mail-qa0-f43.google.com with SMTP id bm13so12083333qab.2
	for <yocto@yoctoproject.org>; Fri, 27 Feb 2015 02:35:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YV07YBm8dlZ4RYU8C9ftWDmfLzATBt+bvXCFJLNQ0Ik=;
	b=AXDwm1eNGsevB1sT/9RWcU+KGS7pICeWnFL5jacX9qWeU0D1siUG4G/67gMX5xQvN6
	OEeQsxQsikcDBud7A+LKzPR75aOVi/hUtsJLcwxtiyz/ORVnna2WQ4H1990Aj1Sd7Z4K
	M7zsL2cuR2iZ11sPJll9j9Dgcf6+HElY5468L7o4XDHX74Fe3cuQ1MhiqUvKRqxzezri
	ZoPk4+BUhwLmeSnMESHHa5mxJcm4QfqqaLJ3dW6AqHJjGZfGB8cB47Ul5STQargeRSWP
	6/UOQfxRMOTK+NaCEQ+GuYV/2VcaxE8yOHoPOqbkWrc2XUM+BsqbzaOY2tevrmTNd+4M
	0kuQ==
X-Gm-Message-State: ALoCoQkSZEfLbpMorRdfnrELXyBVGtIX9r5mKdg2t7R4UH+WdS/yb0QkflyURzG7i150Uf5zb2EF
X-Received: by 10.55.21.12 with SMTP id f12mr160700qkh.40.1425033341149; Fri,
	27 Feb 2015 02:35:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Fri, 27 Feb 2015 02:35:20 -0800 (PST)
In-Reply-To: <E0AAEDF37958A64591322A370796C7897B5D7A@post>
References: <E0AAEDF37958A64591322A370796C7897B5D7A@post>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 27 Feb 2015 10:35:20 +0000
Message-ID: <CAJTo0LaF-sML4iWw23=XTJ=SjABT=eZQx8shVMqdfWKy52tycQ@mail.gmail.com>
To: Rickard Bremer <rickard.bremer@tritech.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-lxcbench
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
X-List-Received-Date: Fri, 27 Feb 2015 10:35:44 -0000
Content-Type: multipart/alternative; boundary=001a1147f3f417d2d705100f6efe

--001a1147f3f417d2d705100f6efe
Content-Type: text/plain; charset=UTF-8

Hi Rickard,

This must be a very old layer, these syntax changes were made a long time
ago...

On 27 February 2015 at 09:22, Rickard Bremer <rickard.bremer@tritech.se>
wrote:

> ERROR: There is a confusing multiline, partially commented expression on
> line 27 of file /home/rickardb/poky/lxcbench/meta-lxcbench/recipes-misc/lxc/
> lxc_0.8.0-rc1.bb ().
>
> Please clarify whether this is all a comment or should be parsed.
>
>
You've a line that looks like this

# This is a comment \
Is this?

As you can see that's ambiguous so the parser takes the hardline approach
of banning that syntax.  The solution here is to delete the trailing
backslash.

ERROR: QA Issue:
> /home/rickardb/poky/lxcbench/meta-lxcbench/recipes-misc/lxcbench-test/
> lxcbench-test.bb: Variable RDEPENDS is set as not being package specific,
> please fix this. [pkgvarcheck]
>

RDEPENDS without specifying a package means that all packages have the
RDEPENDS, which is 99.9% of the time the wrong thing to do.  Change to
RDEPENDS_${PN}.

Ross

--001a1147f3f417d2d705100f6efe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Rickard,</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">This must be a very old l=
ayer, these syntax changes were made a long time ago...</div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On 27 February 2015 at 09:22, R=
ickard Bremer <span dir=3D"ltr">&lt;<a href=3D"mailto:rickard.bremer@tritec=
h.se" target=3D"_blank">rickard.bremer@tritech.se</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><p class=3D"MsoNormal"><span lang=3D"EN-US">=
ERROR: There is a confusing multiline, partially commented expression on li=
ne 27 of file /home/rickardb/poky/lxcbench/meta-lxcbench/recipes-misc/lxc/<=
a href=3D"http://lxc_0.8.0-rc1.bb" target=3D"_blank">lxc_0.8.0-rc1.bb</a> (=
).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Please clarify whether this is =
all a comment or should be parsed.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"></span></p></blockquote><div><b=
r></div><div>You&#39;ve a line that looks like this</div><div><br></div><di=
v># This is a comment \</div><div>Is this?</div><div><br></div><div>As you =
can see that&#39;s ambiguous so the parser takes the hardline approach of b=
anning that syntax.=C2=A0 The solution here is to delete the trailing backs=
lash.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">ERROR: QA Issue: /home/rickardb/poky/lxcbench/met=
a-lxcbench/recipes-misc/lxcbench-test/<a href=3D"http://lxcbench-test.bb" t=
arget=3D"_blank">lxcbench-test.bb</a>: Variable RDEPENDS is set as not bein=
g package specific, please fix this. [pkgvarcheck]</span></p></blockquote><=
/div><br>RDEPENDS without specifying a package means that all packages have=
 the RDEPENDS, which is 99.9% of the time the wrong thing to do.=C2=A0 Chan=
ge to RDEPENDS_${PN}.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a1147f3f417d2d705100f6efe--
