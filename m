Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDCCD5B865
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 09:37:21 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.11026.1730281035919813215
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 02:37:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=oKY5mv+I;
 spf=pass (domain: smile.fr, ip: 209.85.221.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-37d8901cb98so437881f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 02:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1730281034; x=1730885834; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WyKtEwTNHzHfPtbt095w0B/9tsNg65sljJIKqSju3MQ=;
        b=oKY5mv+IneJ6zMqGzczwgieDp53z0y6/EMeMHWiDdQ/4EYyibDFuRqxn6FqcBD2ovq
         HJ+AL2ZSGBjdgcgyR1+vlfzPzutWhQ8Nc0xQQqDfksyeAhk/u1gAve+auj3/pC9vqspW
         L5t5WDdBU1/k6RulDK29J3CxA2C3BPzQemF/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730281034; x=1730885834;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WyKtEwTNHzHfPtbt095w0B/9tsNg65sljJIKqSju3MQ=;
        b=oyyciYHSKWI3LKf1/Gj7psWxKGTeZucUe0vw8ds1CYa83wAUw6fCeUEUSEEtVCbQbz
         aZKPQw8FjeupZtGJu24XpeiKaEcNQZk905lFDgKp9i4yZFvcRXwcRp728EUqA6/E5v6l
         DbhSGpUm0ceQXdak165UQfKxTcvaWsfPNDa46Yq8WdgJSoJ2+EK9yLuDD1hPyv8y27xU
         p2GxlRSARyf0w9sMqV8nVEE87/LWVt0Qvox/5zzWsy3zW4QQqAhQv0lUjkUf+70hDGsm
         qeqNhFnmyeg0/Lc8kEwMnS7Gk9prJyOjwGiRzvFnzA5M/pzyiiKTtq7GyHqv3Xckdw2R
         fqBA==
X-Gm-Message-State: AOJu0Yw5MLjw3m0WU/X1r4C5MpGnfXUF/a/BpHsamQ9TMQQSHcbruZzd
	thRNxkQS8MBsl0ldrh/16YWgX6hHxamWR3rPvV5+U5PtVOiA8QL2OlfheGmJPF/Mij2FZzr/8uK
	glcVDjuelJWqW1i9IlW8yt3RtmMhMarfNy5k6hQeuDO8+q2gK
X-Google-Smtp-Source: AGHT+IHDEpd3uur/LWS3fn5Ukko9Z/YVwXiJ9a/4vrsLnCHwroVHohSOkC9BgjhM8pQ7V5mTwPZfraDLpHGXirH4lVI=
X-Received: by 2002:a5d:4889:0:b0:37c:c4c0:4545 with SMTP id
 ffacd0b85a97d-3817d613803mr4171086f8f.10.1730281033468; Wed, 30 Oct 2024
 02:37:13 -0700 (PDT)
MIME-Version: 1.0
References: <3dcc48fa-48fc-4ec8-b96a-eb9ddc33447b@cherry.de>
In-Reply-To: <3dcc48fa-48fc-4ec8-b96a-eb9ddc33447b@cherry.de>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 30 Oct 2024 10:36:47 +0100
Message-ID: <CAMSfU+5RtELuQD_Q4tWxFJh4k_1n0zsa2eyEZr1X_QssJhd-hg@mail.gmail.com>
Subject: Re: [yocto] Multi-layer GitLab CI/CD (multi-project pipelines and
 merge request CI)
To: yocto@lists.yoctoproject.org, quentin.schulz@cherry.de
Cc: ticotimo@gmail.com, Trevor Gamblin <tgamblin@baylibre.com>, pidge@baylibre.com
Content-Type: multipart/alternative; boundary="0000000000005caa780625ae7279"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 09:37:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64176

--0000000000005caa780625ae7279
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you for documenting this! Really interesting

Le mer. 23 oct. 2024 =C3=A0 16:26, Quentin Schulz via lists.yoctoproject.or=
g
<quentin.schulz=3Dcherry.de@lists.yoctoproject.org> a =C3=A9crit :

> Hi all,
>
> I have two git repos for multiple layers, let's say layerA, layerB and
> layerC. I cannot merge them because one repo is "closed-source" while
> the other is public. Our testing scripts in a testing/demo image are in
> layerC, so to validate that changes made to layerA actually are fine,
> one needs to build layerC with the content of unmerged layerA changes
> (merge requests) before merging the changes. Manually doing this is
> possible but is error-prone and not automated.
>
> So, I took some time to look at how to do this in GitLab and I am
> sharing here how I managed to do it. The goal is to see if I missed
> something, if there's an easier way to deal with this but mainly, maybe
> someone will have interest in that and can reuse it. This needs maybe
> some cleanup so it isn't available just yet in our public repo, I'm
> basically waiting for feedback on it before pushing :)
>
> Mapping of layerX used above to actual names:
> - layerA is meta-bsp in meta-cherry-es (public)
> - layerB is meta-extended in meta-cherry-es (public)
> - layerC is meta-theobroma-systems-demo (private)
>
> The important parts in .gitlab-ci.yml in meta-cherry-es:
> """
> [snip]
>
> stages:
>    - build
>    - build-demo
>
> [snip]
>
> tiger-extended:
>     [snip; just a job in build stage]
>
> build-demo:
>    stage: build-demo
>    variables:
>      # Required to make sure that checking that nothing newer/different
>      # is now present in the parent merge request which triggered the
>      # child pipeline (e.g. a push happened before the child pipeline
>      # got triggered, the old child pipeline would use code from the
>      # new state of the parent merge request).
>      # Can be used to fail the child pipeline, or enforce a commit hash
>      # if and only if the GitLab server is configured to keep old
>      # commits of merge requests (which is not the default).
>      PARENT_CI_COMMIT_SHA: $CI_COMMIT_SHA
>      # Required to manually fetch parent code from child pipeline
>      # without requiring permissions to access fork project from where
>      # the merge request originates
>      PARENT_CI_MERGE_REQUEST_REF_PATH: $CI_MERGE_REQUEST_REF_PATH
>      # Required to generate CI_REPOSITORY_URL pointing to the parent
>      # project but with a job token from child pipeline.
>      PARENT_CI_PROJECT_PATH: $CI_PROJECT_PATH
>      PARENT_CI_SERVER_URL: $CI_SERVER_URL
>    trigger:
>      # FIXME: note: should be configurable via a GitLab CI/CD project
> variable to avoid it being hardcoded?
>      project: qschulz/meta-theobroma-systems-demo
>      # Fail the parent pipeline if the child pipeline does
>      # Will likely trigger a bunch of chicken and the egg problems
>      strategy: depend
>      # Make sure we're building the same release in dependent layer and
>      # not the default branch
>      branch: $CI_MERGE_REQUEST_TARGET_BRANCH_NAME
>    rules:
>      - if: $CI_PIPELINE_SOURCE =3D=3D "merge_request_event"
> """
>
> My kas-cherry-es.yml files which will be used by
> meta-theobroma-systems-demo's:
>
> meta-cherry-es/meta-bsp/kas-cherry-es.yml
> """
> ---
> header:
>    version: 14
> build_system: openembedded
> machine: puma-haikou
> distro: poky
> local_conf_header:
>    debug: |
>      EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
>    no-ptest: |
>      DISTRO_FEATURES:remove =3D "ptest"
> repos:
>    poky:
>      url: "https://git.yoctoproject.org/poky"
>      # yocto-5.0.2 tag
>      commit: f7def85be9f99dcb4ba488bead201f670304379b
>      branch: scarthgap
>      layers:
>        meta:
>        meta-poky:
>        meta-yocto-bsp:
>    meta-arm:
>      url: "https://git.yoctoproject.org/meta-arm"
>      # yocto-5.0 tag
>      commit: 8aa8a1f17f5b64bc691544f989f04fc83df98adb
>      branch: scarthgap
>      layers:
>        meta-arm-toolchain:
>        meta-arm:
>    meta-rockchip:
>      url: "https://git.yoctoproject.org/meta-rockchip"
>      commit: bf9ade59abc15a5f6fb5450265c214450f35857f
>      branch: scarthgap
>    meta-openembedded:
>      url: "https://git.openembedded.org/meta-openembedded"
>      commit: 6de0ab744341ad61b0661aa28d78dc6767ce0786
>      branch: scarthgap
>      layers:
>        meta-oe:
>        meta-python:
>    meta-cherry-es:
>      layers:
>        meta-bsp:
> """
>
> meta-cherry-es/meta-extended/kas-cherry-es.yml
> """
> ---
> header:
>    version: 14
>    includes:
>      - repo: meta-cherry-es
>        file: meta-bsp/kas-cherry-es.yml
> target:
>    - cherry-es-extended-image
> repos:
>    meta-cherry-es:
>      layers:
>        meta-extended:
>    meta-openembedded:
>      layers:
>        meta-oe:
>        meta-networking:
> """
>
> The important parts in .gitlab-ci.yml in meta-theobroma-systems-demo:
>
> """
> ---
> workflow:
>    rules:
>      # Allow multi-project pipeline trigger, c.f.
>      #
>
> https://docs.gitlab.com/ee/ci/pipelines/downstream_pipelines.html#multi-p=
roject-pipelines
>      # so that a merge request in meta-cherry-es can trigger a pipeline
>      # in meta-theobroma-systems-demo
>      - if: $CI_PIPELINE_SOURCE =3D=3D "pipeline"
>
> [snip]
>
> .build:
>    tags:
>      - docker
>    image: ghcr.io/siemens/kas/kas:4.3.2
>    stage: build
>    script:
>      - |
>        if [ "$CI_PIPELINE_SOURCE" =3D "pipeline" ]; then
>          # FIXME: not generic (though not an issue for us :) )
>          ADD_KAS_FILE=3D"kas-mr-meta-cherry-es.yml"
>          parent_dir=3D$(basename "$PARENT_CI_PROJECT_PATH")
>          mkdir -p "$parent_dir"
>          cd "$parent_dir"
>          git init .
>          # Horrendous multi-line commands to make yamllint happy with
> 80-character-long lines
>          repository=3D"$(echo "$PARENT_CI_SERVER_URL" | \
>            sed "s^\(http.*://\)\(.*\)^\1gitlab-ci-token:$CI_JOB_TOKEN@
> \2^")"
>          repository=3D"$repository/$PARENT_CI_PROJECT_PATH"
>          ref=3D"$PARENT_CI_MERGE_REQUEST_REF_PATH"
>          # FIXME: Note: only "required" because our internal gitlab
> server is using a self-signed certificate
>          git -c http.sslVerify=3Dfalse fetch "$repository" "$ref" || exit=
 1
>          # Make sure we're testing what we're supposed to test
>          test "$PARENT_CI_COMMIT_SHA" =3D "$(git rev-parse FETCH_HEAD)" |=
|
> exit 1
>          git checkout FETCH_HEAD || exit 1
>          cd ..
>        else
>          # FIXME: not generic (though not an issue for us :) )
>          ADD_KAS_FILE=3D"kas-commit-meta-cherry-es.yml"
>        fi
>        export ADD_KAS_FILE
>      - KAS_MACHINE=3D"$CI_JOB_NAME" kas build
> "kas-cherry-es.yml:$ADD_KAS_FILE"
>
>    artifacts:
>      paths:
>        - build/tmp/deploy/images/$CI_JOB_NAME/*.rootfs-*.wic
>        - build/tmp/deploy/images/$CI_JOB_NAME/*.rootfs-*.wic.bmap
>        - build/tmp/deploy/images/$CI_JOB_NAME/fitImage*$CI_JOB_NAME-*.bin
>        - build/tmp/deploy/images/$CI_JOB_NAME/idbloader.img-$CI_JOB_NAME-=
*
>        - build/tmp/deploy/images/$CI_JOB_NAME/u-boot-$CI_JOB_NAME-*.itb
>      exclude:
>        - build/tmp/deploy/images/$CI_JOB_NAME/fitImage*linux*.bin
>    timeout: 10h
>
> tiger-haikou:
>    extends: .build
> """
>
> My kas-*.yml files which will be used by the kas build command:
>
> kas-cherry-es.yml
> """
> ---
> header:
>    version: 14
>    includes:
>      - repo: meta-cherry-es
>        file: meta-extended/kas-cherry-es.yml
> target:
>    - cherry-es-demo-image
> repos:
>    meta-openembedded:
>      layers:
>        meta-oe:
>        meta-networking:
>    meta-theobroma-systems-demo:
> """
>
> kas-commit-meta-cherry-es.yml
> """
> ---
> header:
>    version: 14
> repos:
>    meta-cherry-es:
>      url: https://git.embedded.cherry.de/yocto-layers/meta-cherry-es.git
>      commit: 71a6eee9c4cfe1a3c922b9a3c36acc6e0766a5d8
>      branch: scarthgap
> """
>
> kas-mr-meta-cherry-es.yml
> """
> ---
> header:
>    version: 14
> repos:
>    meta-cherry-es:
>      path: meta-cherry-es
> """
>
> Things could be easier if kas allowed refs/merge-requests/X/head as
> branch and using environment variables, in which case I could manage
> with only one kas configuration file and avoid this horrendous series of
> commands to manually fetch the source code. Maybe I missed something here=
?
>
> This also is not really capable of handling more than one git repo you
> depend one. Say you have a layerF which layerC depends on, this wouldn't
> be able to know which changes to test, layerF or layerA, but there's
> probably some smart way to handle that in a generic way. I had this
> issue in the past because i used to have three git repos, one for the
> BSP layer, one for the extended layer (basically demo images with open
> source code; or at least public) and one for the demo layer (private).
> This was an absolute nightmare, so I merged the BSP layer and extended
> layer into a single repo when upgrading to scarthgap, and I now feel
> better and don't have the need to look into 2-depth multi-project
> pipeline CI :).
>
> Additional note, this was tested on GitLab 17.4 and kas-container 4.3.2
> so YMMV if you have different versions.
>
> Any thoughts?
>

