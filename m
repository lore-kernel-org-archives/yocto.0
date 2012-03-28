Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38341E00747
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 10:15:01 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Mar 2012 10:15:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="124397893"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by azsmga001.ch.intel.com with ESMTP; 28 Mar 2012 10:14:51 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 28 Mar 2012 10:14:51 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.81]) with mapi id
	14.01.0355.002; Wed, 28 Mar 2012 10:14:50 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Andy Gikling
	<agikling@lasx.com>
Thread-Topic: [yocto] Explicitly Adding Common Packages (ie Java) and
	Creating Users
Thread-Index: AQHNDM44lAos/2TyWE+Exm9ADM3lMJZ/8ITA
Date: Wed, 28 Mar 2012 17:14:49 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C451AE62D@ORSMSX101.amr.corp.intel.com>
References: <23FC35CD1508674EBB20455EB700B1B4BCE85A464B@EXMBX05.mmeprod.cbeyond>
	<1712776.fDrv18UvW5@helios>
In-Reply-To: <1712776.fDrv18UvW5@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Explicitly Adding Common Packages (ie Java) and Creating Users
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
X-List-Received-Date: Wed, 28 Mar 2012 17:15:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Andy,

Please see my comments below regarding RSE...

Thanks,
Jessica

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
Sent: Wednesday, March 28, 2012 3:33 AM
To: Andy Gikling
Cc: Zhang, Jessica; Kamble, Nitin A; yocto@yoctoproject.org
Subject: Re: [yocto] Explicitly Adding Common Packages (ie Java) and Creati=
ng Users

Hi Andy,

On Sunday 25 March 2012 21:05:02 Andy Gikling wrote:
> I'd like to ask two specific questions:
>
> Question 1:
> The ADT manual instructs you to install the Target Management (RSE)
> framework into Eclipse.  Presumably, one would want to use these tools
> to do remote debugging on their Yocto target.  Unfortunately, the
> primary vehicle to doing streamlined remote debugging with Target
> Management is to run the rseserver and this requires java.  Many of
> Yocto's base images don't come with java support (for example
> core-image-minimal).  So I set out to figure out how to add this into my =
project.  Makes sense right?
>
> I was never able build an image that contains the meta-oracle-master
> layer using the config files only.  (The documentation on how to do
> this is sparse.  Even the readme file in the layer's download is a
> one-liner on how to use it... why?)  I was able to get an image to build =
using hob though.
> When I boot the image I have two new folders now; "/usr/java/" and
> "/usr/jdk1.7.0_02/" both of which contain a "/bin" folder with "java"
> in it.
>
> The problem is I can't seem to execute any of them what-so-ever.  I
> just need to be able to call "java -version" and I just can't get er'
> to go no matter what I do!
>
> I've tried adding various locations to my $PATH and I've also tried
> navigating to the folder directly and calling "./java" to no avail.
> What folder should I expect my java executable to be in?  Why can't I use=
 it?
> The jdk is clearly there - I must be missing something very obvious.
>
> There really should be some documentation on this because Java is so
> common as it's a requirement for the tools suggested in the ADT manual.
> Documentation on this topic would fit really well with other common
> first-timer question of "How do I explicitly add a package to my Yocto
> image, such as OpenSSH, GDB, or Java?"

[JZ]

For using RSE, you don't need java for the target image, but you do need to=
 add tcf-agent which facilitate the remote communication underline RSE, on =
the host side, the tcf plugin will communicate with the remote tcf-agent fo=
r all the related remote interactions.  We have a tcf_agent recipe file whi=
ch you can use to add it to the image.



