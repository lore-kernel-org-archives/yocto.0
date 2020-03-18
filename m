Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.17644.1584544593716649570
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 08:16:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a58GnWGB;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: easmith5555@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id h18so4670370ioh.7
        for <yocto@lists.yoctoproject.org>; Wed, 18 Mar 2020 08:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6MiDiGZTsoaja9h1XpokoP2PT9YVb4HAsUxUQ/GDxs4=;
        b=a58GnWGB1zmVM2Q7vkh35MHDieS+dC8UMW5ujJ/M7JzRSDk+rVv0zeH2q3M/O3OnJR
         ESPMQsoCDoBtI2iU+iEsPpWouj6p0yNirlF7ktgz/Piqv6fFFk6x0sleyhe8zuI4Lmns
         Sa5CWI2dlcFUlAazvosrDmACz0q4Vo70dAAASU7NAEyILAwhYSSbADzUBM9YdSrxA4Rf
         K1PmlLMfi1DwWv2oEF3s5fOIFsL94Ma/F8M0zYsC0WAIdMiPlXRA7G2CGVVGF9Eg4tIu
         wZyh5ggqGhvYP5BVccpOMebM8lB1HKvQ0p6BnEnUVYby6XH4w6KUY5yBgGTfQHWbQI1B
         rpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6MiDiGZTsoaja9h1XpokoP2PT9YVb4HAsUxUQ/GDxs4=;
        b=gDdD5sJVW2TnWJMqQXWsUVNvpxLEbVmhpmxxzqWeWU8K+RprY7i8YpOD/+bFnx+LY8
         Y18Q9/A76z/HL2tDu+4dA1/8gZE182wXzKvJUi0nZCLNYFCbHyR7XhEdZKlQF7d3OotQ
         As3Q/Wk6GUqk2O4bgSDy0Y8y1Y67N6N7fpE+vpN73F+iyDYjQF9XaFdujnr/vEhx4CLU
         ZWPXi3ME8HAfSYX5xxSj+IYX5aTdypP6RfZEcR+nCRbuixnN6LC7LT54oksAFvEJyX9h
         faQ2FV/WLFx/7tC4tisJqpp/4+oPF3InSKZ85JvEsgY3lszstXb7PppH0KkdQq/CtgXo
         L5Pg==
X-Gm-Message-State: ANhLgQ0uo0EF6ywfRwbMtUpbcg2Jn4fakBllecy5G/EwIY/Sdf31WXnv
	SPL2JRzECWhTJe8Foto139q2jvcH/DjCtWU9cWf8U2TsCkY=
X-Google-Smtp-Source: ADFU+vuglvi9KVlDm995uyuW2Mdtaj47/lkz2JzTX2DFjjpOkHSs6r2BjQdmz4Pb29K+bqtjI16/L/QaxAxk1AiyNIw=
X-Received: by 2002:a6b:ef0f:: with SMTP id k15mr4072073ioh.43.1584544593006;
 Wed, 18 Mar 2020 08:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
 <20200317160443.6pyp7zuonargxrux@qschulz> <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
 <CAGbd71QqDTLU0nAz1aV0FuXQtArCeV2Z65RaTQ3Q7wE2daNE9w@mail.gmail.com>
 <CAAV2bM0ExWhQx8hmnxbCc9jvpM5UHUY0pdqCbsyZQTt3w2KEAA@mail.gmail.com>
 <15FD3752830F21C1.15339@lists.yoctoproject.org> <CAGbd71QQievdwbETfKH7JbeRGHALHhukQkPY4oND36YUen3-Qw@mail.gmail.com>
In-Reply-To: <CAGbd71QQievdwbETfKH7JbeRGHALHhukQkPY4oND36YUen3-Qw@mail.gmail.com>
From: "Emily" <easmith5555@gmail.com>
Date: Wed, 18 Mar 2020 10:16:23 -0500
Message-ID: <CAAV2bM080EARso6YiaoT55h1v_xfwMG3T-ha8DndQu_Wpkn_zw@mail.gmail.com>
Subject: Re: [yocto] How to PROVIDE boost-python
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000098d21e05a122896b"

--00000000000098d21e05a122896b
Content-Type: text/plain; charset="UTF-8"

Hi Laurent -

Unfortunately I don't have full control over the repo that's using
boost_python-mt so I'm not sure I can switch it right now.

