Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CB31C3DA6E
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 07:41:43 +0000 (UTC)
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
 by mx.groups.io with SMTP id smtpd.web11.13110.1704267693151773414
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 23:41:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=t8Qc6rW6;
 spf=pass (domain: linaro.org, ip: 209.85.208.195, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f195.google.com with SMTP id 38308e7fff4ca-2cd08f0c12aso17478511fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 23:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704267691; x=1704872491; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ad+SJyUfQS+viayuOYOSBushrML96VNlPHZQUkYADCc=;
        b=t8Qc6rW6wDBFR7EynolM9KXjoiBkb5e/VU00YqLF6/4sbhXIyiJjzVuCNddLhk8smP
         xf39j8WQnqlUkKRajoUpMndfXAqbS/zA4wopmsifkWAGMPPG2weR9QjZl4Ji8eeGE1S9
         k9Kiepd0CcnkH66dt+zaoAV6MW/j/bt80tkXTDb3XTJx0csSMIp9kQz8j6xiMF+vqEPU
         +cbW62iIHcp/i2DVHp13hSSncDHaI5IXf4lOsbasrXX6uU9+ANVtap+o1OML2v9K/I6D
         Hb1C221aVzwkCq7Uy8foSjQt84xSrSsJP2GKGH6QfgBfXNsMrAWEdtP3GKAK96TD/VJO
         FamQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704267691; x=1704872491;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ad+SJyUfQS+viayuOYOSBushrML96VNlPHZQUkYADCc=;
        b=auuUPP389xSKbd/isu0RIaAqiM8PaL9/9orGqJPz6wCbv2wg/UOw6ay3wQl1J1yQr1
         h7MNvu/KMsPdUmEmYwLSl6o+pV5OFHHxxsB3V+sG8fjqEhzZkEtamfSSktP3Jdd3WaLH
         mcqW9gDT87eA7MjyeVhiMsm1fI/6kVRAjoVllZKrFszbdETKlvm0/3kV6C2Dkxdnz3AZ
         YFiUHchE3JFRttFyQjWma1o86nwyItWiafR324zPuM1e5CMJZCgEy6N3vjMvnmPAlFhi
         HDGCXQp/MjYoWyqBUzUblpDmqc16SUeC3nZA+95s5MAxtkUPDFK2EfFXy919yc8nxrF5
         +XyQ==
X-Gm-Message-State: AOJu0YxhAlFvbu3qErggZeAi9QtGL1tDYeVC5EeEFWIZl7IiGuAOCB/A
	Fj2pz3RuUxxXVJEz4DJizV7ZJLA+0gfL7w==
X-Google-Smtp-Source: AGHT+IGWNYjvhyuuOI2rL4sK98vpTudUQGacnpsPgUh2oNa+vzi8FY85BDjM+BhWDWdfTnJgLV+YWw==
X-Received: by 2002:a2e:a783:0:b0:2cc:eb56:70e2 with SMTP id c3-20020a2ea783000000b002cceb5670e2mr2748950ljf.0.1704267690799;
        Tue, 02 Jan 2024 23:41:30 -0800 (PST)
Received: from nuoska (dc7g6tyyyyyyyyyyyyf5t-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::133])
        by smtp.gmail.com with ESMTPSA id n18-20020a2ebd12000000b002cd187bb0f1sm116699ljq.49.2024.01.02.23.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 23:41:30 -0800 (PST)
Date: Wed, 3 Jan 2024 09:41:22 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: adrian.freihofer@gmail.com
Cc: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
Subject: Re: [yocto] CVE Scanners and Package Version
Message-ID: <ZZUPosbNBhGP-iv9@nuoska>
References: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
 <ZZO6LMkb9ECnPFev@nuoska>
 <38fdec21c1f00c5cacc9c3fff8f8875460f25376.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <38fdec21c1f00c5cacc9c3fff8f8875460f25376.camel@gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 07:41:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62076

Hi,