For what it's worth, I've arrived more or less at the same setup in our
contribution project :
- each oe-core, bitbake, meta-yocto has its own repo in our gitlab,
integrated in a Yocto cooker based project.
- a MR on these will trigger a pipeline running patchtest on the commits in
the MR.
- I did not find a way to map repos to their paths in a generic way so I
have a manual
"$CI_PROJECT_NAME -> path in integration project" mapping in my
.gitlab-ci.yml file.


> @cc Tim, Trevor and Pidge solely based on
> https://libera.irclog.whitequark.org/yocto/2024-03-04#35933698;
> https://libera.irclog.whitequark.org/yocto/2024-03-04#35934046;
>
> (has 8 months really already passed since then? no it couldn't have!)
>
> Cheers,
> Quentin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64095):
> https://lists.yoctoproject.org/g/yocto/message/64095
> Mute This Topic: https://lists.yoctoproject.org/mt/109171222/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000005caa780625ae7279
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>Thank you for documenting this! Really interesting<br></div><div>=
<br></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">Le=C2=A0mer. 23 oct. 2024 =C3=A0=C2=A016:26, Quentin Schulz via <a hr=
ef=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproject.o=
rg</a> &lt;quentin.schulz=3D<a href=3D"mailto:cherry.de@lists.yoctoproject.=
org" target=3D"_blank">cherry.de@lists.yoctoproject.org</a>&gt; a =C3=A9cri=
t=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,=
<br>
<br>
I have two git repos for multiple layers, let&#39;s say layerA, layerB and =
<br>
layerC. I cannot merge them because one repo is &quot;closed-source&quot; w=
hile <br>
the other is public. Our testing scripts in a testing/demo image are in <br=
>
layerC, so to validate that changes made to layerA actually are fine, <br>
one needs to build layerC with the content of unmerged layerA changes <br>
(merge requests) before merging the changes. Manually doing this is <br>
possible but is error-prone and not automated.<br>
<br>
So, I took some time to look at how to do this in GitLab and I am <br>
sharing here how I managed to do it. The goal is to see if I missed <br>
something, if there&#39;s an easier way to deal with this but mainly, maybe=
 <br>
