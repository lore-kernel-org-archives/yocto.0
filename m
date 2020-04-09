Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web12.16361.1586458888336809886
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 12:01:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TP1nfOl7;
 spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: jpewhacker@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id c195so3188949wme.1
        for <yocto@lists.yoctoproject.org>; Thu, 09 Apr 2020 12:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XvXQz3ezV1Q7jvUmmrj3uItCM4lZJz0T1LO6/Jq6U40=;
        b=TP1nfOl7zP+9O+gGm4WX2Y8Wi1b6Z7dKH+cs+sVFKR0Ec61r1GTnRAKXnz7xG75fGw
         Ugs5FJRXu+5JQviv6LN65+PJ1exkgLWko9XjwRhvRe0Lnoskj/SseqFX1zZjnlflVVRc
         j6hYZwFLBZEqaVaaxTgMXv94XD1iNwxlT2wBP8L9nUk0cnXBogyQ1QFkLC59WVwlFCEO
         ijItcdWV9+W8ujCx706D29EBWqA3tqqcLkhCqrC3GJDg/9wV1T2Dd10lR99ueXSAFcTl
         Lfi5cxuoHDW8EIcj1w6eFoYVF4xVObxprdgjBlCc6Ed/7iex6iQxSfELKp7WrnhA+QUo
         9pOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XvXQz3ezV1Q7jvUmmrj3uItCM4lZJz0T1LO6/Jq6U40=;
        b=uY/juCnxSz/CP1g1Pdlifp1DecJl5L4+hM54BGy5+FLjPL2PhX9TQmEGHi/7SYco4j
         osuzKsP8woXQ7IKnjhk/sTB6dnJJWx49y7DXDIxckjtH6x2a5GIre4AnQm8H6TL4kGBh
         IR8+ytY5/Cn6W26AsjQudRQ+hmFro/LPYg+vKfqplERyEVMEsKY7evz5XuFBDMbeedKB
         kipluqCjsQEenkwfwtWpk7YiaiY4qSzFYCuYUJHxX6Dc2LYl1G5ODs5uUlJv9H/+dXT9
         VwZ1cVvJDn69MhRIi9gf+PKGj1RaXooTpKobKI//Y7JD1p6794+ymESBtao1ee5/+MEB
         yj7A==
X-Gm-Message-State: AGi0Pub/DFH8LDZi/kTcREohKEzAHPIDLv1AfgP7el1dFSw6He7O+ZBV
	j4jOEfzzMwn9WOAgHJYj2zX1E/IiR1f6HJEVqWo=
X-Google-Smtp-Source: APiQypKA+VoffVExHT0hxqHYMk4rN1uayJmlzTAA9OuniylE5YKIaMZ5on1z93nVQ0LC83b2BcF+8jCsk9n4RMPAzM0=
X-Received: by 2002:a7b:c10d:: with SMTP id w13mr1262501wmi.78.1586458886837;
 Thu, 09 Apr 2020 12:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <16039EE1565C42EA.9427@lists.yoctoproject.org> <TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
 <c0573df2-dbcd-592e-ba2e-d54424e320b3@gmail.com> <TU4PR8401MB115164EF01BE99951B1C721782C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
 <CADkTA4N2orLtACov958hAps2PtJxOODF8rFYHF_96XY9UwFjpg@mail.gmail.com>
In-Reply-To: <CADkTA4N2orLtACov958hAps2PtJxOODF8rFYHF_96XY9UwFjpg@mail.gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Thu, 9 Apr 2020 14:01:16 -0500
Message-ID: <CAJdd5GZJ+0mCo9BTwc4kfQqVxbaHkzkR8EuL6oQRH2W47OdytQ@mail.gmail.com>
Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismatch
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Sean McKay <sean.mckay@hpe.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000669b4a05a2e03ed4"

