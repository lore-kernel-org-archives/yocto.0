Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CF8FE01565
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 09:21:34 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id jx11so1149358veb.7
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 09:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=e4Z4iy7euxbiuSL3m1d1//fZpuwJFBrj2nqY4Pcqryg=;
	b=GqBfQ/Ju75hN9q7AiDWFdzlJl0Lct0aKSSdBLfgWB5rcEXL1YImZo3L4OpQJzUnGSw
	+O/csjHjNkfQqzTOK23OleVIgyovKTW8jEBk/bsm18zS6/APZSOC8P0Vlk5tz+dWVywp
	fHUjzmb6W8GUUryq6GriO0fhRR9ob2VrASd250AY1p7u8fR4VVdVfh2sO34nUL0Ozw/A
	pzJ3VorY161F99kw0p8++dfMw9izcxAQXEO+u+pPmdPlp9QYU3IJwcgNc4lclazMuk6w
	KdAthvk4pi5MZbys9cpEzcP4N50UE5tzI0ZOymKfU0/LCbhgb2zStm2iwrq8Rq4P/G0M
	WEqA==
X-Gm-Message-State: ALoCoQl2EhKQURAIZuSdB4HAX04CcVjplf4q5Oj124Sq4Mp+OzuLvLpVA1kcSWJGpG//1dEeulvG
MIME-Version: 1.0
X-Received: by 10.58.46.229 with SMTP id y5mr5248426vem.15.1379089293960; Fri,
	13 Sep 2013 09:21:33 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Fri, 13 Sep 2013 09:21:33 -0700 (PDT)
In-Reply-To: <1379071405-19866-1-git-send-email-laurentiu.palcu@intel.com>
References: <1379071405-19866-1-git-send-email-laurentiu.palcu@intel.com>
Date: Fri, 13 Sep 2013 09:21:33 -0700
Message-ID: <CAPhnLPCGQWM+j3Z=-QycKuEA276FxY6UbGs2f61zrGRNdm786w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-autobuilder] PublishArtifacts.py: do not rename qemux86-64 rootfs directory
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
X-List-Received-Date: Fri, 13 Sep 2013 16:21:35 -0000
Content-Type: multipart/alternative; boundary=089e0112d0067b006504e6463f17

--089e0112d0067b006504e6463f17
Content-Type: text/plain; charset=ISO-8859-1

I'm going to nack this one as it breaks backwards compatibility. We'll need
to bump LAYERVERSION_yocto first and then do a check on it to determine if
we do the rename or not.

-b


On Fri, Sep 13, 2013 at 4:23 AM, Laurentiu Palcu
<laurentiu.palcu@intel.com>wrote:

> With the latest changes to adt-installer, the rootfs directory name in
> the repo should match the MACHINE. Hence, qemux86-64 should not be
> renamed to qemux86_64.
>
> Also, one of my vim plugins, automatically eliminated some EOL
> whitespaces in the process. So, I thought, it wouldn't hurt to commit
> those too.
>
> [YOCTO #5181]
>
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
> ---
>  .../autobuilder/buildsteps/PublishArtifacts.py     |   19
> +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
>
> diff --git
> a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> index 10eb7af..e2b5b49 100644
> ---
> a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> +++
> b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -12,14 +12,14 @@ __email__ = "elizabeth.flanagan@intel.com"
>
>  from buildbot.steps.shell import ShellCommand
>  from twisted.python import log
> -import os, datetime
> +import os, datetime
>  from autobuilder.config import *
>
>  class PublishArtifacts(ShellCommand):
>
> -    haltOnFailure = False
> -    flunkOnFailure = True
> -    name = "Publishing Artifacts"
> +    haltOnFailure = False
> +    flunkOnFailure = True
> +    name = "Publishing Artifacts"
>      def __init__(self, factory, argdict=None, **kwargs):
>          self.factory = factory
>          self.description = "Publishing Artifacts"
> @@ -43,7 +43,7 @@ class PublishArtifacts(ShellCommand):
>          self.layerversion_core = self.getProperty("layerversion_core")
>          log.msg(layerversion_yoctobsp)
>          self.basedir=os.path.join(os.path.join(
> -                                    self.slavedir, buildername),
> +                                    self.slavedir, buildername),
>                                      "build/build/")
>          command=""
>          DATESTAMP=datetime.datetime.now().strftime("%Y%m%d")
> @@ -70,19 +70,18 @@ class PublishArtifacts(ShellCommand):
>                      command=command+"mkdir -p " + adt_dev_dest +
> "/adt-ipk;"
>                      command=command+"cp -R " + os.path.join(self.basedir,
> "tmp/deploy/ipk/*") + " " + adt_dev_dest + "/adt-ipk;"
>                      command=command+"rsync -av " +
> os.path.join(self.basedir, "tmp/deploy/ipk/") + " " + DEST + "/ipk;"
> -                    command=command+"mkdir -p " + adt_dev_dest +
> "/rootfs;"
> +                    command=command+"mkdir -p " + adt_dev_dest +
> "/rootfs;"
>                      command=command+"for x in `ls " + DEST +
> "/machines/qemu/|grep -v tiny`; do ln -s " + DEST + "/machines/qemu/$x " +
> adt_dev_dest + "/rootfs/$x; done;"
> -                    command=command+"mv " + adt_dev_dest +
> "/rootfs/qemux86-64 " + adt_dev_dest + "/rootfs/qemux86_64;"
>                  elif artifact == "eclipse-plugin-juno":
>                      command=command+"mkdir -p " + DEST +
> "/eclipse-plugin/juno;"
>                      command=command+"cp -R --no-dereference
> --preserve=links " + \
> -
> os.path.join(os.path.join(self.slavedir, buildername),
> +
> os.path.join(os.path.join(self.slavedir, buildername),
>
> "build/eclipse-poky-juno/scripts/org.*.zip") + \
>                                       " " + DEST + "/eclipse-plugin/juno;"
>                  elif artifact == "eclipse-plugin-kepler":
>                      command=command+"mkdir -p " + DEST +
> "/eclipse-plugin/kepler;"
>                      command=command+"cp -R --no-dereference
> --preserve=links " + \
> -
> os.path.join(os.path.join(self.slavedir, buildername),
> +
> os.path.join(os.path.join(self.slavedir, buildername),
>
> "build/eclipse-poky-kepler/scripts/org.*.zip") + \
>                                       " " + DEST +
> "/eclipse-plugin/kepler;"
>                  elif artifact == "build-appliance":
> @@ -159,7 +158,7 @@ class PublishArtifacts(ShellCommand):
>                      command=command+"echo 'Skipping copy of " + artifact
> + ".'"
>                  else:
>                      artifact_name, deploy_image_dir =
> self.getDeployNames(artifact, buildername)
> -
> +
>                      command=command+"mkdir -p " + DEST + "/"+
> MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
>                      command=command+"cp -R --no-dereference
> --preserve=links " + \
>                                       deploy_image_dir + \
> --
> 1.7.9.5
>
>


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--089e0112d0067b006504e6463f17
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m going to nack this one as it breaks backwards=
 compatibility. We&#39;ll need to bump LAYERVERSION_yocto first and then do=
 a check on it to determine if we do the rename or not.<br><br></div>-b<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri,=
 Sep 13, 2013 at 4:23 AM, Laurentiu Palcu <span dir=3D"ltr">&lt;<a href=3D"=
mailto:laurentiu.palcu@intel.com" target=3D"_blank">laurentiu.palcu@intel.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">With the latest changes to adt-installer, th=
e rootfs directory name in<br>
the repo should match the MACHINE. Hence, qemux86-64 should not be<br>
renamed to qemux86_64.<br>
<br>
Also, one of my vim plugins, automatically eliminated some EOL<br>
whitespaces in the process. So, I thought, it wouldn&#39;t hurt to commit<b=
r>
those too.<br>
<br>
[YOCTO #5181]<br>
<br>
Signed-off-by: Laurentiu Palcu &lt;<a href=3D"mailto:laurentiu.palcu@intel.=
com">laurentiu.palcu@intel.com</a>&gt;<br>
---<br>
=A0.../autobuilder/buildsteps/PublishArtifacts.py =A0 =A0 | =A0 19 ++++++++=
+----------<br>
=A01 file changed, 9 insertions(+), 10 deletions(-)<br>
<br>
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArti=
facts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifa=
cts.py<br>
index 10eb7af..e2b5b49 100644<br>
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.p=
y<br>
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.p=
y<br>
@@ -12,14 +12,14 @@ __email__ =3D &quot;<a href=3D"mailto:elizabeth.flanaga=
n@intel.com">elizabeth.flanagan@intel.com</a>&quot;<br>
<br>
=A0from buildbot.steps.shell import ShellCommand<br>
=A0from twisted.python import log<br>
-import os, datetime<br>
+import os, datetime<br>
=A0from autobuilder.config import *<br>
<br>
=A0class PublishArtifacts(ShellCommand):<br>
<br>
- =A0 =A0haltOnFailure =3D False<br>
- =A0 =A0flunkOnFailure =3D True<br>
- =A0 =A0name =3D &quot;Publishing Artifacts&quot;<br>
+ =A0 =A0haltOnFailure =3D False<br>
+ =A0 =A0flunkOnFailure =3D True<br>
+ =A0 =A0name =3D &quot;Publishing Artifacts&quot;<br>
=A0 =A0 =A0def __init__(self, factory, argdict=3DNone, **kwargs):<br>
=A0 =A0 =A0 =A0 =A0self.factory =3D factory<br>
=A0 =A0 =A0 =A0 =A0self.description =3D &quot;Publishing Artifacts&quot;<br=
>
@@ -43,7 +43,7 @@ class PublishArtifacts(ShellCommand):<br>
=A0 =A0 =A0 =A0 =A0self.layerversion_core =3D self.getProperty(&quot;layerv=
ersion_core&quot;)<br>
=A0 =A0 =A0 =A0 =A0log.msg(layerversion_yoctobsp)<br>
=A0 =A0 =A0 =A0 =A0self.basedir=3Dos.path.join(os.path.join(<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0se=
lf.slavedir, buildername),<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0se=
lf.slavedir, buildername),<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
&quot;build/build/&quot;)<br>
=A0 =A0 =A0 =A0 =A0command=3D&quot;&quot;<br>
=A0 =A0 =A0 =A0 =A0DATESTAMP=3Ddatetime.datetime.now().strftime(&quot;%Y%m%=
d&quot;)<br>
@@ -70,19 +70,18 @@ class PublishArtifacts(ShellCommand):<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;mkdir -p=
 &quot; + adt_dev_dest + &quot;/adt-ipk;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;cp -R &q=
uot; + os.path.join(self.basedir, &quot;tmp/deploy/ipk/*&quot;) + &quot; &q=
uot; + adt_dev_dest + &quot;/adt-ipk;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;rsync -a=
v &quot; + os.path.join(self.basedir, &quot;tmp/deploy/ipk/&quot;) + &quot;=
 &quot; + DEST + &quot;/ipk;&quot;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;mkdir -p &=
quot; + adt_dev_dest + &quot;/rootfs;&quot;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;mkdir -p &=
quot; + adt_dev_dest + &quot;/rootfs;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;for x in=
 `ls &quot; + DEST + &quot;/machines/qemu/|grep -v tiny`; do ln -s &quot; +=
 DEST + &quot;/machines/qemu/$x &quot; + adt_dev_dest + &quot;/rootfs/$x; d=
one;&quot;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;mv &quot; =
+ adt_dev_dest + &quot;/rootfs/qemux86-64 &quot; + adt_dev_dest + &quot;/ro=
otfs/qemux86_64;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0elif artifact =3D=3D &quot;eclipse-plugi=
n-juno&quot;:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;mkdir -p=
 &quot; + DEST + &quot;/eclipse-plugin/juno;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;cp -R --=
no-dereference --preserve=3Dlinks &quot; + \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 o=
s.path.join(os.path.join(self.slavedir, buildername),<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 o=
s.path.join(os.path.join(self.slavedir, buildername),<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 &quot;build/eclipse-poky-juno/scripts/org.*.zip&qu=
ot;) + \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 &quot; &quot; + DEST + &quot;/eclipse-plugin/juno;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0elif artifact =3D=3D &quot;eclipse-plugi=
n-kepler&quot;:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;mkdir -p=
 &quot; + DEST + &quot;/eclipse-plugin/kepler;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;cp -R --=
no-dereference --preserve=3Dlinks &quot; + \<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 o=
s.path.join(os.path.join(self.slavedir, buildername),<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 o=
s.path.join(os.path.join(self.slavedir, buildername),<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 &quot;build/eclipse-poky-kepler/scripts/org.*.zip&=
quot;) + \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 &quot; &quot; + DEST + &quot;/eclipse-plugin/kepler;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0elif artifact =3D=3D &quot;build-applian=
ce&quot;:<br>
@@ -159,7 +158,7 @@ class PublishArtifacts(ShellCommand):<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;echo &#3=
9;Skipping copy of &quot; + artifact + &quot;.&#39;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0else:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0artifact_name, deploy_image_dir =
=3D self.getDeployNames(artifact, buildername)<br>
-<br>
+<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;mkdir -p=
 &quot; + DEST + &quot;/&quot;+ MACHINE_PUBLISH_DIR +&quot;/&quot; + artifa=
ct_name + &quot;;&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0command=3Dcommand+&quot;cp -R --=
no-dereference --preserve=3Dlinks &quot; + \<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 deploy_image_dir + \<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth=
 Flanagan<br>Yocto Project<br>Build and Release
</div>

--089e0112d0067b006504e6463f17--
