Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE3B6E0077E; Tue, 17 Feb 2015 18:53:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C245E00757
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 18:53:27 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id hl2so48156563igb.0
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 18:53:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:content-type;
	bh=bqIOnLu0SqnfhzaZ3OxuzzvbvTnZTFxj3Nl9co7NtCk=;
	b=X4QXSbzVzsCY7TIbsWsqkgRbHF0zT6jaRbib0X2Zmcp6oM5Lww6l4OpOUdsc5y0Qim
	HK69ogx2uDNd5WTYvAd8UKHpeQPiZHzd27FmnEGDVWBibinfSg9AzSkXQIpqSbYGn4Tn
	77rXxzWAis093XshNJyoLKc/vhennBKck2USpNx/taZ3VnI8E+OJP8klcYO+x0OMOnMV
	SUOrtp8c/xOClfyDHax54idvQX0OoDSULFCVDEsjKdC8kfNHi874YEYLOEH0dmKNs006
	Ybc97y7rFUfVMrZWYua0eSMgsW7hUY5MgW1N4q/98Ze7gz5hN8fxQoBQBoyIU+4scGx5
	V3Qg==
X-Gm-Message-State: ALoCoQlgOscZcVIa2e3YN/fybZWDWtOqwJxAOdZvOtW9l8cO21ST1SdATf13ZvwWPIzZ6c3OKQqQ
MIME-Version: 1.0
X-Received: by 10.107.128.69 with SMTP id b66mr2657748iod.30.1424228007120;
	Tue, 17 Feb 2015 18:53:27 -0800 (PST)
Sender: joe@deserted.net
Received: by 10.42.21.13 with HTTP; Tue, 17 Feb 2015 18:53:27 -0800 (PST)
Date: Tue, 17 Feb 2015 21:53:27 -0500
X-Google-Sender-Auth: bZ0231ZSz-9P9QFEwWc_GN9Hsxw
Message-ID: <CANBf+V2jV4c8gCwJ0LXyV9DTa7GYFUGFWQBtSH69YoND-NDQww@mail.gmail.com>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [autobuilder][PATCH] config: support configuration templates
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
X-List-Received-Date: Wed, 18 Feb 2015 02:53:32 -0000
Content-Type: text/plain; charset=UTF-8

I intended to --annotate the patch and include the [autobuilder] tag
before git-send-email ran off with it on me.  Sorry about that.

I'm sending this separately, based on the master HEAD commit, from my
documentation patches since I recognize the benefit of this may be
less obvious and maybe it's not a change upstream actually wants.  I
have one more change ready to send, supporting parallel alternate
configurations for the controller and worker, but without this change,
the next doesn't make much sense, so I thought I'd see what the
thoughts are on this change first.

