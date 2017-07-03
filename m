Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F6B1E00A5C; Mon,  3 Jul 2017 07:02:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8E80E009C2
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 07:02:39 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jul 2017 07:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,303,1496127600"; d="scan'208";a="104008707"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.152])
	by orsmga004.jf.intel.com with ESMTP; 03 Jul 2017 07:02:36 -0700
Message-ID: <1499090555.3470.10.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Mon, 03 Jul 2017 15:02:35 +0100
In-Reply-To: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
References: <1496764011-3595-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Cc: edwin.plauchu.camacho@linux.intel.com, monserratx.sedeno.bustos@intel.com
Subject: Re: [yocto-autobuilder][PATCHv2 1/5] buildsteps/BuildImages: Setproperty BUILDIMAGES
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
X-List-Received-Date: Mon, 03 Jul 2017 14:02:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-06-06 at 10:46 -0500, Aníbal Limón wrote:
> In certain situations is need to know what images was built for
> example the DAFT executes flashing over certain image.
> 
> [YOCTO #10604]
> 
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/buildsteps/BuildImages.py |
> 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/BuildImages.py b/lib/python2.7/site-
> packages/autobuilder/buildsteps/BuildImages.py
> index 30f7a18..7262fd3 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/BuildImages.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/BuildImages.py
> @@ -146,6 +146,9 @@ class BuildImages(BitbakeShellCommand):
>                  if self.minnowExists is None or self.minnowExists ==
> "True":
>                      self.command = ". ./oe-init-build-env; bitbake "
> + bitbakeflags + self.images
>                      self.description = ["Building " +
> str(self.images)]
> +        
> +        self.setProperty("BUILDIMAGES", self.images)

Generally speaking caps case property names should only be used when
they map to a variable in OE. BuildImages would work.

> +
>          ShellCommand.start(self)
>  
>      def describe(self, done=False):

