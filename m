Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E47AE00D04; Mon, 22 Aug 2016 03:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF58BE00D04
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 03:30:35 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP; 22 Aug 2016 03:30:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,559,1464678000"; 
   d="scan'208";a="470611"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.69])
	by fmsmga006.fm.intel.com with ESMTP; 22 Aug 2016 03:30:33 -0700
Message-ID: <1471861832.5256.15.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 11:30:32 +0100
In-Reply-To: <1471633461-14618-1-git-send-email-william.c.randle@intel.com>
References: <1471633461-14618-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] add support for building the eclipse-poky-neon plugin
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
X-List-Received-Date: Mon, 22 Aug 2016 10:30:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-08-19 at 12:04 -0700, Bill Randle wrote:
> Add configs to build the eclipse poky neon plugin and drop support
> for the
> kepler branch. Also, generate md5sums for the eclipse plugin
> artifacts.
> (Note: building neon requires java 1.8.0.)
> 
> [YOCTO #9940]

Pushed to master, thanks.

Joshua

> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  buildset-config.controller/nightly.conf                       | 6 +-
> ----
>  buildset-config.controller/eclipse-plugin-neon.conf           | 11
> +++++++++++
>  buildset-config.controller/yoctoAB.conf                       |  4
> ++--
>  .../site-packages/autobuilder/buildsteps/PublishArtifacts.py  | 11
> ++++++++---
>  4 files changed, 26 insertions(+), 10 deletions(-)
>  create mode 100644 buildset-config.controller/eclipse-plugin-
> neon.conf
> 
> diff --git a/buildset-config.controller/nightly.conf b/buildset-
> config.controller/nightly.conf
> index c16c147..0f9dd4e 100644
> --- a/buildset-config.controller/nightly.conf
> +++ b/buildset-config.controller/nightly.conf
> @@ -23,14 +23,14 @@
>              {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>               'checkout':False,
>               'branch':'luna-master'}},
> -        {'eclipse-poky-kepler':
> -            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
> -             'checkout':False,
> -             'branch':'kepler-master'}},
>          {'eclipse-poky-mars':
>              {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>               'checkout':False,
>               'branch':'mars-master'}},
> +        {'eclipse-poky-neon':
> +            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
> +             'checkout':False,
> +             'branch':'neon-master'}},
>          {'meta-qt4':
>              {'repourl':'git://git.yoctoproject.org/meta-qt4',
>               'branch':'master'}},
> @@ -103,7 +103,7 @@
>                             'nightly-mips64': {}, 'nightly-arm64':
> {}, 
>                             'nightly-rpm-non-rpm': {}, 'nightly-deb-
> non-deb': {}},
>                             'schedulerNames_nowait' : {'nightly-
> uclibc':{}, 'build-appliance': {},
> -                           'eclipse-plugin-kepler': {}, 'eclipse-
> plugin-mars': {},
> +                           'eclipse-plugin-neon': {}, 'eclipse-
> plugin-mars': {},
>                             'eclipse-plugin-luna': {}, 'nightly-non-
> gpl3': {}, 
>                             'nightly-oecore': {}, 'nightly-
> world':{},'nightly-wic':{}, 
>                             'nightly-world-lsb':{}, 'nightly-intel-
> gpl': {},
> 
> diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-
> config.controller/yoctoAB.conf
> index 0f9ba0c..fe9750b 100644
> --- a/buildset-config.controller/yoctoAB.conf
> +++ b/buildset-config.controller/yoctoAB.conf
> @@ -1,6 +1,6 @@
>  [BuildSets]
> -order: ['nightly', 'eclipse-plugin-mars', 
> -        'eclipse-plugin-kepler', 'eclipse-plugin-luna',
> +order: ['nightly', 'eclipse-plugin-neon', 'eclipse-plugin-mars', 
> +        'eclipse-plugin-luna',
>          'nightly-arm', 'nightly-arm64', 'nightly-arm-lsb', 
>          'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb', 
>          'nightly-ppc', 'nightly-ppc-lsb', 'nightly-no-x11',
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> index 1a938fc..d8b554f 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -96,10 +96,15 @@ class PublishArtifacts(ShellCommand):
>                          command=command+"mv " + adt_dev_dest +
> "/rootfs/qemux86-64 " + adt_dev_dest + "/rootfs/qemux86_64;"
>                  elif "eclipse-plugin" in artifact:
>                      artifact_base = artifact.replace("eclipse-
> plugin-", "")
> +                    deploy_dir =
> os.path.join(os.path.join(self.workerdir, buildername),
> "build/scripts")
> +                    # create md5sums only for the zip files
> +                    if os.environ.get('GEN_IMG_MD5') == "True":
> +                        command += "for x in `ls " + deploy_dir +
> "/*.zip`;"
> +                        command += "do md5sum $x >> " + "$x.md5sum;
> done;"
>                      command=command+"mkdir -p " + DEST + "/eclipse-
> plugin/"+ artifact_base +";"
> -                    command=command+"cp -R --no-dereference --
> preserve=links " + \
> -                                     os.path.join(os.path.join(self.
> workerdir, buildername),
> -                                                 "build/scripts/org.
> *.zip") + \
> +                    command=command+"cp --no-dereference --
> preserve=links " + \
> +                                     os.path.join(deploy_dir,
> "org.*.zip") + \
> +                                     " " + os.path.join(deploy_dir,
> "org.*.md5sum") + \
>                                       " " + DEST + "/eclipse-
> plugin/"+ artifact_base +";"
>                  elif artifact == "build-appliance":
>                      command=command+"mkdir -p " + DEST + "/" +
> BA_PUBLISH_DIR + ";"
> 
> diff --git a/buildset-config.controller/eclipse-plugin-neon.conf
> b/buildset-config.controller/eclipse-plugin-neon.conf
> new file mode 100644
> index 0000000..0a262d2
> --- /dev/null
> +++ b/buildset-config.controller/eclipse-plugin-neon.conf
> @@ -0,0 +1,11 @@
> +[eclipse-plugin-neon]
> +builders: 'example-worker'
> +repos: [{'eclipse-poky-neon':
> +            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
> +             'branch':'neon-master'}}]
> +steps: [{'SetDest':{}},
> +        {'CheckOutLayers': {}},
> +        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-neon'}},
> +        {'PublishLayerTarballs':{}},
> +        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
> neon']}}]
> +

