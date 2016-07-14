Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AECFE00E8B; Thu, 14 Jul 2016 02:38:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EAD6E00CFE
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 02:38:40 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jul 2016 02:38:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,361,1464678000"; d="scan'208";a="138993744"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.42.195])
	by fmsmga004.fm.intel.com with ESMTP; 14 Jul 2016 02:38:38 -0700
Message-ID: <1468489117.2701.4.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Thu, 14 Jul 2016 10:38:37 +0100
In-Reply-To: <1467836200-30512-3-git-send-email-william.c.randle@intel.com>
References: <1467836200-30512-1-git-send-email-william.c.randle@intel.com>
	<1467836200-30512-3-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH 2/2] publish build artifacts for wic images
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
X-List-Received-Date: Thu, 14 Jul 2016 09:38:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-07-06 at 13:16 -0700, Bill Randle wrote:
> Publish the wic images created by the nightly-wic build so they are
> available for QA testing.
> 
> [YOCTO #9397]
> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  buildset-config.controller/nightly-wic.conf        |  8 ++---
>  .../autobuilder/buildsteps/PublishArtifacts.py     | 35
> ++++++++++++++++------
>  2 files changed, 28 insertions(+), 15 deletions(-)
> 
> diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-
> config.controller/nightly-wic.conf
> index 7d2ae88..27584cb 100644
> --- a/buildset-config.controller/nightly-wic.conf
> +++ b/buildset-config.controller/nightly-wic.conf
> @@ -19,10 +19,6 @@ steps: [{'SetDest':{}},
>          {'BuildImages':{'images':'core-image-sato'}},
>          {'CreateWicImages':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
>          {'CreateWicImages':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
> -        {'CreateWicImages':{'wic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}}]
> -
> -
> -
> -
> -
> +        {'CreateWicImages':{'wic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}},
> +        {'PublishArtifacts': {'artifacts': ['qemux86-64',
> 'genericx86-64']}}]
>  
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> index 952a458..f9df16c 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -174,7 +174,14 @@ class PublishArtifacts(ShellCommand):
>                      artifact_name, deploy_image_dir =
> self.getDeployNames(artifact, buildername)
>                      command += self.generateMD5cmd(artifact,
> deploy_image_dir)
>                      command=command+"mkdir -p " + DEST + "/" +
> QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
> -                    command=command+"cp -R --no-dereference --
> preserve=links " + \
> +                    if "-wic" in buildername:
> +                        deploy_image_dir += "/*/*/build";
> +                        command=command+"cp --no-dereference --
> preserve=links " + \
> +                                    deploy_image_dir + "/*\.direct "
> + \
> +                                    deploy_image_dir +
> "/*\.direct.md5sum " + \
> +                                    DEST + "/" + QEMU_PUBLISH_DIR +
> "/" + artifact_name + ";"
> +                    else:
> +                        command=command+"cp -R --no-dereference --
> preserve=links " + \
>                                      deploy_image_dir + \
>                                      "/*" + artifact + "* " + DEST +
> "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
>                  elif "mpc8315e" in artifact:
> @@ -213,18 +220,26 @@ class PublishArtifacts(ShellCommand):
>                         "genericx86-64" in artifact:
>                          command = command+"echo 'Skipping copy of
> genericx86-64.'; "
>                      else:
> -                        command=command+"mkdir -p " + DEST + "/"+
> MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
> -                        if "beagle" in artifact:
> -                            command=command+"cp -R --no-dereference
> --preserve=links " + \
> +                        command += self.generateMD5cmd(artifact,
> deploy_image_dir)

If I'm reading this patch correctly this change moves the addition of
generateMD5cmd() to the command string into the else block of the
"layerversion_yoctobsp < 2" check, whereas before it was appended
regardless after the if/else statement. Was that change intentional?

Regards,

Joshua

> +                        if "-wic" in buildername:
> +                            deploy_image_dir += "/*/*/build";
> +                            command=command+"mkdir -p " + DEST + "/"
> + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
> +                            command=command+"cp --no-dereference --
> preserve=links " + \
> +                                    deploy_image_dir + "/*\.direct "
> + \
> +                                    deploy_image_dir +
> "/*\.direct.md5sum " + \
> +                                    DEST + "/" + MACHINE_PUBLISH_DIR
> + "/" + artifact_name + ";"
> +                        else:
> +                            command=command+"mkdir -p " + DEST +
> "/"+ MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
> +                            if "beagle" in artifact:
> +                                command=command+"cp -R --no-
> dereference --preserve=links " + \
>                                               deploy_image_dir + \
>                                               "/*Image* " + DEST +
> "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
> -                            command=command+"cp -R --no-dereference
> --preserve=links " + \
> +                                command=command+"cp -R --no-
> dereference --preserve=links " + \
>                                               deploy_image_dir + \
>                                               "/u-boot* " + DEST +
> "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
> -                        command=command+"cp -R --no-dereference --
> preserve=links " + \
> +                            command=command+"cp -R --no-dereference
> --preserve=links " + \
>                                           deploy_image_dir + \
>                                           "/*"+artifact+"* " + DEST +
> "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
> -                    command += self.generateMD5cmd(artifact,
> deploy_image_dir)
>              self.command = command
>          else:
>              self.command = "echo 'Skipping Step.'"
> @@ -241,8 +256,10 @@ class PublishArtifacts(ShellCommand):
>          artifact_name = artifact
>          if "-lsb" in buildername:
>              artifact_name = artifact_name + "-lsb"
> -        if artifact_name is "md5sums":
> -            deploy_dir_image = os.path.join(self.tmpdir,
> "deploy/images/")
> +        if "-wic" in buildername:
> +            deploy_dir_image =
> os.path.join(os.path.join(self.tmpdir, "deploy/wic_images/"),
> artifact)
> +        elif artifact_name is "md5sums":
> +            deploy_dir_image = os.path.join(self.tmpdir,
> "deploy/images/")
>          else:
>              if self.layerversion_core is not None and
> int(self.layerversion_core) > 2:
>                  deploy_dir_image =
> os.path.join(os.path.join(self.tmpdir, "deploy/images/"), artifact)