I realize this is not a long-term solution, as I'll need to update that
code (and my OS) to python3 soon, but for now I've just copied the boost
recipe from this commit
<https://github.com/openembedded/openembedded-core/commit/ef603f41b5df4772bb598ec9d389dd5f858592af#diff-9c24742c4bfe7eb2853f86cce86b91c6>
to
my own layer, and added a BBMASK to the openembedded-core's boost recipe.
This seems to work, except I get a QA error from the commit I'm using for
the boost recipe now:

ERROR: boost-1.63.0-r1 do_package: QA Issue: boost: Files/directories were
installed but not shipped in any package:
  /usr/lib/libboost_numpy.so.1.63.0
Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.
boost: 1 installed and not shipped files. [installed-vs-shipped]
ERROR: boost-1.63.0-r1 do_package: Fatal QA errors found, failing task.
ERROR: boost-1.63.0-r1 do_package: Function failed: do_package

I found a log
<https://www.yoctoproject.org/irc/%23yocto.2017-03-09.log.html> that
mentions this exact error, and also mentions a patch that fixes it - I've
tried and thus far failed to find that patch. I'm not sure if this will
actually work, but I thought I'd check and see if anyone had any ideas.

Thanks,
Emily

On Tue, Mar 17, 2020 at 5:24 PM Laurent Gauthier <
laurent.gauthier@soccasys.com> wrote:

