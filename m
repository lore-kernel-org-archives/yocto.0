Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8569EC71133
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 09:28:34 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.9750.1692955709601845534
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Aug 2023 02:28:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=OoUQQY6k;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-4ffa248263cso1078079e87.2
        for <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 02:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692955708; x=1693560508;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IfKbNOT84qG/M+qrZNa0NAil3vm1SSihOTHruXz4r5w=;
        b=OoUQQY6k7J409P3xmlPAk3BOI8h7folBbWbkj/AFDcfPXdlTvbtkATBmxWrTJS2HSG
         FYMzajI3V5OeYSGw0UrfQ8gLLO0t/mHf47oxKspc+c9BBWRdoTp6EMm07anBUKfWazg2
         8KxzZwLxeaZmTSjG7gMp+Kl9340r9sWfKaATDfS7SBCEocjgIFvsvlj/R6KvurMj5GHm
         QReBONhpUlLYSxWjRYFttQpbhUBLCtHB20xfD802s75ZqESI/RPRV2n+8b61vBR+Lw/c
         Vt0JfFZP9T3PPtmqfuTKWa9jbI+0b6zMVmGC06l0LDZ67LFizgjeLYvJlSgsfC7GVu50
         XAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692955708; x=1693560508;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IfKbNOT84qG/M+qrZNa0NAil3vm1SSihOTHruXz4r5w=;
        b=ayhwJafbOoYOIxaIWSf4rE0KpRDxl4X/iAqFg5ru63yfN6AN4NRp57ykflUoNkaZax
         fBLQDnq/9hcWhdMjsbAFnp9iIVrKeWSO1U6RLMwPqpISYj1A+NaRfs9lAnOWWPcajDlN
         uV5fKx6WdaxWnIV/b8zvNQX1RvrybEv9vPS3nyoH9812RfW0OV/TPL42WxksFrLk5ZaG
         1I4p+7kaQdTTEwEWYO5yB2BaabcBgC++SZQ6U58oajFPItZWxY3IfWAI+Q9g1ITzbS9M
         Mmdld+3CnKAdrTt4kCW+R84vUOsWLWRcgLlP5jd2K954tjt5SoE7AotE13NceqdoNkj+
         ceCg==
X-Gm-Message-State: AOJu0YzQyzSoJ7WUs+0GnEIC25wnQPHHpX27nqZRCCGWuxeQdbxduNpn
	tPN7XtMQHXTxYQEylP33ggwIB/PQj8D3E3BS8zk=
X-Google-Smtp-Source: AGHT+IGoO/lSHe1G1dekRouAApYhYOE72d2vZDkYLmxNQyothXgCh8UGS5Sns7vVgrIgk725dVOLnD9C0wDSNmbbvM8=
X-Received: by 2002:ac2:530c:0:b0:500:5d5c:ecc9 with SMTP id
 c12-20020ac2530c000000b005005d5cecc9mr10869099lfh.62.1692955707371; Fri, 25
 Aug 2023 02:28:27 -0700 (PDT)
MIME-Version: 1.0
References: <o2S3.1692955198371059896.EMq5@lists.yoctoproject.org>
In-Reply-To: <o2S3.1692955198371059896.EMq5@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Aug 2023 11:28:16 +0200
Message-ID: <CANNYZj9=HgFoctp0=_soxF6Wv3R8G5Og0SpEFL0y7CbbXRxJuw@mail.gmail.com>
Subject: Re: [yocto] "Replicating a Build Offline" not working as expected
 when Git data is removed
To: Stephan M <stephan.muehlstrasser@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008ef7ee0603bbf7b0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 09:28:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60890

--0000000000008ef7ee0603bbf7b0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The documentation isn=E2=80=99t perfect. Sometimes it becomes outdated and =
no one
notices, or it may be inaccurate to begin with. Personally I would never
tamper with content of downloads and preserve it exactly as it is. Doesn=E2=
=80=99t
have to be git lfs, plain artifact storage options work too.

Alex

On Fri 25. Aug 2023 at 11.20, Stephan M <stephan.muehlstrasser@gmail.com>
wrote:

