Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1DB2E00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:18:22 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Apr 2014 08:17:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,834,1389772800"; d="scan'208";a="518394766"
Received: from pbrannig-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.73])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2014 08:16:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Romain <romain145@gmail.com>
Date: Thu, 10 Apr 2014 16:16:29 +0100
Message-ID: <4237672.0WqBQukXvJ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <CAKfC58tJSvWfPF0OZnBgawqw7+-7FOEzOikb=Qhwtz0vJFaTWQ@mail.gmail.com>
References: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
	<2070676.utD6R3GvnO@peggleto-mobl5.ger.corp.intel.com>
	<CAKfC58tJSvWfPF0OZnBgawqw7+-7FOEzOikb=Qhwtz0vJFaTWQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: PREFERRED_PROVIDER entry in local.conf
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
X-List-Received-Date: Thu, 10 Apr 2014 15:18:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 10 April 2014 15:53:12 Romain wrote:
> On 10 April 2014 14:31, Paul Eggleton <paul.eggleton@linux.intel.com>wrote:
> > Of these, only PREFERRED_PROVIDER_sshd = "openssh" would be expected to
> > work. However, testing it locally I think there is a problem here; I'll do
> > some more investigation.
> > 
> > That said, one workaround would be to find where you have "sshd" in
> > RDEPENDS or IMAGE_INSTALL and just use the specific name (openssh-sshd) in
> > there instead. (I'm assuming this is in one of your layers or modifications
> > since we don't have runtime dependencies on "sshd" in the core itself.)
>
> I am now using "openssh-sshd" in IMAGE_INSTALL and it solved the problem.

OK great. FYI I've filed the following bug for this issue:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=6149

> For jpeg unfortunately it can't be solved like this because others recipes
> depends on jpeg. I think the PREFERRED_PROVIDER is the only solution to
> choose between jpeg and libjpeg-turbo.

So for jpeg, PREFERRED_PROVIDER_jpeg will work, since that is a build-time 
dependency / provider situation which is definitely working.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

