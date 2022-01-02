Return-Path: <staticd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03832C433EF
	for <webhook@archiver.kernel.org>; Sun,  2 Jan 2022 19:18:05 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web12.17034.1641151084239874922
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 11:18:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GCxLmPD+;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: staticd@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id 8so27807567pfo.4
        for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 11:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QSHL6cpPL8BuZRg3sFxoDTBZuNGiIuRD6FTkBpfQMKI=;
        b=GCxLmPD+/tX3wprIxa7YtYntHDeBXHpvKcWa8mzlUg/OYZYeWI9lKcedTnEDIUUS0j
         gQ1DECQLTdBQQt3kRyVH3MEErqNBPAAbr3Og5U/sDLnO8/jJpc7DeRo6Ruo/QnZqQZEZ
         bSZ3pnJwe+jpAC+44/OXh2amRpFFri8/+k/9rIzce9qffS1InvwMiQ0cY7Nr9ixwmhbm
         1CppLClDlPsZiyLBFuSyJ4fRcetYRPbL40vt9sTDr28t61BN3cZZsdxw9/qgodMJleYH
         Z16rAAzAj1wKoSgoN8dvKW1Fak9YZM6m8xi9j1d1Icp6M1DLTgGoV6gJT+wUDt8qcbsq
         6yzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QSHL6cpPL8BuZRg3sFxoDTBZuNGiIuRD6FTkBpfQMKI=;
        b=yyCzJON7wrhJyqCrKlVLv5C3wqejiUeUx5ipCgXDvylEZ8tiHbS+x+IzsQ+WAdyB3a
         gi1fu0nOSY5XuJxg13giIpCZdn4P0+BDH9yB888UGwSWHoA6tTe+XdG3nsMqc02QVg0m
         cRe1rYt62iZwlgUA3eWEJ96YLLOgPSNM6G2JZnuALauF6HRp1PccSyLM+ClpgbtP1Cef
         ufcx+kFwnuZ7JYydn2Q3ACo0+KjKfb1jds1SrKDAt42zPg4Z46EAN080z3BoLBGEZI44
         ihWtg+SptcWN2S2BOPSJieRsha7MgaPqeA0ERQ+cB/xvkQ3ivc5iPvZkCYbBwPH75jq1
         fOZQ==
X-Gm-Message-State: AOAM531OeIu10Px/nIB6qc+ijcXmzi7bdDiDxjgn7D07hB/a8X1r5NPx
	FYWiFyAX4iv+B9ZEfHlEwqS3nz9VQfjGkgjLZnc=
X-Google-Smtp-Source: 
 ABdhPJznl25JEEacN67N2+ryU51mW7CfnRzTXMuAXdDWFvE9pCkJiEy2+yEwauGL0fMJCM7FOAcylS8CnMXDlFQmyLo=
X-Received: by 2002:a05:6a00:1789:b0:4ba:ca5d:35e2 with SMTP id
 s9-20020a056a00178900b004baca5d35e2mr44067390pfg.21.1641151083649; Sun, 02
 Jan 2022 11:18:03 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
 <CALpKvHrow01J=5XCgJHyeNK8DXApsOOXwjUyUOA6jMP204YpiA@mail.gmail.com>
 <CAFC2zY1RbDGbeZZD7YtzKBFF66aSo8qiXfn3tFCujAEWqqk_oA@mail.gmail.com>
 <CAFC2zY10Hi9mT03biAvbsyfmPjvNNukmOCrwH1-mYKAG4NT9qA@mail.gmail.com>
 <AM9PR09MB464282949C9AB4859002D0BFA8489@AM9PR09MB4642.eurprd09.prod.outlook.com>
In-Reply-To: 
 <AM9PR09MB464282949C9AB4859002D0BFA8489@AM9PR09MB4642.eurprd09.prod.outlook.com>
From: staticd <staticd@gmail.com>
Date: Sun, 2 Jan 2022 14:17:52 -0500
Message-ID: 
 <CAFC2zY0BupcxPcLvoLz=U1hkJ0CwDTXwFMZgTOTPOLe56V1XSw@mail.gmail.com>
Subject: Re: [yocto] libquadmath
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005d1e6105d49e43ba"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jan 2022 19:18:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55706

--0000000000005d1e6105d49e43ba
Content-Type: text/plain; charset="UTF-8"

Thank you, Konrad.

I have tried both of the approaches (local.conf and
gcc-runtime_%.bbappend/gcc_%.bbappend), still `libquadmath.so` is not being
built.

I will keep fiddling but I think we are onto something.

The interesting thing I found is that `libquadmath.so` IS being built for
the nativesdk but NOT when I add `DEPENDS =
"virtual/${TARGET_PREFIX}compillerlibs"` to my recipe.

Perhaps, because `FORTRAN = ""` is in the gcc_%.bb, maybe that should be
something less strict?

I might be screwing up my bbappend too...

My append is in `meta-mylayer/recipes-devtools/gcc/gcc-runtime_%.bbappend`

