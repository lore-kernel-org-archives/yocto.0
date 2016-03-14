Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A906E00D67; Mon, 14 Mar 2016 15:58:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
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
	*      [209.85.218.48 listed in list.dnswl.org]
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97261E00D61
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 15:58:55 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id d205so145733689oia.0
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 15:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=3n5ob20tJ4aGIghDmOWfaNRofJwejM1vxwlMePmCHnQ=;
	b=m/DAiDhvoANY+O9gzPAUppnWxTB6+9YXClzKHOUvLsxRDOz4XmJbU41kDsbUeHCGmY
	3KpKY02LzpuYg2tT9Jyyl3FKWDDwcv5hyC2x8GX2xiX7UrWe6aQyArskt3u6GnceZqvo
	v/35OuqAgSou5gHOhJkRyiQD4wZCSkVQYmAThgGRlTAwS6sM/n9C89EpLTOp/+QXyBgi
	VLUq7j9yBHDyA4nB1gINbiAi9cnCAURX01E+YIVoVV0v7JGn/0u+v1a+UHc5fYHLNMNF
	jL/+TgER/bMd2kQzPFIAXiRuAxnfrnaa09ndID1AAzYcOgh1qZ25EdfRJHfESgxKJ712
	55Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=3n5ob20tJ4aGIghDmOWfaNRofJwejM1vxwlMePmCHnQ=;
	b=SAT0BezLAbJq4KiEmKERIF2DhzIjslgO0dp5sA9heOfK5kw863GDnRXlZfkcSxjj+Z
	WLh5iIehqHDfp9WYwvNBRF4aZrotU0ATDichAdeHaqGHAq/5Iow1fv+R0WCygdmfaKto
	8Ksc0ieF4W/6tScwqZOeYTgU+SceiGTLn59McbbQeg0t7f62gQejPE+6zVM/tMUvsL/W
	sj3nOJ2QxA/yUi9yVFHskyD++TzdK1B+poazu4ZVIaKS0uuEnK+LPPdBRRkGQvGbSz1A
	xQYxrlbkXVA13u7f+iMM6YOL/ThLp6k6aP0XzvDl7fr6HcoqSvy5voF90bYegG21pTyx
	lDXw==
X-Gm-Message-State: AD7BkJJ81+HRCOr3nyA0u3JL7UnaTgnYusxd7rhTyz33rwQtUa3+zrYhBmHBXwHtym2bdbWPGw9MAdkFRZHO9w==
MIME-Version: 1.0
X-Received: by 10.202.104.204 with SMTP id o73mr15014791oik.18.1457996334727; 
	Mon, 14 Mar 2016 15:58:54 -0700 (PDT)
Received: by 10.76.74.197 with HTTP; Mon, 14 Mar 2016 15:58:54 -0700 (PDT)
In-Reply-To: <658fd98c-9dd9-a98e-a597-f86ef61582aa@noir.com>
References: <56E64947.5020606@mlbassoc.com>
	<CAMKF1sr3DgBbiAHAb0GngGDZeN-LUhFWH0s7bQ+zm2iYD-EaDA@mail.gmail.com>
	<658fd98c-9dd9-a98e-a597-f86ef61582aa@noir.com>
Date: Mon, 14 Mar 2016 15:58:54 -0700
Message-ID: <CAEKp-abbXs5DNuW5KZD_wdFWCYwccBLksXjBJ1dUCAK6Lw6rWg@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: K Richard Pixley <rich@noir.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 22:58:59 -0000
Content-Type: multipart/alternative; boundary=001a114087aa9d8b9f052e0a398e

--001a114087aa9d8b9f052e0a398e
Content-Type: text/plain; charset=UTF-8

Richard,

On Mon, Mar 14, 2016 at 1:55 PM, K Richard Pixley <rich@noir.com> wrote:

> If I add that line, (
>
> IMAGE_FSTYPES = "vmdk"
>
> ), to my local.conf, I get:
>
> rich@burgess> time bitbake core-image-minimal
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Error, IMAGE_FSTYPES vmdk and live can't be built together
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Building yocto-2.0 for genericx86-64.  What am I doing wrong?
>
> Nothing really. The issue is conflicting SYSLINUX_LABELS for the boot
options. For the live image the labels are boot and install while there is
only boot for the vmdk image. Prior to 2.0 Jethro you could specify both,
live and vmdk, in IMAGE_FSTYPES. It built both but the live image was
missing the install boot option (it had two boot options instead). This
function in syslinux.bbclass now flags the issue:

