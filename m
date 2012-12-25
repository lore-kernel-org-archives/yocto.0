Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC0FEE011CC
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 09:57:02 -0800 (PST)
Received: by mail-la0-f44.google.com with SMTP id d3so9893933lah.31
	for <yocto@yoctoproject.org>; Tue, 25 Dec 2012 09:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kwww46FbrzVsVznizUzMcA2tRKD7jRNa5dTa6CDUW2k=;
	b=AyzkLzioMclcDH33UrZhI7xyybNwkUDJXJSkbzIcYIPPjUtQtxPUi8Jl3H2uN4+/gv
	hDSpgUuYa9/Ro3LCqg4tapvBhbwBev0gCHCwEfMExxlt41qFgPfEvmKqvWWHd+w+9s9s
	bkQMs+BcWdTL8q+HYEJ6Z+mlijklABW0HdvYHdYNJvX4/boHo2CsZUE7u3Z/2SE8sHIK
	rad7PS12ZueZ2y9wkxVLdpyj3AqiH1KzL13qxRjU6ylJcfVaUeoOdCLHC1tGIepSJd7K
	l0/ARQR2VAEo+uzNmKy4fTumOGpBJ4kDZ5VQfs1TlTFVxB1nbGTmng/shxC2dXat+zC3
	sd+Q==
MIME-Version: 1.0
Received: by 10.112.54.6 with SMTP id f6mr10095410lbp.71.1356458220867; Tue,
	25 Dec 2012 09:57:00 -0800 (PST)
Received: by 10.112.127.35 with HTTP; Tue, 25 Dec 2012 09:57:00 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212250658420.8700@oneiric>
References: <alpine.DEB.2.02.1212250658420.8700@oneiric>
Date: Tue, 25 Dec 2012 13:57:00 -0400
Message-ID: <CADkTA4Nyo0Yh9rnjtkWLsjYQ64vf3GVS7Pt+dr=om9K_pUDorg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: where does one send patches for auxiliary stuff like kern tools?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Dec 2012 17:57:03 -0000
Content-Type: multipart/alternative; boundary=bcaec554007068515304d1b10a15

--bcaec554007068515304d1b10a15
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Dec 25, 2012 at 9:17 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>   as i celebrate christmas by clawing my way thru the code, i run
> across pedantic nitpickery like this:
>

I'm pretty sure if you dig in your email archives, you'll see me asking you
to
cc' me directly on anything linux-yocto or kern-tools, since they are both
areas that I develop and maintain :)

So send them to me, I'll queue them and send changes out with my yocto
1.4 pull requests.

Cheers,

Bruce


>
> diff --git a/tools/updateme b/tools/updateme
> index 5998820..56c034a 100755
> --- a/tools/updateme
> +++ b/tools/updateme
> @@ -199,7 +199,7 @@ migrate_cfg() {
>         scc_files=`find $meta_dir/cfg/scratch/obj/$dirname -maxdepth 1
> -type f -name *.scc`
>         b=`basename $c`
>
> -       # check to see if a .scc file already includes the fragement
> +       # check to see if a .scc file already includes the fragment
>         gen_feature=
>         if [ -n "$scc_files" ]; then
>                 grep $b $scc_files -q
>
>
>   where does one send patches to things like kern tools?  i can
> collect more before bundling it all together as a single submission.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--bcaec554007068515304d1b10a15
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Dec 25, 2012 at 9:17 AM, Robert P. J. Day <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@cras=
hcourse.ca</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
=A0 as i celebrate christmas by clawing my way thru the code, i run<br>
across pedantic nitpickery like this:<br></blockquote><div><br></div><div s=
tyle>I&#39;m pretty sure if you dig in your email archives, you&#39;ll see =
me asking you to</div><div style>cc&#39; me directly on anything linux-yoct=
o or kern-tools, since they are both=A0</div>
<div style>areas that I develop and maintain :)</div><div style><br></div><=
div style>So send them to me, I&#39;ll queue them and send changes out with=
 my yocto</div><div style>1.4 pull requests.</div><div style><br></div>
<div style>Cheers,</div><div style><br></div><div style>Bruce</div><div>=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
<br>
diff --git a/tools/updateme b/tools/updateme<br>
index 5998820..56c034a 100755<br>
--- a/tools/updateme<br>
+++ b/tools/updateme<br>
@@ -199,7 +199,7 @@ migrate_cfg() {<br>
=A0 =A0 =A0 =A0 scc_files=3D`find $meta_dir/cfg/scratch/obj/$dirname -maxde=
pth 1 -type f -name *.scc`<br>
=A0 =A0 =A0 =A0 b=3D`basename $c`<br>
<br>
- =A0 =A0 =A0 # check to see if a .scc file already includes the fragement<=
br>
+ =A0 =A0 =A0 # check to see if a .scc file already includes the fragment<b=
r>
=A0 =A0 =A0 =A0 gen_feature=3D<br>
=A0 =A0 =A0 =A0 if [ -n &quot;$scc_files&quot; ]; then<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 grep $b $scc_files -q<br>
<br>
<br>
=A0 where does one send patches to things like kern tools? =A0i can<br>
collect more before bundling it all together as a single submission.<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Thou s=
halt not follow the NULL pointer, for chaos and madness await thee at its e=
nd&quot;
</div></div>

--bcaec554007068515304d1b10a15--
