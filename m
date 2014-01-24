Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9B2E00893
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 05:46:02 -0800 (PST)
Received: by mail-ob0-f182.google.com with SMTP id wm4so3583495obc.41
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 05:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=A20WD+Q9NcKgKhLrVyXpZfepakF/WYRboZb4F9dovqQ=;
	b=heWAWdPn4k+1UVOflWZjLni/t8l8YM3aGOObOlzWPOn9DNzltxiJY/kyNpdfWBPnAt
	IptXpQsVRAQq0n4wOStaaypgccE/O7pcYArM21iypw70kIOr+dZ0A0kSHGIGO7uRW2er
	YGoboArgn+TrmOVq2DyrKNW39k1CnDt+gXaVEuU/+ggC1Of5aXUQnChsZQkm2XitA+WF
	Of97kKrBebE3hX3/axgtSw6KjpixXZsel6lZVt7owKBiJDlFq3sjdr7vz7m4JqnARqHV
	ayULDgD80RVY76Ibz3xbaX1GSrQB70L4Tzqkusl+ksRQuiptONoX3aTh38/rygQ4Lara
	5Gwg==
MIME-Version: 1.0
X-Received: by 10.182.113.195 with SMTP id ja3mr12479432obb.46.1390571162135; 
	Fri, 24 Jan 2014 05:46:02 -0800 (PST)
Received: by 10.60.94.114 with HTTP; Fri, 24 Jan 2014 05:46:02 -0800 (PST)
In-Reply-To: <CF07F9D1.3B9E2%belen.barros.pena@intel.com>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
	<CAALGJZYWh+7D7C7FKxgWM+FAfhSDA9b4utGANj12bNd7t0aw6Q@mail.gmail.com>
	<CAFZh4h8D1y9-bkr3dM7Z_30FGu=8iUA8u7xMMdO3yquXR_Qbng@mail.gmail.com>
	<CAP71Wjypm1yPcwiEktKH=bN6fUCLtycaPQxNkdF3NbZyUethrw@mail.gmail.com>
	<CF07F9D1.3B9E2%belen.barros.pena@intel.com>
Date: Fri, 24 Jan 2014 08:46:02 -0500
Message-ID: <CAFZh4h9J7qjXvHD2esvgRLQwEBqYM_Ha5LkBScmo1hcXG=hMiQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Fri, 24 Jan 2014 13:46:03 -0000
Content-Type: multipart/alternative; boundary=089e013d0db027720804f0b79408

--089e013d0db027720804f0b79408
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 24, 2014 at 6:10 AM, Barros Pena, Belen <
belen.barros.pena@intel.com> wrote:

>
>
> On 23/01/2014 21:09, "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
> wrote:
>
> >On Thu, Jan 23, 2014 at 9:42 PM, Brian Hutchinson <b.hutchman@gmail.com>
> >wrote:
> >> Yes, but:
> >>
> >> 1.  I don't think package-index is image specific ... its just a list =
of
> >> everything that has been bitbaked on the box (which doesn't equate to
> >>one
> >> particular image ... it's the net of all the packages from all the
> >>images
> >> that have been built thus far if I'm not mistaken ... it main use is s=
o
> >>the
> >> feeds work and the the target know what packages are available).
> >> 2.  I felt like this was probably something common and a way already
> >>existed
> >> so I thought I should ask in case I missed something before I wasted
> >>time
> >> re-inventing the wheel.
> >>
> >> Based on the responses so far ... it looks like this might not be as
> >>common
> >> a request as I thought!
> >>
> >
> >no. i think it is very common, and it's the purpose of 'buildhistory',
> >as mentioned already. for each image generated, you will get (among
> >other things)
> >
> >installed-package-names.txt
> >installed-package-sizes.txt
> >installed-packages.txt
> >
> >list of all packages with version, sizes, ..
>
> I know this will not help, since we are still building Toaster. But is it
> something like this
>
> http://www.yoctoproject.org/toaster/image-information-packages.html
>
> you are thinking of? I would be interested in hearing if this would give
> you what you need.
>
>
Hi Bel=E9n,

