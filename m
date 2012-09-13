Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1613E00346
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 22:31:00 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1950604eek.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 22:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ioREvTzo+9HZOuZFF3WdeVTBvg3JPeGnJzDLjJfIH80=;
	b=WshkWFE1DC6iEcaAZWrDscM5jMJS6X0Rutb3sRAbvTV8sbRv/X8rXkUR5L4+gmLaqV
	VYhkU3R82sCEktKrEmv7c7lV8e2gSi7cNDBtTLH1nPMoKMQLUFVmGPjUeHkkPS/2SnPz
	76nIicpP/qLWWyzS/e1QDOclPD9rPhIqLkxNe1Ti0llfRzHWs5DfIHGxJocHV+S02Hb/
	egW2zdER6+3qp9MGJMSNXyjrOMchgTHmUlhD4+0PzrfwJQob9eJVIQGeNXh+yR5LNWMw
	5t/ypTl7czAs6oqpPY8nmZDMowWFDydQtQMq+cdBt/0xUjif44q98GnzwmzwchsDshwX
	a0EA==
Received: by 10.14.202.66 with SMTP id c42mr974329eeo.35.1347514259890; Wed,
	12 Sep 2012 22:30:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Wed, 12 Sep 2012 22:30:29 -0700 (PDT)
In-Reply-To: <1347433590-8481-16-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-16-git-send-email-b19537@freescale.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 12 Sep 2012 22:30:29 -0700
Message-ID: <CAMKF1spEpA6UXYu=wafBQj0y=BgQOmd5Lor82hCCGf-14AoypQ@mail.gmail.com>
To: b19537@freescale.com
Cc: yocto@yoctoproject.org, Chunrong Guo <b40290@freescale.com>
Subject: Re: [meta-fsl-ppc 16/16] udev: do not automount block devices
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Sep 2012 05:31:01 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 12, 2012 at 12:06 AM,  <b19537@freescale.com> wrote:
> -FILEXTRAPATHS_prepend := "${THISDIR}/files:"
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

this would mean that if someone is using meta-fsl-ppc with some other
distro as a machine layer then it would also change udev's behavior
for non fsl machines. IIUC this is only needed for fsl
machines then it should use that override.

