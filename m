Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
 by mx.groups.io with SMTP id smtpd.web09.1949.1614803328757269280
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 12:28:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gs4ICog+;
 spf=pass (domain: gmail.com, ip: 209.85.166.41, mailfrom: ticotimo@gmail.com)
Received: by mail-io1-f41.google.com with SMTP id f20so27210098ioo.10
        for <yocto@lists.yoctoproject.org>; Wed, 03 Mar 2021 12:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7nZ5MYNpDB0M5kqaJMt42EPLMCqR2ntDS1CRKGSukrw=;
        b=Gs4ICog+KH70HXEKaKFGciOxGmKk3GagC/DsMVMmLfJ6gTs1LHgyo7YxIXL4t358TD
         7gnOVwwroECXIZU1Y0VVcibOY8NA7E5wI/ZiXGPUTYBXq5gmCV7G1gxs5uS+KfcN5v99
         0vtLQ2TXRP9g4NZ5JsSbTr8muRg3vbj8PKNj7RGWUOpzEa/lPmjNdiBuPjA5u4d46FtK
         61z7ho5wPNPv+C5pcL0SHH9a60Jqae83NjZ9LNNT/JMmGhCl5tcDWFZ69i1HxGyYkG+E
         m7uSgKe9eaUXBQ2el+ebcm8XTU7eFRYtZ3Kicy+SKNz1OmV5NYMbp/KsGIX4v5ts7f1C
         +aug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7nZ5MYNpDB0M5kqaJMt42EPLMCqR2ntDS1CRKGSukrw=;
        b=rmt6W2gt80xl4SLh0RWeD3hwj01nzWjtNh8oy8/r1U7wcZQ7WV3tgHW4sthVcFVsRy
         RyRtdGOpEhKFJuOam7aA8aZisXkIITUXBRNyPepXIWNXT/qy50LE5ZHgxzDVdMLLRs08
         lMvvPXGmntkIyu6E88kYJThnmEisXFoDoBUPtes7nQFyL+dJApRVRPhcffrGj7B2Gap1
         GtoXwKbi3pe6922ontzAuXJ4mbxUiNkHltcg5MiT4hNMjEb3sTDSCLmosnEAkL/Mj0K8
         0OwT5GfRwoFtYPpLpDStiwn6XZp+fzTpX+ztrJuSKDmja5SQYjfQSB4rotk01TsWHvWr
         Q3jw==
X-Gm-Message-State: AOAM531jzNX8UEyFIepbb2HjRmlB5vtPOBIGdzME3O/s3p0xYPbAhF3+
	SpXkmQohmsw36SO6GlApp5CkG/937e3zUg+CG6Q=
X-Google-Smtp-Source: ABdhPJxc4u6O1FLKRUWY1/xg6ZNDXR3AJRL55aA8R0QClq63ujjjU9SpdlQy76YJxCAgoVUSJUqr1QkJJE8mr93LUAE=
X-Received: by 2002:a02:9986:: with SMTP id a6mr714180jal.46.1614803327084;
 Wed, 03 Mar 2021 12:28:47 -0800 (PST)
MIME-Version: 1.0
References: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
 <16689EFE3DC0BB92.17298@lists.yoctoproject.org> <CAOSpxdYoviYhz4s9u2KY8ttwoFqo8v6VEzJ2vM79-j2LiQex1g@mail.gmail.com>
 <DB6PR0102MB263061D0B03C4DA90C7B89F188999@DB6PR0102MB2630.eurprd01.prod.exchangelabs.com>
 <2a6603ec08c0aee64364961c0d9eca0ef7ea6aaa.camel@linuxfoundation.org> <CAE+BM3m7SD30-JRG7S35KmwtKSuSqkRWQUyeSq3J3m0ACpu-Nw@mail.gmail.com>
In-Reply-To: <CAE+BM3m7SD30-JRG7S35KmwtKSuSqkRWQUyeSq3J3m0ACpu-Nw@mail.gmail.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Wed, 3 Mar 2021 12:28:33 -0800
Message-ID: <CANx9H-Cr5Cz70=0Rq+Hi5_44doLp41L5aB2mEXYZQtWhj80ynQ@mail.gmail.com>
Subject: Re: [yocto] Reducing the perl footprint on my image
To: Rusty Howell <rustyhowell@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, diego.santacruz@spinetix.com, 
	"steve@sakoman.com" <steve@sakoman.com>, 
	"Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b16b2f05bca7b23a"

