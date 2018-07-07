Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E2DFE00B58; Sat,  7 Jul 2018 09:37:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tdhammer99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD2DBE006B4
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 09:37:23 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id y207-v6so28907775oie.13
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2018 09:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fPGIpBp7s76TIzP/yi7muj67oeepSIJi3gVGD/nSOso=;
	b=lfHQmnFYgGaI5bMFksCuBd3ovwJPYV1UO/mWlYNLDcCedgPYjnDeJl1tgkxoKsAvzV
	NO+iqktbNvo66sdSp3cOPx16lZ+mccoDWixcWe3WR+NGRyT6H8fmJi33Nxz3tzLK2yBZ
	BPReDoQ3yZBpg3ZcBeE+AFeaNNyzps9bRhMtYh3NdjneiJeNhnYX8li6ctxir+7927zy
	1ImmtxwWrs//+/PKLIZ1fwj27s+Uazl3AqVfq/GanNJwBJwe4RJbLSVbX2FjUAalbOFG
	lUj4JepnFkKg2Nnazre+o2bKhcrSyOvYkIzMHxr8HbVkgwvs1XIYl4Els8WpyONGHCBt
	XJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fPGIpBp7s76TIzP/yi7muj67oeepSIJi3gVGD/nSOso=;
	b=QTiyQAJwxQo6NKoZ33xCh1GJ+lG+xpLUm2KZ5nnIKyTvPqUY094uPya5TBKnoF05jk
	6WcPoGc+k//zN/MuakK+kxyIL1aqViCtIkdEYuO7MTTDHSdFuNe7G+aZrqCbz7K8R8i/
	OoKr95T+garc6NdpCkbiKcHmwRaNPMkB1FzYoOzEMCnYD9cBnuFSVar1rILhs9fl9DFe
	+icesi9Ric/yhCUOTrn+sTNpgnn3v9yGtlUhBV3TgazJXeh0xdYTBCTbJ7hVTjdVa5nL
	DBqqxZsq9kwBwAo3/rBAxoq0PL7CNuJLS6w8abRQeCuG/PllQrP9I6sCBrvIJ1HeaN1g
	Mwig==
X-Gm-Message-State: APt69E282C49fpl5LR/c7akHhPmf1XNkdqtG7qmGRf7+XUoGkFhXDjEe
	Mqnf5lcsdfR8kmsGX4pHF5M59QkfMWcQ9dLsskE=
X-Google-Smtp-Source: AAOMgpfvd5JCcXMBr4OqrgZZzhhQbDBt0FIJOWqIo29SydBwks9uwLB4/ODZzJQiUENC35Psj0GDsAwZp5fKeIB6/e4=
X-Received: by 2002:aca:56d7:: with SMTP id
	k206-v6mr15015886oib.106.1530981443037; 
	Sat, 07 Jul 2018 09:37:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:39a2:0:0:0:0:0 with HTTP;
	Sat, 7 Jul 2018 09:37:22 -0700 (PDT)
In-Reply-To: <CAJ86T=We69Eh0ojPu=i+Dg1Tm8wv7D-5qHevcT9=K+RpV1LKAg@mail.gmail.com>
References: <CALh9vaXPQfH1hupu7C3AZv3qNa1Szb9A7_=iEkLvQ8GRn-YuGQ@mail.gmail.com>
	<CAJ86T=We69Eh0ojPu=i+Dg1Tm8wv7D-5qHevcT9=K+RpV1LKAg@mail.gmail.com>
From: Tim Hammer <tdhammer99@gmail.com>
Date: Sat, 7 Jul 2018 12:37:22 -0400
Message-ID: <CALh9vaUOQGazC5N35QqXLqXxu2vr53UsNkeY8KOtQTsrzzw-=Q@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: (still) struggling with initramfs
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
X-List-Received-Date: Sat, 07 Jul 2018 16:37:24 -0000
Content-Type: multipart/alternative; boundary="00000000000011ee5805706b6583"

--00000000000011ee5805706b6583
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 6, 2018 at 6:02 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Fri, Jul 6, 2018 at 1:22 PM, Tim Hammer <tdhammer99@gmail.com> wrote:
> >
> > Thanks for the responses to my first email. I was able to get a working
> > initramfs in my kernel image that allowed me to do the initial
> evaluation of
> > my solution.
>
> What was the issue? What was the fix?
>

