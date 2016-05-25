Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B055BE00D6E; Wed, 25 May 2016 14:03:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_QUOTING autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  0.0 WEIRD_QUOTING BODY: Weird repeated double-quotation marks
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F773E00D5C
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 14:03:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2016 14:03:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,365,1459839600"; d="scan'208";a="984714404"
Received: from bitbang.jf.intel.com (HELO [10.7.199.60]) ([10.7.199.60])
	by orsmga002.jf.intel.com with ESMTP; 25 May 2016 14:03:44 -0700
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
References: <1464208089-6911-1-git-send-email-william.c.randle@intel.com>
From: Randy Witt <randy.e.witt@linux.intel.com>
Message-ID: <c14a55a9-6398-8fb5-4aaf-9ef611c2d376@linux.intel.com>
Date: Wed, 25 May 2016 14:03:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <1464208089-6911-1-git-send-email-william.c.randle@intel.com>
Subject: Re: [yocto-autobuilder][PATCH] GetLayerVersion.py: set new layer version only if cmd was sucessful and not already set
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
X-List-Received-Date: Wed, 25 May 2016 21:03:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/25/2016 01:28 PM, Bill Randle wrote:
> Fixed a bug where GetLayerVersion set the layerversion to -1 when a
> meta-poky layer.conf was not found.
>
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  .../autobuilder/buildsteps/GetLayerVersion.py             | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
> index de5c203..3f167e8 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
> @@ -44,15 +44,12 @@ class GetLayerVersion(ShellCommand):
>          ShellCommand.start(self)
>
>      def commandComplete(self, cmd):
> -        result = cmd.logs['stdio'].getText()
> -        layerv= result.replace("LAYERVERSION_" + self.layerfile, "").replace("=","").replace(' ','').replace('"','').replace("'",'').strip()
> -        if cmd.didFail():
> -           layerv = "-1"
> -        if self.getProperty('layerversion_' + self.layerfile):
> -            self.finished(SUCCESS)
> -        else:
> -            self.setProperty('layerversion_' + self.layerfile, layerv, "Setting Layer Version")
> -            self.finished(SUCCESS)
> +        if not cmd.didFail():
> +            result = cmd.logs['stdio'].getText()
> +            layerv = result.replace("LAYERVERSION_" + self.layerfile, "").replace("=","").replace(' ','').replace('"','').replace("'",'').strip()
> +            if not self.getProperty('layerversion_' + self.layerfile):
> +                self.setProperty('layerversion_' + self.layerfile, layerv, "Setting Layer Version")
> +        self.finished(SUCCESS)

What happens if the command actually failed?
>
>      def getText(self, cmd, results):
>          return ShellCommand.getText(self, cmd, results)
>