someone will have interest in that and can reuse it. This needs maybe <br>
some cleanup so it isn&#39;t available just yet in our public repo, I&#39;m=
 <br>
basically waiting for feedback on it before pushing :)<br>
<br>
Mapping of layerX used above to actual names:<br>
- layerA is meta-bsp in meta-cherry-es (public)<br>
- layerB is meta-extended in meta-cherry-es (public)<br>
- layerC is meta-theobroma-systems-demo (private)<br>
<br>
The important parts in .gitlab-ci.yml in meta-cherry-es:<br>
&quot;&quot;&quot;<br>
[snip]<br>
<br>
stages:<br>
=C2=A0 =C2=A0- build<br>
=C2=A0 =C2=A0- build-demo<br>
<br>
[snip]<br>
<br>
tiger-extended:<br>
=C2=A0 =C2=A0 [snip; just a job in build stage]<br>
<br>
build-demo:<br>
=C2=A0 =C2=A0stage: build-demo<br>
=C2=A0 =C2=A0variables:<br>
=C2=A0 =C2=A0 =C2=A0# Required to make sure that checking that nothing newe=
r/different<br>
=C2=A0 =C2=A0 =C2=A0# is now present in the parent merge request which trig=
gered the<br>
=C2=A0 =C2=A0 =C2=A0# child pipeline (e.g. a push happened before the child=
 pipeline<br>