issue 1: failure in do_bundle_initramfs- "mv: cannot stat
'arch/arm64/boot/Image': No such file or directory".
Not really resolved, currently modified function to skip problematic step;
need to come back to this before I can really be done.

issue 2:
kernel-source/scripts/gen_initramfs_list.sh: Cannot open
'/.../linux-qoriq/4.14-r0/build/usr/my-core-image-
minimal-initramfs-{machine}.cpio'
This appears to be due to a mistake in my definitions of IMAGE_FSTYPES and
IMAGE_CLASSES. (I made a lot of changes en route to getting something to
work, so there may be something else that contributed but that I did not
realize.)


> > Now I am working to get all of the proper content into the filesystem,
> but
> > am seeing some strangeness that I cannot comprehend. I have updated the
> > image recipe that my linux.bbappend is calling out as the
> INITRAMFS_IMAGE,
> > but the bitbake linux command did not see anything as changed so ran no
> > tasks.
>
> The kernel's bundle_initramfs task depends on
> ${INITRAMFS_IMAGE}:do_image_complete, so if the new value you set for
> INITRAMFS_IMAGE is an image which had previously been built the
> kernel's bundle_initramfs might not get triggered again?
>
> Perhaps try running "bitbake -c cleansstate" for your image and then
> "bitbake linux" again.
>
Before I saw your response, I did try cleanstate on both the initramfs and
linux recipes, but it did not appear to make a difference. (In
frustration,) I deleted my tmp and sstate-cache trees and built everything
again. The resulting kernel image initially did not seem correct based on
the size, but I looked closer with bitwalk and it does appear that my
changes are in the embedded cpio. So, I tried it and found it "half" works-
my custom init script is running but if I try to circumvent that with
"rdinit=/sbin/init" so I can get to the login/commandline, I get a kernel
panic... Guess I will just have to be happy with what does work and keep
moving.


>
> > As a simplistic attempt, I commented out the INITRAMFS_IMAGE line in
> > the recipe and this time it rebuilt a lot, but ended up with the "old"
> > initramfs (not an empty one as I kind of expected). I then re-enabled the
> > INITRAMFS_IMAGE line and this time got a much smaller Linux image which
> > failed to boot (Unable to mount root fs- more what I expected from the
> last
> > build).
>
> A kernel image without the bundled initramfs is always going to be
> built as part of the normal build process for the kernel (it's built
> by the kernel's compile task - the version with the bundled initramfs
> is built by the bundle_initramfs task).
>
> Normally you should be able to tell the difference between the two
> kernel images by the .initramfs suffix, however the bug you saw
> originally was in the bundle_initramfs code to do that renaming, so
> depending on how you resolved the original issue, maybe your kernel
> images are still getting mixed up?
>
Yes, based on my workaround to this fix, I suspect that there is still an
issue that I need to investigate, but need to get the functionality working
to a point that the rest of the system can be tested then I will get back
to this.


Thanks again for all the thoughts and ideas- hopefully I am retaining some
knowledge from these experiments and become a helpful member of the
community someday!

-- 

.Tim

--00000000000011ee5805706b6583
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Jul 6, 2018 at 6:02 PM, Andre McCurdy <span dir=3D"ltr">&lt;<a =
href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On =
Fri, Jul 6, 2018 at 1:22 PM, Tim Hammer &lt;<a href=3D"mailto:tdhammer99@gm=
ail.com">tdhammer99@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thanks for the responses to my first email. I was able to get a workin=
g<br>
&gt; initramfs in my kernel image that allowed me to do the initial evaluat=
ion of<br>
&gt; my solution.<br>
<br>
</span>What was the issue? What was the fix?<br></blockquote><div><br></div=
><div>issue 1:=C2=A0<span style=3D"font-size:12.8px">failure in do_bundle_i=
nitramfs- &quot;mv: cannot stat &#39;arch/arm64/boot/Image&#39;: No such fi=
le or directory&quot;.</span></div><div><div style=3D"font-size:12.8px;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial">Not really resolved, currently modified function to skip pr=
oblematic step; need to come back to this before I can really be done.</div=
><br class=3D"gmail-Apple-interchange-newline">

