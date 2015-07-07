Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EA76E00957; Tue,  7 Jul 2015 14:59:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24B1DE006C6
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 14:59:37 -0700 (PDT)
Received: by obdbs4 with SMTP id bs4so138440269obd.3
	for <yocto@yoctoproject.org>; Tue, 07 Jul 2015 14:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2XFESb2sP/lPr3b/+9xXg2BQxYgs4GdPUOTxW7u5zdM=;
	b=rE6VgR7q71d17GUG70giXFIhQHlNTraAZzoKtYcUQUDImFFYqIsy0z2sngL9xUy6kd
	sjzQNoA6YcM7bWyhCsPzaCRYv3CY6uVXkXrkChx7EJfIKILSdSwM2QfTEwDgXNj4GI+7
	bXAjRDx3OxbRZ39lF+1yOVK8dKyIFJVoe74VLhK5WDI1yts/L6Sgh56EcKSzfobnycf+
	K8+aa3dVA5TSGtXPbN6geX8LVUqBTKOR4TkqIhaJvpH4gkq1ny+Nm7bLtpTBP+sx9EuM
	PqWBvJ856dNoJy6hnk7vFa5W/nOjxz957ZWArX8nnDRiDfiS/v4usbUXoydtzq2gqBJC
	hEAw==
MIME-Version: 1.0
X-Received: by 10.60.56.97 with SMTP id z1mr6595913oep.59.1436306377124; Tue,
	07 Jul 2015 14:59:37 -0700 (PDT)
Received: by 10.202.64.130 with HTTP; Tue, 7 Jul 2015 14:59:37 -0700 (PDT)
In-Reply-To: <20150707130718.GB3967@vandijck-laurijssen.be>
References: <20150707130718.GB3967@vandijck-laurijssen.be>
Date: Tue, 7 Jul 2015 14:59:37 -0700
Message-ID: <CAJ86T=WEPME4dien+V8Z80_W9eY858nULSTngRksw1tX2MswYw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Kurt Van Dijck <dev.kurt@vandijck-laurijssen.be>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: using shared state cache from other machine
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
X-List-Received-Date: Tue, 07 Jul 2015 21:59:41 -0000
Content-Type: text/plain; charset=UTF-8

Hi Kurt,

On Tue, Jul 7, 2015 at 6:07 AM, Kurt Van Dijck
<dev.kurt@vandijck-laurijssen.be> wrote:
> Hey,
>
> I started to re-use the shared state cache from a build machine.
> If I clean everything locally, I still spend time building.
> So, can everything be re-used, or only the target packages.
> How different may the build machine & may host be.
> The build machine is a (recent) ubuntu. My machine is debian squeeze+sid
> mixed version. Is that a problem?

You can try it, but no guarantees.

I have a build machine running Ubuntu 14.04 and a laptop running Linux
Mint 17.1 and I regularly rsync sstate from the build server to the
laptop without any issues (as expected, since Linux Mint uses Ubuntu
packages). The trick to avoid rebuilding all native packages is to
rename sstate-cache/Ubuntu-14.04 -> sstate-cache/LinuxMint-17.1 after
each rsync.

Digging around a little in oe-core, it looks like the directory under
sstate-cache for native packages is controlled by NATIVELSBSTRING,
which is set by lsb_distro_identifier(), which accepts an option
"adjustment hook" via LSB_DISTRO_ADJUST. You can find an example
lsb_distro_adjust hook here:

  http://git.yoctoproject.org/cgit/cgit.cgi/meta-mentor/tree/meta-mel/conf/distro/include/sstate.inc


> Kind regards,
> Kurt
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