=C2=A0 =C2=A0 =C2=A0# got triggered, the old child pipeline would use code =
from the<br>
=C2=A0 =C2=A0 =C2=A0# new state of the parent merge request).<br>
=C2=A0 =C2=A0 =C2=A0# Can be used to fail the child pipeline, or enforce a =
commit hash<br>
=C2=A0 =C2=A0 =C2=A0# if and only if the GitLab server is configured to kee=
p old<br>
=C2=A0 =C2=A0 =C2=A0# commits of merge requests (which is not the default).=
<br>
=C2=A0 =C2=A0 =C2=A0PARENT_CI_COMMIT_SHA: $CI_COMMIT_SHA<br>
=C2=A0 =C2=A0 =C2=A0# Required to manually fetch parent code from child pip=
eline<br>
=C2=A0 =C2=A0 =C2=A0# without requiring permissions to access fork project =
from where<br>
=C2=A0 =C2=A0 =C2=A0# the merge request originates<br>
=C2=A0 =C2=A0 =C2=A0PARENT_CI_MERGE_REQUEST_REF_PATH: $CI_MERGE_REQUEST_REF=
_PATH<br>
=C2=A0 =C2=A0 =C2=A0# Required to generate CI_REPOSITORY_URL pointing to th=
e parent<br>
=C2=A0 =C2=A0 =C2=A0# project but with a job token from child pipeline.<br>
=C2=A0 =C2=A0 =C2=A0PARENT_CI_PROJECT_PATH: $CI_PROJECT_PATH<br>
=C2=A0 =C2=A0 =C2=A0PARENT_CI_SERVER_URL: $CI_SERVER_URL<br>
=C2=A0 =C2=A0trigger:<br>
=C2=A0 =C2=A0 =C2=A0# FIXME: note: should be configurable via a GitLab CI/C=
D project <br>
variable to avoid it being hardcoded?<br>
=C2=A0 =C2=A0 =C2=A0project: qschulz/meta-theobroma-systems-demo<br>
=C2=A0 =C2=A0 =C2=A0# Fail the parent pipeline if the child pipeline does<b=
r>
=C2=A0 =C2=A0 =C2=A0# Will likely trigger a bunch of chicken and the egg pr=
oblems<br>
=C2=A0 =C2=A0 =C2=A0strategy: depend<br>
=C2=A0 =C2=A0 =C2=A0# Make sure we&#39;re building the same release in depe=
ndent layer and<br>
=C2=A0 =C2=A0 =C2=A0# not the default branch<br>
=C2=A0 =C2=A0 =C2=A0branch: $CI_MERGE_REQUEST_TARGET_BRANCH_NAME<br>
=C2=A0 =C2=A0rules:<br>
=C2=A0 =C2=A0 =C2=A0- if: $CI_PIPELINE_SOURCE =3D=3D &quot;merge_request_ev=
ent&quot;<br>
&quot;&quot;&quot;<br>
<br>
My kas-cherry-es.yml files which will be used by <br>
meta-theobroma-systems-demo&#39;s:<br>
<br>
meta-cherry-es/meta-bsp/kas-cherry-es.yml<br>
&quot;&quot;&quot;<br>
---<br>
header:<br>
=C2=A0 =C2=A0version: 14<br>
build_system: openembedded<br>
machine: puma-haikou<br>
distro: poky<br>
local_conf_header:<br>
=C2=A0 =C2=A0debug: |<br>
=C2=A0 =C2=A0 =C2=A0EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks&quot;<br>
=C2=A0 =C2=A0no-ptest: |<br>
=C2=A0 =C2=A0 =C2=A0DISTRO_FEATURES:remove =3D &quot;ptest&quot;<br>
repos:<br>
=C2=A0 =C2=A0poky:<br>
=C2=A0 =C2=A0 =C2=A0url: &quot;<a href=3D"https://git.yoctoproject.org/poky=
" rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/poky</a=
>&quot;<br>
=C2=A0 =C2=A0 =C2=A0# yocto-5.0.2 tag<br>
=C2=A0 =C2=A0 =C2=A0commit: f7def85be9f99dcb4ba488bead201f670304379b<br>
=C2=A0 =C2=A0 =C2=A0branch: scarthgap<br>
=C2=A0 =C2=A0 =C2=A0layers:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-poky:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-yocto-bsp:<br>
=C2=A0 =C2=A0meta-arm:<br>
=C2=A0 =C2=A0 =C2=A0url: &quot;<a href=3D"https://git.yoctoproject.org/meta=
-arm" rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/met=
a-arm</a>&quot;<br>
=C2=A0 =C2=A0 =C2=A0# yocto-5.0 tag<br>
=C2=A0 =C2=A0 =C2=A0commit: 8aa8a1f17f5b64bc691544f989f04fc83df98adb<br>
=C2=A0 =C2=A0 =C2=A0branch: scarthgap<br>
=C2=A0 =C2=A0 =C2=A0layers:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-arm-toolchain:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-arm:<br>
=C2=A0 =C2=A0meta-rockchip:<br>
=C2=A0 =C2=A0 =C2=A0url: &quot;<a href=3D"https://git.yoctoproject.org/meta=
-rockchip" rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.or=
g/meta-rockchip</a>&quot;<br>
=C2=A0 =C2=A0 =C2=A0commit: bf9ade59abc15a5f6fb5450265c214450f35857f<br>
=C2=A0 =C2=A0 =C2=A0branch: scarthgap<br>
=C2=A0 =C2=A0meta-openembedded:<br>
=C2=A0 =C2=A0 =C2=A0url: &quot;<a href=3D"https://git.openembedded.org/meta=
-openembedded" rel=3D"noreferrer" target=3D"_blank">https://git.openembedde=
d.org/meta-openembedded</a>&quot;<br>
=C2=A0 =C2=A0 =C2=A0commit: 6de0ab744341ad61b0661aa28d78dc6767ce0786<br>
=C2=A0 =C2=A0 =C2=A0branch: scarthgap<br>
=C2=A0 =C2=A0 =C2=A0layers:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-oe:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-python:<br>
=C2=A0 =C2=A0meta-cherry-es:<br>
=C2=A0 =C2=A0 =C2=A0layers:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-bsp:<br>
&quot;&quot;&quot;<br>
<br>
meta-cherry-es/meta-extended/kas-cherry-es.yml<br>
&quot;&quot;&quot;<br>
---<br>
header:<br>
=C2=A0 =C2=A0version: 14<br>
=C2=A0 =C2=A0includes:<br>
=C2=A0 =C2=A0 =C2=A0- repo: meta-cherry-es<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0file: meta-bsp/kas-cherry-es.yml<br>
target:<br>
=C2=A0 =C2=A0- cherry-es-extended-image<br>
repos:<br>
=C2=A0 =C2=A0meta-cherry-es:<br>
=C2=A0 =C2=A0 =C2=A0layers:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-extended:<br>
=C2=A0 =C2=A0meta-openembedded:<br>
=C2=A0 =C2=A0 =C2=A0layers:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-oe:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-networking:<br>
&quot;&quot;&quot;<br>
<br>
The important parts in .gitlab-ci.yml in meta-theobroma-systems-demo:<br>
<br>
&quot;&quot;&quot;<br>
---<br>
workflow:<br>
=C2=A0 =C2=A0rules:<br>
=C2=A0 =C2=A0 =C2=A0# Allow multi-project pipeline trigger, c.f.<br>
=C2=A0 =C2=A0 =C2=A0# <br>
<a href=3D"https://docs.gitlab.com/ee/ci/pipelines/downstream_pipelines.htm=
l#multi-project-pipelines" rel=3D"noreferrer" target=3D"_blank">https://doc=
s.gitlab.com/ee/ci/pipelines/downstream_pipelines.html#multi-project-pipeli=
nes</a><br>
=C2=A0 =C2=A0 =C2=A0# so that a merge request in meta-cherry-es can trigger=
 a pipeline<br>
