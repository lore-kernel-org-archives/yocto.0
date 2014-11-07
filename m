Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDBF7E00901; Fri,  7 Nov 2014 06:15:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62803E00863
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 06:15:12 -0800 (PST)
Received: by mail-oi0-f41.google.com with SMTP id e131so2421678oig.14
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 06:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zFYD4qJ+x7nidfgaQP/TleS9xrkKziFZOoWnZDuJYcA=;
	b=TFP045bGP1cvzeXPg0IG/1BMmOlWZRheFXDlECcwKQG15fbHjwKsQUrkJSxDmAGy2F
	UvuWk5dTvopEgBFGaWbGnCt68puLeahz/dIxoVujULZjHISRAh5/QWbduzblJYRrLdwZ
	6IcrKoUFjepnByCY4esY3Fbs+XitkjRDgNITV/f9GQccBFShp0sWfQG5RuoyoL20f6l8
	A/P1S1ybknNACRbehh4O2/LL6uMGN5Y3m62nVvXO2XoaJ8yMCcX4O+TxdKh3NGx6zQXa
	MGqlBHEryeVS8bMj+eKWWAr1tnavbjIpwagxtk5SNApkOw7ccxfj8WpZkIVmLTEb4Svl
	d7Uw==
MIME-Version: 1.0
X-Received: by 10.182.79.41 with SMTP id g9mr9701248obx.14.1415369711784; Fri,
	07 Nov 2014 06:15:11 -0800 (PST)
Received: by 10.60.162.240 with HTTP; Fri, 7 Nov 2014 06:15:11 -0800 (PST)
In-Reply-To: <4884585.vGdbtxCfvM@peggleto-mobl5.ger.corp.intel.com>
References: <2C73D3E46744804E888EDCCD6FBE4FD089616794EE@SAFEX1MAIL5.st.com>
	<4884585.vGdbtxCfvM@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 7 Nov 2014 09:15:11 -0500
Message-ID: <CAFZh4h-zJTipBBsyGbFpvF6OY0fEdevNNgTdu=VPMLh74jk=iQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build issue with daisy branch
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
X-List-Received-Date: Fri, 07 Nov 2014 14:15:24 -0000
Content-Type: multipart/alternative; boundary=047d7b2e468ae599f60507457090

--047d7b2e468ae599f60507457090
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Nov 7, 2014 at 9:05 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Thursday 06 November 2014 16:01:44 Pierre Yves MORDRET wrote:
> > Recently I came across a build issue when using daisy branch.
> >
> >    ports/linux/xattr/portdefs.h:1:24: fatal error: attr/xattr.h: No such
> > file or directory #include <attr/xattr.h>
> >
> >     ERROR: Function failed: do_compile (log file is located at
> >
> .../tmp-eglibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-pseudo/1.6.2-r0/
> > temp/log.do_compile.26354)
> >
> > I saw an upgrade in daisy branch related to pseudo.
> > Do you know which package is supposed to provide "attr/xattr.h"
>
> This has been subsequently fixed in the daisy branch - if you pull again
> you
> should get the fix.
>
> Cheers,
> Paul
>
>
>
I too noticed something strange in my first dizzy build.  I stole a line
from my previous local.conf:

 IMAGE_FSTYPES ?= "jffs2 ubi tar.bz2"

... and the build failed with all kinds of ubi related errors.

Regards,

Brian

--047d7b2e468ae599f60507457090
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Nov 7, 2014 at 9:05 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"=
mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux=
.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><span class=3D"">On Th=
ursday 06 November 2014 16:01:44 Pierre Yves MORDRET wrote:<br>
&gt; Recently I came across a build issue when using daisy branch.<br>
&gt;<br>
&gt;=A0 =A0 ports/linux/xattr/portdefs.h:1:24: fatal error: attr/xattr.h: N=
o such<br>
&gt; file or directory #include &lt;attr/xattr.h&gt;<br>
&gt;<br>
&gt;=A0 =A0 =A0ERROR: Function failed: do_compile (log file is located at<b=
r>
&gt; .../tmp-eglibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-pseudo/1.6.=
2-r0/<br>
&gt; temp/log.do_compile.26354)<br>
&gt;<br>
&gt; I saw an upgrade in daisy branch related to pseudo.<br>
&gt; Do you know which package is supposed to provide &quot;attr/xattr.h&qu=
ot;<br>
<br>
</span>This has been subsequently fixed in the daisy branch - if you pull a=
gain you<br>
should get the fix.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D""><font color=3D"#888888"><br></font></span><div class=3D"">=
<div class=3D"h5"><br></div></div></blockquote><div><br></div><div>I too no=
ticed something strange in my first dizzy build.=A0 I stole a line from my =
previous local.conf:</div><div><br></div><div>=A0IMAGE_FSTYPES ?=3D &quot;j=
ffs2 ubi tar.bz2&quot;</div><div><br></div><div>... and the build failed wi=
th all kinds of ubi related errors.</div><div><br></div><div>Regards,</div>=
<div><br></div><div>Brian</div><div><br></div></div><br></div></div>

--047d7b2e468ae599f60507457090--
