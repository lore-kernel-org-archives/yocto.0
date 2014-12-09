Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C6B7E0085E; Mon,  8 Dec 2014 16:33:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 869C1E00830
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 16:33:27 -0800 (PST)
Received: by mail-vc0-f177.google.com with SMTP id ij19so2614457vcb.22
	for <yocto@yoctoproject.org>; Mon, 08 Dec 2014 16:33:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=7GxyVxYLlTIjAH6IzOJFKPVvZknXL62CCgJAd5se+ik=;
	b=GQUPcfPaD+7+7Pf2tl5DZNHepE+d/EF0/W8pgpx6m8rj5bsT0HbYzD1q/vOJfGqUY+
	Ckq7UJJHD2QaWDmzQTpvDWZ6I5R79G7SnUmcNvCHGFTP1xWwS+92fGBB3JAoS7NDRr8U
	I6wC6SjOr2JglXk9/ckOtKsKdRs5S2X6grxgBnr2qPPb8+97QrD1XDFu0paEFA6qtQZ2
	ZenEWRYKFzwfBeVAbFvIIQoGd2O1irpvKvgfzQZwrqf2icTzCsyWNEyQvrgIUhsq3nQg
	JCXz/0DvFm4wSvmMcTe/jO3Q/TLqCoQ052mHGzrFwFgdre3XATYDGdo2pdr4KcQ4XPfu
	qWvw==
X-Gm-Message-State: ALoCoQnJjuRv4z/IMMrthRST5xcNUyNZB+GVU4JKe7MftM2FJJ4RTIB/Sb50FJk87Zl4uvp93CsP
MIME-Version: 1.0
X-Received: by 10.221.4.2 with SMTP id oa2mr88676vcb.17.1418085206792; Mon, 08
	Dec 2014 16:33:26 -0800 (PST)
Received: by 10.52.244.44 with HTTP; Mon, 8 Dec 2014 16:33:26 -0800 (PST)
In-Reply-To: <1417534303-20323-1-git-send-email-californialsullivan@gmail.com>
References: <1417534303-20323-1-git-send-email-californialsullivan@gmail.com>
Date: Tue, 9 Dec 2014 00:33:26 +0000
Message-ID: <CAPhnLPDvJk79rDf2jLwkezmJ=b=Me1CQh+aqhaX9BDrddUcwaw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: California Sullivan <californialsullivan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	California Sullivan <california.l.sullivan@intel.com>
Subject: Re: [PATCH 1/7] ProvisionGoogleVM.py: Initial commit
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
X-List-Received-Date: Tue, 09 Dec 2014 00:33:32 -0000
Content-Type: text/plain; charset=UTF-8

Pulled into master, thanks!

-b

On Tue, Dec 2, 2014 at 3:31 PM,  <californialsullivan@gmail.com> wrote:
> From: California Sullivan <california.l.sullivan@intel.com>
>
> This build step provisions a Google VM using the gcloud command line tool.
>
> Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
> ---
>  .../autobuilder/buildsteps/ProvisionGoogleVM.py    | 85 ++++++++++++++++++++++
>  1 file changed, 85 insertions(+)
>  create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
> new file mode 100644
> index 0000000..fb667dd
> --- /dev/null
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/ProvisionGoogleVM.py
> @@ -0,0 +1,85 @@
> +'''
> +Created on Aug 13, 2014
> +
> +__author__ = "California Sullivan"
> +__copyright__ = "Copyright 2014, Intel Corp."
> +__credits__ = ["California Sullivan"]
> +__license__ = "GPL"
> +__version__ = "2.0"
> +__maintainer__ = "Elizabeth Flanagan"
> +__email__ = "elizabeth.flanagan@intel.com"
> +'''
> +
> +from buildbot.steps.shell import ShellCommand
> +
> +class ProvisionGoogleVM(ShellCommand):
> +    haltOnFailure = True
> +    flunkOnFailure = True
> +    name = "Provision Google VM"
> +    def __init__(self, factory, argdict=None, **kwargs):
> +        self.vmname=None
> +        self.vmcount=1
> +        self.startupscript=None
> +        self.metadata=None
> +        self.zone="us-central1-a"
> +        self.image=None
> +        self.machine=None
> +        self.network=None
> +        self.disksize=None
> +        self.factory = factory
> +        self.description = "Provision Google VM"
> +        for k, v in argdict.iteritems():
> +            if type(v) is bool:
> +                setattr(self, k, str(v))
> +            else:
> +                setattr(self, k, v)
> +
> +        if self.vmname is None or self.vmname == "":
> +            self.finished(FAILURE)
> +        else:
> +            self.command = "gcloud compute instances create"
> +            self.vmnames = ""
> +            for x in range(0, self.vmcount):
> +                self.vmnames += " " + self.vmname + "-" + str(x)
> +            self.command += self.vmnames
> +            if self.zone is not None and self.zone in ["us-central1-a", "us-central1-b", "us-central1-f", "europe-west1-a", "europe-west1-b", "asia-east1-a", "asia-east1-b", "asia-east1-b"]:
> +                self.command += " --zone " + self.zone
> +            else:
> +                self.command += " --zone us-central1-a"
> +            if self.disksize is not None and self.disksize != "":
> +                self.command += " --boot-disk-size " + self.disksize
> +            else:
> +                self.command += " --boot-disk-size 200GB"
> +            if self.image is None:
> +                self.command += " --image debian-7"
> +            else:
> +                self.command += " --image " + self.image
> +
> +            if self.machine is not None and self.machine in ["g1-small", "f1-micro", "n1-standard-1", "n1-standard-2", "n1-standard-4", "n1-standard-8", "n1-standard-16", "n1-highmem-2", "n1-highmem-4"]:
> +                self.command += " --machine-type " + self.machine
> +            else:
> +                self.command += " --machine-type n1-standard-1"
> +            if self.network is not None and self.network != "":
> +                self.command += " --network " + self.network
> +            if self.startupscript is not None and self.startupscript != "":
> +                self.command += " --metadata-from-file startup-script=" + self.startupscript
> +                if self.metadata is not None and self.metadata != "":
> +                    self.command += " --metadata " + self.scriptargs
> +            self.command += " 1> /dev/null";
> +
> +            # Timeout needs to be passed to LoggingBuildStep as a kwarg
> +            self.timeout = 1000
> +            kwargs['timeout']=self.timeout
> +            ShellCommand.__init__(self, **kwargs)
> +
> +    def describe(self, done=False):
> +        description = ShellCommand.describe(self,done)
> +        return description
> +
> +    def commandComplete(self, cmd):
> +        if not cmd.didFail():
> +            self.setProperty("vmnames", self.vmnames)
> +            self.setProperty("zone", self.zone)
> +            self.setProperty("vmcount", self.vmcount)
> +
> +
> --
> 1.9.3
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