=C2=A0 =C2=A0 =C2=A0# in meta-theobroma-systems-demo<br>
=C2=A0 =C2=A0 =C2=A0- if: $CI_PIPELINE_SOURCE =3D=3D &quot;pipeline&quot;<b=
r>
<br>
[snip]<br>
<br>
.build:<br>
=C2=A0 =C2=A0tags:<br>
=C2=A0 =C2=A0 =C2=A0- docker<br>
=C2=A0 =C2=A0image: <a href=3D"http://ghcr.io/siemens/kas/kas:4.3.2" rel=3D=
"noreferrer" target=3D"_blank">ghcr.io/siemens/kas/kas:4.3.2</a><br>
=C2=A0 =C2=A0stage: build<br>
=C2=A0 =C2=A0script:<br>
=C2=A0 =C2=A0 =C2=A0- |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;$CI_PIPELINE_SOURCE&quot; =3D &quot;p=
ipeline&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# FIXME: not generic (though not an issue=
 for us :) )<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ADD_KAS_FILE=3D&quot;kas-mr-meta-cherry-e=
s.yml&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0parent_dir=3D$(basename &quot;$PARENT_CI_=
PROJECT_PATH&quot;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mkdir -p &quot;$parent_dir&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cd &quot;$parent_dir&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git init .<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Horrendous multi-line commands to make =
yamllint happy with <br>
80-character-long lines<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0repository=3D&quot;$(echo &quot;$PARENT_C=
I_SERVER_URL&quot; | \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sed &quot;s^\(http.*://\)\(.*\)^\1=
gitlab-ci-token:$CI_JOB_TOKEN@\2^&quot;)&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0repository=3D&quot;$repository/$PARENT_CI=
_PROJECT_PATH&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ref=3D&quot;$PARENT_CI_MERGE_REQUEST_REF_=
PATH&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# FIXME: Note: only &quot;required&quot; =
because our internal gitlab <br>
server is using a self-signed certificate<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git -c http.sslVerify=3Dfalse fetch &quot=
;$repository&quot; &quot;$ref&quot; || exit 1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Make sure we&#39;re testing what we&#39=
;re supposed to test<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0test &quot;$PARENT_CI_COMMIT_SHA&quot; =
=3D &quot;$(git rev-parse FETCH_HEAD)&quot; || <br>
exit 1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git checkout FETCH_HEAD || exit 1<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cd ..<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# FIXME: not generic (though not an issue=
 for us :) )<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ADD_KAS_FILE=3D&quot;kas-commit-meta-cher=