--000000000000669b4a05a2e03ed4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 9, 2020, 12:52 PM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Thu, Apr 9, 2020 at 1:21 PM Sean McKay <sean.mckay@hpe.com> wrote:
> >
> > I don=E2=80=99t know offhand, but the kernel documentation seems relat=
ively
> straightforward.
> >
> > I can start investigating in that direction and see how complex it loo=
ks
> like it=E2=80=99s going to be.
> >
>
> I can tweak linux-yocto in the direction of reproducibility without
> much trouble (for the build part). But I'm a bit out of my normal flow
> for testing that it really is reproducible. So if anyone can point me
> at what they are running to currently test that .. I can do the build
> part.
>

Reproducible builds are part of the standard OE QA tests. You can run them
with:

 oe-selftest -r reproducible

It currently tests core-image-sato, which I thought would cover the kernel=
,
so I'm a little surprised it's not. Anyway, you can easily modify the
reporducible.py test file to build whatever you want, since doing the full
core-image-sato build can be pretty slow


> Bruce
>
> >
> >
> > When you say that reproducible builds are turned on by default, is the=
re
> a flag somewhere that can be used to turn that off that I need to gate
> these changes behind? Or can they be made globally so that the
> reproducibility can=E2=80=99t be turned off (easily)?
> >
> >
> >
> >
> >
> > Do we expect to generally be okay with letting this sort of race
> condition remain in sstate? I concede that it=E2=80=99s probably okay, s=
ince I
> think the kernel is the only thing with this kind of forking task tree
> behavior after do_compile, and if we get 100% reproducible builds workin=
g,
> it=E2=80=99s not overly relevant=E2=80=A6 but it seems like it probably =
deserves a warning
> somewhere in the documentation.
> >
> >
> >
> > I can also bring this question to the next technical meeting (I know I
> just missed one) if it seems the sort of thing we need to get consensus.
> >
> >
> >
> > Cheers!
> >
> > -Sean
> >
> >
> >
> >
> >
> >
> >
> > From: Joshua Watt <jpewhacker@gmail.com>
> > Sent: Thursday, April 9, 2020 10:00 AM
> > To: McKay, Sean <sean.mckay@hpe.com>; yocto@lists.yoctoproject.org
> > Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismatc=
h
> >
> >
> >
> >
> >
> > On 4/9/20 11:42 AM, Sean McKay wrote:
> >
> > Anyone have any thoughts or guidance on this?
> >
> > It seems like a pretty major bug to me.
> >
> >
> >
> > We=E2=80=99re willing to put the work in to fix it, and if it=E2=80=99=
s not something
> the upstream community is interested in, I=E2=80=99ll just pick a soluti=
on for us
> and go with it.
> >
> > But if it=E2=80=99s something that we=E2=80=99d like me to upstream, I=
=
=E2=80=99d like some
> feedback on which path I should start walking down before I start taking
> things apart.
> >
> >
> >
> > We have had a recent push for reproducible builds (and they are now
> enabled by default). Do you have any idea how much effort it would take =
to
> make the kernel build reproducibly? It's something we probably want anyw=
ay,
> and can add to the automated testing infrastructure to ensure it doesn't
> regress.
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > Cheers!
> >
> > -Sean
> >
> >
> >
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Sean McKay
> > Sent: Tuesday, April 7, 2020 12:03 PM
> > To: yocto@lists.yoctoproject.org
> > Subject: [yocto] sstate causing stripped kernel vs symbols mismatch
> >
> >
> >
> > Hi all,
> >
> >
> >
> > We=E2=80=99ve discovered that (quite frequently) the kernel that we de=
ploy
> doesn=E2=80=99t match the unstripped one that we=E2=80=99re saving for d=
ebug symbols. I=E2=80=99ve
> traced the issue to a combination of an sstate miss for the kernel
> do_deploy step combined with an sstate hit for do_package_write_rpm. (si=
de
> note: we know we have issues with sstate reuse/stamps including things t=
hey
> shouldn=E2=80=99t which is why we hit this so much. We=E2=80=99re workin=
g on that too)
> >
> >
> >
> > The result is that when our debug rootfs is created (where we added th=
e
> kernel symbols), it=E2=80=99s got the version of the kernel from the sst=
ate cached
> rpm files, but since do_deploy had an sstate miss, the entire kernel get=
s
> rebuilt to satisfy that dependency chain. Since the kernel doesn=E2=80=
=99t have
> reproducible builds working, the resulting pair of kernels don=E2=80=99t=
 match each