> Hi,
>
> I'm trying to follow the steps to replicate a build offline:
> https://docs.yoctoproject.org/4.2.2/dev-manual/building.html?highlight=3D=
bb_no_network#replicating-a-build-offline
>
> This is not working as expected. Originally I ran into this with NXP's
> mickledore build, but I can replicate that with a plain mickledore poky
> environment.
>
> In the documentation it says:
>
> *Optionally Remove Any Git or other SCM Subdirectories From the Downloads
> Directory:* If you want, you can clean up your downloads directory by
> removing any Git or other Source Control Management (SCM) subdirectories
> such as ${DL_DIR}/git2/*. ...
>
> When I do that, the offline build breaks. Without that step it succeeds.
>
> I did the following:
>
> ~/src$ git clone -b mickledore-4.2.2 https://git.yoctoproject.org/poky
> Cloning into 'poky'...
> ...
> ~/src$ cd poky/
> ~/src/poky$ . oe-init-build-env
>
> You had no conf/local.conf file. This configuration file has therefore be=
en
>
> created for you from
> /home/stm/src/poky/meta-poky/conf/templates/default/local.conf.sample
>
> You may wish to edit it to, for example, select a different MACHINE (targ=
et
>
> hardware).
> ...
>
> # Now edited conf/local.conf and added: BB_GENERATE_MIRROR_TARBALLS =3D "=
1"
>
> ~/src/poky/build$ bitbake core-image-minimal --runonly=3Dfetch
>
> # All the packages are downloaded and tar files are created in
> ${TOPDIR}/downloads
> # Now I remove the Git data from the "downloads" directory:
>
> ~/src/poky/build$ rm -rf downloads/git2/*
>
> # Now I edit conf/local.conf again and add the following according to the
> documentation
> # SOURCE_MIRROR_URL ?=3D "file://${TOPDIR}/downloads/"
>
> # INHERIT +=3D "own-mirrors"
>
> # BB_NO_NETWORK =3D "1"
>
> ~/src/poky/build$ tail -10 conf/local.conf
>
> # CONF_VERSION is increased each time build/conf/ changes incompatibly an=
d
> is used to
>
> # track the version of this file when it was generated. This can safely b=
e
> ignored if
>
> # this doesn't mean anything to you.
>
> CONF_VERSION =3D "2"
>
>
>
> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>
> SOURCE_MIRROR_URL ?=3D "file://${TOPDIR}/downloads/"
>
> INHERIT +=3D "own-mirrors"
>
> BB_NO_NETWORK =3D "1"
>
>
> # An attempt to run the build fails early with these error messages:
>
> ~/src/poky/build$ bitbake core-image-minimal
>
> Loading cache: 100% |
>                              | ETA:  --:--:--
>
> Loaded 0 entries from dependency cache.
>
> Parsing recipes: 100%
> |########################################################################=
##########|
> Time: 0:00:07
>
> Parsing of 899 .bb files complete (0 cached, 899 parsed). 1799 targets, 4=
9
> skipped, 0 masked, 0 errors.
>
> NOTE: Resolving any missing task queue dependencies
>
>
>
> Build Configuration:
>
> BB_VERSION           =3D "2.4.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "universal"
>
> TARGET_SYS           =3D "x86_64-poky-linux"
>
> MACHINE              =3D "qemux86-64"
>
> DISTRO               =3D "poky"
>
> DISTRO_VERSION       =3D "4.2.2"
>
> TUNE_FEATURES        =3D "m64 core2"
>
> TARGET_FPU           =3D ""
>
> meta
>
> meta-poky
>
> meta-yocto-bsp       =3D "HEAD:6e17b3e644ca15b8b4afd071ccaa6f172a0e681a"
>
>
>
> Initialising tasks: 100%
> |########################################################################=
#######|
> Time: 0:00:01
>
> Sstate summary: Wanted 1074 Local 0 Mirrors 0 Missed 1074 Current 0 (0%
> match, 0% complete)
>
> NOTE: Executing Tasks
>
> ERROR: gnu-config-native-20230216+gitAUTOINC+63acb96f92-r0 do_unpack:
> Bitbake Fetcher Error: UnpackError('No up to date source found: clone
> directory not available or not up to date:
> /home/stm/src/poky/build/downloads/git2/git.savannah.gnu.org.git.config.g=
it;
> shallow clone not enabled', 'git://
> git.savannah.gnu.org/git/config.git;protocol=3Dhttps;branch=3Dmaster')
>
> ERROR: Logfile of failure stored in:
> /home/stm/src/poky/build/tmp/work/x86_64-linux/gnu-config-native/20230216=
+gitAUTOINC+63acb96f92-r0/temp/log.do_unpack.19635
>
> ERROR: Task
> (virtual:native:/home/stm/src/poky/meta/recipes-devtools/gnu-config/gnu-c=
onfig_git.bb:do_unpack)
> failed with exit code '1'
>
> ERROR: pkgconfig-native-0.29.2+gitAUTOINC+d97db4fae4-r0 do_unpack: Bitbak=
e
> Fetcher Error: UnpackError('No up to date source found: clone directory n=
ot
> available or not up to date:
> /home/stm/src/poky/build/downloads/git2/gitlab.freedesktop.org.pkg-config=
.pkg-config.git;
> shallow clone not enabled', 'git://
> gitlab.freedesktop.org/pkg-config/pkg-config.git;branch=3Dmaster;protocol=
=3Dhttps
> ')
>
> ERROR: Logfile of failure stored in:
> /home/stm/src/poky/build/tmp/work/x86_64-linux/pkgconfig-native/0.29.2+gi=
tAUTOINC+d97db4fae4-r0/temp/log.do_unpack.19647
>
> ERROR: Task
> (virtual:native:/home/stm/src/poky/meta/recipes-devtools/pkgconfig/pkgcon=
fig_git.bb:do_unpack)
> failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 44 tasks of which 22 didn't need to be
> rerun and 2 failed.
>
>
>
> Summary: 2 tasks failed:
>
>
> virtual:native:/home/stm/src/poky/meta/recipes-devtools/gnu-config/gnu-co=
nfig_git.bb:
> do_unpack
>
>
> virtual:native:/home/stm/src/poky/meta/recipes-devtools/pkgconfig/pkgconf=
ig_git.bb:
> do_unpack
>
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>
>
>
> Am I doing something wrong, or is this a bug?
>
> The background for these experiments is the question how to guarantee
> long-term reproducibility of our Yocto project builds. My current idea is
> to preserve the "downloads" directory as a separate Git repository, maybe
> using Git LFS. Is this a good or bad idea?
>
> I read of course
> https://docs.yoctoproject.org/4.2.2/test-manual/reproducible-builds.html?=
highlight=3Dreproducibility#reproducible-builds ,
> but my concern are the downloaded packages. If I try to reproduce a certa=
in
> build 5 or 10 years from now, it might no longer be possible to download
> all the relevant packages if I want to create a build environment from
> scratch.
>
> Thanks
> Stephan
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60889):
> https://lists.yoctoproject.org/g/yocto/message/60889
> Mute This Topic: https://lists.yoctoproject.org/mt/100952497/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000008ef7ee0603bbf7b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">The documentation isn=E2=80=99t perfect. Sometimes it bec=
omes outdated and no one notices, or it may be inaccurate to begin with. Pe=
rsonally I would never tamper with content of downloads and preserve it exa=
ctly as it is. Doesn=E2=80=99t have to be git lfs, plain artifact storage o=
ptions work too.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</d=
iv><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri 25. Aug 2023 at 11.20, Stephan M &lt;<a href=3D"mailto:stephan.mue=
hlstrasser@gmail.com">stephan.muehlstrasser@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-colo=
r:rgb(204,204,204)"><span style=3D"font-family:Arial,Helvetica,sans-serif;f=
ont-size:small;color:rgb(34,34,34)">Hi,</span><br style=3D"color:#222222;fo=
nt-family:Arial,Helvetica,sans-serif;font-size:small"><br style=3D"color:#2=
22222;font-family:Arial,Helvetica,sans-serif;font-size:small"><span style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:rgb(34,34,=
34)">I&#39;m trying to follow the steps to replicate a build offline: <a hr=
ef=3D"https://docs.yoctoproject.org/4.2.2/dev-manual/building.html?highligh=
t=3Dbb_no_network#replicating-a-build-offline" target=3D"_blank" style=3D"f=
ont-family:Arial,Helvetica,sans-serif">https://docs.yoctoproject.org/4.2.2/=
dev-manual/building.html?highlight=3Dbb_no_network#replicating-a-build-offl=
ine</a></span><br style=3D"color:#222222;font-family:Arial,Helvetica,sans-s=
erif;font-size:small"><br style=3D"color:#222222;font-family:Arial,Helvetic=
a,sans-serif;font-size:small"><span style=3D"font-family:Arial,Helvetica,sa=
ns-serif;font-size:small;color:rgb(34,34,34)">This is not working as expect=
ed. Originally I ran into this with NXP&#39;s mickledore build, but I can r=
eplicate that with a plain mickledore poky environment.<br><br></span><span=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:rgb(=
34,34,34)">In the documentation it says:<br><br></span>
<p style=3D"line-height:24px;margin-bottom:0px"><em style=3D"font-weight:bo=
ld">Optionally Remove Any Git or other SCM Subdirectories From the Download=
s Directory:</em>=C2=A0If you want, you can clean up your downloads directo=
ry by removing any Git or other Source Control Management (SCM) subdirector=
ies such as=C2=A0<code class=3D"notranslate" style=3D"font-family:SFMono-Re=
gular,Menlo,Monaco,Consolas,&quot;Liberation Mono&quot;,&quot;Courier New&q=
uot;,Courier,monospace;font-size:13.6px;max-width:100%;background:inherit;b=
order:medium;padding:unset;overflow-x:auto;color:inherit"><span style=3D"fo=
nt-size:medium;font-family:Courier,monospace">${DL_DIR}/git2/*</span></code=
>. ...<br><br>When I do that, the offline build breaks. Without that step i=
t succeeds.<br><br>I did the following:<br><br>~/src$ git clone -b mickledo=
re-4.2.2 <a href=3D"https://git.yoctoproject.org/poky" target=3D"_blank">ht=
tps://git.yoctoproject.org/poky</a><br>Cloning into &#39;poky&#39;...<br>..=
.<br>~/src$ cd poky/<br>~/src/poky$ . oe-init-build-env</p>
<p style=3D"line-height:24px;margin-bottom:0px">You had no conf/local.conf =
file. This configuration file has therefore been</p>
<p style=3D"line-height:24px;margin-bottom:0px">created for you from /home/=
stm/src/poky/meta-poky/conf/templates/default/local.conf.sample</p>
<p style=3D"line-height:24px;margin-bottom:0px">You may wish to edit it to,=
 for example, select a different MACHINE (target</p>
<p style=3D"line-height:24px;margin-bottom:0px">hardware).<br>...<br><br># =
Now edited=C2=A0conf/local.conf and added: BB_GENERATE_MIRROR_TARBALLS =3D =
&quot;1&quot;<br><br>~/src/poky/build$ bitbake core-image-minimal --runonly=
=3Dfetch<br><br># All the packages are downloaded and tar files are created=
 in ${TOPDIR}/downloads<br># Now I remove the Git data from the &quot;downl=
oads&quot; directory:<br><br>~/src/poky/build$ rm -rf downloads/git2/*<br><=
br># Now I edit conf/local.conf again and add the following according to th=
e documentation<br># SOURCE_MIRROR_URL ?=3D &quot;file://${TOPDIR}/download=
s/&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px"># INHERIT +=3D &quot;own-mi=
rrors&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px"># BB_NO_NETWORK =3D &quot;1=
&quot;<br><br></p>
<p style=3D"line-height:24px;margin-bottom:0px">~/src/poky/build$ tail -10 =
conf/local.conf</p>
<p style=3D"line-height:24px;margin-bottom:0px"># CONF_VERSION is increased=
 each time build/conf/ changes incompatibly and is used to</p>
<p style=3D"line-height:24px;margin-bottom:0px"># track the version of this=
 file when it was generated. This can safely be ignored if</p>
<p style=3D"line-height:24px;margin-bottom:0px"># this doesn&#39;t mean any=
thing to you.</p>
<p style=3D"line-height:24px;margin-bottom:0px">CONF_VERSION =3D &quot;2&qu=
ot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">=C2=A0</p>
<p style=3D"line-height:24px;margin-bottom:0px">BB_GENERATE_MIRROR_TARBALLS=
 =3D &quot;1&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">SOURCE_MIRROR_URL ?=3D &quo=
t;file://${TOPDIR}/downloads/&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">INHERIT +=3D &quot;own-mirr=
ors&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">BB_NO_NETWORK =3D &quot;1&q=
uot;</p>
<div>=C2=A0</div>
<p style=3D"line-height:24px;margin-bottom:0px"># An attempt to run the bui=
ld fails early with these error messages:<br><br></p>
<p style=3D"line-height:24px;margin-bottom:0px">~/src/poky/build$ bitbake c=
ore-image-minimal</p>
<p style=3D"line-height:24px;margin-bottom:0px">Loading cache: 100% |=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| ETA:=C2=
=A0 --:--:--</p>
<p style=3D"line-height:24px;margin-bottom:0px">Loaded 0 entries from depen=
dency cache.</p>
<p style=3D"line-height:24px;margin-bottom:0px">Parsing recipes: 100% |####=
###########################################################################=
###| Time: 0:00:07</p>
<p style=3D"line-height:24px;margin-bottom:0px">Parsing of 899 .bb files co=
mplete (0 cached, 899 parsed). 1799 targets, 49 skipped, 0 masked, 0 errors=
.</p>
<p style=3D"line-height:24px;margin-bottom:0px">NOTE: Resolving any missing=
 task queue dependencies</p>
<p style=3D"line-height:24px;margin-bottom:0px">=C2=A0</p>
<p style=3D"line-height:24px;margin-bottom:0px">Build Configuration:</p>
<p style=3D"line-height:24px;margin-bottom:0px">BB_VERSION=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.4.0&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">BUILD_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">NATIVELSBSTRING=C2=A0 =C2=
=A0 =C2=A0 =3D &quot;universal&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">TARGET_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-poky-linux&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">MACHINE=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;qemux86-64&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">DISTRO=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">DISTRO_VERSION=C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D &quot;4.2.2&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">TUNE_FEATURES=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;m64 core2&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">TARGET_FPU=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</p>
<p style=3D"line-height:24px;margin-bottom:0px">meta</p>
<p style=3D"line-height:24px;margin-bottom:0px">meta-poky</p>
<p style=3D"line-height:24px;margin-bottom:0px">meta-yocto-bsp=C2=A0 =C2=A0=
 =C2=A0 =C2=A0=3D &quot;HEAD:6e17b3e644ca15b8b4afd071ccaa6f172a0e681a&quot;=
</p>
<p style=3D"line-height:24px;margin-bottom:0px">=C2=A0</p>
<p style=3D"line-height:24px;margin-bottom:0px">Initialising tasks: 100% |#=
###########################################################################=
###| Time: 0:00:01</p>
<p style=3D"line-height:24px;margin-bottom:0px">Sstate summary: Wanted 1074=
 Local 0 Mirrors 0 Missed 1074 Current 0 (0% match, 0% complete)</p>
<p style=3D"line-height:24px;margin-bottom:0px">NOTE: Executing Tasks</p>
<p style=3D"line-height:24px;margin-bottom:0px">ERROR: gnu-config-native-20=
230216+gitAUTOINC+63acb96f92-r0 do_unpack: Bitbake Fetcher Error: UnpackErr=
or(&#39;No up to date source found: clone directory not available or not up=
 to date: /home/stm/src/poky/build/downloads/git2/git.savannah.gnu.org.git.=
config.git; shallow clone not enabled&#39;, &#39;git://<a href=3D"http://gi=
t.savannah.gnu.org/git/config.git;protocol=3Dhttps;branch=3Dmaster" target=
=3D"_blank">git.savannah.gnu.org/git/config.git;protocol=3Dhttps;branch=3Dm=
aster</a>&#39;)</p>
<p style=3D"line-height:24px;margin-bottom:0px">ERROR: Logfile of failure s=
tored in: /home/stm/src/poky/build/tmp/work/x86_64-linux/gnu-config-native/=
20230216+gitAUTOINC+63acb96f92-r0/temp/log.do_unpack.19635</p>
<p style=3D"line-height:24px;margin-bottom:0px">ERROR: Task (virtual:native=
:/home/stm/src/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_u=
npack) failed with exit code &#39;1&#39;</p>
<p style=3D"line-height:24px;margin-bottom:0px">ERROR: pkgconfig-native-0.2=
9.2+gitAUTOINC+d97db4fae4-r0 do_unpack: Bitbake Fetcher Error: UnpackError(=
&#39;No up to date source found: clone directory not available or not up to=
 date: /home/stm/src/poky/build/downloads/git2/gitlab.freedesktop.org.pkg-c=
onfig.pkg-config.git; shallow clone not enabled&#39;, &#39;git://<a href=3D=
"http://gitlab.freedesktop.org/pkg-config/pkg-config.git;branch=3Dmaster;pr=
otocol=3Dhttps" target=3D"_blank">gitlab.freedesktop.org/pkg-config/pkg-con=
fig.git;branch=3Dmaster;protocol=3Dhttps</a>&#39;)</p>
<p style=3D"line-height:24px;margin-bottom:0px">ERROR: Logfile of failure s=
tored in: /home/stm/src/poky/build/tmp/work/x86_64-linux/pkgconfig-native/0=
.29.2+gitAUTOINC+d97db4fae4-r0/temp/log.do_unpack.19647</p>
<p style=3D"line-height:24px;margin-bottom:0px">ERROR: Task (virtual:native=
:/home/stm/src/poky/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_unp=
ack) failed with exit code &#39;1&#39;</p>
<p style=3D"line-height:24px;margin-bottom:0px">NOTE: Tasks Summary: Attemp=
ted 44 tasks of which 22 didn&#39;t need to be rerun and 2 failed.</p>
<p style=3D"line-height:24px;margin-bottom:0px">=C2=A0</p>
<p style=3D"line-height:24px;margin-bottom:0px">Summary: 2 tasks failed:</p=
>
<p style=3D"line-height:24px;margin-bottom:0px">=C2=A0 virtual:native:/home=
/stm/src/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_unpack<=
/p>
<p style=3D"line-height:24px;margin-bottom:0px">=C2=A0 virtual:native:/home=
/stm/src/poky/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_unpack</p=
>
<p style=3D"line-height:24px;margin-bottom:0px">Summary: There were 2 ERROR=
 messages, returning a non-zero exit code.</p>
<p style=3D"line-height:24px;margin-bottom:0px">=C2=A0</p>
<p style=3D"line-height:24px;margin-bottom:0px">Am I doing something wrong,=
 or is this a bug?<br><br>The background for these experiments is the quest=
ion how to guarantee long-term reproducibility of our Yocto project builds.=
 My current idea is to preserve the &quot;downloads&quot; directory as a se=
parate Git repository, maybe using Git LFS. Is this a good or bad idea?<br>=
<br>I read of course=C2=A0<a href=3D"https://docs.yoctoproject.org/4.2.2/te=
st-manual/reproducible-builds.html?highlight=3Dreproducibility#reproducible=
-builds" rel=3D"noopener" target=3D"_blank">https://docs.yoctoproject.org/4=
.2.2/test-manual/reproducible-builds.html?highlight=3Dreproducibility#repro=
ducible-builds</a>=C2=A0, but my concern are the downloaded packages. If I =
try to reproduce a certain build 5 or 10 years from now, it might no longer=
 be possible to download all the relevant packages if I want to create a bu=
ild environment from scratch.<br><br>Thanks<br>Stephan<br><br><br></p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60889): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60889" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60889</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100952497/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100952497/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000008ef7ee0603bbf7b0--

