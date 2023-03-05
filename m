Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E56C6FA8E
	for <webhook@archiver.kernel.org>; Sun,  5 Mar 2023 18:08:18 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web11.14301.1678039688869834258
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Mar 2023 10:08:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dKgBsqwr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id g3so6714910wri.6
        for <yocto@lists.yoctoproject.org>; Sun, 05 Mar 2023 10:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xu8zNC8Bb5hch6GsxK47VF5PzOIMDh6A8YoiCh51E9I=;
        b=dKgBsqwrZOJKhewqdqcOIzU2UhSomcxtUfL7jb1vdL4IQU/rkbyCBSNjmbPznChb0c
         vW3/oAtRrfE/UU41IsCzoGJ09EspPyJmPN5C2W0eLfHfSsNwbVFtYzxJ4CxfP9o2Idw8
         4CyWsugLJ8JKsR/OF9RzufkpYrdQlnQn/evbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xu8zNC8Bb5hch6GsxK47VF5PzOIMDh6A8YoiCh51E9I=;
        b=Bdeg4yYlmaiJsNRviT2UHaC5piOWDMCjd/Vp+EPGQ6vbgyKXTdM4xiYljKrXbX2Rnc
         WqmQ/UwQZQqs7IsMx5avlq0APl0+VNObwyz5wZn5VKU6gN6DtYgbDjKVyFXHNdbWwkx6
         BZOexAnsgjl0uI7yT53ftL469orLvZNNnGuDqyd9CIM9bb3ZEKHCXDL4SEE9dnxhD5Wh
         LNlFM9mkR9WqlJY4H//Yg4PkgJ2TjTLUEWYVhw1HmUbEVvdGwgKttE6ftbAQOEG0wgRQ
         rY0GSWpF6pDCI4ZmbVPPLNkzZ/ExdWc9R0HZJTRIvcWMk1e7Ibvxu8oI4k299q4gMSYy
         kFTw==
X-Gm-Message-State: AO0yUKWYEtfOOn4cC6Nu8Q7pOlm2Bv9AaOIDTdcrnntGGckdEH4IpcF6
	z7b3w5qcX/jiKRkLtj3T7Us43Q==
X-Google-Smtp-Source: AK7set8cbTFnm0tyuYcGyrSVrhBObrHeSTyuzm6G8xbKB2cRVsHikKUIFap8t1cFAAhUIF99fIQEAw==
X-Received: by 2002:adf:f70d:0:b0:2c7:1d97:bdcb with SMTP id r13-20020adff70d000000b002c71d97bdcbmr5408526wrp.36.1678039687251;
        Sun, 05 Mar 2023 10:08:07 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:bd62:bd0e:fe43:db33? ([2001:8b0:aba:5f3c:bd62:bd0e:fe43:db33])
        by smtp.gmail.com with ESMTPSA id n16-20020a5d67d0000000b002c758fe9689sm7795206wrw.52.2023.03.05.10.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Mar 2023 10:08:06 -0800 (PST)
Message-ID: <246a0cb2f6feadf3ba02958a6c228add5f59aa45.camel@linuxfoundation.org>
Subject: Re: [yocto] Question about psuedo abort errors
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tamis <tamtamis@gmail.com>, yocto@lists.yoctoproject.org
Date: Sun, 05 Mar 2023 18:08:05 +0000
In-Reply-To: <2956.1677148028932653597@lists.yoctoproject.org>
References: 
	<bbff00030abef49a53d877a67e739be43667de7b.camel@linuxfoundation.org>
	 <2956.1677148028932653597@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Mar 2023 18:08:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59343

I saw you're still having problems even with the latest pseudo
revisions. I'll make some comments below.

On Thu, 2023-02-23 at 02:27 -0800, Tamis wrote:
> Install error:
> --------------------------------------------
> + install -m 0644 WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasi=
f_list.h WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_pdinc.h W=
ORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_util.h WORKDIR/lib3=
2-las/M-WBS0.1-r0/git/lasiflib/include/lasif_varmsg.h WORKDIR/lib32-las/M-W=
BS0.1-r0/image/usr/include
> =C2=A0
> abort()ing pseudo client by server request. See https://wiki.yoctoproject=
.org/wiki/Pseudo_Abort for more details on this.
> Check logfile: WORDIR/lib32-las/M-WBS0.1-r0/pseudo//pseudo.log
> =C2=A0
> Aborted (core dumped)
> + bb_exit_handler
> + ret=3D134
> + echo WARNING: exit code 134 from a shell command.
> WARNING: exit code 134 from a shell command.
> + exit 134
> -------------------------------------------------------------------------=
--------
> And pseudo log error output:
> ------------------------------------------------------------------
> pid 26345 [parent 26344], doing new pid setup and server start
> Setup complete, sending SIGUSR1 to pid 26344.
> path mismatch [3 links]: ino 7868999 db 'WORKDIR/lib32-las/M-WBS0.1-r0/pa=
ckage/usr/src/debug/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h=
' req 'WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h'.

