Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE0CE00283
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 10:10:17 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 08 Aug 2012 10:10:09 -0700
Received: by pbcxa7 with SMTP id xa7so1772299pbc.25
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 10:10:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=YHdEUXPojgZJO6xfri1IrVmeUE0sJbgUfIBLjk1XGNU=;
	b=X90YiCoOLln54P1pa7vLJdTrx1AHR2yhtQgRfmfEJYvE+6A85dq4sBBl3t8cetwB03
	aWylmrOhNZ5KSZ8tw6LzhfgZLBscGaSrE4IFSF1e52elS4DAvB1/1XUHh2eRNyN91vIV
	Z+Gxh73BASkH48MnI75Psvpjm6h1BBgWz5+RsFFGrn+2+jYqR0eTcoTNM1NiM03w3iNF
	Qi1Fuwim/z5IryyCERYg793hqX67/7P2mzg9MteiVpwHbOcl2QiEi+F45Uo3YG9imwmT
	ebjTlDJcM7xCWodgryfCyeflxOU/nk0soy86OpCzBuJdE10wsUFYs1O12/aU4yFKNcsX
	gfOg==
Received: by 10.68.226.6 with SMTP id ro6mr23202123pbc.115.1344445809069;
	Wed, 08 Aug 2012 10:10:09 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id vd4sm10312912pbc.41.2012.08.08.10.10.08
	(version=SSLv3 cipher=OTHER); Wed, 08 Aug 2012 10:10:08 -0700 (PDT)
Message-ID: <50229D6F.8010801@intel.com>
Date: Wed, 08 Aug 2012 10:10:07 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANsUPaNSFsapsHbjxcBvjDi4Yo-8eJ1trLDvycKLBX9m4RDNSg@mail.gmail.com>
In-Reply-To: <CANsUPaNSFsapsHbjxcBvjDi4Yo-8eJ1trLDvycKLBX9m4RDNSg@mail.gmail.com>
X-Gm-Message-State: ALoCoQkpBmtFsupb7GHj6EkJ+zCzh0czFLKBCz60okeT3MdFC2yz7O98d5Oka75g8fUekWaHYkEk
Subject: Re: Custom splash screen using psplash
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
X-List-Received-Date: Wed, 08 Aug 2012 17:10:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/08/2012 08:13 AM, Giovanni Foiani wrote:
> Hi,
>
> I need to setup a custom splash screen replacing the Yocto logo with a
> custom image.
> I generated my logo using make-image script into psplash screen and
> replaced the previous one in meta/recipes-core/psplash/files folder.
> Then I run
>
>   * bitbake psplash -c cleansstate
>   * bitbake psplash
>
> and then generate a new image, but during boot I still see the Yocto logo.
> Which is the right procedure?
> Does the my custom logo (a png image) have some requirements (i.e. size,
> colors, etc..)?

Did you re-generate the image too?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

