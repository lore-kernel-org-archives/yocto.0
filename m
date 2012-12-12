Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF2F8E00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:53:51 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:45481 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TisNK-00036R-Tq; Wed, 12 Dec 2012 14:53:51 -0500
Date: Wed, 12 Dec 2012 14:53:47 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tim Bird <tim.bird@am.sony.com>
In-Reply-To: <50C8DE31.6000703@am.sony.com>
Message-ID: <alpine.DEB.2.02.1212121448150.13689@oneiric>
References: <alpine.DEB.2.02.1212121421340.13445@oneiric>
	<50C8DE31.6000703@am.sony.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: might it be worth explaining BBMASK more comprehensively?
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
X-List-Received-Date: Wed, 12 Dec 2012 19:53:51 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 12 Dec 2012, Tim Bird wrote:

> On 12/12/2012 11:27 AM, Robert P. J. Day wrote:
> >
> >   a bit more pedantry, but is there a more complete example of the use
> > of BBMASK than the trivial example in the ref and dev manuals?
> >
> >   the ref manual provides this example by way of explanation:
> >
> > BBMASK = ".*/meta-ti/recipes-misc/"
> >
> > well, ok, except you occasinally find slight variations like:
> >
> > BBMASK = "meta-ti/recipes-misc/"
> >
> > or
> >
> > BBMASK = "meta-ti/recipes-misc"
> >
> >   given that there are places where a trailing slash is significant,
> > are all of the above exactly equivalent?  if so, that's worth noting.
> >
> >   also, what about an example showing masking out a couple
> > directories, or perhaps a single recipe from a layer, and so on?  at
> > the moment, the manuals suggest you can mask multiple recipes but
> > nowhere do i see the reader being given an actual example of how to do
> > that.
>
> Indeed.  These would be good clarifications.  The manual says that
> this is a single python regular expression.  Hence, when masking multiple
> directories or recipes, you use a vertical bar to separate the regex fragments.
>
> Here's a particularly complex case I used once:
> BBMASK = "meta-ti/recipes-misc|meta-ti/recipes-ti/packagegroup"
> BBMASK .= "|.*meta-oe/recipes-support"
> #BBMASK .= "|.*openldap"
> #BBMASK .= "|.*opencv"
> #BBMASK .= "|.*lzma"
> BBMASK .= "|meta-oe/recipes-core/packagegroups"
> BBMASK .= "|meta-oe/recipes-devtools"
> BBMASK .= "|meta-oe/recipes-extended"
> BBMASK .= "|meta-oe/recipes-multimedia"
> BBMASK .= "|meta-oe/recipes-navigation"
> BBMASK .= "|meta-oe/recipes-connectivity"
> BBMASK .= "|meta-oe/recipes-graphics"
> BBMASK .= "|meta-oe/recipes-qt"
>
> I don't know if the .= with leading bar is the optimal
> way to append on to BBMASK, but it seems fairly straightforward
> to me.  I sometimes use the leading ".*" and sometimes not.

  it doesn't seem like the leading ".*" makes any difference but
that's the sort of detail that might confuse a reader and should be
explained.

> In my setup it seems to not be required, but maybe for flexibility
> it should be used.  I'm not sure -- it would depend on wheter
> python re.match or re.search is used for the regex.

>  -- Tim

from your examples above, is this how you mask individual software
recipes?

  BBMASK .= "|.*openldap"

that's kind of useful to know.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