This is saying the file on disk with inode 7868999 is:
WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h=C2=A0

but the pseudo database thinks this is:

WORKDIR/lib32-las/M-WBS0.1-r0/package/usr/src/debug/lib32-las/M-WBS0.1-r0/g=
it/lasiflib/include/lasif_list.h

so the question is when was this file created? It would be created by
do_package since it is in the /package/ directory. It would seem to be
being deleted outside of pseudo context.

> db cleanup for server shutdown, 08:38:52.482
> memory-to-file backup complete, 08:38:52.482.
> db cleanup finished, 08:38:52.482
> debug_logfile: fd 2
> pid 6423 [parent 6422], doing new pid setup and server start
> Setup complete, sending SIGUSR1 to pid 6422.
> path mismatch [3 links]: ino 7868999 db 'WORKDIR/lib32-las/M-WBS0.1-r0/pa=
ckage/usr/src/debug/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h=
' req 'WORKDIR/lib32-las/M-WBS0.1-r0/git/lasiflib/include/lasif_list.h'.
> db cleanup for server shutdown, 09:13:45.899
> memory-to-file backup complete, 09:13:45.899.
> db cleanup finished, 09:13:45.899
> -------------------------------------------------------------------------=
----------------------------------------------------------
>=20
> I added the=C2=A0export PSEUDO_DEBUG =3D "nfoPcvdDyerpswikVx"=C2=A0in the=
 recipe but I couldn't understand much.
> In the whole build we have the RM_WORK enabled but for that current recip=
e we have excluded it.

How are you excluding it? I have to wonder if that is somehow breaking
things due to dependency changes.

> Also the task order is the following:
> do_cleansstate (20698): log.do_cleansstate.20698
> do_cleanall (22404): log.do_cleanall.22404
> do_rm_work (24346): log.do_rm_work.24346
> do_fetch (24434): log.do_fetch.24434
> do_prepare_recipe_sysroot (24465): log.do_prepare_recipe_sysroot.24465
> do_unpack (24466): log.do_unpack.24466
> do_patch (24493): log.do_patch.24493
> do_populate_lic (24665): log.do_populate_lic.24665
> do_deploy_source_date_epoch (24666): log.do_deploy_source_date_epoch.2466=
6
> do_configure (24765): log.do_configure.24765
> do_compile (24809): log.do_compile.24809
> do_install (27477): log.do_install.27477
> do_populate_sysroot (27510): log.do_populate_sysroot.27510
> do_package (27509): log.do_package.27509
> do_packagedata (29544): log.do_packagedata.29544
> do_package_qa (29592): log.do_package_qa.2959
> do_package_write_ipk (29593): log.do_package_write_ipk.29593
>=20
> Ok build till now.
> Next invocation
> do_prepare_recipe_sysroot (23311): log.do_prepare_recipe_sysroot.23311
> do_configure (23769): log.do_configure.23769
> do_compile (24132): log.do_compile.24132
> do_install (26628): log.do_install.26628

Are you saying the first failure is here in the do_install above?

> do_install (32535): log.do_install.32535
> do_install (4454): log.do_install.4454
> do_install (26343): log.do_install.26343
> do_rm_work (4905): log.do_rm_work.4905

This is odd. Why would an rm_work run here?

> do_deploy_source_date_epoch (4919): log.do_deploy_source_date_epoch.4919
> do_configure (4954): log.do_configure.4954
> do_compile (5003): log.do_compile.5003
> do_install (6421): log.do_install.6421

This is also odd since if rm_work did run, shouldn't the unpack/patch
need to run again? Didn't you say you'd disabled rm_work for this
recipe?

> All above are failures in do_install phase. You see multiple
> invocations trying to fix the error and adding more debug.
> If I don't do a cleansstate or cleanall the recipe is not building.
> We do not delete or manipulate any files in the WORKDIR folder. We
> might only copy some files after the end of the build in some folders
> outside of yocto. So the WORKDIR structure remains untouched from our
> actions.

Something is deleting the files in /package/ which is confusing pseudo.
The question is what/when. Stepping through this and seeing when the
files there disappear would be the next step to debug it, narrow down
when something is deleting them.

Cheers,

Richard


