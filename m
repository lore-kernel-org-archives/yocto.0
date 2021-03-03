Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web11.1149.1614814168477832718
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 15:29:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Cp+bj1R1;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: ticotimo@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id o9so12797030iow.6
        for <yocto@lists.yoctoproject.org>; Wed, 03 Mar 2021 15:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7Vc0F5/aw4F2yspIt4cX250wPoB7oIDZvHxnRVljAJ0=;
        b=Cp+bj1R1M5/T2YWId4MrkmRPppnxIhgF5W6odWhvrY1HWL4Loo43lytVf8APAqkBx3
         clxmFL+fhTI89Oo6snB0K1LhhSoJInCHTaWkbKQutDDAzFI8b1jJRWMIHcdb3Slh8p6Y
         Xas7xcA5ugdGqLkcSbr0SpC4ypmggcolDrFmI6S64N7W7vBbE6WEosFr7ISEKzHC6XAK
         MLvzL7lCKsXRelD1WW2gizxmPHukv69jFYbpxT1Th//fivNt2HcdgSZtshq6gBK234vW
         fVtuSai+UlcGHQsQzhSywfqJnROWLh+Acso9xP9Vz1+CnBVjVED3i7sL/TxuOCKSETUs
         lzKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7Vc0F5/aw4F2yspIt4cX250wPoB7oIDZvHxnRVljAJ0=;
        b=DkANIUn06L3ZdYFM/ttysI9vZSqcG0gNgol1zsibGawfOvREecfxOgV27pccPHYTCJ
         4aoNVTXp5Hb1s3xitNHq91oZzCXDGvmd0BoDCh+0nQ7uKZ3SjfA+zKhJCAzZDwiKgxOv
         l/UiMiVmTR8xGNK/Igmu/Gkc3Y8QBBc2157eWwr75H5pbyALs5Umv/MpHPsdmnnqkcL8
         DTm9VrsBFYEpmnNjJIf66C2VqCH7eao0wxgH+XxDuJf/szZiZ85xMwZrYSO1/jw+q4v+
         2iMP3j/r+ZJodaqoWtPbRFtfmE437khe3O8HItuglV8UH4WG/4yE9nf8+oXc2n2p/KrP
         Ozag==
X-Gm-Message-State: AOAM530ifTLmD24NoIZiVIiUG7nRUgTzjNgenmsv/337rk6nQvA0SIJE
	XRQEb/habEa9WHgdJaR/6SesZXYaoZ7BXb7anvg=
X-Google-Smtp-Source: ABdhPJwNca1wWM91bThm49HqNFZFSUSZfu36IiUvBCxJjbsJw1zwhTD+DekQLgiAeUws2QomGwJ1IVyBhLAfiQeZ5Lw=
X-Received: by 2002:a5d:9252:: with SMTP id e18mr1450638iol.146.1614814167553;
 Wed, 03 Mar 2021 15:29:27 -0800 (PST)
MIME-Version: 1.0
References: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
 <16689EFE3DC0BB92.17298@lists.yoctoproject.org> <CAOSpxdYoviYhz4s9u2KY8ttwoFqo8v6VEzJ2vM79-j2LiQex1g@mail.gmail.com>
 <DB6PR0102MB263061D0B03C4DA90C7B89F188999@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
 <2a6603ec08c0aee64364961c0d9eca0ef7ea6aaa.camel@linuxfoundation.org>
 <CAE+BM3m7SD30-JRG7S35KmwtKSuSqkRWQUyeSq3J3m0ACpu-Nw@mail.gmail.com> <1668EF1279DA9D8B.4829@lists.yoctoproject.org>
In-Reply-To: <1668EF1279DA9D8B.4829@lists.yoctoproject.org>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Wed, 3 Mar 2021 15:29:16 -0800
Message-ID: <CANx9H-D=KEMPAFRMYRDDbkG3H5XzQLhHfCTk7CQssoPCG5CUkQ@mail.gmail.com>
Subject: Re: [yocto] Reducing the perl footprint on my image
To: ticotimo@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Rusty Howell <rustyhowell@gmail.com>, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>, diego.santacruz@spinetix.com, 
	"steve@sakoman.com" <steve@sakoman.com>
Content-Type: multipart/alternative; boundary="000000000000d5db3d05bcaa3821"

--000000000000d5db3d05bcaa3821
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 3, 2021 at 12:28 PM Tim Orling via lists.yoctoproject.org
<ticotimo=gmail.com@lists.yoctoproject.org> wrote:

>
>
> On Wed, Mar 3, 2021 at 7:06 AM Rusty Howell <rustyhowell@gmail.com> wrote:
>
>> Steve, you're right.  My image.bb is adding various lmsensors packages
>> to the IMAGE_INSTALL, some of which depend on perl-modules.   perl-modules
>> seems to be the big monster, not perl.  We need lmsensors.  So I guess my
>> question is really, how can I (or can I at all) reduce the footprint of
>> perl-modules?  perl-modules doesn't have any Depends, rather it has a long
>> list (~ 670) of Recommends.
>>
>>
> If you look at the lmsensors recipe, the lmsensors-sensorsdetect [1] and
> lmsensors-sensorsconfconvert [2] subpackages both have perl-modules in
> RDEPENDS.
> One way to determine the ACTUAL dependencies is to run the perl.req script
> from rpm [3].
>

Related bug [6]

>
> $ perl.req sensors-detect
> perl >= 0:5.004
> perl(Fcntl)
> perl(File::Basename)
> perl(constant)
> perl(strict)
> perl(vars)
>
> $ perl.req sensors-conf-convert
> perl(strict)
> perl(vars)
>
> You then need to translate those into the perl-modules-* subpackages,
> which is easiest to see in perl-rdepends.txt [4].
>
> I have not built nor tested this, but using the described approach I have
> a patch for lmsensors [5].
>
> Please cherry-pick, test and if it works, add your signed-off-by and
> submit to the mailing list.
>
> [1]
> https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-bsp/lm_sensors/lmsensors_3.6.0.bb#n154
> [2]
> https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-bsp/lm_sensors/lmsensors_3.6.0.bb#n159
> [3]
> https://github.com/rpm-software-management/rpm/blob/master/scripts/perl.req
> [4]
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/perl/files/perl-rdepends.txt
> [5]
> https://git.openembedded.org/meta-openembedded-contrib/commit/?h=timo/lmsensors-perldeps&id=467a6bdce3877b27253c932d806f853b916a8f9e
>
[6] https://bugzilla.yoctoproject.org/show_bug.cgi?id=13376

>
> <https://git.openembedded.org/meta-openembedded-contrib/commit/?h=timo/lmsensors-perldeps&id=467a6bdce3877b27253c932d806f853b916a8f9e>
>
> On Tue, Mar 2, 2021 at 1:49 PM Richard Purdie <
>> richard.purdie@linuxfoundation.org> wrote:
>>
>>> On Tue, 2021-03-02 at 20:42 +0000, Diego Santa Cruz via
>>> lists.yoctoproject.org wrote:
>>> > > -----Original Message-----
>>> > > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
>>> > > Behalf Of Steve Sakoman via lists.yoctoproject.org
>>> > > Sent: 02 March 2021 21:06
>>> > > To: Steve Sakoman <steve@sakoman.com>
>>> > > Cc: rustyhowell@gmail.com; Yocto (yocto@lists.yoctoproject.org)
>>> > > <yocto@lists.yoctoproject.org>
>>> > > Subject: Re: [yocto] Reducing the perl footprint on my image
>>> > >
>>> > > On Tue, Mar 2, 2021 at 10:01 AM Steve Sakoman via
>>> > > lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
>>> > > wrote:
>>> > > >
>>> > > > On Tue, Mar 2, 2021 at 6:26 AM <rustyhowell@gmail.com> wrote:
>>> > > > >
>>> > > > > I have an image that is using debian package management
>>> > > (PACKAGE_CLASSES = "package_deb").  Because apt and dpkg require
>>> perl,
>>> > > perl is being installed in the image.   No problem.  Except that the
>>> entire perl
>>> > > stack is 669 packages.
>>> > > >
>>> > > > I just took a look at the manifest for one of my images that
>>> includes
>>> > > > PACKAGE_CLASSES = "package_deb".  I see the perl package plus 43
>>> > > > perl-module packages.  Are you sure that something else in your
>>> images
>>> > > > isn't pulling in all of those other perl-module packages?
>>> > >
>>> > > It just occurred to me to make sure you are looking in the image
>>> > > manifest to see which packages are actually installed in your image.
>>> > > The perl recipe does generate 676 packages (in dunfell) so perhaps
>>> you
>>> > > might be looking at the generated packages rather than the installed
>>> > > packages??
>>> > >
>>> >
>>> > I encountered a similar problem with package management enabled and
>>> rpm
>>> > as package format, where I also just install rpm for package
>>> management
>>> > and not all dnf stack. I get quite a lot of perl and python packages
>>> > into the image which are pulled by the rpm package, but they are only
>>> > needed for things like rpm-build, rpm-sign, etc., not for the bare
>>> > rpm command, which is the only one I need in the image.
>>> >
>>> > So I locally extended the rpm recipe to split those tools into
>>> rpm-build,
>>> > rpm-sign and rpm-archive and skip those packages in the image. I
>>> should
>>> > probably send patches for that to oe-core. Is that something that could
>>> > be accepted?
>>>
>>> Not sure they need to go to separate packages but moving those
>>> three to some kind of "build" package would make a lot of sense
>>> to me at least.
>>>
>>> Cheers,
>>>
>>> Richard
>>>
>>>
>>
>>
>>
> 
>
>

