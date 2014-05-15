Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 075D4E00A44; Thu, 15 May 2014 08:37:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 252 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 May 2014 08:37:09 PDT
Received: from mail-ve0-f180.google.com (unknown [209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C46A3E0053B
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 08:37:09 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id db12so1491760veb.39
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 08:37:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=f7kp7mTdrGybX6Fco7MzfpT6aGbpa3mJO4sJvez6mUk=;
	b=Y+kooenTUILfuOR1K+5x5Ytcuae7uA0kRaWE7FshInpl/naB9f5BaO7xMc/PGcZBVV
	RKam+rmG5vuOiVGiAywvJ0taYc/79hA4ehwut4Egodmye1XwajzT0VWFnOAqJ5HBjKRW
	DqRZICvOntKnrsqdyDf7EgVvDP1ZCx0Xw2rm3y5ZIl+ORwX6uhj2iJhBBTPGBf5G0NG2
	mmZvp1KdRE0jb3XOnM2mfg+9bXZh6GOBqMWq9F7WxuX1VtT8Hsdndft/NeVSVBCrIMeB
	Od/x3MgLr8CPdC/opXmQoXUySKIH7o+WOYGezxKLykWH8cmCPClxH9nJ0uR+w8KVaV9v
	gRRw==
X-Gm-Message-State: ALoCoQmEcHISg525nboppnQH4PK6pNCUg+dOyCdqzyMljRgzqtazoa2cuzpOPRzOUndlh+yXtc6v
MIME-Version: 1.0
X-Received: by 10.58.178.115 with SMTP id cx19mr161132vec.70.1400168229370;
	Thu, 15 May 2014 08:37:09 -0700 (PDT)
Received: by 10.52.164.111 with HTTP; Thu, 15 May 2014 08:37:09 -0700 (PDT)
In-Reply-To: <cover.1399561605.git.stefan@agner.ch>
References: <cover.1399561605.git.stefan@agner.ch>
Date: Thu, 15 May 2014 08:37:09 -0700
Message-ID: <CAPhnLPBm3idkXB4dnMp1EJkRkXtZ8J9vYKEyYYffr5x2BnG16w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Agner <stefan@agner.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH v1 0/4] fixes for use with Angstrom
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
X-List-Received-Date: Thu, 15 May 2014 15:37:14 -0000
Content-Type: text/plain; charset=UTF-8

Ok, these look ok. I'll apply them and run them on dev. Expect
something tomorrow.

-b

On Thu, May 8, 2014 at 9:44 AM,  <stefan@agner.ch> wrote:
> From: Stefan Agner <stefan@agner.ch>
>
> Hi folks,
>
> We plan to make use of the Yocto Autobuilder at Toradex. I successfully
> deployed an installation, however since we distribute an Anstrom based
> BSP I had to adjust some files. With those patches and a custom layer
> configuration (not included since quite ugly) I'm able to build our BSP.
>
> Would be good to have those changes upstream. Especially the new way to
> preserve the order of builders is more generic, however maybe not yet
> perfect. I needed this especially since I build some other stuff using
> POBBC (plain old build bot configuration :-)).
>
> Just as a general question: What is planned with the autobuilder in
> general? Is there an integration planned with Toaster? As far as I can
> see, since the build directory is recreated each time, this is not
> really possible right now. It would need adjustment to the autobuilder
> to start the toaster web interface for each builder, and clean/restart
> builds in a way that doesn't interfere with Toaster. Any thoughts on
> this?
>
> --
> Stefan
>
> Stefan Agner (4):
>   GetDistroVersion.py support for Angstrom distro version
>   README: add high level overview, fix build slave description
>   master.py/botmaster.py: use builders list for builders order
>   GetDeployDir.py/PublishArtifacts.py: get deploy dir from bitbake
>
>  README                                             |  8 ++--
>  README-NEW-AUTOBUILDER                             | 11 +++++
>  .../site-packages/autobuilder/Autobuilder.py       | 17 ++++----
>  .../autobuilder/buildsteps/GetDeployDir.py         | 47 +++++++++++++++++++++
>  .../autobuilder/buildsteps/GetDistroVersion.py     |  7 +++-
>  .../autobuilder/buildsteps/PublishArtifacts.py     | 48 ++++++++++++----------
>  .../buildbot/process/botmaster.py                  |  3 +-
>  .../buildbot/status/master.py                      | 12 +-----
>  8 files changed, 106 insertions(+), 47 deletions(-)
>  create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/GetDeployDir.py
>
> --
> 1.9.0
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