</div><div>issue 2:=C2=A0

<div style=3D"font-size:12.8px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><span style=3D"text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline">kernel-source/scripts/gen=
_<wbr>initramfs_list.sh:=C2=A0</span></span></span><span style=3D"font-size=
:12.8px">Cannot open &#39;/.../linux-qoriq/4.14-r0/</span><wbr style=3D"fon=
t-size:12.8px"><span style=3D"font-size:12.8px">build/usr/my-core-image-</s=
pan><wbr style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">minima=
l-initramfs-{machine}.</span><wbr style=3D"font-size:12.8px"><span style=3D=
"font-size:12.8px">cpio&#39;</span></div>This appears to be due to a mistak=
e in my definitions of IMAGE_FSTYPES and IMAGE_CLASSES. (I made a lot of ch=
anges en route to getting something to work, so there may be something else=
 that contributed but that I did not realize.)</div><div><br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<span class=3D""><br>
&gt; Now I am working to get all of the proper content into the filesystem,=
 but<br>
&gt; am seeing some strangeness that I cannot comprehend. I have updated th=
e<br>
&gt; image recipe that my linux.bbappend is calling out as the INITRAMFS_IM=
AGE,<br>
&gt; but the bitbake linux command did not see anything as changed so ran n=
o<br>
&gt; tasks.<br>
<br>
</span>The kernel&#39;s bundle_initramfs task depends on<br>
${INITRAMFS_IMAGE}:do_image_<wbr>complete, so if the new value you set for<=
br>
INITRAMFS_IMAGE is an image which had previously been built the<br>
kernel&#39;s bundle_initramfs might not get triggered again?<br>
<br>
Perhaps try running &quot;bitbake -c cleansstate&quot; for your image and t=
hen<br>
&quot;bitbake linux&quot; again.<br></blockquote><div>Before I saw your res=
ponse, I did try cleanstate on both the initramfs and linux recipes, but it=
 did not appear to make a difference. (In frustration,) I deleted my tmp an=
d sstate-cache trees and built everything again. The resulting kernel image=
 initially did not seem correct based on the size, but I looked closer with=
 bitwalk and it does appear that my changes are in the embedded cpio. So, I=
 tried it and found it &quot;half&quot; works- my custom init script is run=
ning but if I try to circumvent that with &quot;rdinit=3D/sbin/init&quot; s=
o I can get to the login/commandline, I get a kernel panic... Guess I will =
just have to be happy with what does work and keep moving.=C2=A0</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
<span class=3D""><br>
&gt; As a simplistic attempt, I commented out the INITRAMFS_IMAGE line in<b=
r>
&gt; the recipe and this time it rebuilt a lot, but ended up with the &quot=
;old&quot;<br>
&gt; initramfs (not an empty one as I kind of expected). I then re-enabled =
the<br>
&gt; INITRAMFS_IMAGE line and this time got a much smaller Linux image whic=
h<br>
&gt; failed to boot (Unable to mount root fs- more what I expected from the=
 last<br>
&gt; build).<br>
<br>
</span>A kernel image without the bundled initramfs is always going to be<b=
r>
built as part of the normal build process for the kernel (it&#39;s built<br=
>
by the kernel&#39;s compile task - the version with the bundled initramfs<b=
r>
is built by the bundle_initramfs task).<br>
<br>
Normally you should be able to tell the difference between the two<br>
kernel images by the .initramfs suffix, however the bug you saw<br>
originally was in the bundle_initramfs code to do that renaming, so<br>
depending on how you resolved the original issue, maybe your kernel<br>
images are still getting mixed up?<br>
</blockquote></div>Yes, based on my workaround to this fix, I suspect that =
there is still an issue that I need to investigate, but need to get the fun=
ctionality working to a point that the rest of the system can be tested the=
n I will get back to this.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Thanks again for =
all the thoughts and ideas- hopefully I am retaining some knowledge from th=
ese experiments and become a helpful member of the community someday!<br><d=
iv><br></div>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><br><span style=3D"font-family:arial narrow,san=
s-serif">.Tim</span><br></div></div>
</div></div>

--00000000000011ee5805706b6583--