# Some of the vars for vm and live image are conflicted, this function
# is used for fixing the problem.
def syslinux_set_vars(d, suffix):
   vars = ['SYSLINUX_ROOT', 'SYSLINUX_CFG', 'LABELS', 'INITRD']
   for var in vars:
       var_with_suffix = var + '_' + suffix
       if d.getVar(var, True):
           bb.warn('Found potential conflicted var %s, please use %s rather
than %s' % \
               (var, var_with_suffix, var))
       elif d.getVar(var_with_suffix, True):
           d.setVar(var, d.getVar(var_with_suffix, True))


 Technically, in my opinion, you should be able to build both at the same
time. You may want to disable the sanity checker.

Cheers,
Rudi

--001a114087aa9d8b9f052e0a398e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Richard,<br><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Mon, Mar 14, 2016 at 1:55 PM, K Richard Pixley <span dir=3D"=
ltr">&lt;<a href=3D"mailto:rich@noir.com" target=3D"_blank">rich@noir.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);b=
order-left-style:solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    If I add that line, (
    <pre>IMAGE_FSTYPES =3D &quot;vmdk&quot;</pre>
    ), to my local.conf, I get:<br>
    <blockquote><tt>rich@burgess&gt; time bitbake core-image-minimal</tt><b=
r>
      <tt>ERROR:=C2=A0 OE-core&#39;s config sanity checker detected a poten=
tial
        misconfiguration.</tt><br>
      <tt>=C2=A0=C2=A0=C2=A0 Either fix the cause of this error or at your =
own risk
        disable the checker (see sanity.conf).</tt><br>
      <tt>=C2=A0=C2=A0=C2=A0 Following is the list of potential problems / =
advisories:</tt><br>
      <br>
      <tt>=C2=A0=C2=A0=C2=A0 Error, IMAGE_FSTYPES vmdk and live can&#39;t b=
e built together</tt><br>
      <br>
      <br>
      <tt>Summary: There was 1 ERROR message shown, returning a non-zero
        exit code.</tt><br>
    </blockquote>
    Building yocto-2.0 for genericx86-64.=C2=A0 What am I doing wrong?<br>
    <br></div></blockquote><div>Nothing really. The issue is conflicting SY=
SLINUX_LABELS for the boot options. For the live image the labels are boot =
and install while there is only boot for the vmdk image. Prior to 2.0 Jethr=
o you could specify both, live and vmdk, in IMAGE_FSTYPES. It built both bu=
t the live image was missing the install boot option (it had two boot optio=
ns instead). This function in syslinux.bbclass now flags the issue:</div><d=
iv><br></div><div><span style=3D"font-family:monospace"><span style=3D"colo=
r:rgb(24,24,178)"># Some of the vars for vm and live image are conflicted, =
this function</span><span style=3D"color:rgb(0,0,0)">
</span><br><span style=3D"color:rgb(24,24,178)"># is used for fixing the pr=
oblem.</span><span style=3D"color:rgb(0,0,0)">
</span><br>def syslinux_set_vars(d, suffix):
<br> =C2=A0=C2=A0=C2=A0vars =3D [<span style=3D"color:rgb(178,24,24)">&#39;=
SYSLINUX_ROOT&#39;</span><span style=3D"color:rgb(0,0,0)">, </span><span st=
yle=3D"color:rgb(178,24,24)">&#39;SYSLINUX_CFG&#39;</span><span style=3D"co=
lor:rgb(0,0,0)">, </span><span style=3D"color:rgb(178,24,24)">&#39;</span><=
span style=3D"color:rgb(178,24,24);background-color:rgb(255,255,84)">LABELS=
</span><span style=3D"color:rgb(178,24,24)">&#39;</span><span style=3D"colo=
r:rgb(0,0,0)">, </span><span style=3D"color:rgb(178,24,24)">&#39;INITRD&#39=
;</span><span style=3D"color:rgb(0,0,0)">]
</span><br> =C2=A0=C2=A0=C2=A0for var in vars:
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0var_with_suffix =3D var + <s=
pan style=3D"color:rgb(178,24,24)">&#39;_&#39;</span><span style=3D"color:r=
gb(0,0,0)"> + suffix
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if d.getVar(var, True=
):
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bb.w=
arn(<span style=3D"color:rgb(178,24,24)">&#39;Found potential conflicted va=
r %s, please use %s rather than %s&#39;</span><span style=3D"color:rgb(0,0,=
0)"> % \
</span><br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0(var, var_with_suffix, var))
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0elif d.getVar(var_with_suffi=
x, True):
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0d.se=
tVar(var, d.getVar(var_with_suffix, True))
<br><br>
<br></span></div><div>=C2=A0Technically, in my opinion, you should be able =
to build both at the same time. You may want to disable the sanity checker.=
<br></div><div><br></div><div>Cheers,</div><div>Rudi</div><div>=C2=A0</div>=
</div>
</div></div>

--001a114087aa9d8b9f052e0a398e--
