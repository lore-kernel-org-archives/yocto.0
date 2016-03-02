Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD4DCE00720; Wed,  2 Mar 2016 09:35:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BD70E00443
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 09:35:40 -0800 (PST)
Received: by mail-ig0-f178.google.com with SMTP id xg9so46610178igb.1
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 09:35:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DGl1JPpXSnRQ2qLWWpDlL2BStY6g7MkGC5uryDWOmLU=;
	b=a3WgPxEFBVblox3P8l5hlpcrUiLAQyyjcg2/thVb05gcXdHVW6XXi/tdBC33vHF07O
	bwKMMLQa1z4w4PY5dPG3HSmzaUy8MB57QqtSsGiEwnhcyPY9mhE+GjYXPa6OMd6SopmJ
	4cgAbTsVHLMlNBmU5QYt2N3CDAEUpBXh7fUfJK3fDn2+u2Vrg6qeHnaFGPG0A4qYCLhL
	Dvyvpun3fp+V8dMsjmQAcJTawQgxPCg4pK5THkCffzhMZBeqcoDhFDyhCrdPj9tSRdpw
	p7yuXzxpldS6qtWop5fSJJiiQROds7eCf4BoXouuy0DQJBtri08feQcI5bJ7h8/4RiDQ
	T9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DGl1JPpXSnRQ2qLWWpDlL2BStY6g7MkGC5uryDWOmLU=;
	b=T5KvEkomANWWC1ywyIUUfxaHsvlkuBFoMvkXbPZstbFRJOTQYxjETfZ2ZUhgQmsZL+
	BWus0vape+SZvpDxTIJqq/ybKKMVdPq2Re0Xrysft9Qxfi5aXm1g78RLhQ/XS+Nz6n+R
	RuqKKySI4b96e5DwJRUXc4ICgOYW6op8ic0CsaO6CzYubEu0rbAwIdG5dWol60EHMGrq
	WD2uzQnGt/brucjCywz3rjqAImwxGjJic54Wqp6nH1NqJSlfFQEuUSITTAgUKkEBVn2w
	mUn8wdJ4tqvFd1gQlZ9FpGg8pkKqeTdFeQUIM1zvIEzlCCkVZs938d7tbXHaqTB+L3BP
	8f3w==
X-Gm-Message-State: AD7BkJKOFztm5AYYPhbcYz3yEwyOkI2hfFUU4e/PPSACHtvyjG1xPenFd9EIP+XGkAOuBl2DoTGhaPgqPogtmrcS
X-Received: by 10.50.155.98 with SMTP id vv2mr1286035igb.54.1456940139501;
	Wed, 02 Mar 2016 09:35:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.130.214 with HTTP; Wed, 2 Mar 2016 09:35:00 -0800 (PST)
In-Reply-To: <1456793383-2569-1-git-send-email-joe_macdonald@mentor.com>
References: <1456793383-2569-1-git-send-email-joe_macdonald@mentor.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Wed, 2 Mar 2016 17:35:00 +0000
Message-ID: <CAPhnLPCPqyYv2fYsNxL8ijoOnCA0MBaasV95AeLyOXjbhBYsBw@mail.gmail.com>
To: Joe MacDonald <joe_macdonald@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [autobuilder][PATCH] CreateBBLayersConf: optionally exclude repos from default bblayers.conf
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
X-List-Received-Date: Wed, 02 Mar 2016 17:35:43 -0000
Content-Type: text/plain; charset=UTF-8

Pulled into master-next. Thanks!

-b

On 1 March 2016 at 00:49, Joe MacDonald <joe_macdonald@mentor.com> wrote:
> When a repo is listed in the autobuilder config file, it is automatically
> included in the resulting bblayers.conf.  In most scenarios this is the
> correct thing to do, however it results in a build error if a layer such
> as meta-openembedded is one of the listed repos:
>
>   IOError: [Errno 2] file [...]/build/meta-openembedded/conf/layer.conf not found
>
> since meta-openembedded does not contain a top-level conf/ tree and is not
> intended to be included as a meta-* layer itself.
>
> Add an 'autoinclude' flag to the 'repo:' stanza of the config file with
> the default being 'True' (ie. the current behaviour) but when set to
> 'False' the layer will still be checked out (making this behaviour
> distinct from the 'checkout' flag) but not included in the bblayer.conf by
> default, only layers specifically referenced in the CreateBBLayersConf
> section of the 'steps:' stanza will be included.
>
> Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ---
>  .../site-packages/autobuilder/buildsteps/CreateBBLayersConf.py         | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
> index 03cb2a1..ace9fbb 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CreateBBLayersConf.py
> @@ -95,7 +95,8 @@ class CreateBBLayersConf(ShellCommand):
>                          elif layer.iterkeys().next()=="meta-qt4":
>                              if layerversioncore is not None and int(layerversioncore) > 6:
>                                  fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
> -                        else:
> +                        elif (layer[layer.iterkeys().next()].has_key('autoinclude') and layer[layer.iterkeys().next()]['autoinclude'] is not False) or \
> +                             layer[layer.iterkeys().next()].has_key('autoinclude') is False:
>                              fout = fout + workdir + '/build/' + layer.iterkeys().next() + ' \ \n'
>                          ldirs.append(layer.iterkeys().next())
>
> --
> 1.9.1
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