> other for debug purposes.
> >
> >
> >
> > So, I have two questions to start:
> >
> > What is the recommended way to be getting debug symbols for the kernel=
,
> since do_deploy doesn=E2=80=99t seem to have a debug counterpart (which =
is why we
> originally just set things up to add the rpm to the generated debug root=
fs)
> > Does this seem like a bug that should be fixed? If so, what would be t=
he
> recommended solution (more thoughts below)?
> >
> >
> >
> > Even if there=E2=80=99s a task somewhere that does what I=E2=80=99m lo=
oking for, this
> seems like a bit of a bug. I generally feel like we want to be able to
> trust sstate, so the fact that forking dependencies that each generate
> their own sstate objects can be out of sync is a bit scary.
> >
> > I=E2=80=99ve thought of several ways around this, but I can=E2=80=99t =
say I like any of
> them.
> >
> > (extremely gross hack) Create a new task to use instead of do_deploy
> that depends on do_packagegroup_write_rpm. Unpack the restored (or built=
)
> RPMs and use those blobs to deploy the kernel and symbols to the image
> directory.
> > (gross hack with painful effects on build time) Disable sstate for
> do_package_write_rpm and do_deploy. Possibly replace with sstate logic f=
or
> the kernel=E2=80=99s do_install step (side question =E2=80=93 why doesn=
=E2=80=99t do_install
> generate sstate? It seems like it should be able to, since the point is =
to
> drop everything into the image directory)
> > (possibly better, but sounds hard) Change the sstate logic so that if
> anything downstream of a do_compile task needs to be rerun, everything
> downstream of it needs to be rerun and sstate reuse for that recipe is n=
ot
> allowed (basically all or nothing sstate). Maybe with a flag that=E2=80=
=99s allowed
> in the bitbake file to indicate that a recipe does have reproducible bui=
lds
> and that different pieces are allowed to come from sstate in that case.
> > (fix the symptoms but not the problem) Figure out how to get linux-yoc=
to
> building in a reproducible fashion and pretend the problem doesn=E2=80=
=99t exist.
> >
> >
> >
> >
> >
> > If you=E2=80=99re interested, this is quite easy to reproduce =E2=80=
=93 these are my
> repro steps
> >
> > Check out a clean copy of zeus (22.0.2)
> > Add kernel-image to core-image-minimal in whatever fashion you choose =
(I
> just dumped it in the RDEPENDS for packagegroup-core-boot for testing)
> > bitbake core-image-minimal
> > bitbake -c clean core-image-minimal linux-yocto (or just wipe your who=
le
> build dir, since everything should come from sstate now)
> > Delete the sstate object(s) for linux-yocto=E2=80=99s deploy task.
> > bitbake core-image-minimal
> > Compare the BuildID hashes for the kernel in the two locations using
> file (you=E2=80=99ll need to use the kernel=E2=80=99s extract-vmlinux sc=
ript to get it out
> of the bzImage)
> >
> > file
> tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/boot/vml=
inux-5.2.28-yocto-standard
> > ./tmp/work-shared/qemux86-64/kernel-source/scripts/extract-vmlinux
> tmp/deploy/images/qemux86-64/bzImage > vmlinux-deploy && file vmlinux-de=
ploy
> >
> >
> >
> > Anyone have thoughts or suggestions?
> >
> >
> >
> > Cheers!
> >
> > -Sean McKay
> >
> >
> >
> >=20
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

--000000000000669b4a05a2e03ed4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Apr 9, 2020, 12:52 PM Bruce Ashfield &lt;<a hr=
ef=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">On Thu, Apr 9, 2020 at 1:21 PM =
Sean McKay &lt;<a href=3D"mailto:sean.mckay@hpe.com" target=3D"_blank" rel=
=3D"noreferrer">sean.mckay@hpe.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I don=E2=80=99t know offhand, but the kernel documentation seems rela=
tively straightforward.<br>
&gt;<br>
&gt; I can start investigating in that direction and see how complex it lo=
oks like it=E2=80=99s going to be.<br>
&gt;<br>
<br>
I can tweak linux-yocto in the direction of reproducibility without<br>
much trouble (for the build part). But I&#39;m a bit out of my normal flow=
<br>
for testing that it really is reproducible. So if anyone can point me<br>
at what they are running to currently test that .. I can do the build<br>
part.<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Reproducible builds are part of the standard OE QA tests. You can run=
 them with:</div><div dir=3D"auto"><br></div><div dir=3D"auto">=C2=A0oe-sel=
