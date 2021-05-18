Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web08.6054.1621329533039213381
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 02:18:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IrtgrSYr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso1192718wmc.1
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 02:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=d0Il3C9zeukqiSbr7jU2zi4S65MD4Ti+tN5C0GiB2vU=;
        b=IrtgrSYrmztNe48V1DHwpCobZJS1uzWii5er1jXQt/61j4qYjMIaYe+OwTSSt++Fvm
         aghDMG7hHskUUc8fq3zUakJ1L2DoMQ/bpOjdPUzK4/WKR9OlzU96O8gdoDSl/RtJevrN
         hIWFm02UljOed7adXRxipC6M+sb9zlphbuBck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=d0Il3C9zeukqiSbr7jU2zi4S65MD4Ti+tN5C0GiB2vU=;
        b=epvwB34BKWhbLqPArvNzv4lraj21Xd6PSUqJSz3BBfea+uzZHZozD4ib0/9OnMn5wU
         qXgilFIp9/VFiYsvHobiYUwAaG74Z6XW57eu3wh8W17bAQGCTX11BlQDx2q2z6OFmkbD
         pMk1L0UyK8JJVsqyePhnWCZDGlQgoKNih1IhdGpA8aa0RRV4cpXHlS4q1fplDfZDTfo/
         gRKv6ebzCmYdkeTfAOwimn3LuAk49MoHfLkJGfWoUgxpHRutnUL2xQl3tcLf/iczo1wg
         rbxDpH0w07BkqvsM+qUYmqZcA/NLD6nSB7zgy1+UipFzCSxIPHomsiHqCrlToAT5S2u9
         XbKw==
X-Gm-Message-State: AOAM530xocByFtPtaeI4lePlWdGZH1+bpdhz6LgJZBdC7U4DcMvnDJnc
	Hql4dxZYoOzpeUBV/ezdVPOq7A==
X-Google-Smtp-Source: ABdhPJyXuj5GokynXcstlCass1Om1WXi9DPUMfPIellzvYSc0xwKNuPTNgXtfennY/rbX8bJF33fFQ==
X-Received: by 2002:a1c:2704:: with SMTP id n4mr4432354wmn.147.1621329531482;
        Tue, 18 May 2021 02:18:51 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:c468:ba30:74bf:a356? ([2001:8b0:aba:5f3c:c468:ba30:74bf:a356])
        by smtp.gmail.com with ESMTPSA id p14sm20645408wrm.70.2021.05.18.02.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 02:18:51 -0700 (PDT)
Message-ID: <2feeb0521dfbfb0097602c4cbe0e32b1eefcbbcb.camel@linuxfoundation.org>
Subject: Re: VS: [yocto] Make do_image_complete wait for an earlier task
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mikko Murto <Mikko.Murto@hhpartners.fi>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 18 May 2021 10:18:50 +0100
In-Reply-To: <9e36070b41c94e8d92eb6fe0c0185528@hhpartners.fi>
References: <a28139be6f11445c9f4af80d748457c5@hhpartners.fi>
	 <824c8a0e7910ec93cc1cd61acca4c8cf803ebda3.camel@linuxfoundation.org>
	 <9e36070b41c94e8d92eb6fe0c0185528@hhpartners.fi>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2021-05-18 at 07:09 +0000, Mikko Murto wrote:
> > Lähettäjä: Richard Purdie <richard.purdie@linuxfoundation.org>
> > Lähetetty: tiistai 18. toukokuuta 2021 9.57
> > 
> > On Tue, 2021-05-18 at 06:15 +0000, Mikko Murto wrote:
> > > Hi,
> > > 
> > > I've created a task do_create_spdx that gets some data from packages
> > > after do_package. The task is currently added with `addtask
> > > do_create_spdx after do_package before do_packagedata` The data is
> > > then enriched and combined in do_image_complete by adding the combining
> > function to IMAGE_POSTPROCESS_COMMAND.
> > > For the most part everything works as expected, but for some packages
> > > do_create_spdx does not complete in time for the combination step in
> > do_image_complete.
> > > Is there a way for me force do_image_complete to wait for
> > > do_create_spdx to have been completed for all packages?
> > 
> > This seems a little odd since image.bbclass has:
> > 
> > do_rootfs[recrdeptask] += "do_packagedata"
> > 
> > which means do_rootfs should only happen after all do_packagedata have run.
> > Your task is added before do_packagedata.
> > do_image and do_image_complete should run after do_rootfs.
> > 
> > I'm wondering if the issue is more to do with reuse of previous build artefacts
> > where sstate is involved. Does your added task account for sstate?
> 
> That is odd indeed. I need to give it another go. As for accounting for sstate, 
> no, at least not intentionally. 

I don't have much to go on but guessing, if you run some test and then rerun that
test, the second build would come from sstate. If a build comes from sstate, it will 
skip tasks that precede the sstate artefact.

More specifically, if sstate exists for do_packagedata, it would skip any tasks 
preceeding that task including your do_create_spdx task.

There is no direct dependency from do_image_complete on the do_create_spdx tasks.

You can add:

do_rootfs[recrdeptask] += "do_create_spdx"

but this will have the side effect that the build will never use sstate and always
rebuild since that task isn't an sstate task.

> > I've been giving some thought to SDPX and SBOM during our build process so I
> > am curious what you're doing, is the work public anywhere?
> 
> Public at https://github.com/doubleopen-project/meta-doubleopen. The usual 
> disclaimers about PoC-level spaghetti apply; all questions and comments 
> very much appreciated! 😊

I did have a quick look and you're going further than I'd been thinking of, at 
least initially.

What I'm thinking of in core YP initially is to have do_packagedata generate SPDX 
data for the output packaged files in do_package/do_packagedata. I noticed you go
further and process all the input sources and I'm not sure we're ready to do that
yet.

Doing it at do_package/do_packagedata time would still access any of the sources
included from a debug perspective, hence it should correctly find the shipped 
manifest/license info without the complexity of having to scan all the sources

For your level of source scanning, I'd look at the existing do_populate_lic task
which is sstate and generates license info. I think I'd be in favour of totally 
replacing that with something generating spdx output...

I'm actually hoping we could simply what we're doing today however the more I look
at all the information you can put into SPDX, the more I worry that whilst we can
generate tons of data and huge SPDX files, I'm not sure they're actually useful
to anyone to actually use :/.

For the SBOM information, we do need to somehow make something as useful as our
normal manifest to people for this to be useful and adopted, at least from my 
perspective.

Cheers,

Richard