Which is mapped correctly to $BBFILES n my layers `layer.conf`

On Sun, Jan 2, 2022 at 2:07 PM Konrad Weihmann <kweihmann@outlook.com>
wrote:

> The following I just found in local.conf.sample.extended
>
> # Enabling FORTRAN
> # Note this is not officially supported and is just illustrated here to
> # show an example of how it can be done
> # You'll also need your fortran recipe to depend on libgfortran
> FORTRAN:forcevariable = ",fortran"
>
> guess that will solve your issue without the need for a bbappend.
> Just inject that line via distro or local.conf
>
> On 02.01.22 18:31, staticd wrote:
> > I think to clarify...what I need are these files:
> >
> > --- snipped from gcc-runtime.inc ---
> > ```
> > FILES_libquadmath = "${libdir}/libquadmath*.so.*"
> > SUMMARY_libquadmath = "GNU quad-precision math library"
> > FILES_libquadmath-dev = "\
> >      ${libdir}/${TARGET_SYS}/${BINV}/include/quadmath* \
> >      ${libdir}/libquadmath*.so \
> >      ${libdir}/libquadmath.la <http://libquadmath.la> \
> > "
> > ```
> > ---
> > to be in my $STAGING_LIBDIR
> >
> > So far, I have been unable to figure out how to do that, unfortunately.
> >
> > On Sun, Jan 2, 2022 at 12:23 PM staticd <staticd@gmail.com
> > <mailto:staticd@gmail.com>> wrote:
> >
> >     Thank you, Michael.
> >
> >     I have `DEPENDS = "virtual/arm-oe-linux-gnueabi-compilerlibs"`
> >
> >     and `do_compile[depends] +=
> >     "virtual/arm-oe-linux-gnueabi-compilerlibs:do_check"`
> >
> >     However, libquadmath.so is still not present in `recipe-sysroot/lib`
> >
> >     I used the `do_check` task from gcc_runtime but that still isn't
> >     providing `libquadmath.so` in my $STAGING_LIBDIR, which is where I
> >     need it.
> >
> >     Many thanks.
> >
> >     On Sun, Jan 2, 2022 at 12:17 PM Michael Ho <michael.ho@ieee.org
> >     <mailto:michael.ho@ieee.org>> wrote:
> >
> >         Not familiar with Fortran but maybe it helps to know that this
> >         is normally handled with the DEPENDS mechanism. When you add
> >         other recipes as dependencies to your recipe, the task
> >         do_prepare_recipe_sysroot (run before do_compile) will make hard
> >         links to the files from those dependency recipes into that
> >         recipe-sysroot directory.
> >
> >         See:
> >
> https://docs.yoctoproject.org/singleindex.html#do-prepare-recipe-sysroot
> >         <
> https://docs.yoctoproject.org/singleindex.html#do-prepare-recipe-sysroot>
> >
> >         Kind regards,
> >         Michael
> >
> >         On Sun, 2 Jan 2022, 6:06 pm staticd, <staticd@gmail.com
> >         <mailto:staticd@gmail.com>> wrote:
> >
> >             okay...I think I have a more interesting question now...
> >
> >             In the package I am building I have some Fortran code that
> >             requires `libquadmath`
> >
> >             I see that `gcc-runtime` provides the library but I need the
> >             library present in `recipe-sysroot/lib` when my `do_compile`
> >             runs
> >
> >             Is there a way for me to do that?
> >
> >             My current approach is to build my image, copy the
> >             libraries/includes to my recipe and `install` them in
> >             `recipe-sysroot` before `do_compile`
> >
> >             This doesn't seem like the correct approach but I am not
> >             sure how else to do it at this point
> >
> >             Any help would be greatly appreciated.
> >
> >
> >
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#55703):
> https://lists.yoctoproject.org/g/yocto/message/55703
> > Mute This Topic: https://lists.yoctoproject.org/mt/88095036/3647476
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> kweihmann@outlook.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--0000000000005d1e6105d49e43ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you, Konrad.<div><br></div><div>I have tried both of=
 the approaches (local.conf and gcc-runtime_%.bbappend/gcc_%.bbappend), sti=
ll `libquadmath.so` is not being built.</div><div><br></div><div>I will kee=
p fiddling but I think we are onto something.</div><div><br></div><div>The =
interesting thing I found is that `libquadmath.so` IS being built for the n=
ativesdk but NOT when I add `DEPENDS =3D &quot;virtual/${TARGET_PREFIX}comp=
illerlibs&quot;` to my recipe.</div><div><br></div><div>Perhaps, because `F=
ORTRAN =3D &quot;&quot;` is in the gcc_%.bb, maybe that should be something=
 less strict?</div><div><br></div><div>I might be screwing up my bbappend t=
