Return-Path: <carlo.caione@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05350E016AB
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 00:20:33 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ik5so2282756vcb.21
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 00:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HYYXIyTnldW7BxjGkeVXwirWstWHdnkDyqVN5wXQbbg=;
	b=X/Mk05xCgCAH8SYnHdvTX/5sq7MPyQhcXJARd2gVQ77Z7ylK16dH0JVvQjdjRUvb/p
	Pqbu+UCEFKaxX7pxWJphlvdB2+3Pd20oYW+ALIZ9U+zA/C2ZVP755EKGHem2uM55diqY
	mpYmzCiGU88DDkDsof4Td9pr9vm9c+qK5pE6rwYHVE1nPcpDYQrvNpXcxMCRbfXQNWqL
	HDZu7KKNNyS089MZextxjnt4JHE7A4ePD8tORjOOusIm4k3CWFbSXHOgr1FvO7ABqfsL
	/jeK6il5UDiPmH5G5Ul8mRRazraSG/KgBp2pE+EKDi6QxCPOUotRD6uVqfUXlpqF2iBL
	Ka2A==
MIME-Version: 1.0
X-Received: by 10.58.46.171 with SMTP id w11mr5679712vem.5.1381735232784; Mon,
	14 Oct 2013 00:20:32 -0700 (PDT)
Received: by 10.220.58.198 with HTTP; Mon, 14 Oct 2013 00:20:32 -0700 (PDT)
In-Reply-To: <525487FF.6070608@windriver.com>
References: <CAOQ7t2bMdc5Wqeb0_b7M+wBCgVv6LtrEHpLfN5YS5Kgk-y=_mw@mail.gmail.com>
	<1381270579.26156.36.camel@dvhart-mobl4.amr.corp.intel.com>
	<525487FF.6070608@windriver.com>
Date: Mon, 14 Oct 2013 09:20:32 +0200
Message-ID: <CAOQ7t2bCSwAWSNcgXmp5bYnz=EDp-g-aKj8MTERNkFKypCtoaw@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: Re: do_kernel_configme error with poky-tiny distro
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
X-List-Received-Date: Mon, 14 Oct 2013 07:20:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Oct 9, 2013 at 12:32 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
>
> That's pretty much the only way to reproduce things, since i also built
> all the tiny boards against 3.10 while introducing the support .. so I
> know it works.
>
> I can say that:
>
>
>
> `/home/carlo/work/RSR/yocto/build/tmp/work/qemux86-poky-linux/linux-yocto-tiny/3.8.11+gitAUTOINC+8482dcdf68f9f7501118f4c01fdcb8f851882997_dd089cb5ba37ea14e8f90a884bf2a5be64ed817d-r4.1/linux-qemux86-tiny-build/.tmp.config*':
>  No such file or directory
>
> Typically means that there was an error in a config, or the wrong kern-tools
> were used.
>
> I've got a set of changes already queued for 1.6 that would improve the
> error message here, but if we can reproduce this problem, we can fix it.

Sorry for the late reply. The problem was in my local repo (I was
experimenting with scripts and such).

Sorry again for wasting your time.

Best,

--
Carlo Caione

