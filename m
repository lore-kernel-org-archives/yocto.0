Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.14991.1586454756319630391
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 10:52:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rJfo7tsN;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id bd14so887232edb.10
        for <yocto@lists.yoctoproject.org>; Thu, 09 Apr 2020 10:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5Henvj6FvXru6X9SwtVX+oVg1NNJ4HnUZp3sLZP2xIk=;
        b=rJfo7tsNlJBg0hu4Oi7nLssTxUqrNObMROWLGIRxhUXBIZgxRW1PZSDXOBQE0OrA+J
         IzYFV16P+LnJ/EIeBkXHRNt2bS2MS2UPaB4wQBTKZo14OIg95Sk005HmB8P+rYG7aRWI
         HCDaEi/l4QRDRKQeLBA/hY1GjYsiwPDVSHLurUty00uWbxMqpcRfaCB5/IyzP0sFa0qa
         QZaCu1UFLQ59CYmqpCLh6xBmLIVfymTasheFAwysLa3QiTYj4FX6RMnmcSdUArU39sV/
         GAJya4RX6D/hAC/f8/s2KI0Z/Z0K1jiRVLvRKiMROvUMRj1aRB+Dxh9Ncv4XTTuI7TlY
         xUww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5Henvj6FvXru6X9SwtVX+oVg1NNJ4HnUZp3sLZP2xIk=;
        b=Ksy0JNYSaNCFAevaezVdP/eZbDzm7baR3pchklvz/k+9phuPFjQ5mdoL6ZKRtsLgne
         b5udwHhprZ8Rxvc6B82+x+liPiJ9qUe9/nL4GvOWrBakhR8yX5WEn/ZbwlaTV5qSrZBv
         mysSsRQ2slRzIHtKGM1q7yhf5aIIY9ZZ0m//T9HtYoYNQl/fC8gCvgFGCOpqDC4aEiis
         CNwDIGKAYgVkaWBmtYe4+m0CNqHzZ2XXqVuYNJ5HjzkfdNclLlahjGNG5k3k320JnFvR
         jmpgoyaYPOiknVpHA3kEZwY7rluxBFNwJQcw5GtFMOmNE7iy0wWo7+ozs/GovoaBaJbB
         n6yQ==
X-Gm-Message-State: AGi0PubQf9n77fC0vaberSu3+ZlZFayfYNqkgGpxsEieDakyHQyLP4Yq
	hWC9y9I446usfw+QJkN9P128TWTSEYSZi/VLM48=
X-Google-Smtp-Source: APiQypIw6JleorwOmNFQShQ7Wp2O119xM0UoDKK3m4APnGOOvS58yFMOFgyOSg9dt3w16PqN7ZxntBFLirq2DTmKpIY=
X-Received: by 2002:a17:906:7486:: with SMTP id e6mr190909ejl.181.1586454754717;
 Thu, 09 Apr 2020 10:52:34 -0700 (PDT)
MIME-Version: 1.0
References: <16039EE1565C42EA.9427@lists.yoctoproject.org> <TU4PR8401MB11518EBC3EB5C53C1A3DE46082C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
 <c0573df2-dbcd-592e-ba2e-d54424e320b3@gmail.com> <TU4PR8401MB115164EF01BE99951B1C721782C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <TU4PR8401MB115164EF01BE99951B1C721782C10@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Thu, 9 Apr 2020 13:52:23 -0400
Message-ID: <CADkTA4N2orLtACov958hAps2PtJxOODF8rFYHF_96XY9UwFjpg@mail.gmail.com>
Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismatch
To: Sean McKay <sean.mckay@hpe.com>
Cc: Joshua Watt <jpewhacker@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 9, 2020 at 1:21 PM Sean McKay <sean.mckay@hpe.com> wrote:
>
> I don=E2=80=99t know offhand, but the kernel documentation seems relativ=
ely straightforward.
>
> I can start investigating in that direction and see how complex it looks=
 like it=E2=80=99s going to be.
>

I can tweak linux-yocto in the direction of reproducibility without
much trouble (for the build part). But I'm a bit out of my normal flow
for testing that it really is reproducible. So if anyone can point me
at what they are running to currently test that .. I can do the build
part.

Bruce

>
>
> When you say that reproducible builds are turned on by default, is there=
 a flag somewhere that can be used to turn that off that I need to gate the=
se changes behind? Or can they be made globally so that the reproducibility=
 can=E2=80=99t be turned off (easily)?
>
>
>
>
>
> Do we expect to generally be okay with letting this sort of race conditi=
on remain in sstate? I concede that it=E2=80=99s probably okay, since I thi=
nk the kernel is the only thing with this kind of forking task tree behavio=
r after do_compile, and if we get 100% reproducible builds working, it=E2=
=80=99s not overly relevant=E2=80=A6 but it seems like it probably deserve=
s a warning somewhere in the documentation.
>
>
>
> I can also bring this question to the next technical meeting (I know I j=
ust missed one) if it seems the sort of thing we need to get consensus.
>
>
>
> Cheers!
>
> -Sean
>
>
>
>
>
>
>
> From: Joshua Watt <jpewhacker@gmail.com>
> Sent: Thursday, April 9, 2020 10:00 AM
> To: McKay, Sean <sean.mckay@hpe.com>; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] sstate causing stripped kernel vs symbols mismatch
>
>
>
>
>
> On 4/9/20 11:42 AM, Sean McKay wrote:
>
> Anyone have any thoughts or guidance on this?
>
> It seems like a pretty major bug to me.
>
>
>
> We=E2=80=99re willing to put the work in to fix it, and if it=E2=80=99s =
not something the upstream community is interested in, I=E2=80=99ll just pi=
ck a solution for us and go with it.
>
> But if it=E2=80=99s something that we=E2=80=99d like me to upstream, I=
=E2=80=99d like some feedback on which path I should start walking down be=
fore I start taking things apart.
>
>
>
> We have had a recent push for reproducible builds (and they are now enab=
led by default). Do you have any idea how much effort it would take to make=
 the kernel build reproducibly? It's something we probably want anyway, and=
 can add to the automated testing infrastructure to ensure it doesn't regre=
