Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1297CE0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 12:36:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VJZwvX011087;
	Wed, 31 Aug 2011 20:35:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10560-08; Wed, 31 Aug 2011 20:35:54 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VJZnZj011081
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 31 Aug 2011 20:35:51 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <1314818512.2284.0.camel@scimitar>
References: <cover.1314288840.git.josh@linux.intel.com>
	<0ca0975a1895796bc921a9340897220ba77581af.1314288840.git.josh@linux.intel.com>
	<1314818512.2284.0.camel@scimitar>
Date: Wed, 31 Aug 2011 20:35:36 +0100
Message-ID: <1314819336.5939.493.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] poky.conf: perform network sanity check by default for poky distros
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
X-List-Received-Date: Wed, 31 Aug 2011 19:36:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-31 at 12:21 -0700, Joshua Lock wrote:
> On Thu, 2011-08-25 at 10:15 -0700, Joshua Lock wrote:
> > Add CONNECTIVITY_CHECK_URIS to run the network connectivity sanity test for
> > http, https and git sources.
> > 
> > The variable is soft-assigned so that it's easily overrideable.
> > 
> > Signed-off-by: Joshua Lock <josh@linux.intel.com>
> > ---
> >  meta-yocto/conf/distro/poky.conf |    7 ++++++-
> >  1 files changed, 6 insertions(+), 1 deletions(-)
> > 
> > diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> > index c5fc3b9..46b22f4 100644
> > --- a/meta-yocto/conf/distro/poky.conf
> > +++ b/meta-yocto/conf/distro/poky.conf
> > @@ -54,5 +54,10 @@ ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
> >  http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
> >  https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"
> >  
> > -
> > +# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
> > +# fetch from the network (and warn you if not). To disable the test set
> > +# the variable to be empty.
> > +CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
> > +                          https://eula-downloads.yoctoproject.org/index.php \
> > +                          http://bugzilla.yoctoproject.org/report.cgi"
> >  
> 
> Any feedback on this patch?

Merged to master, thanks.

(it had slipped out the queue somehow, sorry)

Richard 


