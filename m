Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46AC8E00B7B; Mon,  9 Jun 2014 12:24:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 040E6E00B66
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 12:24:27 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id sa20so6952901veb.23
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 12:24:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=8DezhHHZt/B2puEtoiLBjOhyFa6qjZO7kFl1X+Nc/3Q=;
	b=ATlnKqBIFZCVu2WsIV8MvF+m6k4ieIa78A3nXxFWtkPdf2D94WcJPk9lJoTt06NW61
	YQAGVOgjjV93S0iMm/JxaGFtKu5NtEfgt1huHNnEU25SJVIogBpSI1lT1BssoqdSZZWH
	V25sxiPT4XrDCfRV62dXpLvh6FhMZejlm4mEmhDT8USqickmKm95kSwqhkQpOg9juK1n
	YdJTIZE5ssyB8pRj6u+SpbqwpP5qonypPIFAi3eDvbfFoWpVdl9s0qsVn24rsUUKrAiR
	LpJgb2C+5bK45WhSmaIs+rlS3KDZmLt9h4k2fVyxjXm0RrqZON9tpAWncu8lZaqa82dn
	TgfQ==
X-Gm-Message-State: ALoCoQl+E0s7WZimJtM/C4FOQLbMyFg3F0UyogGX4GH6wmvePNd0XHwwqZzFuUR0Js2i0qfPsOqh
MIME-Version: 1.0
X-Received: by 10.52.240.203 with SMTP id wc11mr1893775vdc.75.1402341867049;
	Mon, 09 Jun 2014 12:24:27 -0700 (PDT)
Received: by 10.52.28.235 with HTTP; Mon, 9 Jun 2014 12:24:26 -0700 (PDT)
In-Reply-To: <1402339912-20927-3-git-send-email-lynncyrin@gmail.com>
References: <1402339912-20927-1-git-send-email-lynncyrin@gmail.com>
	<1402339912-20927-2-git-send-email-lynncyrin@gmail.com>
	<1402339912-20927-3-git-send-email-lynncyrin@gmail.com>
Date: Mon, 9 Jun 2014 12:24:26 -0700
Message-ID: <CAPhnLPBR3K09eYoYsOipCnhpeycpSVaSOT7Zpbvs8jWpTa=eBw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Lynn 'Cyrin' Conway" <lynncyrin@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 09 Jun 2014 19:24:38 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 9, 2014 at 11:51 AM, Lynn 'Cyrin' Conway
<lynncyrin@gmail.com> wrote:
> REF: Bug ID 6354
>
> Added a md5sums artifact into PublishArtifacts
>
> Also changed md5sums to generate in the
> temp/deploy/images directory - (for real this time!!!)
>
> Signed-off-by: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
> ---
>  .../autobuilder/buildsteps/PublishArtifacts.py     |    4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> index db86ec2..289d045 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
> @@ -180,6 +180,10 @@ class PublishArtifacts(ShellCommand):
>                      command=command+"cp -R --no-dereference " + \
>                                       os.path.join(self.basedir, "conf/") + \
>                                       "/* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf;"
> +                elif artifact == "md5sums":
> +                    artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
> +                    command = command + "for x in `find " + deploy_image_dir + " -type f`; do "
> +                    command = command + "md5sum $x >> $x.md5sum; done"
>                  elif artifact == "None":
>                      command=command+"echo 'Skipping copy of " + artifact + ".'"
>                  else:

Yeah, this is a better way to do it as the deploy_image_dir changed
between one major release and the other. We'll probably have to fix up
the function that gets that directory to check if DEPLOY_DIR_IMAGE is
set, but this should be ok in the meantime.

> --
> 1.7.9.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

