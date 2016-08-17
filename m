Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82CF2E00ED0; Wed, 17 Aug 2016 09:07:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ADCAE00EBA
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 09:07:45 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 17 Aug 2016 09:07:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,529,1464678000"; d="scan'208";a="749994043"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.4.209])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Aug 2016 09:07:18 -0700
Message-ID: <1471450037.19448.0.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Wed, 17 Aug 2016 17:07:17 +0100
In-Reply-To: <1471059899-16091-1-git-send-email-william.c.randle@intel.com>
References: <1471059899-16091-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: generate md5sums for buildtools
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
X-List-Received-Date: Wed, 17 Aug 2016 16:07:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-08-12 at 20:44 -0700, Bill Randle wrote:
> Md5sum files were not being generated for the buildtools artifacts.
> Also,
> ignore files with a .md5sum extension when doing the sum.

Pushed to master, thanks.

Joshua

> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  .../autobuilder/buildsteps/PublishArtifacts.py     | 27
> ++++++++++++++--------
>  1 file changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> index f9ff4f6..1a938fc 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -112,9 +112,11 @@ class PublishArtifacts(ShellCommand):
>                                          os.path.join(self.tmpdir,
> "deploy/images/*.zip") + \
>                                          " " + DEST + "/" +
> BA_PUBLISH_DIR + ";"
>                  elif artifact == "buildtools-tarball":
> +                    artifact_name, deploy_image_dir =
> self.getDeployNames(artifact, buildername)
> +                    command=command+self.generateMD5cmd(artifact,
> deploy_image_dir)
>                      command=command+"mkdir -p " + DEST +
> "/buildtools;"
>                      command=command+"cp -R --no-dereference --
> preserve=links " + \
> -                                    os.path.join(self.tmpdir,
> "deploy/sdk/*buildtools*") + \
> +                                    os.path.join(deploy_image_dir,
> "*buildtools*") + \
>                                      " " + DEST + "/buildtools;"
>                  elif artifact == "rpm":
>                      command=command+"mkdir -p " + os.path.join(DEST,
> RPM_PUBLISH_DIR) + ";"
> @@ -144,22 +146,26 @@ class PublishArtifacts(ShellCommand):
>                      else:
>                          command=command+"echo 'Skipping copy of
> sstate, PUBLISH_SSTATE not set.';"
>                  elif artifact == "toolchain":
> +                    artifact_name, deploy_image_dir =
> self.getDeployNames(artifact, buildername)
> +                    command=command+self.generateMD5cmd(artifact,
> deploy_image_dir)
>                      command=command+"mkdir -p " + os.path.join(DEST,
> X86TC_PUBLISH_DIR) + ";"
>                      command=command+"cp -R --no-dereference --
> preserve=links " + \
> -                                    os.path.join(self.tmpdir,
> "deploy/sdk/poky-*i686-core-image*.sh ") + \
> +                                    os.path.join(deploy_image_dir,
> "poky-*i686-core-image*.sh ") + \
>                                      os.path.join(DEST,
> X86TC_PUBLISH_DIR) + ";"
>                      command=command+"mkdir -p " + os.path.join(DEST,
> X8664TC_PUBLISH_DIR) + ";"
>                      command=command+"cp -R --no-dereference --
> preserve=links " + \
> -                                    os.path.join(self.tmpdir,
> "deploy/sdk/poky-*x86_64-core-image*.sh ") + \
> +                                    os.path.join(deploy_image_dir,
> "poky-*x86_64-core-image*.sh ") + \
>                                      os.path.join(DEST,
> X8664TC_PUBLISH_DIR) + ";"
>                  elif artifact == "uninative":
> +                    artifact_name, deploy_image_dir =
> self.getDeployNames(artifact, buildername)
> +                    command=command+self.generateMD5cmd(artifact,
> deploy_image_dir)
>                      command=command+"mkdir -p " + os.path.join(DEST,
> X86TC_PUBLISH_DIR) + ";"
>                      command=command+"cp -R --no-dereference --
> preserve=links " + \
> -                                    os.path.join(self.tmpdir,
> "deploy/sdk/i686-nativesdk-libc* ") + \
> +                                    os.path.join(deploy_image_dir,
> "i686-nativesdk-libc* ") + \
>                                      os.path.join(DEST,
> X86TC_PUBLISH_DIR) + ";"
>                      command=command+"mkdir -p " + os.path.join(DEST,
> X8664TC_PUBLISH_DIR) + ";"
>                      command=command+"cp -R --no-dereference --
> preserve=links " + \
> -                                    os.path.join(self.tmpdir,
> "deploy/sdk/x86_64-nativesdk-libc* ") + \
> +                                    os.path.join(deploy_image_dir,
> "x86_64-nativesdk-libc* ") + \
>                                      os.path.join(DEST,
> X8664TC_PUBLISH_DIR) + ";"
>                  elif artifact == "oe-toolchain":
>                      command=command+"mkdir -p " + os.path.join(DEST,
> X86TC_PUBLISH_DIR) + ";"
> @@ -209,7 +215,7 @@ class PublishArtifacts(ShellCommand):
>                                       os.path.join(self.basedir,
> "conf/") + \
>                                       "/* " + DEST + "/" +
> MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf;"
>                  elif artifact == "md5sums":
> -                    command = command + "echo 'MD5sums are generated
> and deployed from the image artifact';"
> +                    command = command + "echo 'MD5sums are generated
> and deployed from the image or toolchain artifact';"
>                  elif artifact == "None":
>                      command=command+"echo 'Skipping copy of " +
> artifact + ".';"
>                  else:
> @@ -248,8 +254,8 @@ class PublishArtifacts(ShellCommand):
>      def generateMD5cmd(self, artifact, deploy_dir):
>          cmd = ""
>          if os.environ.get('GEN_IMG_MD5') == "True":
> -            cmd += "for x in `find " + deploy_dir + " -type f
> -maxdepth 5`;"
> -            cmd += "do md5sum $x >> " + "$x.md5sum; done;"
> +            cmd += "for x in `find " + deploy_dir + " -maxdepth 5
> -type f`;"
> +            cmd += "do if [[ $x != *.md5sum ]]; then md5sum $x >> "
> + "$x.md5sum; fi; done;"
>          return cmd
>  
>      def getDeployNames(self, artifact, buildername):
> @@ -258,8 +264,11 @@ class PublishArtifacts(ShellCommand):
>              artifact_name = artifact_name + "-lsb"
>          if "-wic" in buildername:
>              deploy_dir_image =
> os.path.join(os.path.join(self.tmpdir, "deploy/wic_images/"),
> artifact)
> -        elif artifact_name is "md5sums":
> +        elif artifact_name == "md5sums":
>              deploy_dir_image = os.path.join(self.tmpdir,
> "deploy/images/")
> +        elif artifact_name == "uninative" or artifact_name ==
> "buildtools-tarball" \
> +          or artifact_name == "toolchain":
> +            deploy_dir_image = os.path.join(self.tmpdir,
> "deploy/sdk/")
>          else:
>              if self.layerversion_core is not None and
> int(self.layerversion_core) > 2:
>                  deploy_dir_image =
> os.path.join(os.path.join(self.tmpdir, "deploy/images/"), artifact)

