Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3179FE00985; Fri,  6 Jun 2014 14:07:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2B21E0070F
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 14:06:50 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id a108so5541280qge.39
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 14:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AcafW7t0IMAsOv3ztAO7Y67DwmWgKDpdxmoZv0i0jeI=;
	b=ri1GwtxFaijqBLsDW+QuTg6KwnM7oDA4vrnhWFEPixHILMjUPPQHzEhRacdB/ITORS
	m3zOo643DytT3/ZUfxFSBVUsuySRsQRqNTQwCEP7mQc6aTrKyqMQDxlQ+ybLQYH4y5zL
	SzpeNQoE4O7RJwsqkx2L3JRgNxprsV8PwEfQ10qrubxewea40rQo8H9wbaPsnaQro/QQ
	ScJ9Mi09JY6G90VBPw3cqUylLEB/OSgozLuA9FafLyByruKn50wrd9U19U3mgvWrrx0U
	3esi0Rzqph6tbmIaV8AX8Z2lxFJBH4tlcBU9Oo+lN01GA2B4QShY6bbSknJ/3QmXiSul
	SiHg==
MIME-Version: 1.0
X-Received: by 10.140.46.53 with SMTP id j50mr12317680qga.27.1402088810604;
	Fri, 06 Jun 2014 14:06:50 -0700 (PDT)
Received: by 10.140.107.198 with HTTP; Fri, 6 Jun 2014 14:06:50 -0700 (PDT)
In-Reply-To: <1401843822-13967-3-git-send-email-lynncyrin@gmail.com>
References: <1401843822-13967-1-git-send-email-lynncyrin@gmail.com>
	<1401843822-13967-2-git-send-email-lynncyrin@gmail.com>
	<1401843822-13967-3-git-send-email-lynncyrin@gmail.com>
Date: Fri, 6 Jun 2014 17:06:50 -0400
Message-ID: <CAPphmgb_NPGOu0dxP0b+0gr4zmE2D+SMuXCTvnO91kB6wAbaHA@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: "Lynn 'Cyrin' Conway" <lynncyrin@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3] PublishArtifacts: add md5sums artifact
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
X-List-Received-Date: Fri, 06 Jun 2014 21:07:06 -0000
Content-Type: text/plain; charset=UTF-8

I just grabbed the current master.

I changed my local conf definition so it would do the MakeImageMD5s.
It creates them inside of the build directory by default.

After doing this, the PublishArtifacts was still failing because the
cp command could not find the md5sum files. It looks in the
tmp/deploy/images directory.

I applied this patch so that the MakeImageMD5s step would generate
them in the temp/deploy/images directory and allow the PublishArtifact
build step to work.

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py
index 84839fb..7bfb2b3 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py
@@ -35,7 +35,7 @@ class MakeImageMD5s(ShellCommand):
         command=""
         if str(os.environ.get('PUBLISH_BUILDS')) == "True":
             command = command + "for x in `find build/tmp/deploy/images -type f
-            command = command + "filenm=`basename $x`; md5sum $x >> $filenm.md5
+            command = command + "md5sum $x >> $x.md5sum; done"
         else:
             command="echo 'Not publishing build, skipping step'"
         self.command = command

After seeing this patch, I wonder if this should be applied to
PublishArtifacts now.

- Jate S.

On Tue, Jun 3, 2014 at 9:03 PM, Lynn 'Cyrin' Conway <lynncyrin@gmail.com> wrote:
> REF: Bug ID 6354
>
> Added a md5sums artifact into PublishArtifacts
>
> Signed-off-by: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
> ---
>  .../autobuilder/buildsteps/PublishArtifacts.py     |    6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> index db86ec2..bb69d18 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -180,6 +180,10 @@ class PublishArtifacts(ShellCommand):
>                      command=command+"cp -R --no-dereference " + \
>                                       os.path.join(self.basedir, "conf/") + \
>                                       "/* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf;"
> +                elif artifact == "md5sums":
> +                    artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
> +                    command = command + "for x in `find " + deploy_image_dir + " -type f`; do "
> +                    command = command + "filenm=`basename $x`; md5sum $x >> $filenm.md5sum; done"
>                  elif artifact == "None":
>                      command=command+"echo 'Skipping copy of " + artifact + ".'"
>                  else:
> @@ -216,7 +220,7 @@ class PublishArtifacts(ShellCommand):
>              artifact_name = artifact_name + "-lsb"
>          if self.layerversion_core is not None and int(self.layerversion_core) > 2:
>              deploy_dir_image = os.path.join(os.path.join(self.basedir, "tmp/deploy/images/"), artifact)
> -        else:
> +        else:1
>              deploy_dir_image = os.path.join(self.basedir, "tmp/deploy/images/")
>          return artifact_name, deploy_dir_image
>
> --
> 1.7.9.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