On Tue, Feb 17, 2015 at 9:51 PM, Joe MacDonald <joe_macdonald@mentor.com> wrote:
> Move yocto-controller and yocto-worker to .template versions and update
> the setup script to move them in the expected location if they aren't
> already preset, allowing local configurations to make whatever changes
> they need in the yocto-[controller|worker] directories without issues on a
> pull and without having to resort to tools like git-diff and git-checkout
> to try alternate configurations.
>
> Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ---
>  .gitignore                                         |  14 ++------
>  yocto-autobuilder-setup                            |  37 +++++++++++++++++++++
>  .../Makefile                                       |   0
>  .../buildbot.tac.example                           |   0
>  .../buildbot.tac.standard                          |   0
>  .../controller.cfg.example                         |   0
>  .../public_html/bg_gradient.jpg                    | Bin
>  .../public_html/default.css                        |   0
>  .../public_html/favicon.ico                        | Bin
>  .../public_html/robots.txt                         |   0
>  .../templates/README.txt                           |   0
>  .../yoctoABConfig.py                               |   0
>  {yocto-worker => yocto-worker.template}/Makefile   |   0
>  .../buildbot.tac.example                           |   0
>  14 files changed, 39 insertions(+), 12 deletions(-)
>  rename {yocto-controller => yocto-controller.template}/Makefile (100%)
>  rename {yocto-controller => yocto-controller.template}/buildbot.tac.example (100%)
>  rename {yocto-controller => yocto-controller.template}/buildbot.tac.standard (100%)
>  rename {yocto-controller => yocto-controller.template}/controller.cfg.example (100%)
>  rename {yocto-controller => yocto-controller.template}/public_html/bg_gradient.jpg (100%)
>  rename {yocto-controller => yocto-controller.template}/public_html/default.css (100%)
>  rename {yocto-controller => yocto-controller.template}/public_html/favicon.ico (100%)
>  rename {yocto-controller => yocto-controller.template}/public_html/robots.txt (100%)
>  rename {yocto-controller => yocto-controller.template}/templates/README.txt (100%)
>  rename {yocto-controller => yocto-controller.template}/yoctoABConfig.py (100%)
>  rename {yocto-worker => yocto-worker.template}/Makefile (100%)
>  rename {yocto-worker => yocto-worker.template}/buildbot.tac.example (100%)
>
> diff --git a/.gitignore b/.gitignore
> index f1f9e4e..017636f 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -15,15 +15,5 @@
>  .cfg
>
>  TODO
> -yocto-controller/http.log
> -yocto-controller/controller.cfg
> -yocto-controller/state.sqlite
> -yocto-controller/twistd.log*
> -yocto-controller/buildbot.tac
> -yocto-worker/build-appliance/build(newcommits)
> -yocto-worker/buildbot.tac
> -yocto-worker/nightly-x86/.buildbot-sourcedata-YnVpbGQ=
> -yocto-worker/nightly/build(newcommits)
> -yocto-worker/twistd.hostname
> -yocto-worker/twistd.log*
> -yocto-worker/twistd.pid
> +yocto-controller
> +yocto-worker
> diff --git a/yocto-autobuilder-setup b/yocto-autobuilder-setup
> index 615deb4..8d447f7 100644
> --- a/yocto-autobuilder-setup
> +++ b/yocto-autobuilder-setup
> @@ -62,6 +62,25 @@ export OGIT_TRASH_CRON_TIME="0 0 * * *"
>  export OGIT_TRASH_NICE_LEVEL="19"
>  HOST_ADDR=$(hostname -I)
>
> +#########################################
> +#
> +# Create a new controller/worker configuation based on our templates if we don't
> +# already have one configured here.
> +#
> +#########################################
> +if [ ! -d "${PWD}/yocto-controller" ]; then
> +    echo ""
> +    echo "Creating yocto-controller/ from yocto-controller.template/"
> +    echo ""
> +    /bin/cp -R yocto-controller.template yocto-controller
> +fi
> +if [ ! -d "${PWD}/yocto-worker" ]; then
> +    echo ""
> +    echo "Creating yocto-worker/ from yocto-worker.template/"
> +    echo ""
> +    /bin/cp -R yocto-worker.template yocto-worker
> +fi
> +
>  ##########################
>  #
>  # Check to see if we've got a username/password set
> @@ -129,6 +148,24 @@ if [  ! -d  "./buildset-config" ]; then
>      /bin/cp -R buildset-config.controller buildset-config
>  fi
>
> +#########################################
> +#
> +# If there is already a state.sqlite file in the controller directory, it may
> +# need upgrading.  Inform the user about this.  This command is run
> +# automatically the first time it is run on a pristine configuration.  See
> +# below.
> +#
> +#########################################
> +if [ -f ]; then
> +    echo ""
> +    echo "An existing yocto-controller/state.sqlite has been found."
> +    echo "If you have changed your configuration since the last time"
> +    echo "you sourced this setup script, you will most likely need to"
> +    echo "update it.  The command you probably want is:"
> +    echo ""
> +    echo "\tbuildbot upgrade-master ${PWD}/yocto-controller"
> +    echo ""
> +fi
>
>  if [ -n "${config_check:+x}" ]; then
>      echo ""
> diff --git a/yocto-controller/Makefile b/yocto-controller.template/Makefile
> similarity index 100%
> rename from yocto-controller/Makefile
> rename to yocto-controller.template/Makefile
> diff --git a/yocto-controller/buildbot.tac.example b/yocto-controller.template/buildbot.tac.example
> similarity index 100%
> rename from yocto-controller/buildbot.tac.example
> rename to yocto-controller.template/buildbot.tac.example
> diff --git a/yocto-controller/buildbot.tac.standard b/yocto-controller.template/buildbot.tac.standard
> similarity index 100%
> rename from yocto-controller/buildbot.tac.standard
> rename to yocto-controller.template/buildbot.tac.standard
> diff --git a/yocto-controller/controller.cfg.example b/yocto-controller.template/controller.cfg.example
> similarity index 100%
> rename from yocto-controller/controller.cfg.example
> rename to yocto-controller.template/controller.cfg.example
> diff --git a/yocto-controller/public_html/bg_gradient.jpg b/yocto-controller.template/public_html/bg_gradient.jpg
> similarity index 100%
> rename from yocto-controller/public_html/bg_gradient.jpg
> rename to yocto-controller.template/public_html/bg_gradient.jpg
> diff --git a/yocto-controller/public_html/default.css b/yocto-controller.template/public_html/default.css
> similarity index 100%
> rename from yocto-controller/public_html/default.css
> rename to yocto-controller.template/public_html/default.css
> diff --git a/yocto-controller/public_html/favicon.ico b/yocto-controller.template/public_html/favicon.ico
> similarity index 100%
> rename from yocto-controller/public_html/favicon.ico
> rename to yocto-controller.template/public_html/favicon.ico
> diff --git a/yocto-controller/public_html/robots.txt b/yocto-controller.template/public_html/robots.txt
> similarity index 100%
> rename from yocto-controller/public_html/robots.txt
> rename to yocto-controller.template/public_html/robots.txt
> diff --git a/yocto-controller/templates/README.txt b/yocto-controller.template/templates/README.txt
> similarity index 100%
> rename from yocto-controller/templates/README.txt
> rename to yocto-controller.template/templates/README.txt
> diff --git a/yocto-controller/yoctoABConfig.py b/yocto-controller.template/yoctoABConfig.py
> similarity index 100%
> rename from yocto-controller/yoctoABConfig.py
> rename to yocto-controller.template/yoctoABConfig.py
> diff --git a/yocto-worker/Makefile b/yocto-worker.template/Makefile
> similarity index 100%
> rename from yocto-worker/Makefile
> rename to yocto-worker.template/Makefile
> diff --git a/yocto-worker/buildbot.tac.example b/yocto-worker.template/buildbot.tac.example
> similarity index 100%
> rename from yocto-worker/buildbot.tac.example
> rename to yocto-worker.template/buildbot.tac.example
> --
> 1.9.1
>

