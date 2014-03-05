Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13F15E00A3D
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 06:02:21 -0800 (PST)
Received: by mail-vc0-f169.google.com with SMTP id hq11so1040030vcb.14
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 06:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=ZaRZyMiH4VSGTMqHE0O5GpVxuxTPQZeyhSYUlhAq5bY=;
	b=pxL92xPJ+sLaGhv9TLg4/ar9TWRCx30RxWYrbzJuAe24yZgJd8W+jtKrSGa/0KcABd
	NSwr3tTSkpFKKVW9hX09rh2ScZ9ynPLOzkZAdSsn4qKqQGBfn/JTahSqd+oGvie5r8A7
	7klt5UtUfliDhtAde4vd93nd6ke70mshRwXe3Ldh4DuGsO72YZXuwEFIaptQYR5hskzt
	Tl/iopj7rqEnF+gmwqfrO47lRLXiEyxB/h2ktHLOUhp8NjoRGDWzVXQ8ariYggn9Nypk
	YIG91I3sqvHI213MLnxF+pRAvwesaJ7Q8bg3Ber7E0Vilf8VuXs+OqibwTBLb/zYWCbv
	O01w==
MIME-Version: 1.0
X-Received: by 10.221.37.1 with SMTP id tc1mr216648vcb.32.1394028140625; Wed,
	05 Mar 2014 06:02:20 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Wed, 5 Mar 2014 06:02:20 -0800 (PST)
In-Reply-To: <1587540.foosnhxu1K@peggleto-mobl5.ger.corp.intel.com>
References: <CAA7h+Ep__sbmST0ppgTrWYv5HQeOxTyRGj2tHGKNYSVaK5xMHA@mail.gmail.com>
	<1587540.foosnhxu1K@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 5 Mar 2014 07:02:20 -0700
Message-ID: <CAA7h+EqfB6eeWbw0zaBB8dFZDxPKYTQtXHc+pDjsT4gApUx_CQ@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling errors
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
X-List-Received-Date: Wed, 05 Mar 2014 14:02:22 -0000
Content-Type: multipart/alternative; boundary=001a11334c3821037d04f3dc7840

--001a11334c3821037d04f3dc7840
Content-Type: text/plain; charset=ISO-8859-1

Paul,
That is exactly what I needed to know.

Thanks,
Rick


On Wed, Mar 5, 2014 at 3:44 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> Hi Rick,
>
> On Tuesday 04 March 2014 21:50:24 Rick Bianchi wrote:
> > I get the following errors while trying to compile:
> >
> > Error: autogen-native not found in the base feeds (overo armv7a-vfp-neon
> > armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 armv4
> > arm noarch any all).
> >
> > When I do a bitbake -s | grep autogen-native it shows up.
> >
> > I am also getting the same error for dhcp recipe.
>
> Based on the error, what you're talking about here are not recipes - these
> are
> *packages* you're adding to IMAGE_INSTALL, is that correct?
>
> Anything with -native at the end is a recipe that is intended to build for
> the
> build host, so it wouldn't make sense to add "autogen-native" to a list of
> packages to be installed into an image for the target. The equivalent
> package
> name for the target would be simply "autogen", except no recipe producing
> this
> target package exists (there is only autogen-native). If you really need
> autogen for the target you're going to have to write (or adapt) a recipe
> for
> it yourself.
>
> The dhcp case is different - the "dhcp" package is actually empty and thus
> a
> package file for it is never produced; the reason it is empty is that the
> server and client portions are packaged separately in dhcp-server and
> dhcp-client packages respectively, so you'll need to decide which of these
> you
> want and specify those to be installed instead.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11334c3821037d04f3dc7840
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Paul,<div style>That is exactly what I needed to know.</di=
v><div style><br></div><div style>Thanks,</div><div style>Rick</div></div><=
div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Mar 5,=
 2014 at 3:44 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:pau=
l.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com=
</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Rick,<br>
<div><div class=3D"h5"><br>
On Tuesday 04 March 2014 21:50:24 Rick Bianchi wrote:<br>
&gt; I get the following errors while trying to compile:<br>
&gt;<br>
&gt; Error: autogen-native not found in the base feeds (overo armv7a-vfp-ne=
on<br>
&gt; armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 ar=
mv4<br>
&gt; arm noarch any all).<br>
&gt;<br>
&gt; When I do a bitbake -s | grep autogen-native it shows up.<br>
&gt;<br>
&gt; I am also getting the same error for dhcp recipe.<br>
<br>
</div></div>Based on the error, what you&#39;re talking about here are not =
recipes - these are<br>
*packages* you&#39;re adding to IMAGE_INSTALL, is that correct?<br>
<br>
Anything with -native at the end is a recipe that is intended to build for =
the<br>
build host, so it wouldn&#39;t make sense to add &quot;autogen-native&quot;=
 to a list of<br>
packages to be installed into an image for the target. The equivalent packa=
ge<br>
name for the target would be simply &quot;autogen&quot;, except no recipe p=
roducing this<br>
target package exists (there is only autogen-native). If you really need<br=
>
autogen for the target you&#39;re going to have to write (or adapt) a recip=
e for<br>
it yourself.<br>
<br>
The dhcp case is different - the &quot;dhcp&quot; package is actually empty=
 and thus a<br>
package file for it is never produced; the reason it is empty is that the<b=
r>
server and client portions are packaged separately in dhcp-server and<br>
dhcp-client packages respectively, so you&#39;ll need to decide which of th=
ese you<br>
want and specify those to be installed instead.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a11334c3821037d04f3dc7840--