> Also as Quentin suggested it might be needed to remove the "-mt"
> suffix, but I see it in the do_install() method of the "boost" recipe
> for revision 1.64.
>
> Kind regards, Laurent.
>
> On Tue, Mar 17, 2020 at 11:17 PM Laurent Gauthier via
> Lists.Yoctoproject.Org
> <laurent.gauthier=soccasys.com@lists.yoctoproject.org> wrote:
> >
> > Hi again Emily,
> >
> > You have put your finger on the core issue there.
> >
> > The name of the boost python library which is linked in your
> > "opc-ua-server-gfex" recipe is "boost_python-mt" where it seems that
> > it should be "boost_python3-mt".
> >
> > I guess you should have a look at the CMakeLists.txt of the
> > "opc-ua-server-gfex" software package to see how to switch to linking
> > with "boost_python3-mt" instead as a quick review of the boost recipe
> > seems to reveal no python2 support.
> >
> > Kind Regards, Laurent.
> >
> >
> > On Tue, Mar 17, 2020 at 7:19 PM Emily S <easmith5555@gmail.com> wrote:
> > >
> > > Hi Laurent -
> > >
> > > Thanks for the suggestion. It looks like there are a few packages that
> provide libboost_python3:
> > >
> > > find tmp/work/*/*/*/packages-split -name libboost_python\*
> > >
> tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-dev/usr/lib/libboost_python3.so
> > >
> tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-python/usr/lib/libboost_python3.so.1.64.0
> > >
> tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-staticdev/usr/lib/libboost_python3.a
> > >
> tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_python3.so.1.64.0
> > >
> > > Adding boost-python to RDEPENDS doesn't help, I have tried it before
> also. This sort of made sense to me as I thought RDEPENDS was for run time
> dependencies, but perhaps I have misunderstood.
> > >
> > > I am working with the rocko branch and python2, so perhaps that's the
> problem?
> > >
> > > Thanks,
> > > Emily
> > >
> > >
> > > On Tue, Mar 17, 2020 at 1:02 PM Laurent Gauthier <
> laurent.gauthier@soccasys.com> wrote:
> > >>
> > >> Hi Emily,
> > >>
> > >> To find the solution to your issue in a rational and deterministic way
> > >> we need to start from the error message.
> > >>
> > >> What I understand is that while build recipe "opc-ua-server-gfex" you
> > >> get an error message that says in short "ld: cannot find
> > >> -lboost_python-mt".
> > >>
> > >> Therefore you need to determine which recipe (and which package in
> > >> that recipe) provides the "boost_python-mt" library.
> > >>
> > >> One way to determine this is to run something like this:
> > >>
> > >>     find
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/*/*/*/packages-split
> > >> -name libboost_python\*
> > >>
> > >> This should show you which recipe, and which package produced by that
> > >> recipe has the library you are looking for.
> > >>
> > >> The names of the first-level directories inside "packages-split" are
> > >> packages names.
> > >>
> > >> Based on things you have mentioned in your previous e-mail my guess
> > >> would be that adding an RDEPENDS = "boost-python" should help, but I
> > >> might be wrong.
> > >>
> > >> I hope this will help you move in the right direction.
> > >>
> > >> Kind regards, Laurent.
> > >>
> > >>
> > >> On Tue, Mar 17, 2020 at 6:07 PM Emily <easmith5555@gmail.com> wrote:
> > >> >
> > >> > Hi Quentin -
> > >> >
> > >> > That's what I tried originally! DEPENDS on boost and not
> boost-python gives me the following error when trying to build my original
> recipe:
> > >> >
> > >> >
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> > >> > cannot find -lboost_python-mt
> > >> >
> > >> > So I tried a bunch of other this which also didn't seem to work.
> > >> >
> > >> > Thanks for the response!
> > >> > Emily
> > >> >
> > >> >
> > >> > On Tue, Mar 17, 2020 at 11:04 AM Quentin Schulz <
> quentin.schulz@streamunlimited.com> wrote:
> > >> >>
> > >> >> Hi Emily,
> > >> >>
> > >> >> On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wrote:
> > >> >> > Hi all -
> > >> >> >
> > >> >> > I'm trying to build an opca recipe (
> > >> >> >
> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb
> )
> > >> >> > and it's giving me a build error like:
> > >> >> >
> > >> >> > |
> > >> >> >
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> > >> >> > cannot find -lboost_python-mt
> > >> >> >
> > >> >> > Which seems to indicated I need to add boost-python to my list
> of DEPENDS.
> > >> >> > When I do that I get the error:
> > >> >> >
> > >> >> > ERROR: Nothing PROVIDES 'boost-python' (but
> > >> >> > /local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/opc-ua/
> > >> >> > opc-ua-server-gfex_git.bb DEPENDS on or otherwise requires it).
> Close
> > >> >> > matches:
> > >> >> >   boost RPROVIDES boost-python
> > >> >> >
> > >> >> > I've tried adding PACKAGECONFIG_pn-boost="python" to both my
> local.conf and
> > >> >> > to the image definition as I saw this online, but neither seems
> to work. It
> > >> >> > seems like boost-python is being built (I can see it in the list
> when I run
> > >> >> > oe-pkgdata-utils list-pkgs -p boost) but it doesn't seem to be
> available at
> > >> >> > build for this recipe.
> > >> >> >
> > >> >> > If I remove boost from my list of DEPENDS I get an error about
> that, so
> > >> >> > obviously boost itself is available at build for the original
> recipe. I've
> > >> >> > also tried adding boost-native to DEPENDS, also did not work.
> > >> >> >
> > >> >> > Is there something obvious I'm missing, or some trick to making
> > >> >> > boost-python available at build for this other recipe?
> > >> >> >
> > >> >>
> > >> >> Ok so two things.
> > >> >>
> > >> >> Yes, I'd say you need python in PACKAGECONFIG for boost. However,
> it
> > >> >> seems it's already part of the default value of PACKAGECONFIG, c.f.
> > >> >>
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-support/boost/boost.inc?h=master#n45
> > >> >> so if no bbappend is overriding it, I'd say you're safe. Better
> check
> > >> >> with the version in your layer that it's there.
> > >> >> If you don't want to check manually, try `bitbake -e boost | grep
> -e
> > >> >> "^PACKAGECONFIG="`
> > >> >>
> > >> >> DEPENDS contains only recipes (well, PROVIDES but PROVIDES has the
> name
> > >> >> of the recipe in it at all times) while RDEPENDS_* (usually
> ${PN}*) contains
> > >> >> only packages.
> > >> >>
> > >> >> So you need to DEPENDS on boost, not boost-python. That should be
> enough
> > >> >> hopefully!
> > >> >>
> > >> >> Quentin
> > >> >
> > >> >
> > >>
> > >>
> > >>
> > >> --
> > >> Laurent Gauthier
> > >> Phone: +33 630 483 429
> > >> http://soccasys.com
> >
> >
> >
> > --
> > Laurent Gauthier
> > Phone: +33 630 483 429
> > http://soccasys.com
> > 
>
>
>
> --
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com
>

--00000000000098d21e05a122896b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Laurent -=C2=A0<div><br></div><div>Unfortunately I don&=
#39;t have full control over the repo that&#39;s using boost_python-mt so I=
&#39;m not sure I can switch it right now.=C2=A0</div><div><br></div><div>I=
 realize this is not a long-term solution, as I&#39;ll need to update that =
code (and my OS) to python3 soon, but for now I&#39;ve just copied the boos=
t recipe from <a href=3D"https://github.com/openembedded/openembedded-core/=
commit/ef603f41b5df4772bb598ec9d389dd5f858592af#diff-9c24742c4bfe7eb2853f86=
cce86b91c6">this commit=C2=A0</a>=C2=A0to my own layer, and added a BBMASK =
to the openembedded-core&#39;s boost recipe. This seems to work, except I g=
et a QA error from the commit I&#39;m using for the boost recipe now:</div>=
<div><br></div><div>ERROR: boost-1.63.0-r1 do_package: QA Issue: boost: Fil=
es/directories were installed but not shipped in any package:<br>=C2=A0 /us=
r/lib/libboost_numpy.so.1.63.0<br>Please set FILES such that these items ar=
e packaged. Alternatively if they are unneeded, avoid installing them or de=
lete them within do_install.<br>boost: 1 installed and not shipped files. [=
installed-vs-shipped]<br>ERROR: boost-1.63.0-r1 do_package: Fatal QA errors=
 found, failing task.<br>ERROR: boost-1.63.0-r1 do_package: Function failed=
: do_package<br></div><div><br></div><div>I found <a href=3D"https://www.yo=
ctoproject.org/irc/%23yocto.2017-03-09.log.html">a log</a> that mentions th=
is exact error, and also mentions a patch that fixes it - I&#39;ve tried an=
d thus far failed to find that patch. I&#39;m not sure if this will actuall=
y work, but I thought I&#39;d check and see if anyone had any ideas.=C2=A0<=
/div><div><br></div><div>Thanks,</div><div>Emily</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 17, 202=
0 at 5:24 PM Laurent Gauthier &lt;<a href=3D"mailto:laurent.gauthier@soccas=
ys.com">laurent.gauthier@soccasys.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Also as Quentin suggested it might be =
needed to remove the &quot;-mt&quot;<br>
suffix, but I see it in the do_install() method of the &quot;boost&quot; r=
ecipe<br>
for revision 1.64.<br>
<br>
Kind regards, Laurent.<br>
<br>
On Tue, Mar 17, 2020 at 11:17 PM Laurent Gauthier via<br>
<a href=3D"http://Lists.Yoctoproject.Org" rel=3D"noreferrer" target=3D"_bl=
ank">Lists.Yoctoproject.Org</a><br>
&lt;laurent.gauthier=3D<a href=3D"mailto:soccasys.com@lists.yoctoproject.o=
rg" target=3D"_blank">soccasys.com@lists.yoctoproject.org</a>&gt; wrote:<br=
>
&gt;<br>
&gt; Hi again Emily,<br>
&gt;<br>
&gt; You have put your finger on the core issue there.<br>
&gt;<br>
&gt; The name of the boost python library which is linked in your<br>
&gt; &quot;opc-ua-server-gfex&quot; recipe is &quot;boost_python-mt&quot; =
where it seems that<br>
&gt; it should be &quot;boost_python3-mt&quot;.<br>
&gt;<br>
&gt; I guess you should have a look at the CMakeLists.txt of the<br>
&gt; &quot;opc-ua-server-gfex&quot; software package to see how to switch =
to linking<br>
&gt; with &quot;boost_python3-mt&quot; instead as a quick review of the bo=
ost recipe<br>
&gt; seems to reveal no python2 support.<br>
&gt;<br>
&gt; Kind Regards, Laurent.<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Mar 17, 2020 at 7:19 PM Emily S &lt;<a href=3D"mailto:easmith=
5555@gmail.com" target=3D"_blank">easmith5555@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi Laurent -<br>
&gt; &gt;<br>
&gt; &gt; Thanks for the suggestion. It looks like there are a few package=
s that provide libboost_python3:<br>
&gt; &gt;<br>
&gt; &gt; find tmp/work/*/*/*/packages-split -name libboost_python\*<br>
&gt; &gt; tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost=
-dev/usr/lib/libboost_python3.so<br>
&gt; &gt; tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost=
-python/usr/lib/libboost_python3.so.1.64.0<br>
&gt; &gt; tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost=
-staticdev/usr/lib/libboost_python3.a<br>
&gt; &gt; tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost=
-dbg/usr/lib/.debug/libboost_python3.so.1.64.0<br>
&gt; &gt;<br>
&gt; &gt; Adding boost-python to RDEPENDS doesn&#39;t help, I have tried i=
t before also. This sort of made sense to me as I thought RDEPENDS was for =
run time dependencies, but perhaps I have misunderstood.<br>
&gt; &gt;<br>
&gt; &gt; I am working with the rocko branch and python2, so perhaps that&=
#39;s the problem?<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; Emily<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Mar 17, 2020 at 1:02 PM Laurent Gauthier &lt;<a href=3D"=
mailto:laurent.gauthier@soccasys.com" target=3D"_blank">laurent.gauthier@so=
ccasys.com</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Hi Emily,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; To find the solution to your issue in a rational and determi=
nistic way<br>
&gt; &gt;&gt; we need to start from the error message.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; What I understand is that while build recipe &quot;opc-ua-se=
rver-gfex&quot; you<br>
&gt; &gt;&gt; get an error message that says in short &quot;ld: cannot fin=
d<br>
&gt; &gt;&gt; -lboost_python-mt&quot;.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Therefore you need to determine which recipe (and which pack=
age in<br>
&gt; &gt;&gt; that recipe) provides the &quot;boost_python-mt&quot; librar=
y.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; One way to determine this is to run something like this:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0find /local/d6/easmith5/rocko_bitbake/pok=
y/build/tmp/work/*/*/*/packages-split<br>
&gt; &gt;&gt; -name libboost_python\*<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; This should show you which recipe, and which package produce=
d by that<br>
&gt; &gt;&gt; recipe has the library you are looking for.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; The names of the first-level directories inside &quot;packag=
es-split&quot; are<br>
&gt; &gt;&gt; packages names.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Based on things you have mentioned in your previous e-mail m=
y guess<br>
&gt; &gt;&gt; would be that adding an RDEPENDS =3D &quot;boost-python&quot=
; should help, but I<br>
&gt; &gt;&gt; might be wrong.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I hope this will help you move in the right direction.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Kind regards, Laurent.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On Tue, Mar 17, 2020 at 6:07 PM Emily &lt;<a href=3D"mailto:=
easmith5555@gmail.com" target=3D"_blank">easmith5555@gmail.com</a>&gt; wrot=
e:<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Hi Quentin -<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; That&#39;s what I tried originally! DEPENDS on boost an=
d not boost-python gives me the following error when trying to build my ori=
ginal recipe:<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aa=
rch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sys=
root-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc=
/aarch64-poky-linux/7.3.0/ld:<br>
&gt; &gt;&gt; &gt; cannot find -lboost_python-mt<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; So I tried a bunch of other this which also didn&#39;t =
seem to work.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Thanks for the response!<br>
&gt; &gt;&gt; &gt; Emily<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; On Tue, Mar 17, 2020 at 11:04 AM Quentin Schulz &lt;<a =
href=3D"mailto:quentin.schulz@streamunlimited.com" target=3D"_blank">quenti=
n.schulz@streamunlimited.com</a>&gt; wrote:<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; Hi Emily,<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wro=
te:<br>
&gt; &gt;&gt; &gt;&gt; &gt; Hi all -<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; I&#39;m trying to build an opca recipe (<br>
&gt; &gt;&gt; &gt;&gt; &gt; <a href=3D"https://github.com/kratsg/meta-l1ca=
lo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb" rel=3D=
"noreferrer" target=3D"_blank">https://github.com/kratsg/meta-l1calo/blob/a=
dd/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb</a>)<br>
&gt; &gt;&gt; &gt;&gt; &gt; and it&#39;s giving me a build error like:<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; |<br>
&gt; &gt;&gt; &gt;&gt; &gt; /local/d6/easmith5/rocko_bitbake/poky/build/tm=
p/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/r=
ecipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-=
linux/gcc/aarch64-poky-linux/7.3.0/ld:<br>
&gt; &gt;&gt; &gt;&gt; &gt; cannot find -lboost_python-mt<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; Which seems to indicated I need to add boost-p=
ython to my list of DEPENDS.<br>
&gt; &gt;&gt; &gt;&gt; &gt; When I do that I get the error:<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; ERROR: Nothing PROVIDES &#39;boost-python&#39;=
 (but<br>
&gt; &gt;&gt; &gt;&gt; &gt; /local/d6/easmith5/rocko_bitbake/meta-l1calo/r=
ecipes-core/opc-ua/<br>
&gt; &gt;&gt; &gt;&gt; &gt; <a href=3D"http://opc-ua-server-gfex_git.bb" r=
el=3D"noreferrer" target=3D"_blank">opc-ua-server-gfex_git.bb</a> DEPENDS o=
n or otherwise requires it). Close<br>
&gt; &gt;&gt; &gt;&gt; &gt; matches:<br>
&gt; &gt;&gt; &gt;&gt; &gt;=C2=A0 =C2=A0boost RPROVIDES boost-python<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; I&#39;ve tried adding PACKAGECONFIG_pn-boost=
=3D&quot;python&quot; to both my local.conf and<br>
&gt; &gt;&gt; &gt;&gt; &gt; to the image definition as I saw this online, =
but neither seems to work. It<br>
&gt; &gt;&gt; &gt;&gt; &gt; seems like boost-python is being built (I can =
see it in the list when I run<br>
&gt; &gt;&gt; &gt;&gt; &gt; oe-pkgdata-utils list-pkgs -p boost) but it do=
esn&#39;t seem to be available at<br>
&gt; &gt;&gt; &gt;&gt; &gt; build for this recipe.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; If I remove boost from my list of DEPENDS I ge=
t an error about that, so<br>
&gt; &gt;&gt; &gt;&gt; &gt; obviously boost itself is available at build f=
or the original recipe. I&#39;ve<br>
&gt; &gt;&gt; &gt;&gt; &gt; also tried adding boost-native to DEPENDS, als=
o did not work.<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt; &gt; Is there something obvious I&#39;m missing, or=
 some trick to making<br>
&gt; &gt;&gt; &gt;&gt; &gt; boost-python available at build for this other=
 recipe?<br>
&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; Ok so two things.<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; Yes, I&#39;d say you need python in PACKAGECONFIG f=
or boost. However, it<br>
&gt; &gt;&gt; &gt;&gt; seems it&#39;s already part of the default value of=
 PACKAGECONFIG, c.f.<br>
&gt; &gt;&gt; &gt;&gt; <a href=3D"http://cgit.openembedded.org/openembedde=
d-core/tree/meta/recipes-support/boost/boost.inc?h=3Dmaster#n45" rel=3D"nor=
eferrer" target=3D"_blank">http://cgit.openembedded.org/openembedded-core/t=
ree/meta/recipes-support/boost/boost.inc?h=3Dmaster#n45</a><br>
&gt; &gt;&gt; &gt;&gt; so if no bbappend is overriding it, I&#39;d say you=
&#39;re safe. Better check<br>
&gt; &gt;&gt; &gt;&gt; with the version in your layer that it&#39;s there.=
<br>
&gt; &gt;&gt; &gt;&gt; If you don&#39;t want to check manually, try `bitba=
ke -e boost | grep -e<br>
&gt; &gt;&gt; &gt;&gt; &quot;^PACKAGECONFIG=3D&quot;`<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; DEPENDS contains only recipes (well, PROVIDES but P=
ROVIDES has the name<br>
&gt; &gt;&gt; &gt;&gt; of the recipe in it at all times) while RDEPENDS_* =
(usually ${PN}*) contains<br>
&gt; &gt;&gt; &gt;&gt; only packages.<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; So you need to DEPENDS on boost, not boost-python. =
That should be enough<br>
&gt; &gt;&gt; &gt;&gt; hopefully!<br>
&gt; &gt;&gt; &gt;&gt;<br>
&gt; &gt;&gt; &gt;&gt; Quentin<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt; Laurent Gauthier<br>
&gt; &gt;&gt; Phone: +33 630 483 429<br>
&gt; &gt;&gt; <a href=3D"http://soccasys.com" rel=3D"noreferrer" target=3D=
"_blank">http://soccasys.com</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Laurent Gauthier<br>
&gt; Phone: +33 630 483 429<br>
&gt; <a href=3D"http://soccasys.com" rel=3D"noreferrer" target=3D"_blank">=
http://soccasys.com</a><br>
&gt; <br>
<br>
<br>
<br>
-- <br>
Laurent Gauthier<br>
Phone: +33 630 483 429<br>
<a href=3D"http://soccasys.com" rel=3D"noreferrer" target=3D"_blank">http:=
//soccasys.com</a><br>
</blockquote></div>

--00000000000098d21e05a122896b--