That is VERY nice!  I like it.  I'm looking for something a bit simpler
though ... just want to be able to have a text file with the package names
and their versions that we can either include as a file or copy paste in
our release notes since we have to keep up with this (and license info.)
for every release we do.

How did you generate the html for that?  Looks like buildhistory is what I
need to be looking into from the responses so far.

Regards,

Brian

--089e013d0db027720804f0b79408
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jan 24, 2014 at 6:10 AM, Barros Pena, Belen <span dir=3D"ltr">&lt;<=
a href=3D"mailto:belen.barros.pena@intel.com" target=3D"_blank">belen.barro=
s.pena@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 23/01/2014 21:09, &quot;Nicolas Dechesne&quot; &lt;<a href=3D"mailto:nic=
olas.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>&gt;<br>
wrote:<br>
<div><div class=3D"h5"><br>
&gt;On Thu, Jan 23, 2014 at 9:42 PM, Brian Hutchinson &lt;<a href=3D"mailto=
:b.hutchman@gmail.com">b.hutchman@gmail.com</a>&gt;<br>
&gt;wrote:<br>
&gt;&gt; Yes, but:<br>
&gt;&gt;<br>
&gt;&gt; 1. =A0I don&#39;t think package-index is image specific ... its ju=
st a list of<br>
&gt;&gt; everything that has been bitbaked on the box (which doesn&#39;t eq=
uate to<br>
&gt;&gt;one<br>
&gt;&gt; particular image ... it&#39;s the net of all the packages from all=
 the<br>
&gt;&gt;images<br>
&gt;&gt; that have been built thus far if I&#39;m not mistaken ... it main =
use is so<br>
&gt;&gt;the<br>
&gt;&gt; feeds work and the the target know what packages are available).<b=
r>
&gt;&gt; 2. =A0I felt like this was probably something common and a way alr=
eady<br>
&gt;&gt;existed<br>
&gt;&gt; so I thought I should ask in case I missed something before I wast=
ed<br>
&gt;&gt;time<br>
&gt;&gt; re-inventing the wheel.<br>
&gt;&gt;<br>
&gt;&gt; Based on the responses so far ... it looks like this might not be =
as<br>
&gt;&gt;common<br>
&gt;&gt; a request as I thought!<br>
&gt;&gt;<br>
&gt;<br>
&gt;no. i think it is very common, and it&#39;s the purpose of &#39;buildhi=
story&#39;,<br>
&gt;as mentioned already. for each image generated, you will get (among<br>
&gt;other things)<br>
&gt;<br>
&gt;installed-package-names.txt<br>
&gt;installed-package-sizes.txt<br>
&gt;installed-packages.txt<br>
&gt;<br>
&gt;list of all packages with version, sizes, ..<br>
<br>
</div></div>I know this will not help, since we are still building Toaster.=
 But is it<br>
something like this<br>
<br>
<a href=3D"http://www.yoctoproject.org/toaster/image-information-packages.h=
tml" target=3D"_blank">http://www.yoctoproject.org/toaster/image-informatio=
n-packages.html</a><br>
<br>
you are thinking of? I would be interested in hearing if this would give<br=
>
you what you need.<br>
<br></blockquote></div><br></div><div class=3D"gmail_extra">Hi Bel=E9n,<br>=
<br></div><div class=3D"gmail_extra">That is VERY nice!=A0 I like it.=A0 I&=
#39;m looking for something a bit simpler though ... just want to be able t=
o have a text file with the package names and their versions that we can ei=
ther include as a file or copy paste in our release notes since we have to =
keep up with this (and license info.) for every release we do.<br>
<br></div><div class=3D"gmail_extra">How did you generate the html for that=
?=A0 Looks like buildhistory is what I need to be looking into from the res=
ponses so far.<br></div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">
Regards,<br><br>Brian<br><br></div></div>

--089e013d0db027720804f0b79408--