--000000000000d5db3d05bcaa3821
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Mar 3, 2021 at 12:28 PM Tim Orling via <a href=3D"=
http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ticotimo=3D<a=
 href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproj=
ect.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padd=
ing-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr"><div dir=
=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Mar 3, 2021 at 7:06 AM Rusty Howell &lt;<a href=3D=
"mailto:rustyhowell@gmail.com" target=3D"_blank">rustyhowell@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex=
;border-left-color:rgb(204,204,204)"><div dir=3D"ltr"><div>Steve, you&#39;r=
e right.=C2=A0 My <a href=3D"http://image.bb" target=3D"_blank">image.bb</a=
> is adding various lmsensors packages to the IMAGE_INSTALL, some of which =
depend on perl-modules.=C2=A0=C2=A0 perl-modules seems to be the big monste=
r, not perl.=C2=A0 We need lmsensors.=C2=A0 So I guess my question is reall=
y, how can I (or can I at all) reduce the footprint of perl-modules?=C2=A0 =
perl-modules doesn&#39;t have any Depends, rather it has a long list (~ 670=
) of Recommends.=C2=A0 <br></div></div><br></blockquote><div><br></div><div=
>If you look at the lmsensors recipe, the lmsensors-sensorsdetect [1] and l=
msensors-sensorsconfconvert [2] subpackages both have perl-modules in RDEPE=
NDS.</div><div>One way to determine the ACTUAL dependencies is to run the p=
erl.req script from rpm [3].</div></div></div></blockquote><div dir=3D"auto=
"><br></div><div dir=3D"auto">Related bug [6]</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-le=
ft-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div di=
r=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"auto"></div><div><br></div=
><div>$ perl.req sensors-detect</div><div>perl &gt;=3D 0:5.004</div><div>pe=
rl(Fcntl)</div><div>perl(File::Basename)</div><div>perl(constant)</div><div=
>perl(strict)</div><div>perl(vars)</div><div><br></div><div>$ perl.req sens=
ors-conf-convert</div><div>perl(strict)</div><div>perl(vars)</div><div><br>=
 </div><div>You then need to translate those into the perl-modules-* subpac=
kages, which is easiest to see in perl-rdepends.txt [4].</div><div><br></di=
v><div>I have not built nor tested this, but using the described approach I=
 have a patch for lmsensors [5].</div><div><br></div><div>Please cherry-pic=
