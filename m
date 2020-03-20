Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web12.729.1584717453099695030
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 08:17:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=FfDRv5iL;
 spf=pass (domain: blade-group.com, ip: 209.85.210.53, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ot1-f53.google.com with SMTP id 111so6240304oth.13
        for <yocto@lists.yoctoproject.org>; Fri, 20 Mar 2020 08:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F9i0ENTVdhtBGUGB69pixDquiJTk3n1Vq8gsHXknCJg=;
        b=FfDRv5iLg6SONdfLuhSt/woQzkC1iY29zBXsFh3j5p8V+H69wFvBmKlbBEI7Dl4Rzu
         xwTEgOqVbd8xp/IV2gEHzRMpirOX7beoPcMkRhzoXv5OzaPLTrEQ+Ux+h9rTvA/NGnIa
         HaM9Yebp9awu9rh+dQb5fGypVETdLe1GEZwMqinw44qSBSVfAa1quL96FOjo5I5vSh3Q
         OSAFEJ6akLn4kaMWoQ6AUBMHd7LEvkv6/E2eVKV5PUcsrAKr+wX1TBtPXlUaicF7uR1G
         jCR5atc/9KTEdbx/0RWUYpUjFbGUqtNtmIjQRWsfMHqLEm+qV4SwMxWmVlj6/W2dsex+
         Gnew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F9i0ENTVdhtBGUGB69pixDquiJTk3n1Vq8gsHXknCJg=;
        b=XZOeVg3FyuzKWz5JNHVDx22U03MjGa775hAGpJIX4th7l5s3gn96e5Bnov5K40Av0D
         T43UTzODj3VN/KR16xe/gd9CXQWPRU2ligZRDdNZOLROusK8UCzzldgAUu0686am982h
         223+0CSFUX+l9W1Kk4PiOjt7GiObO8OQzRRPHdbRiVfZBMc5HO7M55lwRXykWdQQ7nYz
         mLF9JEAkiHLfJYzXKD10fa0LSB7+SjFVSKpjVNYATaNaJcZI7HjRQ4WRog6qNvBjeP6z
         lbPv+tvyhwVmqF8MB89eXObp9/no4QHz4UzN7/rJpae1MY+Ig63QBNzE/HVom0uoqHCN
         WthQ==
X-Gm-Message-State: ANhLgQ3qgHktZaMxV1iA827MhSmuIaKiV35Lg2hJkSr11PG9T39dOcL8
	eNCvn9MU/8uLXo39XXv6Thj1nWZLT2Xay1DVG9t1Lg==
X-Google-Smtp-Source: ADFU+vuHyhQ2RGEb7WGY5kMpJcNTL/0k0UHQ48M3ATP0GWl06oklXpXRJn2yPhTX2wSPMmdBFg8M17IHsifph01mRI8=
X-Received: by 2002:a05:6830:1c77:: with SMTP id s23mr7253473otg.191.1584717452231;
 Fri, 20 Mar 2020 08:17:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0jA_0QbKaRPmWMXss+Kt5kv_KbLvLHaCRKpY9PeVxM4w@mail.gmail.com>
 <CAM9ZRVsQ=76WUDkWpU4ssSVTd-F4cR+G3hzzop3TXH9ScdQ8vA@mail.gmail.com>
In-Reply-To: <CAM9ZRVsQ=76WUDkWpU4ssSVTd-F4cR+G3hzzop3TXH9ScdQ8vA@mail.gmail.com>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Fri, 20 Mar 2020 16:17:21 +0100
Message-ID: <CA+4=imb=hwywDtEUKBn=y2xXUSAaV-w1=_SP=zQqv86V2AOHYg@mail.gmail.com>
Subject: Re: [yocto] Patching submodules
To: Paul Barker <pbarker@konsulko.com>
Cc: Emily <easmith5555@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cf799d05a14ac8d6"

--000000000000cf799d05a14ac8d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Emily,

I'm not sure how the patch is generated, and (not using devtool myself) I
may understood your problem wrongly
(showing the relevant part of your diff could help), but you could try to
generate it yourself with
"git show --submodule=3Ddiff", that could be more palatable to quilt.

Le ven. 20 mars 2020 =C3=A0 16:09, Paul Barker <pbarker@konsulko.com> a =
=C3=A9crit :

> On Fri, 20 Mar 2020 at 04:10, Emily <easmith5555@gmail.com> wrote:
> >
> > Hi all -
> >
> > I have a recipe that I'd like to patch - the source is in a repo which
> has a submodule, and the patch occurs in the submodule. Is there a way I
> can apply this patch without getting an error? I do kind of understand w=
hy
> it's a problem - the patch is changing the pointer of the submodule to a
> commit which doesn't actually exist. Do I need to build the submodule as=
 a
> separate recipe and patch it separately maybe?
> >
> > I used devtool for the patch and if I don't run the devtool reset
> command, then everything builds, but I think this is just because the
> workspace created by devtool was added as a layer, which probably isn't =
a
> good long term solution.
> >
> > The error I get (pasted below) says I can "enforce with -f" but I'm no=
t
> sure where that option goes exactly. Thanks for the help!
> >
> > Emily
> >
> > Error on build:
> > ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Comma=
nd
> Error: 'quilt --quiltrc
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/=
opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/etc/q=
uiltrc
> push' exited with 0  Output:
> > Applying patch 0001-Update-Poverty-to-point-to-boost-python3.patch
> > File Poverty is not a regular file -- refusing to patch
> > 1 out of 1 hunk ignored -- rejects in file
> > Patch 0001-Update-Poverty-to-point-to-boost-python3.patch does not app=
ly
> (enforce with -f)
> > ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch:
> Function failed: patch_do_patch
>
> The issue appears to be that patches are applied using quilt which
> doesn't understand a patch like this. I don't know of a good solution
> to this other than making a new commit in the top level repository and
> updating SRCREV.
>
> Perhaps it's better to carry the diff within the submodule as a patch
> - so you leave the submodule commit pointer where it is and instead
> include all the necessary changes to the submodule in the patch. Would
> that work for you?
>=20
>


--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--000000000000cf799d05a14ac8d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Emily,</div><div><br></div><div>I&#39;m not sure h=
ow the patch is generated, and (not using devtool myself) I may understood =
your problem wrongly</div><div>(showing the relevant part of your diff coul=
d help), but you could try to generate it yourself with</div><div> &quot;gi=
t show --submodule=3Ddiff&quot;, that could be more palatable to quilt.<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">Le=C2=A0ven. 20 mars 2020 =C3=A0=C2=A016:09, Paul Barker &lt;<a href=
=3D"mailto:pbarker@konsulko.com">pbarker@konsulko.com</a>&gt; a =C3=A9crit=
=
=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri,=
 20 Mar 2020 at 04:10, Emily &lt;<a href=3D"mailto:easmith5555@gmail.com" t=
arget=3D"_blank">easmith5555@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all -<br>
&gt;<br>
&gt; I have a recipe that I&#39;d like to patch - the source is in a repo =
which has a submodule, and the patch occurs in the submodule. Is there a wa=
y I can apply this patch without getting an error? I do kind of understand =
why it&#39;s a problem - the patch is changing the pointer of the submodule=
 to a commit which doesn&#39;t actually exist. Do I need to build the submo=
dule as a separate recipe and patch it separately maybe?<br>
&gt;<br>
&gt; I used devtool for the patch and if I don&#39;t run the devtool reset=
 command, then everything builds, but I think this is just because the work=
space created by devtool was added as a layer, which probably isn&#39;t a g=
ood long term solution.<br>
&gt;<br>
&gt; The error I get (pasted below) says I can &quot;enforce with -f&quot;=
 but I&#39;m not sure where that option goes exactly. Thanks for the help!<=
br>
&gt;<br>
&gt; Emily<br>
&gt;<br>
&gt; Error on build:<br>
&gt; ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Comm=
and Error: &#39;quilt --quiltrc /local/d6/easmith5/rocko_bitbake/poky/build=
/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r=
0/recipe-sysroot-native/etc/quiltrc push&#39; exited with 0=C2=A0 Output:<b=
r>
&gt; Applying patch 0001-Update-Poverty-to-point-to-boost-python3.patch<br=
>
&gt; File Poverty is not a regular file -- refusing to patch<br>
&gt; 1 out of 1 hunk ignored -- rejects in file<br>
&gt; Patch 0001-Update-Poverty-to-point-to-boost-python3.patch does not ap=
ply (enforce with -f)<br>
&gt; ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Func=
tion failed: patch_do_patch<br>
<br>
The issue appears to be that patches are applied using quilt which<br>
doesn&#39;t understand a patch like this. I don&#39;t know of a good solut=
ion<br>
to this other than making a new commit in the top level repository and<br>
updating SRCREV.<br>
<br>
Perhaps it&#39;s better to carry the diff within the submodule as a patch<=
br>
- so you leave the submodule commit pointer where it is and instead<br>
include all the necessary changes to the submodule in the patch. Would<br>
that work for you?<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" ta=
rget=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=
=3D"http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></=
div>

--000000000000cf799d05a14ac8d6--
