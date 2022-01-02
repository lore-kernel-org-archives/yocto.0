Return-Path: <staticd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AEB8C433F5
	for <webhook@archiver.kernel.org>; Sun,  2 Jan 2022 17:31:51 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.15591.1641144710328255958
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 09:31:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kd2HnmtE;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: staticd@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id mj19so27204898pjb.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 09:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B+IiVVDcHuA21rl6c2F4tdk/7zBrmuKOkhAcA6oVFI8=;
        b=kd2HnmtE7uqPBtv8iIuB9AqjKTVqzdjqMLLRx4fXFNOnDTiiyofv8njIdIUc4bL2/z
         arpBExV+8FCkdmGydX2hR36yAKrNNIv0h/QRN7eHZu6yPWHnaJfYDAKuPbmjrG7u7jA7
         sSdLpJU0xHRuWxB2gSaYPnc49gT+0ziQaOHzPGChQAMGlYVS48eVXn7XBa93gQavQhA7
         u313LaJfB7fZu88fQ/zwCesTDF0mG9Z1VRTWZaE6pL1okMT/IMWun7xiuCMqXvexHj0H
         qXPL3T9o/OpqE10ic4eGOp5RoV/NB7BuYbXxw3oBpYJcsixAsejowyb9/FY81Pcx2Qb4
         q6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B+IiVVDcHuA21rl6c2F4tdk/7zBrmuKOkhAcA6oVFI8=;
        b=fDdlokFSemW/wdWZndTJjY2qjg5oJfTVq75O6cL8IZ3KRNmHulJI8htkMY8lPMhlUR
         2RgkUS34s7hnBxl94ZS7z5C0tyoxsZObiB7a8HW3BFAB0e3Qmk5Po2R7CThCANWkaaPh
         TsCjZhV8nw8TX2aaDUpHfxkhFur9+zov1NwJ9B1lLer6ZtKrrJfIfQjzLRBb+v68pcvM
         3Zft+78BaLE6b1gOzddiISumbJge1TnuuBwpR3Qu8ovqfhsIFPlfW5xTOuymoMHIMj0l
         SbL2UMv5SkTGDjp25tmDWXPNeRa9F04uJMQg12SDutoQ0563cmGzE0TEMZNHJUG0s2sX
         rMog==
X-Gm-Message-State: AOAM532BGVgTtm/2tVT4uJ5t2tOt6T6Xqg3B0Hl9vWdeYH7y35d4hRCm
	HWKyhUm15gK4dOPNsjSb+58vXVDSDtzmYil3KyI=
X-Google-Smtp-Source: 
 ABdhPJxIyF9WGrfykLcgZq8dssfTG6xf0sg7cX6sEY1BcMO6kVuzxaQf+v98wQdWp10DKXHkiHDqI97U4Qsx+uphX5c=
X-Received: by 2002:a17:903:1c7:b0:149:2bff:89c4 with SMTP id
 e7-20020a17090301c700b001492bff89c4mr42119246plh.105.1641144709838; Sun, 02
 Jan 2022 09:31:49 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
 <CALpKvHrow01J=5XCgJHyeNK8DXApsOOXwjUyUOA6jMP204YpiA@mail.gmail.com>
 <CAFC2zY1RbDGbeZZD7YtzKBFF66aSo8qiXfn3tFCujAEWqqk_oA@mail.gmail.com>
In-Reply-To: 
 <CAFC2zY1RbDGbeZZD7YtzKBFF66aSo8qiXfn3tFCujAEWqqk_oA@mail.gmail.com>
From: staticd <staticd@gmail.com>
Date: Sun, 2 Jan 2022 12:31:38 -0500
Message-ID: 
 <CAFC2zY10Hi9mT03biAvbsyfmPjvNNukmOCrwH1-mYKAG4NT9qA@mail.gmail.com>
Subject: Re: [yocto] libquadmath
To: Michael Ho <michael.ho@ieee.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000747c2d05d49cc754"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jan 2022 17:31:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55703

--000000000000747c2d05d49cc754
Content-Type: text/plain; charset="UTF-8"

I think to clarify...what I need are these files:

--- snipped from gcc-runtime.inc ---
```
FILES_libquadmath = "${libdir}/libquadmath*.so.*"
SUMMARY_libquadmath = "GNU quad-precision math library"
FILES_libquadmath-dev = "\
    ${libdir}/${TARGET_SYS}/${BINV}/include/quadmath* \
    ${libdir}/libquadmath*.so \
    ${libdir}/libquadmath.la \
"
```
---
to be in my $STAGING_LIBDIR

So far, I have been unable to figure out how to do that, unfortunately.

On Sun, Jan 2, 2022 at 12:23 PM staticd <staticd@gmail.com> wrote:

> Thank you, Michael.
>
> I have `DEPENDS = "virtual/arm-oe-linux-gnueabi-compilerlibs"`
>
> and `do_compile[depends] +=
> "virtual/arm-oe-linux-gnueabi-compilerlibs:do_check"`
>
> However, libquadmath.so is still not present in `recipe-sysroot/lib`
>
> I used the `do_check` task from gcc_runtime but that still isn't providing
> `libquadmath.so` in my $STAGING_LIBDIR, which is where I need it.
>
> Many thanks.
>
> On Sun, Jan 2, 2022 at 12:17 PM Michael Ho <michael.ho@ieee.org> wrote:
>
>> Not familiar with Fortran but maybe it helps to know that this is
>> normally handled with the DEPENDS mechanism. When you add other recipes as
>> dependencies to your recipe, the task do_prepare_recipe_sysroot (run before
>> do_compile) will make hard links to the files from those dependency recipes
>> into that recipe-sysroot directory.
>>
>> See:
>> https://docs.yoctoproject.org/singleindex.html#do-prepare-recipe-sysroot
>>
>> Kind regards,
>> Michael
>>
>> On Sun, 2 Jan 2022, 6:06 pm staticd, <staticd@gmail.com> wrote:
>>
>>> okay...I think I have a more interesting question now...
>>>
>>> In the package I am building I have some Fortran code that requires
>>> `libquadmath`
>>>
>>> I see that `gcc-runtime` provides the library but I need the library
>>> present in `recipe-sysroot/lib` when my `do_compile` runs
>>>
>>> Is there a way for me to do that?
>>>
>>> My current approach is to build my image, copy the libraries/includes to
>>> my recipe and `install` them in `recipe-sysroot` before `do_compile`
>>>
>>> This doesn't seem like the correct approach but I am not sure how else
>>> to do it at this point
>>>
>>> Any help would be greatly appreciated.
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#55700):
>>> https://lists.yoctoproject.org/g/yocto/message/55700
>>> Mute This Topic: https://lists.yoctoproject.org/mt/88095036/3618434
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>> michael.ho@ieee.org]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
>>>

--000000000000747c2d05d49cc754
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think to clarify...what I need are these files:<div><br>=
</div><div>--- snipped from gcc-runtime.inc ---</div><div>```</div><div>FIL=
ES_libquadmath =3D &quot;${libdir}/libquadmath*.so.*&quot;<br>SUMMARY_libqu=
admath =3D &quot;GNU quad-precision math library&quot;<br>FILES_libquadmath=
-dev =3D &quot;\<br>=C2=A0 =C2=A0 ${libdir}/${TARGET_SYS}/${BINV}/include/q=
uadmath* \<br>=C2=A0 =C2=A0 ${libdir}/libquadmath*.so \<br>=C2=A0 =C2=A0 ${=
libdir}/<a href=3D"http://libquadmath.la">libquadmath.la</a> \<br>&quot;<br=
></div><div>```</div><div>---</div><div>to be in my $STAGING_LIBDIR</div><d=
iv><br></div><div>So far, I have been unable to figure out how to do that, =
unfortunately.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Sun, Jan 2, 2022 at 12:23 PM staticd &lt;<a href=3D"=
mailto:staticd@gmail.com">staticd@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thank you, Mich=
ael.<div><br></div><div>I have `DEPENDS =3D &quot;virtual/arm-oe-linux-gnue=
abi-compilerlibs&quot;`</div><div><br></div><div>and `do_compile[depends] +=
=3D &quot;virtual/arm-oe-linux-gnueabi-compilerlibs:do_check&quot;`</div><d=
iv><br></div><div>However, libquadmath.so is still not present in `recipe-s=
ysroot/lib`</div><div><br></div><div>I used the `do_check` task from gcc_ru=
ntime but that still isn&#39;t providing `libquadmath.so` in my $STAGING_LI=
BDIR, which is where I need it.</div><div><br></div><div>Many=C2=A0thanks.<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Sun, Jan 2, 2022 at 12:17 PM Michael Ho &lt;<a href=3D"mailto:micha=
el.ho@ieee.org" target=3D"_blank">michael.ho@ieee.org</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div=
>Not familiar with Fortran but maybe it helps to know that this is normally=
 handled with the DEPENDS mechanism. When you add other recipes as dependen=
cies to your recipe, the task do_prepare_recipe_sysroot (run before do_comp=
ile) will make hard links to the files from those dependency recipes into t=
hat recipe-sysroot directory.=C2=A0</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">See:=C2=A0<a href=3D"https://docs.yoctoproject.org/singleindex.=
html#do-prepare-recipe-sysroot" target=3D"_blank">https://docs.yoctoproject=
.org/singleindex.html#do-prepare-recipe-sysroot</a></div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Kind regards,</div><div dir=3D"auto">Michael<br=
><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sun, 2 Jan 2022, 6:06 pm staticd, &lt;<a href=3D"mailto:staticd@=
gmail.com" target=3D"_blank">staticd@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">okay...I thi=
nk I have a more interesting question now...<br><br>In the package I am bui=
lding I have some Fortran code that requires `libquadmath`<br><br>I see tha=
t `gcc-runtime` provides the library but I need the library present in `rec=
ipe-sysroot/lib` when my `do_compile` runs<br><br>Is there a way for me to =
do that?<br><br>My current approach is to build my image, copy the librarie=
s/includes to my recipe and `install` them in `recipe-sysroot` before `do_c=
ompile`<br><br>This doesn&#39;t seem like the correct approach but I am not=
 sure how else to do it at this point<br><br>Any help would be greatly appr=
eciated.<br></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55700): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55700" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/55700</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88095036/3618=
434" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/88095036/3618434</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" rel=3D=
"noreferrer" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:michael.ho@ieee.org" rel=3D"noreferre=
r" target=3D"_blank">michael.ho@ieee.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>
</blockquote></div>
</blockquote></div>

--000000000000747c2d05d49cc754--

