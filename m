Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1B43C433EF
	for <webhook@archiver.kernel.org>; Thu, 26 May 2022 12:03:22 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web08.18914.1653566595051743175
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 05:03:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pFL5N2Lf;
 spf=pass (domain: gmail.com, ip: 209.85.221.41,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f41.google.com with SMTP id k30so1889440wrd.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 05:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UUESAyDE+hSUkOWr7Kg+llf2lsQ1mVQ1TNVjIKxWeJg=;
        b=pFL5N2LfOc3o4DkNjS5Ov7g+0PiUNoFJc4IwjNkuiQXsSe353Iq/sCbmP6wftmQ0rf
         9gvZJDuXy+kBAb6I53c97B6Kp12Ra+eClGYwtOZ4K312gJX4DMJiXQrRvMV4ORRnA57R
         wfjlxmnrWxbDnbeR+WaTCUR43w0w/XMkjUzb3GC3uKmXPzNbh4WyaufT+TcC0o+GH+k/
         EqRFuIai8BoIKZvi4tYSMh/NHtdbPxyK6d89lr0jygucNEMEPHsfX7DYrRNP4sk5+9L8
         eRAD+imLamTHBNMr7IiLuZRPFQRZ6e4qJn/BxB4T5kDgwZmbX5QVuEZozc1QxxzgClbI
         i9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UUESAyDE+hSUkOWr7Kg+llf2lsQ1mVQ1TNVjIKxWeJg=;
        b=G99DZQE5gAZ7p12R637E5wsCulBLRgocSV/51Gdxvq/nUyeWHOIF977SvUAOoIL5h+
         zhIfVbW1H2HU6+Ges9gEmTd/2M+FhHQ1s2jMBIgTn0BpLNgj2VrkzZ/HEXj1A4DIR4Xd
         HuJq5bMvP/zVKGAg3AUgsUIMpyN3qk2rVdjsWe/+KZHLNHOihwwCk+aTDoihSkzkrvSL
         UIa0ls7F9kfL6H8ykakN5YWq0w+wTaBP3lWmY4bwtLEL4kmxTXyxQEX+3Ie/lCeTBnqf
         3ImznPW7CNWG3bCEBD9DPYV1c/pY1bDO6cKEKtD6KyXMKszhfPVhuWg+tz+0ceuHMnC7
         Cw1A==
X-Gm-Message-State: AOAM532IC+IAqXPs7URgw9e7f5c8YgqUsH3hosWlcsk01gqkhrMPWX3A
	5quZ3bLErFM4uk6NpK1wVp5+Pm6Ym0E/Zv5VlzE=
X-Google-Smtp-Source: 
 ABdhPJyKBl56MtIolEKLTR/8oumttlSHOLz46MBhb5uyYeiYmqmXnmMs9Zp8Q7UUxXD4HmK7xL/kga4jbB9UeHbG9cQ=
X-Received: by 2002:adf:d1a8:0:b0:20f:f808:2ac8 with SMTP id
 w8-20020adfd1a8000000b0020ff8082ac8mr9731591wrc.495.1653566593402; Thu, 26
 May 2022 05:03:13 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM0PR10MB3107136C7FF2137D2614E56A99179@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CANNYZj85noGs9H4A4pYqOO6Rng5MtEMMtVAgOpcBb7AUfeMy4w@mail.gmail.com>
 <AM0PR10MB3107C0F557337A41057CB81299199@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CANNYZj-U3ur+h3USCsxa+DEy7cEowB-ZTpx4JetiMsmNVdJBxw@mail.gmail.com>
 <20220329162248.GA5565@localhost>
 <AM6PR10MB31095749082F8D8A5C834F8D991F9@AM6PR10MB3109.EURPRD10.PROD.OUTLOOK.COM>
 <20220330134021.GA37593@localhost>
 <45259bd7552252f4b649806913141faf1389c38a.camel@linuxfoundation.org>
 <20220330212855.GA35568@localhost>
In-Reply-To: <20220330212855.GA35568@localhost>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 26 May 2022 14:02:50 +0200
Message-ID: 
 <CA+chaQd329P4PZpVL7yTCoTBCEqZHpz6b5sJ_jBZFNGNuZNr4A@mail.gmail.com>
Subject: do_patch failing when executed multiple times in the same S=WORKDIR
 Was: [yocto] Strange sporadic build issues (incremental builds in docker
 container)
To: Trevor Woerner <twoerner@gmail.com>,
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Matthias Klein <matthias.klein@optimeas.de>,
 Alexander Kanavin <alex.kanavin@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000698c5105dfe8f951"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 May 2022 12:03:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57193

--000000000000698c5105dfe8f951
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 30, 2022 at 11:29 PM Trevor Woerner <twoerner@gmail.com> wrote:

> On Wed 2022-03-30 @ 04:08:31 PM, Richard Purdie wrote:
> > On Wed, 2022-03-30 at 09:40 -0400, Trevor Woerner wrote:
> > > Hi Matthias,
> > >
> > > On Wed 2022-03-30 @ 06:32:00 AM, Matthias Klein wrote:
> > > > Yes, you are right, it is mostly the same recipes that fail. But
> they also change from time to time.
> > > > Today it happened to me even without Jenkins and Docker, normally i=
n
> the console with the recipe keymaps_1.0.bb.
> > >
> > > And keymaps follows the exact same pattern as modutils-initscripts an=
d
> > > initscripts; namely that their sources are entirely contained in-tree=
:
> > >
> > >     keymaps/
> > >     =E2=94=9C=E2=94=80=E2=94=80 files
> > >     =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 GPLv2.patch
> > >     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 keymap.sh
> > >     =E2=94=94=E2=94=80=E2=94=80 keymaps_1.0.bb
> > >
> > >     keymaps/keymaps_1.0.bb
> > >      23 SRC_URI =3D "file://keymap.sh \
> > >      24            file://GPLv2.patch"
> > >
> > > Any recipe that follows this pattern is susceptible, it's probably
> just a
> > > coincidence that most of my failures happened to be with the two
> recipes I
> > > mentioned.
> > >
> > > This issue has revealed a bug, and fixing that bug would be great.
> However,
> > > the thing is, keymap.sh is a shell program written 12 years ago which
> hasn't
> > > changed since. The GPL/COPYING file is only there for "reasons". The
> license
> > > file doesn't *need* to be moved into the build area for this recipe t=
o
> get its
> > > job done (namely installing keymap.sh into the image's sysvinit).
> >
> > The "good" news is I did work out how to reproduce this.
> >
> > bitbake keymaps -c clean
> > bitbake keymaps
> > bitbake keymaps -c unpack -f
> > bitbake keymaps -c patch
> > bitbake keymaps -c unpack -f
> > bitbake keymaps -c patch
>
> Awesome! That is a very simple and quick reproducer!
>
> > I haven't looked at why but hopefully that helps us more forward with
> looking at
> > the issue.
> >
> > The complications with S =3D=3D WORKDIR were one of the reasons I did s=
tart
> work on
> > patches to make it work better and maybe move fetching into a dedicated
> > direction rather than WORKDIR and then symlink things. I never got that
> patch to
> > work well enough to submit though (and it is too late for a major chang=
e
> like
> > that in this release).
>
> As per our conversation I quickly tried the following (not that I expecte=
d
> this to be a final solution, but just a poking-around kind of thing):
>
>         diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclas=
s
>         index cc81461473..503da61b3d 100644
>         --- a/meta/classes/base.bbclass
>         +++ b/meta/classes/base.bbclass
>         @@ -170,6 +170,7 @@ do_unpack[dirs] =3D "${WORKDIR}"
>          do_unpack[cleandirs] =3D "${@d.getVar('S') if
> os.path.normpath(d.getVar('S')) !=3D os.path.normpath(d.getVar('WORKDIR')=
)
> else os.path.join('${S}', 'patches')}"
>
>          python base_do_unpack() {
>         +    bb.utils.remove(d.getVar('B') + "/.pc", recurse=3DTrue)
>              src_uri =3D (d.getVar('SRC_URI') or "").split()
>              if not src_uri:
>                  return
>
> And it changed the error message from:
>
>         $ bitbake keymaps -c patch
>         ...
>         ERROR: keymaps-1.0-r31 do_patch: Applying patch 'GPLv2.patch' on
> target directory
> '/z/build-master/quilt-fix/qemux86/nodistro/build/tmp-glibc/work/qemux86-=
oe-linux/keymaps/1.0-r31'
>         CmdError('quilt --quiltrc
> /z/build-master/quilt-fix/qemux86/nodistro/build/tmp-glibc/work/qemux86-o=
e-linux/keymaps/1.0-r31/recipe-sysroot-native/etc/quiltrc
> push', 0, 'stdout:
>         stderr: File series fully applied, ends at patch GPLv2.patch
>         ')
>
> to:
>
>         $ bitbake keymaps -c patch
>         ...
>         ERROR: keymaps-1.0-r31 do_patch: Applying patch 'GPLv2.patch' on
> target directory
> '/z/build-master/quilt-fix/qemux86/nodistro/build/tmp-glibc/work/qemux86-=
oe-linux/keymaps/1.0-r31'
>         CmdError('quilt --quiltrc
> /z/build-master/quilt-fix/qemux86/nodistro/build/tmp-glibc/work/qemux86-o=
e-linux/keymaps/1.0-r31/recipe-sysroot-native/etc/quiltrc
> push', 0, 'stdout: Applying patch GPLv2.patch
>         The next patch would create the file COPYING,
>         which already exists!  Applying it anyway.
>         patching file COPYING
>         Hunk #1 FAILED at 1.
>         1 out of 1 hunk FAILED -- rejects in file COPYING
>         Patch GPLv2.patch can be reverse-applied
>
>         stderr: ')
>
> progress?
> https://www.reddit.com/r/ProgrammerHumor/comments/8j5qim/progress/
>

+oe-core ML as it isn't poky/yocto specific

Just small update as multiple people mentioned this (in case I don't send
the final fix later today).

There are couple recipes affected by this e.g. keymaps (.patch already
removed in oe-core), makedevs (.patch removal sent to ML yesterday
https://lists.openembedded.org/g/openembedded-core/message/166172), devmem2
(https://lists.openembedded.org/g/openembedded-devel/message/97270), but
there are other recipes with S =3D "${WORKDIR}" where you can trigger this
e.g. by having a .patch file in DISTRO layer .bbappend (e.g. tzdata with
webOS
https://github.com/webosose/meta-webosose/blob/06e5298d9f5c47679b679081d993=
0f8d1c776142/meta-webos/recipes-extended/tzdata/tzdata.bbappend#L10
)

This do_patch issue is caused by:
https://git.savannah.nongnu.org/cgit/quilt.git/commit/?id=3D8b39a960afcf45c=
d4f5804ae62b6b0656bdb191d
introduced in kirkstone with:
https://git.openembedded.org/openembedded-core/commit/?h=3Dkirkstone&id=3Df=
a71afcee9ab42198c619333b77a15bd2ae02b20

I'm still looking how to fix this properly, but the shortest sequence to
reproduce this is just
bitbake keymaps -c patch
bitbake keymaps -c unpack -f
bitbake keymaps -c patch
with
https://git.openembedded.org/openembedded-core/commit/?id=3D17d981005a0c0c9=
7702ad88602b7181b69bcc9eb
reverted.

And the change in quilt behavior is causing QuiltTree.Clean (quilt pop -a
-f) in:
https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/patch.py?id=
=3D17d981005a0c0c97702ad88602b7181b69bcc9eb#n601

to fail with "No series file found" before undoing the patches in WORKDIR.

Removing ".pc" as Trevor tried above doesn't help, because we really need
quilt's help to undo the patches (in this case to delete COPYING file from
WORKDIR before applying the .patch which tries to add it again), because
do_unpack cannot just wipe S and start over (because S =3D=3D WORKDIR) - no=
t
selectively removing the files listed in SRC_URI, because COPYING file
isn't listed there.

Using skip_series_check in 'quilt pop' (partially reverting the change from
upstream) helps a bit, but might be difficult to upstream.

Will send a fix later today or next week.

Cheers,

--000000000000698c5105dfe8f951
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Mar 30, 2022 at 11:29 PM Trevor W=
oerner &lt;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On Wed 2022-03-30 @ 04:08:31 PM, Richard Purdie wrote:<b=
r>
&gt; On Wed, 2022-03-30 at 09:40 -0400, Trevor Woerner wrote:<br>
&gt; &gt; Hi Matthias,<br>
&gt; &gt; <br>
&gt; &gt; On Wed 2022-03-30 @ 06:32:00 AM, Matthias Klein wrote:<br>
&gt; &gt; &gt; Yes, you are right, it is mostly the same recipes that fail.=
 But they also change from time to time.<br>
&gt; &gt; &gt; Today it happened to me even without Jenkins and Docker, nor=
mally in the console with the recipe <a href=3D"http://keymaps_1.0.bb" rel=
=3D"noreferrer" target=3D"_blank">keymaps_1.0.bb</a>.<br>
&gt; &gt; <br>
&gt; &gt; And keymaps follows the exact same pattern as modutils-initscript=
s and<br>
&gt; &gt; initscripts; namely that their sources are entirely contained in-=
tree:<br>
&gt; &gt; <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0keymaps/<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 files<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=
=80 GPLv2.patch<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=
=80 keymap.sh<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://=
keymaps_1.0.bb" rel=3D"noreferrer" target=3D"_blank">keymaps_1.0.bb</a><br>
&gt; &gt; <br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0keymaps/<a href=3D"http://keymaps_1.0.bb" rel=
=3D"noreferrer" target=3D"_blank">keymaps_1.0.bb</a><br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 23 SRC_URI =3D &quot;file://keymap.sh \<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 24=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
ile://GPLv2.patch&quot;<br>
&gt; &gt; <br>
&gt; &gt; Any recipe that follows this pattern is susceptible, it&#39;s pro=
bably just a<br>
&gt; &gt; coincidence that most of my failures happened to be with the two =
recipes I<br>
&gt; &gt; mentioned.<br>
&gt; &gt; <br>
&gt; &gt; This issue has revealed a bug, and fixing that bug would be great=
. However,<br>
&gt; &gt; the thing is, keymap.sh is a shell program written 12 years ago w=
hich hasn&#39;t<br>
&gt; &gt; changed since. The GPL/COPYING file is only there for &quot;reaso=
ns&quot;. The license<br>
&gt; &gt; file doesn&#39;t *need* to be moved into the build area for this =
recipe to get its<br>
&gt; &gt; job done (namely installing keymap.sh into the image&#39;s sysvin=
it).<br>
&gt; <br>
&gt; The &quot;good&quot; news is I did work out how to reproduce this.<br>
&gt; <br>
&gt; bitbake keymaps -c clean<br>
&gt; bitbake keymaps<br>
&gt; bitbake keymaps -c unpack -f<br>
&gt; bitbake keymaps -c patch<br>
&gt; bitbake keymaps -c unpack -f<br>
&gt; bitbake keymaps -c patch<br>
<br>
Awesome! That is a very simple and quick reproducer!<br>
<br>
&gt; I haven&#39;t looked at why but hopefully that helps us more forward w=
ith looking at<br>
&gt; the issue.<br>
&gt; <br>
&gt; The complications with S =3D=3D WORKDIR were one of the reasons I did =
start work on<br>
&gt; patches to make it work better and maybe move fetching into a dedicate=
d<br>
&gt; direction rather than WORKDIR and then symlink things. I never got tha=
t patch to<br>
&gt; work well enough to submit though (and it is too late for a major chan=
ge like<br>
&gt; that in this release).<br>
<br>
As per our conversation I quickly tried the following (not that I expected<=
br>
this to be a final solution, but just a poking-around kind of thing):<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 diff --git a/meta/classes/base.bbclass b/meta/c=
lasses/base.bbclass<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 index cc81461473..503da61b3d 100644<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --- a/meta/classes/base.bbclass<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +++ b/meta/classes/base.bbclass<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 @@ -170,6 +170,7 @@ do_unpack[dirs] =3D &quot;$=
{WORKDIR}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do_unpack[cleandirs] =3D &quot;${@d.getVa=
r(&#39;S&#39;) if os.path.normpath(d.getVar(&#39;S&#39;)) !=3D os.path.norm=
path(d.getVar(&#39;WORKDIR&#39;)) else os.path.join(&#39;${S}&#39;, &#39;pa=
tches&#39;)}&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0python base_do_unpack() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +=C2=A0 =C2=A0 bb.utils.remove(d.getVar(&#39;B&=
#39;) + &quot;/.pc&quot;, recurse=3DTrue)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0src_uri =3D (d.getVar(&#39;=
SRC_URI&#39;) or &quot;&quot;).split()<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not src_uri:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return<br>
<br>
And it changed the error message from:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ bitbake keymaps -c patch<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERROR: keymaps-1.0-r31 do_patch: Applying patch=
 &#39;GPLv2.patch&#39; on target directory &#39;/z/build-master/quilt-fix/q=
emux86/nodistro/build/tmp-glibc/work/qemux86-oe-linux/keymaps/1.0-r31&#39;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CmdError(&#39;quilt --quiltrc /z/build-master/q=
uilt-fix/qemux86/nodistro/build/tmp-glibc/work/qemux86-oe-linux/keymaps/1.0=
-r31/recipe-sysroot-native/etc/quiltrc push&#39;, 0, &#39;stdout:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 stderr: File series fully applied, ends at patc=
h GPLv2.patch<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;)<br>
<br>
to:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ bitbake keymaps -c patch<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ERROR: keymaps-1.0-r31 do_patch: Applying patch=
 &#39;GPLv2.patch&#39; on target directory &#39;/z/build-master/quilt-fix/q=
emux86/nodistro/build/tmp-glibc/work/qemux86-oe-linux/keymaps/1.0-r31&#39;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 CmdError(&#39;quilt --quiltrc /z/build-master/q=
uilt-fix/qemux86/nodistro/build/tmp-glibc/work/qemux86-oe-linux/keymaps/1.0=
-r31/recipe-sysroot-native/etc/quiltrc push&#39;, 0, &#39;stdout: Applying =
patch GPLv2.patch<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 The next patch would create the file COPYING,<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 which already exists!=C2=A0 Applying it anyway.=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 patching file COPYING<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Hunk #1 FAILED at 1.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 1 out of 1 hunk FAILED -- rejects in file COPYI=
NG<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Patch GPLv2.patch can be reverse-applied<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 stderr: &#39;)<br>
<br>
progress? <a href=3D"https://www.reddit.com/r/ProgrammerHumor/comments/8j5q=
im/progress/" rel=3D"noreferrer" target=3D"_blank">https://www.reddit.com/r=
/ProgrammerHumor/comments/8j5qim/progress/</a><br>
</blockquote><div><br></div><div>+oe-core ML as it isn&#39;t poky/yocto spe=
cific<br></div><div><br></div><div>Just small update as multiple people men=
tioned this (in case I don&#39;t send the final fix later today).</div><div=
><br></div><div>There are couple recipes affected by this e.g. keymaps (.pa=
tch already removed in oe-core), makedevs (.patch removal sent to ML yester=
day <a href=3D"https://lists.openembedded.org/g/openembedded-core/message/1=
66172">https://lists.openembedded.org/g/openembedded-core/message/166172</a=
>), devmem2 (<a href=3D"https://lists.openembedded.org/g/openembedded-devel=
/message/97270">https://lists.openembedded.org/g/openembedded-devel/message=
/97270</a>), but there are other recipes with S =3D &quot;${WORKDIR}&quot; =
where you can trigger this e.g. by having a .patch file in DISTRO layer .bb=
append (e.g. tzdata with webOS=C2=A0<a href=3D"https://github.com/webosose/=
meta-webosose/blob/06e5298d9f5c47679b679081d9930f8d1c776142/meta-webos/reci=
pes-extended/tzdata/tzdata.bbappend#L10">https://github.com/webosose/meta-w=
ebosose/blob/06e5298d9f5c47679b679081d9930f8d1c776142/meta-webos/recipes-ex=
tended/tzdata/tzdata.bbappend#L10</a>)</div><div><br></div><div>This do_pat=
ch issue is caused by:</div><div><a href=3D"https://git.savannah.nongnu.org=
/cgit/quilt.git/commit/?id=3D8b39a960afcf45cd4f5804ae62b6b0656bdb191d">http=
s://git.savannah.nongnu.org/cgit/quilt.git/commit/?id=3D8b39a960afcf45cd4f5=
804ae62b6b0656bdb191d</a></div><div>introduced in kirkstone with:</div><div=
><a href=3D"https://git.openembedded.org/openembedded-core/commit/?h=3Dkirk=
stone&amp;id=3Dfa71afcee9ab42198c619333b77a15bd2ae02b20">https://git.openem=
bedded.org/openembedded-core/commit/?h=3Dkirkstone&amp;id=3Dfa71afcee9ab421=
98c619333b77a15bd2ae02b20</a></div><div><br></div><div>I&#39;m still lookin=
g how to fix this properly, but the shortest sequence to reproduce this is =
just</div><div>bitbake keymaps -c patch<br>bitbake keymaps -c unpack -f<br>=
bitbake keymaps -c patch<br></div><div>with=C2=A0<a href=3D"https://git.ope=
nembedded.org/openembedded-core/commit/?id=3D17d981005a0c0c97702ad88602b718=
1b69bcc9eb">https://git.openembedded.org/openembedded-core/commit/?id=3D17d=
981005a0c0c97702ad88602b7181b69bcc9eb</a> reverted.</div><div><br></div><di=
v>And the change in quilt behavior is causing=C2=A0QuiltTree.Clean (quilt p=
op -a -f) in:</div><div><a href=3D"https://git.openembedded.org/openembedde=
d-core/tree/meta/lib/oe/patch.py?id=3D17d981005a0c0c97702ad88602b7181b69bcc=
9eb#n601">https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/p=
atch.py?id=3D17d981005a0c0c97702ad88602b7181b69bcc9eb#n601</a><br></div><di=
v><br></div><div>to fail with &quot;No series file found&quot; before undoi=
ng the patches in WORKDIR.</div><div><br></div><div>Removing &quot;.pc&quot=
; as Trevor tried above doesn&#39;t help, because we really need quilt&#39;=
s help to undo the patches (in this case to delete COPYING file from WORKDI=
R before applying the .patch which tries to add it again), because do_unpac=
k cannot just wipe S and start over (because S =3D=3D WORKDIR) - not select=
ively removing the files listed in SRC_URI, because COPYING file isn&#39;t =
listed there.</div><div><br></div><div>Using skip_series_check in &#39;quil=
t pop&#39; (partially reverting the change from upstream) helps a bit, but =
might be difficult to upstream.<br></div><div><br></div><div>Will send a fi=
x later today or next week.</div><div><br></div><div>Cheers,</div></div></d=
iv>

--000000000000698c5105dfe8f951--