oo...</div><div><br></div><div>My append is in `meta-mylayer/recipes-devtoo=
ls/gcc/gcc-runtime_%.bbappend`</div><div><br></div><div>Which is mapped cor=
rectly to $BBFILES n my layers `layer.conf`</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 2, 2022 at 2:0=
7 PM Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com">kweihmann=
@outlook.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">The following I just found in local.conf.sample.extended<br>
<br>
# Enabling FORTRAN<br>
# Note this is not officially supported and is just illustrated here to<br>
# show an example of how it can be done<br>
# You&#39;ll also need your fortran recipe to depend on libgfortran<br>
FORTRAN:forcevariable =3D &quot;,fortran&quot;<br>
<br>
guess that will solve your issue without the need for a bbappend.<br>
Just inject that line via distro or local.conf<br>
<br>
On 02.01.22 18:31, staticd wrote:<br>
&gt; I think to clarify...what I need are these files:<br>
&gt; <br>
&gt; --- snipped from gcc-runtime.inc ---<br>
&gt; ```<br>
&gt; FILES_libquadmath =3D &quot;${libdir}/libquadmath*.so.*&quot;<br>
&gt; SUMMARY_libquadmath =3D &quot;GNU quad-precision math library&quot;<br=
>
&gt; FILES_libquadmath-dev =3D &quot;\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ${libdir}/${TARGET_SYS}/${BINV}/include/quadmath* =
\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ${libdir}/libquadmath*.so \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ${libdir}/<a href=3D"http://libquadmath.la" rel=3D=
"noreferrer" target=3D"_blank">libquadmath.la</a> &lt;<a href=3D"http://lib=
quadmath.la" rel=3D"noreferrer" target=3D"_blank">http://libquadmath.la</a>=
&gt; \<br>
&gt; &quot;<br>
&gt; ```<br>
&gt; ---<br>
&gt; to be in my $STAGING_LIBDIR<br>
&gt; <br>
&gt; So far, I have been unable to figure out how to do that, unfortunately=
.<br>
&gt; <br>
&gt; On Sun, Jan 2, 2022 at 12:23 PM staticd &lt;<a href=3D"mailto:staticd@=
gmail.com" target=3D"_blank">staticd@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:staticd@gmail.com" target=3D"_blank">stat=
icd@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thank you, Michael.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I have `DEPENDS =3D &quot;virtual/arm-oe-linux-gnue=
abi-compilerlibs&quot;`<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0and `do_compile[depends] +=3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;virtual/arm-oe-linux-gnueabi-compilerlibs:do_=
check&quot;`<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0However, libquadmath.so is still not present in `re=
cipe-sysroot/lib`<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I used the `do_check` task from gcc_runtime but tha=
t still isn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0providing `libquadmath.so` in my $STAGING_LIBDIR, w=
hich is where I<br>
&gt;=C2=A0 =C2=A0 =C2=A0need it.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Many=C2=A0thanks.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Sun, Jan 2, 2022 at 12:17 PM Michael Ho &lt;<a h=
ref=3D"mailto:michael.ho@ieee.org" target=3D"_blank">michael.ho@ieee.org</a=
><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:michael.ho@ieee.org" t=
arget=3D"_blank">michael.ho@ieee.org</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Not familiar with Fortran but maybe i=
t helps to know that this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0is normally handled with the DEPENDS =
mechanism. When you add<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0other recipes as dependencies to your=
 recipe, the task<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do_prepare_recipe_sysroot (run before=
 do_compile) will make hard<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0links to the files from those depende=
ncy recipes into that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0recipe-sysroot directory.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0See:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://docs.yoctoproject.=
org/singleindex.html#do-prepare-recipe-sysroot" rel=3D"noreferrer" target=
=3D"_blank">https://docs.yoctoproject.org/singleindex.html#do-prepare-recip=
e-sysroot</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://docs.yoctoproj=
ect.org/singleindex.html#do-prepare-recipe-sysroot" rel=3D"noreferrer" targ=
et=3D"_blank">https://docs.yoctoproject.org/singleindex.html#do-prepare-rec=
ipe-sysroot</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Kind regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Michael<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Sun, 2 Jan 2022, 6:06 pm staticd, =
&lt;<a href=3D"mailto:staticd@gmail.com" target=3D"_blank">staticd@gmail.co=
m</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:staticd@=
gmail.com" target=3D"_blank">staticd@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0okay...I think I have a=
 more interesting question now...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0In the package I am bui=
lding I have some Fortran code that<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0requires `libquadmath`<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0I see that `gcc-runtime=
` provides the library but I need the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0library present in `rec=
ipe-sysroot/lib` when my `do_compile`<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0runs<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Is there a way for me t=
o do that?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0My current approach is =
to build my image, copy the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libraries/includes to m=
y recipe and `install` them in<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0`recipe-sysroot` before=
 `do_compile`<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This doesn&#39;t seem l=
ike the correct approach but I am not<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sure how else to do it =
at this point<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Any help would be great=
ly appreciated.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#55703): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/55703" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/55703</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88095036=
/3647476" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/88095036/3647476</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:kweihmann@outlook.com" target=3D"_blank">kwei=
hmann@outlook.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
</blockquote></div>

--0000000000005d1e6105d49e43ba--