ftest -r reproducible</div><div dir=3D"auto"><br></div><div dir=3D"auto">It=
 currently tests core-image-sato, which I thought would cover the kernel, s=
o I&#39;m a little surprised it&#39;s not. Anyway, you can easily modify th=
e reporducible.py test file to build whatever you want, since doing the ful=
l core-image-sato build can be pretty slow</div><div dir=3D"auto"><br></div=
><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<br>
Bruce<br>
<br>
&gt;<br>
&gt;<br>
&gt; When you say that reproducible builds are turned on by default, is th=
ere a flag somewhere that can be used to turn that off that I need to gate =
these changes behind? Or can they be made globally so that the reproducibil=
ity can=E2=80=99t be turned off (easily)?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Do we expect to generally be okay with letting this sort of race cond=
ition remain in sstate? I concede that it=E2=80=99s probably okay, since I =
think the kernel is the only thing with this kind of forking task tree beha=
vior after do_compile, and if we get 100% reproducible builds working, it=
=E2=80=99s not overly relevant=E2=80=A6 but it seems like it probably dese=
rves a warning somewhere in the documentation.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I can also bring this question to the next technical meeting (I know =
I just missed one) if it seems the sort of thing we need to get consensus.<=
br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Cheers!<br>
&gt;<br>
&gt; -Sean<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; From: Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">jpewhacker@gmail.com</a>&gt;<br>
&gt; Sent: Thursday, April 9, 2020 10:00 AM<br>
&gt; To: McKay, Sean &lt;<a href=3D"mailto:sean.mckay@hpe.com" target=3D"_=
blank" rel=3D"noreferrer">sean.mckay@hpe.com</a>&gt;; <a href=3D"mailto:yoc=
to@lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">yocto@lists=
.yoctoproject.org</a><br>
&gt; Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismat=
ch<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On 4/9/20 11:42 AM, Sean McKay wrote:<br>
&gt;<br>
&gt; Anyone have any thoughts or guidance on this?<br>
&gt;<br>
&gt; It seems like a pretty major bug to me.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; We=E2=80=99re willing to put the work in to fix it, and if it=E2=80=
=99s not something the upstream community is interested in, I=E2=80=99ll j=
ust pick a solution for us and go with it.<br>
&gt;<br>
&gt; But if it=E2=80=99s something that we=E2=80=99d like me to upstream, =
I=E2=80=99d like some feedback on which path I should start walking down be=
fore I start taking things apart.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; We have had a recent push for reproducible builds (and they are now e=
nabled by default). Do you have any idea how much effort it would take to m=
ake the kernel build reproducibly? It&#39;s something we probably want anyw=
ay, and can add to the automated testing infrastructure to ensure it doesn&=
#39;t regress.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Cheers!<br>
&gt;<br>
&gt; -Sean<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k" rel=3D"noreferrer">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailt=
o:yocto@lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">yocto@=
lists.yoctoproject.org</a>&gt; On Behalf Of Sean McKay<br>
&gt; Sent: Tuesday, April 7, 2020 12:03 PM<br>
&gt; To: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank"=
 rel=3D"noreferrer">yocto@lists.yoctoproject.org</a><br>