--000000000000b16b2f05bca7b23a
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 3, 2021 at 7:06 AM Rusty Howell <rustyhowell@gmail.com> wrote:

> Steve, you're right.  My image.bb is adding various lmsensors packages to
> the IMAGE_INSTALL, some of which depend on perl-modules.   perl-modules
> seems to be the big monster, not perl.  We need lmsensors.  So I guess my
> question is really, how can I (or can I at all) reduce the footprint of
> perl-modules?  perl-modules doesn't have any Depends, rather it has a long
> list (~ 670) of Recommends.
>
>
If you look at the lmsensors recipe, the lmsensors-sensorsdetect [1] and
lmsensors-sensorsconfconvert [2] subpackages both have perl-modules in
RDEPENDS.
One way to determine the ACTUAL dependencies is to run the perl.req script
from rpm [3].

$ perl.req sensors-detect
perl >= 0:5.004
perl(Fcntl)
perl(File::Basename)
perl(constant)
perl(strict)
perl(vars)

$ perl.req sensors-conf-convert
perl(strict)
perl(vars)

You then need to translate those into the perl-modules-* subpackages, which
is easiest to see in perl-rdepends.txt [4].

I have not built nor tested this, but using the described approach I have a
patch for lmsensors [5].

Please cherry-pick, test and if it works, add your signed-off-by and submit
to the mailing list.

[1]
https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-bsp/lm_sensors/lmsensors_3.6.0.bb#n154
[2]
https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-bsp/lm_sensors/lmsensors_3.6.0.bb#n159
[3]
https://github.com/rpm-software-management/rpm/blob/master/scripts/perl.req
[4]
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/perl/files/perl-rdepends.txt
[5]
https://git.openembedded.org/meta-openembedded-contrib/commit/?h=timo/lmsensors-perldeps&id=467a6bdce3877b27253c932d806f853b916a8f9e

On Tue, Mar 2, 2021 at 1:49 PM Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>
>> On Tue, 2021-03-02 at 20:42 +0000, Diego Santa Cruz via
>> lists.yoctoproject.org wrote:
>> > > -----Original Message-----
>> > > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
>> > > Behalf Of Steve Sakoman via lists.yoctoproject.org
>> > > Sent: 02 March 2021 21:06
>> > > To: Steve Sakoman <steve@sakoman.com>
>> > > Cc: rustyhowell@gmail.com; Yocto (yocto@lists.yoctoproject.org)
>> > > <yocto@lists.yoctoproject.org>
>> > > Subject: Re: [yocto] Reducing the perl footprint on my image
>> > >
>> > > On Tue, Mar 2, 2021 at 10:01 AM Steve Sakoman via
>> > > lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
>> > > wrote:
>> > > >
>> > > > On Tue, Mar 2, 2021 at 6:26 AM <rustyhowell@gmail.com> wrote:
>> > > > >
>> > > > > I have an image that is using debian package management
>> > > (PACKAGE_CLASSES = "package_deb").  Because apt and dpkg require perl,
>> > > perl is being installed in the image.   No problem.  Except that the
>> entire perl
>> > > stack is 669 packages.
>> > > >
>> > > > I just took a look at the manifest for one of my images that
>> includes
>> > > > PACKAGE_CLASSES = "package_deb".  I see the perl package plus 43
>> > > > perl-module packages.  Are you sure that something else in your
>> images
>> > > > isn't pulling in all of those other perl-module packages?
>> > >
>> > > It just occurred to me to make sure you are looking in the image
>> > > manifest to see which packages are actually installed in your image.
>> > > The perl recipe does generate 676 packages (in dunfell) so perhaps you
>> > > might be looking at the generated packages rather than the installed
>> > > packages??
>> > >
>> >
>> > I encountered a similar problem with package management enabled and rpm
>> > as package format, where I also just install rpm for package management
>> > and not all dnf stack. I get quite a lot of perl and python packages
>> > into the image which are pulled by the rpm package, but they are only
>> > needed for things like rpm-build, rpm-sign, etc., not for the bare
>> > rpm command, which is the only one I need in the image.
>> >
>> > So I locally extended the rpm recipe to split those tools into
>> rpm-build,
>> > rpm-sign and rpm-archive and skip those packages in the image. I should
>> > probably send patches for that to oe-core. Is that something that could
>> > be accepted?
>>
>> Not sure they need to go to separate packages but moving those
>> three to some kind of "build" package would make a lot of sense
>> to me at least.
>>
>> Cheers,
>>
>> Richard
>>
>>
> 
>
>