On Tue, Jan 02, 2024 at 10:46:21PM +0100, adrian.freihofer@gmail.com wrote:
> On Tue, 2024-01-02 at 09:24 +0200, Mikko Rapeli wrote:
> > Hi,
> > 
> > On Sat, Dec 23, 2023 at 02:47:36AM -0800, fabian.hanke via
> > lists.yoctoproject.org wrote:
> > > Hello Yocto community,
> > > 
> > > we must provide a SBOM for our Yocto based product which will then
> > > be used for (internal) CVE scanning by the security department.
> > > Generating the base document in cycloneDX format is fairly easy
> > > (thanks to the nature of Yocto).
> 
> Our experts have also opted for CycloneDX. Is your CycloneDX generator
> publicly available? 
> > 
> > Note that SBOM is mostly used for documenting SW components and their
> > licenses.
> > Obvious but needs to be made clear.
> 
> I don't think that's true.
> A SBOM should probably also list the CVE patches and provide
> information about fixed CVEs.
> I'm not sure about SPDX, but CycloneDX also addresses this use case:
> https://cyclonedx.org/capabilities/vex/.

That's good, but implementation is then missing. The CVE variables are not
exported currently. I worked around this by exporting all the recipe CVE
variables into buildhistory so also non-cve-check builds would export the data
without any links to CVE database, though this was rejected here in upstream.

> > > But we do not know how to include information about CVE patches for
> > > each package in the document. Not providing these, will cause a lot
> > > of “false” feedback on CVEs for specific versions which are already
> > > patched (but version number did not change).
> Yes, that's a real issue.
> > > This problem was also mentioned a few days ago in the presentation
> > > from David Reyna: https://youtu.be/PegU1G1bA80?t=1127. I like the
> > > proposed solution of adding a vendor specific string to the package
> > > version. But I'm still wondering: How would the CVE scanner vendor
> > > know which CVEs are included in a yocto specific version and which
> > > are not?
> If the SBOM contains the information from CVE_STATUS_* variables and
> the CVE scanner has access to the NIST database it should theoretically
> work.

Additionally something must make sure that the SW product names will match CVE
database, possinly many to many mapping, and the same for SW component version
numbers so that they can be compared against info in the CVE database. But just
exporting the CVE variables into build output would be a good idea to start with.

> > If the intention is to know CVE paching and analysis status of a
> > product, then I'd use
> > the yocto upstream tooling for this, cve-check.bbclass. SBOM and SPDX
> > are tempting but not actually
> > useful for CVE patching and analysis work, except when they show that
> > a lot of old open source
> > SW components are embedded into various binaries.
> This works well from a developer's point of view, but not from an end
> customer's or penetration tester's point of view. Many companies sell
> products with a pre-installed Yocto-based firmware, but do not provide
> the layers and bitbake with the firmware.

A customer or pentester should have a look at source code, SRC_URI to see
if certain patches have been applied. These should be available even if
yocto build system is not. And then there are the binaries and actually
exploiting the holes in there.

> > The work needed to push CVE data into SPDX and SBOM is not worth it
> > and it's better to put
> > the saved effort into fixing the actual CVEs.
> Fixing the CVEs is one thing. But depending on the use case, it is also
> important to be able to document this.
> >  If management wants reports, generate
> > them from cve-check.bbclass output, but note that CVE database is a
> > moving target too.
> Adding information about open CVEs to the SBOM would be a moving target
> and therefore a bad idea. But that was probably not the intention here.
> 
> Much more reasonable is to provide a static SBOM which provides
> information about:
> - Installed packages and versions
> - CVE related patches for the packages
> - Additional information from CVE_STATUS_* variables (These use cases
> were also the motivation for adding this additional information)
>
> Such a SBOM would enable a user or a pen-tester to use a tool which
> generates a CVE report from the SBOM and the current data from e.g. the
> NIST database. This tool can run at any time and could be a generic
> SBOM tool which is independent from Yocto. The NIST DB is dynamic, but
> publicly available. The SBOM is static and provided with each firmware
> release.

This is true. Patches welcome.

> > 
> > AFAIK, and I'd be happy to be proven wrong, SPDX and SBOM don't help
> > matching SW component names
> > and version strings so that comparison against CVE database
> > information works. Only license names
> > are standardized.
> 
> I'm not sure what the current status is. But even if it's not
> completely solved today, that doesn't mean it can't or shouldn't be
> solved. The specifications are also open source.

True, patches are welcome. But it's also a good idea to do CVE analysis of the wider
yocto layer ecosystem outside of well managed poky. A lot of the basic things like
CVE name mappings to NVD CPE and version number details are broken there, and of course
updates and patches to issues are missing, and maintainers have limited resources...

Cheers,

-Mikko

