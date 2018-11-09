Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93F2BE00C09; Fri,  9 Nov 2018 04:13:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CA9CE00BBD
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 04:13:09 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id q18-v6so1094231iod.5
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 04:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rS+j0F/tAkucRgjcGhLpAInTRKZH5fLg6rdLApxVL6A=;
	b=TyVAMEplTJVTdJiVrj1fuY59dngSky3hVgAtFGPNiqD4laAFj6mPOnfzR5qWUNhRYw
	d47gH+z6DkZFp3lSIgmFf7eCzDreiyRau97rrGIACodDOXvl3m08B8TwLvF28S7lRdrF
	/atvxdtE54MIBccmQ/XVYA5NkeU4P1vEcen4k2EricU4E7c75RJ4JpkkI58x6WTLz6TG
	TNZmt/WLI820XllpPRvcbGA0O6fjUhC3yKz1WpipLsMMeKF57cRVmWgz5J9MTL4wNhuv
	TnyIrFNN38U/w7zOm5VLNqaBgxtNbPuFkRnE/55J/1aEM6Ej6CpZbre19yY06Q6AFOjQ
	4L7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rS+j0F/tAkucRgjcGhLpAInTRKZH5fLg6rdLApxVL6A=;
	b=Mw6ij27FMus7EiSrS0GEjykb/eh0ARO8KYC3wxN3fBtNH4mShaYDRSohiOrKa6LG/N
	VQUjoBa6i322i9odZh2/e6r6XrL4j00oKWtmjFoAKDtmxoGrYSZy+LijMpNHz9xjR7Kw
	WVTs5Sq1G77q0Wxmx7aPY5zqt6CL7Kx1yroypfEmVJ/ejcqJuIgJ3i4kpFjTF3feKyPU
	cRUNeZokbQElM9qdfl47HW40lzmSH5OnJpG7/Yn/CDTikhN8fKxZpFL/JFNFELmkdeoC
	jBUKzbBaad21tyY24k2Fmb9CEZAszZj92djYCwahI/d6YqA6XCmyvWbm5lXXkJv3YooU
	6EgQ==
X-Gm-Message-State: AGRZ1gKPVGoVkpYyIq+wo5Mdl3Z2X+xDQy4ZECLOuaP3Sjc93lhD4QKH
	0EuLvj7qmZPmX0ZzIFB6kNC5Cs2aT0UXrkSgMgGMGxbZ
X-Google-Smtp-Source: AJdET5fSOS57DWW5RN/RaAY0eq2WRHkQiaaCOCoWHtgoq4Fkhg6YGV713b49yBLCEB5TylcvinaZtTqKxmXBrrW15ok=
X-Received: by 2002:a6b:2cd4:: with SMTP id
	s203-v6mr6636509ios.20.1541765588861; 
	Fri, 09 Nov 2018 04:13:08 -0800 (PST)
MIME-Version: 1.0
References: <CABj1EzFR3oRx4JOzW3hxJdRmQW_jXZWP4G8sYWfD_+O96xfw_g@mail.gmail.com>
In-Reply-To: <CABj1EzFR3oRx4JOzW3hxJdRmQW_jXZWP4G8sYWfD_+O96xfw_g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Nov 2018 12:12:57 +0000
Message-ID: <CAJTo0LY1F2fKx3gcsTEY56n2BEUAkoM73nhpSkMt_rzhQKXqMw@mail.gmail.com>
To: donal.morrissey@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: non-existent task do_package_write_ipk
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
X-List-Received-Date: Fri, 09 Nov 2018 12:13:10 -0000
Content-Type: text/plain; charset="UTF-8"

A recipe that ship files and generates packages can't also inherit
core-image because it can't both be a package and an image.  If you
want this package to run something when it is installed, write a
post-install function (pkg_postinst).

Ross
On Fri, 9 Nov 2018 at 11:35, Donal Morrissey <donal.morrissey@gmail.com> wrote:
>
> Hi There,
> I'm not able to inherit core-image into my recipe, when I do, I get the following error:
> ERROR: Task do_populate_sdk in .../poky/meta/recipes-core/images/core-image-base.bb rdepends upon non-existent task do_package_write_ipk in /home/donal/Projects/farkas/source/meta-my-platform/recipes-tools/system-scripts/system-scripts.bb
> ERROR: Command execution failed: 1
>
> The reason I'm inheriting core-image, is so that I can append a command to the ROOTFS_POSTPROCESS_COMMAND variable.
>
> The following are the contents of my bb file:
>
> SUMMARY = "Set of common platform tools."
> DESCRIPTION = "..."
> AUTHOR = "..."
> LICENSE = "CLOSED"
>
> inherit core-image
>
> my_post_process_cmd() {
>     touch ${IMAGE_ROOTFS}/test
> }
> ROOTFS_POSTPROCESS_COMMAND += " my_post_process_cmd;"
>
> Any suggestions on how to fix this?
>
> Thank you,
> Donal
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