--000000000000b16b2f05bca7b23a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 3, 2021 at 7:06 AM Rusty =
Howell &lt;<a href=3D"mailto:rustyhowell@gmail.com">rustyhowell@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div>Steve, you&#39;re right.=C2=A0 My <a href=3D"http://ima=
ge.bb" target=3D"_blank">image.bb</a> is adding various lmsensors packages =
to the IMAGE_INSTALL, some of which depend on perl-modules.=C2=A0=C2=A0 per=
l-modules seems to be the big monster, not perl.=C2=A0 We need lmsensors.=
=C2=A0 So I guess my question is really, how can I (or can I at all) reduc=
e the footprint of perl-modules?=C2=A0 perl-modules doesn&#39;t have any De=
pends, rather it has a long list (~ 670) of Recommends.=C2=A0 <br></div></d=
iv><br></blockquote><div><br></div><div>If you look at the lmsensors recipe=
, the lmsensors-sensorsdetect [1] and lmsensors-sensorsconfconvert [2] subp=
ackages both have perl-modules in RDEPENDS.</div><div>One way to determine =
the ACTUAL dependencies is to run the perl.req script from rpm [3].</div><d=
iv><br></div><div>$ perl.req sensors-detect</div><div>perl &gt;=3D 0:5.004<=
/div><div>perl(Fcntl)</div><div>perl(File::Basename)</div><div>perl(constan=
t)</div><div>perl(strict)</div><div>perl(vars)</div><div><br></div><div>$ p=
erl.req sensors-conf-convert</div><div>perl(strict)</div><div>perl(vars)</d=
iv><div><br> </div><div>You then need to translate those into the perl-modu=
les-* subpackages, which is easiest to see in perl-rdepends.txt [4].</div><=
div><br></div><div>I have not built nor tested this, but using the describe=
d approach I have a patch for lmsensors [5].</div><div><br></div><div>Pleas=
e cherry-pick, test and if it works, add your signed-off-by and submit to t=
he mailing list.</div><div><br></div><div>[1] <a href=3D"https://git.openem=
bedded.org/meta-openembedded/tree/meta-oe/recipes-bsp/lm_sensors/lmsensors_=
3.6.0.bb#n154">https://git.openembedded.org/meta-openembedded/tree/meta-oe/=
recipes-bsp/lm_sensors/lmsensors_3.6.0.bb#n154</a></div><div>[2] <a href=3D=
"https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-bsp/lm=
_sensors/lmsensors_3.6.0.bb#n159">https://git.openembedded.org/meta-openemb=
edded/tree/meta-oe/recipes-bsp/lm_sensors/lmsensors_3.6.0.bb#n159</a></div>=
<div>[3] <a href=3D"https://github.com/rpm-software-management/rpm/blob/mas=
ter/scripts/perl.req">https://github.com/rpm-software-management/rpm/blob/m=
aster/scripts/perl.req</a></div><div>[4] <a href=3D"http://git.yoctoproject=
.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/perl/files/perl-rdepends=
.txt">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devt=
ools/perl/files/perl-rdepends.txt</a></div><div>[5] <a href=3D"https://git.=
openembedded.org/meta-openembedded-contrib/commit/?h=3Dtimo/lmsensors-perld=
eps&amp;id=3D467a6bdce3877b27253c932d806f853b916a8f9e">https://git.openembe=
dded.org/meta-openembedded-contrib/commit/?h=3Dtimo/lmsensors-perldeps&amp;=
id=3D467a6bdce3877b27253c932d806f853b916a8f9e</a></div><div><br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 2, 2021 at 1:49 PM Richard P=
urdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_=
blank">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">On Tue, 2021-03-02 at 20:42 +0000,=
 Diego Santa Cruz via <a href=3D"http://lists.yoctoproject.org" rel=3D"nore=
ferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br>
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
</blockquote></div></div>

--000000000000b16b2f05bca7b23a--