ss.
>
>
>
>
>
>
>
>
>
> Cheers!
>
> -Sean
>
>
>
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beh=
alf Of Sean McKay
> Sent: Tuesday, April 7, 2020 12:03 PM
> To: yocto@lists.yoctoproject.org
> Subject: [yocto] sstate causing stripped kernel vs symbols mismatch
>
>
>
> Hi all,
>
>
>
> We=E2=80=99ve discovered that (quite frequently) the kernel that we depl=
oy doesn=E2=80=99t match the unstripped one that we=E2=80=99re saving for d=
ebug symbols. I=E2=80=99ve traced the issue to a combination of an sstate m=
iss for the kernel do_deploy step combined with an sstate hit for do_packag=
e_write_rpm. (side note: we know we have issues with sstate reuse/stamps in=
cluding things they shouldn=E2=80=99t which is why we hit this so much. We=
=E2=80=99re working on that too)
>
>
>
> The result is that when our debug rootfs is created (where we added the =
kernel symbols), it=E2=80=99s got the version of the kernel from the sstate=
 cached rpm files, but since do_deploy had an sstate miss, the entire kerne=
l gets rebuilt to satisfy that dependency chain. Since the kernel doesn=E2=
=80=99t have reproducible builds working, the resulting pair of kernels do=
n=E2=80=99t match each other for debug purposes.
>
>
>
> So, I have two questions to start:
>
> What is the recommended way to be getting debug symbols for the kernel, =
since do_deploy doesn=E2=80=99t seem to have a debug counterpart (which is =
why we originally just set things up to add the rpm to the generated debug =
rootfs)
> Does this seem like a bug that should be fixed? If so, what would be the=
 recommended solution (more thoughts below)?
>
>
>
> Even if there=E2=80=99s a task somewhere that does what I=E2=80=99m look=
ing for, this seems like a bit of a bug. I generally feel like we want to b=
e able to trust sstate, so the fact that forking dependencies that each gen=
erate their own sstate objects can be out of sync is a bit scary.
>
> I=E2=80=99ve thought of several ways around this, but I can=E2=80=99t sa=
y I like any of them.
>
> (extremely gross hack) Create a new task to use instead of do_deploy tha=
t depends on do_packagegroup_write_rpm. Unpack the restored (or built) RPMs=
 and use those blobs to deploy the kernel and symbols to the image director=
y.
> (gross hack with painful effects on build time) Disable sstate for do_pa=
ckage_write_rpm and do_deploy. Possibly replace with sstate logic for the k=
ernel=E2=80=99s do_install step (side question =E2=80=93 why doesn=E2=80=99=
t do_install generate sstate? It seems like it should be able to, since the=
 point is to drop everything into the image directory)
> (possibly better, but sounds hard) Change the sstate logic so that if an=
ything downstream of a do_compile task needs to be rerun, everything downst=
ream of it needs to be rerun and sstate reuse for that recipe is not allowe=
d (basically all or nothing sstate). Maybe with a flag that=E2=80=99s allow=
ed in the bitbake file to indicate that a recipe does have reproducible bui=
lds and that different pieces are allowed to come from sstate in that case.
> (fix the symptoms but not the problem) Figure out how to get linux-yocto=
 building in a reproducible fashion and pretend the problem doesn=E2=80=99t=
 exist.
>
>
>
>
>
> If you=E2=80=99re interested, this is quite easy to reproduce =E2=80=93 =
these are my repro steps
>
> Check out a clean copy of zeus (22.0.2)
> Add kernel-image to core-image-minimal in whatever fashion you choose (I=
 just dumped it in the RDEPENDS for packagegroup-core-boot for testing)
> bitbake core-image-minimal
> bitbake -c clean core-image-minimal linux-yocto (or just wipe your whole=
 build dir, since everything should come from sstate now)
> Delete the sstate object(s) for linux-yocto=E2=80=99s deploy task.
> bitbake core-image-minimal
> Compare the BuildID hashes for the kernel in the two locations using fil=
e (you=E2=80=99ll need to use the kernel=E2=80=99s extract-vmlinux script t=
o get it out of the bzImage)
>
> file tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/boo=
t/vmlinux-5.2.28-yocto-standard
> ./tmp/work-shared/qemux86-64/kernel-source/scripts/extract-vmlinux tmp/d=
eploy/images/qemux86-64/bzImage > vmlinux-deploy && file vmlinux-deploy
>
>
>
> Anyone have thoughts or suggestions?
>
>
>
> Cheers!
>
> -Sean McKay
>
>
>
>=20



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
