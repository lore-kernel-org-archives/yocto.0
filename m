Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1126E009A7; Fri, 16 May 2014 10:11:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ve0-f175.google.com (unknown [209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35CE1E006EC
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 10:11:19 -0700 (PDT)
Received: by mail-ve0-f175.google.com with SMTP id jw12so3396263veb.6
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 10:11:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=woFFNn0dc5F2yFeqJuIUyffhXpWgxtSv2EHehpUsxXI=;
	b=BmNE7mxYDdCmjvSDDOQZ3la5Q7GJ9ONEpmo6rF4iqtr7/gyzr34JN5TZ3sFuTE0dNb
	cDKtucrSZXZXXp0HwhNIu1wApd5ag0tcs3b6X1e9RiNWJ/Jaf11+aFC/iWw8dvBX2REk
	gyZLdEbRsWL/sv2m9RG+hzlFTF3HH3oV4A1k5juBr4CGWm2O739i/ejGLJ+BVSho9KUV
	/3msD+mKZ+CziqJP6gQCh2frYAR6s8dmVN4huy7aQALXwbnAQISHqMKUAB2GT93CVbFE
	chWa22QsVFVTNf4DPt0MAygIAwYsfe4K5d7J826jxYFFYdXuh+WS64oplDdd0CmuFyyJ
	YZ7g==
X-Gm-Message-State: ALoCoQn83f02wiITOw+v+r5QcoSaFnDPmXnJaMeoCH+VXuXCRSxSFOPUxf6Iuj72SQoteOmmRaju
MIME-Version: 1.0
X-Received: by 10.52.53.69 with SMTP id z5mr1526280vdo.42.1400260278814; Fri,
	16 May 2014 10:11:18 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Fri, 16 May 2014 10:11:18 -0700 (PDT)
In-Reply-To: <fd5736c2b8f79d2af363af719a8c707decd978e9.1399561605.git.stefan@agner.ch>
References: <cover.1399561605.git.stefan@agner.ch>
	<fd5736c2b8f79d2af363af719a8c707decd978e9.1399561605.git.stefan@agner.ch>
Date: Fri, 16 May 2014 10:11:18 -0700
Message-ID: <CAPhnLPA645SzYJb=1_BxqAeC+4vwE8G0Cc+T8pv2=1MS2=H8jg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Agner <stefan@agner.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH v1 4/4] GetDeployDir.py/PublishArtifacts.py: get deploy dir from bitbake
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
X-List-Received-Date: Fri, 16 May 2014 17:11:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ok, so looking at this a bit more and I think we need to look at how
we set up the deploydir in PublishArtifacts a bit more.

I think what we can do here is pull the functionality that we have in
getDeployNames out, and put it into GetDeployDir (layerversion here
matters as the default deploy for oe-core changes at LAYERVERSION_core
=3D3) . So, yeah, if you could resubmit that I think we can pull the
last patch in. The other three are under test right now.

Thanks,

-b

On Thu, May 8, 2014 at 9:44 AM,  <stefan@agner.ch> wrote:
> From: Stefan Agner <stefan@agner.ch>
>
> Since the deploy dir is configureable (also through TMPDIR), we
> need to have a more generic variant to get that path. Also the
> =C3=85ngstrom distribution adds "-eglibc" to the TMPDIR. Hence, the
> safest way to get the deployment dir is to parse buildbots
> environment.
>
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  .../autobuilder/buildsteps/GetDeployDir.py         | 47 ++++++++++++++++=
+++++
>  .../autobuilder/buildsteps/PublishArtifacts.py     | 48 ++++++++++++----=
------
>  2 files changed, 73 insertions(+), 22 deletions(-)
>  create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/Ge=
tDeployDir.py
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetDeploy=
Dir.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDeployDir.py
> new file mode 100644
> index 0000000..944fcf0
> --- /dev/null
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDeployDir.py
> @@ -0,0 +1,47 @@
> +'''
> +Created on Mai 8, 2014
> +
> +__author__ =3D "Stefan Agner"
> +__copyright__ =3D "Copyright 2014, Toradex AG"
> +__credits__ =3D ["Stefan Agner"]
> +__license__ =3D "GPL"
> +__version__ =3D "2.0"
> +__maintainer__ =3D "Stefan Agner"
> +__email__ =3D "stefan@agner.ch"
> +'''
> +from buildbot.steps.shell import ShellCommand
> +from buildbot.status import progress
> +from buildbot.status.results import SUCCESS, FAILURE, WARNINGS
> +from buildbot.process.properties import WithProperties
> +from twisted.python import log
> +from autobuilder.config import *
> +
> +class GetDeployDir(ShellCommand):
> +    haltOnFailure =3D False
> +    flunkOnFailure =3D True
> +    name =3D "GetDeployDir"
> +    def __init__(self, factory, argdict=3DNone, **kwargs):
> +        for k, v in argdict.iteritems():
> +            setattr(self, k, v)
> +        self.description =3D "Get Deploy Directory"
> +        self.deploydir =3D None
> +        ShellCommand.__init__(self, **kwargs)
> +
> +    def start(self):
> +        cmd =3D '. ./oe-init-build-env; bitbake -e | grep "^DEPLOY_DIR=
=3D"'
> +        self.command =3D cmd
> +        ShellCommand.start(self)
> +
> +    def commandComplete(self, cmd):
> +        if cmd.didFail():
> +            return
> +        result =3D cmd.logs['stdio'].getText()
> +        if "=3D" not in result:
> +            self.finished(FAILURE)
> +        param, value =3D result.split("=3D")
> +        deploydir =3D value.replace('"', '').strip()
> +        self.setProperty('deploydir', deploydir, "Setting Deploy Directo=
ry")
> +        self.finished(SUCCESS)
> +
> +    def getText(self, cmd, results):
> +        return ShellCommand.getText(self, cmd, results)
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishAr=
tifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArti=
facts.py
> index ebc761f..303df36 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts=
.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts=
.py
> @@ -19,10 +19,10 @@ class PublishArtifacts(ShellCommand):
>
>      haltOnFailure =3D False
>      flunkOnFailure =3D True
> -    name =3D "Publishing Artifacts"
> +    name =3D "PublishArtifacts"
> +    description =3D "Publishing Artifacts"
>      def __init__(self, factory, argdict=3DNone, **kwargs):
>          self.factory =3D factory
> -        self.description =3D "Publishing Artifacts"
>          self.slavedir=3Dos.path.join(os.path.join(YOCTO_ABBASE, "yocto-s=
lave"))
>          for k, v in argdict.iteritems():
>              if type(v) is bool:
> @@ -42,10 +42,14 @@ class PublishArtifacts(ShellCommand):
>          self.layerversion_yoctobsp =3D self.getProperty("layerversion_yo=
ctobsp")
>          self.layerversion_yocto =3D self.getProperty("layerversion_yocto=
")
>          self.layerversion_core =3D self.getProperty("layerversion_core")
> +        self.deploydir =3D self.getProperty("deploydir")
>          log.msg(layerversion_yoctobsp)
> -        self.basedir=3Dos.path.join(os.path.join(
> -                                    self.slavedir, buildername),
> -                                    "build/build/")
> +        self.basedir =3D os.path.join(self.slavedir, buildername, "build=
/build/")
> +
> +        # Deploydir might not be set in case the step did not run, fallb=
ack to default
> +        if self.deploydir is None:
> +            self.deploydir =3D os.path.join(self.basedir, "tmp/deploy/")
> +
>          command=3D""
>          DATESTAMP=3Ddatetime.datetime.now().strftime("%Y%m%d")
>          if str(os.environ.get('PUBLISH_BUILDS')) =3D=3D "True":
> @@ -70,17 +74,17 @@ class PublishArtifacts(ShellCommand):
>                  if artifact =3D=3D "adt-installer":
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, A=
DT_INST_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/sdk/") + \
> +                                    os.path.join(self.deploydir, "sdk/")=
 + \
>                                      "*adt* " + os.path.join(DEST, ADT_IN=
ST_PUBLISH_DIR) + ";"
>                  elif artifact =3D=3D "adt-installer-QA":
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, A=
DTQA_INST_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/sdk/") + \
> +                                    os.path.join(self.deploydir, "sdk/")=
 + \
>                                      "*adt* " + os.path.join(DEST, ADTQA_=
INST_PUBLISH_DIR)+ ";"
>                  elif artifact =3D=3D "adtrepo-dev":
>                      adt_dev_dest=3D os.environ.get("ADTREPO_DEV_PATH") +=
 "/" + distroversion + "-" + got_revision_poky + '-' + self.getProperty("br=
anch_poky")
>                      command=3Dcommand+"mkdir -p " + adt_dev_dest + "/adt=
-ipk;"
> -                    command=3Dcommand+"rsync -av " + os.path.join(self.b=
asedir, "tmp/deploy/ipk/") + " " +  adt_dev_dest + "/adt-ipk;"
> +                    command=3Dcommand+"rsync -av " + os.path.join(self.d=
eploydir, "ipk/") + " " +  adt_dev_dest + "/adt-ipk;"
>                      command=3Dcommand+"rm -rf " + adt_dev_dest + "/rootf=
s; mkdir -p " + adt_dev_dest + "/rootfs;"
>                      command=3Dcommand+"for x in `ls " + DEST + "/machine=
s/qemu/|grep -v tiny`; do ln -s " + DEST + "/machines/qemu/$x " + adt_dev_d=
est + "/rootfs/$x; done;"
>                      if self.layerversion_yocto is not None and int(self.=
layerversion_yocto) < 2:
> @@ -101,49 +105,49 @@ class PublishArtifacts(ShellCommand):
>                      command=3Dcommand+"mkdir -p " + DEST + "/" + BA_PUBL=
ISH_DIR + ";"
>                      if self.layerversion_core is not None and int(self.l=
ayerversion_core) > 2:
>                          command=3Dcommand+"cp -R --no-dereference --pres=
erve=3Dlinks " + \
> -                                        os.path.join(self.basedir, "tmp/=
deploy/images/qemux86-64/*.zip") + \
> +                                        os.path.join(self.deploydir, "im=
ages/qemux86-64/*.zip") + \
>                                          " " + DEST + "/" + BA_PUBLISH_DI=
R + ";"
>                      else:
>                          command=3Dcommand+"cp -R --no-dereference --pres=
erve=3Dlinks " + \
> -                                        os.path.join(self.basedir, "tmp/=
deploy/images/*.zip") + \
> +                                        os.path.join(self.deploydir, "im=
ages/*.zip") + \
>                                          " " + DEST + "/" + BA_PUBLISH_DI=
R + ";"
>                  elif artifact =3D=3D "buildtools-tarball":
>                      command=3Dcommand+"mkdir -p " + DEST + "/buildtools;=
"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/sdk/*.sh") + \
> +                                    os.path.join(self.deploydir, "sdk/*.=
sh") + \
>                                      " " + DEST + "/buildtools;"
>                  elif artifact =3D=3D "rpm":
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, R=
PM_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/rpm/* ") + \
> +                                    os.path.join(self.deploydir, "rpm/* =
") + \
>                                      os.path.join(DEST, RPM_PUBLISH_DIR) =
+ ";"
>                  elif artifact =3D=3D "deb":
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, D=
EB_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/deb/* ") + \
> +                                    os.path.join(self.deploydir, "deb/* =
") + \
>                                      os.path.join(DEST, DEB_PUBLISH_DIR) =
+ ";"
>                  elif artifact =3D=3D "ipk":
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, I=
PK_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/ipk/* ") + \
> +                                    os.path.join(self.deploydir, "ipk/* =
") + \
>                                      os.path.join(DEST, IPK_PUBLISH_DIR) =
+ ";"
>                  elif artifact =3D=3D "toolchain":
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, X=
86TC_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/sdk/poky-eglibc-i686* ") + \
> +                                    os.path.join(self.deploydir, "sdk/po=
ky-eglibc-i686* ") + \
>                                      os.path.join(DEST, X86TC_PUBLISH_DIR=
) + ";"
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, X=
8664TC_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/sdk/poky-eglibc-x86_64* ") + \
> +                                    os.path.join(self.deploydir, "sdk/po=
ky-eglibc-x86_64* ") + \
>                                      os.path.join(DEST, X8664TC_PUBLISH_D=
IR) + ";"
>                  elif artifact =3D=3D "oe-toolchain":
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, X=
86TC_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/sdk/oecore-i686* ") + \
> +                                    os.path.join(self.deploydir, "sdk/oe=
core-i686* ") + \
>                                      os.path.join(DEST, X86TC_PUBLISH_DIR=
) + ";"
>                      command=3Dcommand+"mkdir -p " + os.path.join(DEST, X=
8664TC_PUBLISH_DIR) + ";"
>                      command=3Dcommand+"cp -R --no-dereference --preserve=
=3Dlinks " + \
> -                                    os.path.join(self.basedir, "tmp/depl=
oy/sdk/oecore-x86_64* ") + \
> +                                    os.path.join(self.deploydir, "sdk/oe=
core-x86_64* ") + \
>                                      os.path.join(DEST, X8664TC_PUBLISH_D=
IR) + ";"
>
>                  elif "qemu" in artifact:
> @@ -162,11 +166,11 @@ class PublishArtifacts(ShellCommand):
>                      command=3Dcommand+"mkdir -p " + DEST + "/" + QEMU_PU=
BLISH_DIR + "/qemu-tiny;"
>                      if self.layerversion_core is not None and int(self.l=
ayerversion_core) > 2:
>                          command=3Dcommand+"cp -R --no-dereference --pres=
erve=3Dlinks " + \
> -                                        os.path.join(self.basedir, "tmp/=
deploy/images/qemux86/* ") + \
> +                                        os.path.join(self.deploydir, "im=
ages/qemux86/* ") + \
>                                          " " + DEST + "/" + QEMU_PUBLISH_=
DIR + "/qemu-tiny;"
>                      else:
>                          command=3Dcommand+"cp -R --no-dereference --pres=
erve=3Dlinks " + \
> -                                        os.path.join(self.basedir, "tmp/=
deploy/images/*") + \
> +                                        os.path.join(self.deploydir, "im=
ages/*") + \
>                                          DEST + "/" + QEMU_PUBLISH_DIR + =
"/qemu-tiny;"
>                  elif artifact =3D=3D "conf":
>                      artifact_name, deploy_image_dir =3D self.getDeployNa=
mes(artifact, buildername)
> @@ -208,9 +212,9 @@ class PublishArtifacts(ShellCommand):
>          if "-lsb" in buildername:
>              artifact_name =3D artifact_name + "-lsb"
>          if self.layerversion_core is not None and int(self.layerversion_=
core) > 2:
> -            deploy_dir_image =3D os.path.join(os.path.join(self.basedir,=
 "tmp/deploy/images/"), artifact)
> +            deploy_dir_image =3D os.path.join(os.path.join(self.deploydi=
r, "images/"), artifact)
>          else:
> -            deploy_dir_image =3D os.path.join(self.basedir, "tmp/deploy/=
images/")
> +            deploy_dir_image =3D os.path.join(self.deploydir, "images/")
>          return artifact_name, deploy_dir_image
>
>      def describe(self, done=3DFalse):
> --
> 1.9.0
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

