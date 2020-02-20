Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.7918.1582215410589067090
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 08:16:51 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48NfqM58wtz5tlH;
	Thu, 20 Feb 2020 17:16:47 +0100 (CET)
Date: Thu, 20 Feb 2020 17:16:46 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Dmitri Toubelis <dmitri.toubelis@litmusautomation.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Lots of basehash related errors
Message-ID: <20200220161646.b72k2h4ssqce645q@qschulz>
References: <RlLC.1582214577544571845.5egw@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <RlLC.1582214577544571845.5egw@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dmitri,

On Thu, Feb 20, 2020 at 08:02:57AM -0800, Dmitri Toubelis wrote:
> Hi,
> 
> I'm migrating from yocto morty to zeus and I'm receiving a whole lot of errors like this:
> 
> > 
> > ERROR: When reparsing
> > /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loopedge-std.bb:do_image_wic,
> > the basehash value changed from
> > 8dd96e09d0b7defa552e586e626933ca37ace5180918ea65addbfcb6c1247b1c to
> > e38fae3f400b3e3de114fcd668d46a1f7c3eec436ec72962e78df906714a6fb0. The
> > metadata is not deterministic and this needs to be fixed.
> > ERROR: The following commands may help:
> > ERROR: $ bitbake loopedge-std -cdo_image_wic -Snone
> > ERROR: Then:
> > ERROR: $ bitbake loopedge-std -cdo_image_wic -Sprintdiff
> > 
> > ERROR: When reparsing
> > /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loopedge-std.bb:do_image_ext4,
> > the basehash value changed from
> > a8209ab35324ce59bb193b80871c12c492f69f42fd97b03801165bd4a12670f6 to
> > 1ab2d25ef217fe87b4cce1106d122acd4286043b04dcd74d98df30a01aa6a0b9. The
> > metadata is not deterministic and this needs to be fixed.
> > ERROR: The following commands may help:
> > ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Snone
> > ERROR: Then:
> > ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Sprintdiff
> > 
> > ERROR: When reparsing
> > /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loopedge-std.bb:do_image_tar,
> > the basehash value changed from
> > c5ab62cac832e502a338d59124efc690e66560a4e877bc4ba3487c3a734c2497 to
> > bb7ca72863614cb5c9915eb502259b1ffa8b98992f7ad3280d1e049a1824b930. The
> > metadata is not deterministic and this needs to be fixed.
> > ERROR: The following commands may help:
> > ERROR: $ bitbake loopedge-std -cdo_image_tar -Snone
> > ERROR: Then:
> > ERROR: $ bitbake loopedge-std -cdo_image_tar -Sprintdiff
> > 
> 
> I search around for answers and there are here are reasons and solutions for this that I found:
> - to make sure any date related variables are excluded from basehash via `do_task_name[vardepsexclude] = "DATE DATETIME"`
> - clears state cache with `bitbake image -c cleansstate`
> - delete tmp directory and build from scratch
> 
> Here is my observation and interpretation:
> - this messages occur when running with pristine build directory, i.e. it only contains 2 files in `conf` dir - `local.conf` and `bblatyers.conf`, so I can rule out contamination from a previous run.
> - same messages reapeat over and over totalling ~900 errors at the end of the run
> - I have few custom classes and I removed them from the image to rule out contamination from my own code.
> - Tasks that give this error are coming from image.bbclass from poky and none of them have been altered in any way.
> - The image build runs through the end but because bitbake exits with non-zero exit code it breaks lots of our tools, so just ignoring them is a bad option.
> 

I've had this before with a vendor layer. The culprit was the distro
having some weird USERADDEXTENSION messing up with everything.

How we found out what it was was by uncommenting:
https://git.yoctoproject.org/cgit.cgi/poky/tree/bitbake/lib/bb/siggen.py#n187
187 to 189.

Then you go to tmp/stamps/...your-recipe.../ and you'll have more
sigdata in there. Use bitbake-diffsigs between the both and you'll find
which variable messes up with your build.

Hope this helps, good luck!

Quentin