k, test and if it works, add your signed-off-by and submit to the mailing l=
ist.</div><div><br></div><div>[1] <a href=3D"https://git.openembedded.org/m=
eta-openembedded/tree/meta-oe/recipes-bsp/lm_sensors/lmsensors_3.6.0.bb#n15=
4" target=3D"_blank">https://git.openembedded.org/meta-openembedded/tree/me=
ta-oe/recipes-bsp/lm_sensors/lmsensors_3.6.0.bb#n154</a></div><div>[2] <a h=
ref=3D"https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-=
bsp/lm_sensors/lmsensors_3.6.0.bb#n159" target=3D"_blank">https://git.opene=
mbedded.org/meta-openembedded/tree/meta-oe/recipes-bsp/lm_sensors/lmsensors=
_3.6.0.bb#n159</a></div><div>[3] <a href=3D"https://github.com/rpm-software=
-management/rpm/blob/master/scripts/perl.req" target=3D"_blank">https://git=
hub.com/rpm-software-management/rpm/blob/master/scripts/perl.req</a></div><=
div>[4] <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta=
/recipes-devtools/perl/files/perl-rdepends.txt" target=3D"_blank">http://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/perl/files=
/perl-rdepends.txt</a></div><div>[5] <a href=3D"https://git.openembedded.or=
g/meta-openembedded-contrib/commit/?h=3Dtimo/lmsensors-perldeps&amp;id=3D46=
7a6bdce3877b27253c932d806f853b916a8f9e" target=3D"_blank">https://git.opene=
mbedded.org/meta-openembedded-contrib/commit/?h=3Dtimo/lmsensors-perldeps&a=
mp;id=3D467a6bdce3877b27253c932d806f853b916a8f9e</a></div></div></div></blo=
ckquote><div dir=3D"auto">[6] <a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D13376">https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D13376</a></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;=
border-left-color:rgb(204,204,204)"><div dir=3D"ltr"><div class=3D"gmail_qu=
ote"><div dir=3D"auto"><a href=3D"https://git.openembedded.org/meta-openemb=
edded-contrib/commit/?h=3Dtimo/lmsensors-perldeps&amp;id=3D467a6bdce3877b27=
253c932d806f853b916a8f9e" target=3D"_blank"></a></div><div><br></div></div>=
</div><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 2, 202=
1 at 1:49 PM Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfound=
ation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border=
-left-color:rgb(204,204,204)">On Tue, 2021-03-02 at 20:42 +0000, Diego Sant=
a Cruz via <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" tar=
get=3D"_blank">lists.yoctoproject.org</a> wrote:<br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"=
_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.=
yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; On=
<br>
&gt; &gt; Behalf Of Steve Sakoman via <a href=3D"http://lists.yoctoproject=
.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a><br>
&gt; &gt; Sent: 02 March 2021 21:06<br>
&gt; &gt; To: Steve Sakoman &lt;<a href=3D"mailto:steve@sakoman.com" targe=
t=3D"_blank">steve@sakoman.com</a>&gt;<br>
&gt; &gt; Cc: <a href=3D"mailto:rustyhowell@gmail.com" target=3D"_blank">r=
ustyhowell@gmail.com</a>; Yocto (<a href=3D"mailto:yocto@lists.yoctoproject=
.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>)<br>
&gt; &gt; &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_b=
lank">yocto@lists.yoctoproject.org</a>&gt;<br>
&gt; &gt; Subject: Re: [yocto] Reducing the perl footprint on my image<br>
&gt; &gt; <br>
&gt; &gt; On Tue, Mar 2, 2021 at 10:01 AM Steve Sakoman via<br>
&gt; &gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" tar=
get=3D"_blank">lists.yoctoproject.org</a> &lt;steve=3D<a href=3D"mailto:sak=
oman.com@lists.yoctoproject.org" target=3D"_blank">sakoman.com@lists.yoctop=
roject.org</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; On Tue, Mar 2, 2021 at 6:26 AM &lt;<a href=3D"mailto:rustyh=
owell@gmail.com" target=3D"_blank">rustyhowell@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; I have an image that is using debian package managemen=
t<br>
&gt; &gt; (PACKAGE_CLASSES =3D &quot;package_deb&quot;).=C2=A0 Because apt=
 and dpkg require perl,<br>
&gt; &gt; perl is being installed in the image.=C2=A0 =C2=A0No problem.=C2=
=
=A0 Except that the entire perl<br>
&gt; &gt; stack is 669 packages.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I just took a look at the manifest for one of my images tha=
t includes<br>
&gt; &gt; &gt; PACKAGE_CLASSES =3D &quot;package_deb&quot;.=C2=A0 I see th=
e perl package plus 43<br>
&gt; &gt; &gt; perl-module packages.=C2=A0 Are you sure that something els=
e in your images<br>
&gt; &gt; &gt; isn&#39;t pulling in all of those other perl-module package=
s?<br>
&gt; &gt; <br>
&gt; &gt; It just occurred to me to make sure you are looking in the image=
<br>
&gt; &gt; manifest to see which packages are actually installed in your im=
age.<br>
&gt; &gt; The perl recipe does generate 676 packages (in dunfell) so perha=
ps you<br>
&gt; &gt; might be looking at the generated packages rather than the insta=
lled<br>
&gt; &gt; packages??<br>
&gt; &gt; <br>
&gt; <br>
&gt; I encountered a similar problem with package management enabled and r=
pm=C2=A0<br>
&gt; as package format, where I also just install rpm for package manageme=
nt=C2=A0<br>
&gt; and not all dnf stack. I get quite a lot of perl and python packages=
=C2=A0<br>
&gt; into the image which are pulled by the rpm package, but they are only=
<br>
&gt; needed for things like rpm-build, rpm-sign, etc., not for the bare=C2=
=
=A0<br>
&gt; rpm command, which is the only one I need in the image.<br>
&gt; <br>
&gt; So I locally extended the rpm recipe to split those tools into rpm-bu=
ild,=C2=A0<br>
&gt; rpm-sign and rpm-archive and skip those packages in the image. I shou=
ld=C2=A0<br>
&gt; probably send patches for that to oe-core. Is that something that cou=
ld<br>
&gt; be accepted?<br>
<br>
Not sure they need to go to separate packages but moving those=C2=A0<br>
three to some kind of &quot;build&quot; package would make a lot of sense<=
br>
to me at least.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"></div=
></div>
<br>
<br>
<br>
</blockquote></div></div>

--000000000000d5db3d05bcaa3821--
