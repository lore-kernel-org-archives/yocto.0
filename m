Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AE3114C800B9
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 12:46:50 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Jul 2011 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,526,1304319600"; d="scan'208";a="27516078"
Received: from unknown (HELO [10.255.14.33]) ([10.255.14.33])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2011 10:46:49 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 13 Jul 2011 10:46:44 -0700
In-Reply-To: <4E1DD5B8.1010406@linux.intel.com>
References: <cover.1310524088.git.josh@linux.intel.com>
	<b8158bd7aceae1fd2ade1ec15c9f508b9aeebfa0.1310524088.git.josh@linux.intel.com>
	<4E1DD5B8.1010406@linux.intel.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1310579210.2143.6.camel@scimitar>
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] local.conf.sample: add CONNECTIVITY_CHECK_URIS
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
X-List-Received-Date: Wed, 13 Jul 2011 17:46:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-13 at 10:28 -0700, Darren Hart wrote:
> 
> On 07/12/2011 07:32 PM, Joshua Lock wrote:
> > Add CONNECTIVITY_CHECK_URIS to run the network connectivity sanity test for
> > http, https and git sources.
> > 
> > Signed-off-by: Joshua Lock <josh@linux.intel.com>
> > ---
> >  meta-yocto/conf/local.conf.sample |    8 ++++++++
> >  1 files changed, 8 insertions(+), 0 deletions(-)
> > 
> > diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
> > index ea32b81..fb20f2c 100644
> > --- a/meta-yocto/conf/local.conf.sample
> > +++ b/meta-yocto/conf/local.conf.sample
> > @@ -214,3 +214,11 @@ NO32LIBS = "1"
> >  # The network based PR service host and port
> >  #PRSERV_HOST = "localhost"
> >  #PRSERV_PORT = "8585"
> > +
> > +# Use the following URI's to test whether we can succesfully fetch from the
> > +# network (and warn you if not). This test will be run each time a new build
> > +# directory is specfied, if you wish to disable it delete or comment out the
> > +# following few lines that define CONNECTIVITY_CHECK_URIS.
> > +CONNECTIVITY_CHECK_URIS = "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
> > +			   https://eula-downloads.yoctoproject.org/index.php \
> > +			   http://bugzilla.yoctoproject.org/report.cgi"
> 
> 
> Would this not be better in a distro config file? conf/distro/poky.conf
> comes to mind.
> 
> Josh pointed out that the lsb variant would then miss out - so perhaps a
> network-sanity.inc file could be included by each distro defined in a
> layer. It doesn't make sense in layer.conf as multiple layers can be
> used - but as I understand it, only a single distro is built at a time?

I was being stupid both when I submitted this patch and when we
discussed it, the poky.conf file is inherited by each of the
distributions in meta-yocto so it makes sense to define this variable
there.

> 
> I like the idea of it working by default without any requirements on
> local.conf. The user could override this variable in local.conf if they
> want, but I don't think it should be required to be there for the checks
> to work.
> 

You are entirely correct. I should also set it with ?= so it's easy to
override.

v2 patch imminent.

Thanks,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