&gt; Subject: [yocto] sstate causing stripped kernel vs symbols mismatch<b=
r>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; We=E2=80=99ve discovered that (quite frequently) the kernel that we d=
eploy doesn=E2=80=99t match the unstripped one that we=E2=80=99re saving fo=
r debug symbols. I=E2=80=99ve traced the issue to a combination of an sstat=
e miss for the kernel do_deploy step combined with an sstate hit for do_pac=
kage_write_rpm. (side note: we know we have issues with sstate reuse/stamps=
 including things they shouldn=E2=80=99t which is why we hit this so much. =
We=E2=80=99re working on that too)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; The result is that when our debug rootfs is created (where we added t=
he kernel symbols), it=E2=80=99s got the version of the kernel from the sst=
ate cached rpm files, but since do_deploy had an sstate miss, the entire ke=
rnel gets rebuilt to satisfy that dependency chain. Since the kernel doesn=
=E2=80=99t have reproducible builds working, the resulting pair of kernels=
 don=E2=80=99t match each other for debug purposes.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; So, I have two questions to start:<br>
&gt;<br>
&gt; What is the recommended way to be getting debug symbols for the kerne=
l, since do_deploy doesn=E2=80=99t seem to have a debug counterpart (which =
is why we originally just set things up to add the rpm to the generated deb=
ug rootfs)<br>
&gt; Does this seem like a bug that should be fixed? If so, what would be =
the recommended solution (more thoughts below)?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Even if there=E2=80=99s a task somewhere that does what I=E2=80=99m l=
ooking for, this seems like a bit of a bug. I generally feel like we want t=
o be able to trust sstate, so the fact that forking dependencies that each =
generate their own sstate objects can be out of sync is a bit scary.<br>
&gt;<br>
&gt; I=E2=80=99ve thought of several ways around this, but I can=E2=80=99t=
 say I like any of them.<br>
&gt;<br>
&gt; (extremely gross hack) Create a new task to use instead of do_deploy =
that depends on do_packagegroup_write_rpm. Unpack the restored (or built) R=
PMs and use those blobs to deploy the kernel and symbols to the image direc=
tory.<br>
&gt; (gross hack with painful effects on build time) Disable sstate for do=
_package_write_rpm and do_deploy. Possibly replace with sstate logic for th=
e kernel=E2=80=99s do_install step (side question =E2=80=93 why doesn=E2=80=
=
=99t do_install generate sstate? It seems like it should be able to, since=
 the point is to drop everything into the image directory)<br>
&gt; (possibly better, but sounds hard) Change the sstate logic so that if=
 anything downstream of a do_compile task needs to be rerun, everything dow=
nstream of it needs to be rerun and sstate reuse for that recipe is not all=
owed (basically all or nothing sstate). Maybe with a flag that=E2=80=99s al=
lowed in the bitbake file to indicate that a recipe does have reproducible =
builds and that different pieces are allowed to come from sstate in that ca=
se.<br>
&gt; (fix the symptoms but not the problem) Figure out how to get linux-yo=
cto building in a reproducible fashion and pretend the problem doesn=E2=80=
=99t exist.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; If you=E2=80=99re interested, this is quite easy to reproduce =E2=80=
=93 these are my repro steps<br>
&gt;<br>
&gt; Check out a clean copy of zeus (22.0.2)<br>
&gt; Add kernel-image to core-image-minimal in whatever fashion you choose=
 (I just dumped it in the RDEPENDS for packagegroup-core-boot for testing)<=
br>
&gt; bitbake core-image-minimal<br>
&gt; bitbake -c clean core-image-minimal linux-yocto (or just wipe your wh=
ole build dir, since everything should come from sstate now)<br>
&gt; Delete the sstate object(s) for linux-yocto=E2=80=99s deploy task.<br=
>
&gt; bitbake core-image-minimal<br>
&gt; Compare the BuildID hashes for the kernel in the two locations using =
file (you=E2=80=99ll need to use the kernel=E2=80=99s extract-vmlinux scrip=
t to get it out of the bzImage)<br>
&gt;<br>
&gt; file tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/=
boot/vmlinux-5.2.28-yocto-standard<br>
&gt; ./tmp/work-shared/qemux86-64/kernel-source/scripts/extract-vmlinux tm=
p/deploy/images/qemux86-64/bzImage &gt; vmlinux-deploy &amp;&amp; file vmli=
nux-deploy<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Anyone have thoughts or suggestions?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Cheers!<br>
&gt;<br>
&gt; -Sean McKay<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <br>
<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div></div></div>

--000000000000669b4a05a2e03ed4--