ry-es.yml&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0export ADD_KAS_FILE<br>
=C2=A0 =C2=A0 =C2=A0- KAS_MACHINE=3D&quot;$CI_JOB_NAME&quot; kas build <br>
&quot;kas-cherry-es.yml:$ADD_KAS_FILE&quot;<br>
<br>
=C2=A0 =C2=A0artifacts:<br>
=C2=A0 =C2=A0 =C2=A0paths:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- build/tmp/deploy/images/$CI_JOB_NAME/*.rootfs-=
*.wic<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- build/tmp/deploy/images/$CI_JOB_NAME/*.rootfs-=
*.wic.bmap<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- build/tmp/deploy/images/$CI_JOB_NAME/fitImage*=
$CI_JOB_NAME-*.bin<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- build/tmp/deploy/images/$CI_JOB_NAME/idbloader=
.img-$CI_JOB_NAME-*<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- build/tmp/deploy/images/$CI_JOB_NAME/u-boot-$C=
I_JOB_NAME-*.itb<br>
=C2=A0 =C2=A0 =C2=A0exclude:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0- build/tmp/deploy/images/$CI_JOB_NAME/fitImage*=
linux*.bin<br>
=C2=A0 =C2=A0timeout: 10h<br>
<br>
tiger-haikou:<br>
=C2=A0 =C2=A0extends: .build<br>
&quot;&quot;&quot;<br>
<br>
My kas-*.yml files which will be used by the kas build command:<br>
<br>
kas-cherry-es.yml<br>
&quot;&quot;&quot;<br>
---<br>
header:<br>
=C2=A0 =C2=A0version: 14<br>
=C2=A0 =C2=A0includes:<br>
=C2=A0 =C2=A0 =C2=A0- repo: meta-cherry-es<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0file: meta-extended/kas-cherry-es.yml<br>
target:<br>
=C2=A0 =C2=A0- cherry-es-demo-image<br>
repos:<br>
=C2=A0 =C2=A0meta-openembedded:<br>
=C2=A0 =C2=A0 =C2=A0layers:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-oe:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0meta-networking:<br>
=C2=A0 =C2=A0meta-theobroma-systems-demo:<br>
&quot;&quot;&quot;<br>
<br>
kas-commit-meta-cherry-es.yml<br>
&quot;&quot;&quot;<br>
---<br>
header:<br>
=C2=A0 =C2=A0version: 14<br>
repos:<br>
=C2=A0 =C2=A0meta-cherry-es:<br>
=C2=A0 =C2=A0 =C2=A0url: <a href=3D"https://git.embedded.cherry.de/yocto-la=
yers/meta-cherry-es.git" rel=3D"noreferrer" target=3D"_blank">https://git.e=
mbedded.cherry.de/yocto-layers/meta-cherry-es.git</a><br>
=C2=A0 =C2=A0 =C2=A0commit: 71a6eee9c4cfe1a3c922b9a3c36acc6e0766a5d8<br>
=C2=A0 =C2=A0 =C2=A0branch: scarthgap<br>
&quot;&quot;&quot;<br>
<br>
kas-mr-meta-cherry-es.yml<br>
&quot;&quot;&quot;<br>
---<br>
header:<br>
=C2=A0 =C2=A0version: 14<br>
repos:<br>
=C2=A0 =C2=A0meta-cherry-es:<br>
=C2=A0 =C2=A0 =C2=A0path: meta-cherry-es<br>
&quot;&quot;&quot;<br>
<br>
Things could be easier if kas allowed refs/merge-requests/X/head as <br>
branch and using environment variables, in which case I could manage <br>
with only one kas configuration file and avoid this horrendous series of <b=
r>
commands to manually fetch the source code. Maybe I missed something here?<=
br>
<br>
This also is not really capable of handling more than one git repo you <br>
depend one. Say you have a layerF which layerC depends on, this wouldn&#39;=
t <br>
be able to know which changes to test, layerF or layerA, but there&#39;s <b=
r>
probably some smart way to handle that in a generic way. I had this <br>
issue in the past because i used to have three git repos, one for the <br>
BSP layer, one for the extended layer (basically demo images with open <br>
source code; or at least public) and one for the demo layer (private). <br>
This was an absolute nightmare, so I merged the BSP layer and extended <br>
layer into a single repo when upgrading to scarthgap, and I now feel <br>
better and don&#39;t have the need to look into 2-depth multi-project <br>
pipeline CI :).<br>
<br>
Additional note, this was tested on GitLab 17.4 and kas-container 4.3.2 <br=
>
so YMMV if you have different versions.<br>
<br>
Any thoughts?<br></blockquote><div><br></div><div>For what it&#39;s worth, =
I&#39;ve arrived more or less at the same setup in our contribution project=
 :</div><div>- each oe-core, bitbake, meta-yocto has its own repo in our gi=
tlab, integrated in a Yocto cooker based project.<br></div><div>- a MR on t=
hese will trigger a pipeline running patchtest on the commits in the MR.<br=
></div><div>- I did not find a way to map repos to their paths in a generic=
 way so I have a manual<br></div>&quot;$CI_PROJECT_NAME -&gt; path in integ=
ration project&quot; mapping in my .gitlab-ci.yml file.</div><div class=3D"=
gmail_quote">=C2=A0</div><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">

@cc Tim, Trevor and Pidge solely based on<br>
<a href=3D"https://libera.irclog.whitequark.org/yocto/2024-03-04#35933698" =
rel=3D"noreferrer" target=3D"_blank">https://libera.irclog.whitequark.org/y=
octo/2024-03-04#35933698</a>;<br>
<a href=3D"https://libera.irclog.whitequark.org/yocto/2024-03-04#35934046" =
rel=3D"noreferrer" target=3D"_blank">https://libera.irclog.whitequark.org/y=
octo/2024-03-04#35934046</a>;<br>
<br>
(has 8 months really already passed since then? no it couldn&#39;t have!)<b=
r>
<br>
Cheers,<br>
Quentin<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64095): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64095" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64095</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109171222/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109171222/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><font face=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"R=
aleway, regular">Smile ECS - Tech expert<br></font></div></div></div></div>
</div>

--0000000000005caa780625ae7279--

