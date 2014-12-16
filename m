Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D74B7E00752; Tue, 16 Dec 2014 12:30:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90833E003AB
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 12:30:11 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id im6so6619297vcb.25
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 12:30:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=5lgWCtPVNWw3elz+/CrNxI+kuS/onAUEP/JnhOOy7jI=;
	b=RJ2d916fFx/oAQy7A35TbarGKHJUkezHYCnmPB8wZ8ay24Y0chvPVHG0EnT4Jok7oy
	4Lz8gdfdhW0pwJyNYGrDDGeQE4eFX67SDkLWIGxndbzcfVSDB5WmUxmrLGu7Ykmj6XEE
	GdZY3xnX74rJ9Ng1RcMO/FQC2KLdrrAOQiwPo7FXxB4ljnlpZuE06X1EJQ66ui8+V9qd
	oThGus7crLznfVs1rMynLiLySPWxJYiLF430ETW/pARdzAI5qrq4YoHgE3l2T/6bdSbW
	A/8t1orEGSNM/k0blC9tDm2QmsIXxX/FM/SX63WedxvjqpHDcLthFyDuMAPcJ2NplQqN
	JpBw==
X-Gm-Message-State: ALoCoQnedZx6qbAzAkDbe2forgKaAsn1Q+xvhbFxkC2h3b1bfUbgfA/RpGixrLPWQUxx5E32QAO4
MIME-Version: 1.0
X-Received: by 10.52.30.49 with SMTP id p17mr20084762vdh.69.1418761811112;
	Tue, 16 Dec 2014 12:30:11 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Tue, 16 Dec 2014 12:30:11 -0800 (PST)
In-Reply-To: <1418320935-2913-2-git-send-email-californialsullivan@gmail.com>
References: <1418320935-2913-1-git-send-email-californialsullivan@gmail.com>
	<1418320935-2913-2-git-send-email-californialsullivan@gmail.com>
Date: Tue, 16 Dec 2014 20:30:11 +0000
Message-ID: <CAPhnLPCFp2nYdcydd6V455ycOueis1G8XBEkMWbaUGrLqzdgzQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: California Sullivan <californialsullivan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	California Sullivan <california.l.sullivan@intel.com>
Subject: Re: [Yocto Autobuilder][PATCH 2/2] Autobuilder: add GitPoller ChangeSource for SingleBranchScheduler
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
X-List-Received-Date: Tue, 16 Dec 2014 20:30:22 -0000
Content-Type: text/plain; charset=UTF-8

pul

On 11 December 2014 at 18:02,  <californialsullivan@gmail.com> wrote:
> From: California Sullivan <california.l.sullivan@intel.com>
>
> Previously, PBChangeSource was the only option for changesources.
> PBChangeSource was not always suitable since the remote repository had
> to be able to run custom hooks, which isn't always available. This
> commit adds GitPoller as an option.
>
> Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/Autobuilder.py | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> index 32c6128..0dae5dc 100644
> --- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> +++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> @@ -230,14 +230,26 @@ class Autobuilder:
>                          if value.has_key('change-password'):
>                              passwd=value['change-password']
>
> -                        self.yocto_sources.append(PBChangeSource(user=user, passwd=passwd))
> -
>                          branch="master"
>                          stabletimer=60
>                          if repo.has_key('branch'):
>                              branch = repo['branch']
>                          if value.has_key('stable-timer'):
>                              stabletimer = value['stable-timer']
> +
> +                        if value.has_key('changesource') and value['changesource'] == 'GitPoller':
> +                            if value.has_key('interval'):
> +                                interval = int(value['interval'])
> +                            else:
> +                                # default to 5 minutes poll intervals
> +                                interval = 60*5
> +                            self.yocto_sources.append(GitPoller(repourl=repo['repourl'], branch=branch, pollInterval=interval))
> +                            log.msg("Adding GitPoller as changesource for " + reponame)
> +                        else:
> +                            # default to use PBChangeSource as the changesource
> +                            self.yocto_sources.append(PBChangeSource(user=user, passwd=passwd))
> +                            log.msg("Adding PBChangeSource as changesource for " + reponame)
> +
>                          self.yocto_sched.append(SingleBranchScheduler(name=str(name),
>                                                                        builderNames=['%s' % key],
>                                                                        properties=checkoutprops,
> --
> 1.9.3
>

Pulled into master. Thanks.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

