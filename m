Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B10A7E00B8B; Thu,  3 Mar 2016 08:27:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 268C7E00B3A
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 08:27:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u23GR2wM025757
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 3 Mar 2016 08:27:03 -0800
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 3 Mar 2016 08:27:01 -0800
To: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <f9a57cb411c94c0c8f191bad3d391b35@SI-MBX1022.de.bosch.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56D865D5.2010702@windriver.com>
Date: Thu, 3 Mar 2016 10:27:01 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <f9a57cb411c94c0c8f191bad3d391b35@SI-MBX1022.de.bosch.com>
Subject: Re: How to handle meta-intel/openembedded repos with multiple developers
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
X-List-Received-Date: Thu, 03 Mar 2016 16:27:08 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 3/3/16 7:15 AM, Olsson Rikard (RBSN/ESW1) wrote:
> Hello Yocto Members,
> 
>  
> 
> My second posting, first one got great answers so hoping for two for two…
> 

I'm going to ignore the semantics of git, and just focus on general usage.

OpenEmbedded/Yocto Project is based around a concept of layers.  When you do
team work, one strategy I recommend is:

Everything use the same 'bitbake, oe-core, meta-yocto*, and other non-company
layers'.  You will have to devise a scheme to do this.  In my company, our SCM
servers (which are git) are setup as mirrors and we mirror the data regularly.
The developers are in the habit of updating to the latest version of the code
when it's convenient for their development, and always before submitting code
for review.  These non-company assets are read-only.  Local users never modify them.

Think of this as something like:

git.mycompany.com/git/external/bitbake
git.mycompany.com/git/external/oe-core
git.mycompany.com/git/external/meta-yocto
git.mycompany.com/git/external/meta-openembedded

We then have local-assets which are based on non-company layers.  This serves
two purposed -- either as a 'snapshot in time' or occasionally you have to make
a change to a community layer to fix a critical bug.  Usually you start with the
external layer, create a local branch (and make the change there.  It then
becomes someone's job to keep that local branch up to date (which is why I don't
recommend this as general practice.)

Think of this as something like:
git.mycompany.com/git/internal/bitbake
git.mycompany.com/git/internal/oe-core
git.mycompany.com/git/internal/meta-yocto
git.mycompany.com/git/internal/meta-openembedded

(We're found using data codes in the branches helps -- since when we rebase, we
also create a new datecode based on when the branch started.  Our products have
specific 'key' files that switch the branch automatically for developers.)

We then have local layers.  These are the things that developers work on
collectively.  Every company has their own review process, maintainer roles,
etc..  but effectively -all- of your changes happen in a mixture of (local)
layers such as BSP, distribution, functional or other classification.

This is the typical tree that is company, division, and/or product specific.


And finally, each developer has a -local- layer where they can put their own
local changes, such as .bbappends, new recipes, etc and try things before
merging to the 'local layers' and going through the review process.

individual developers can upload these, but they should never be treated as
official.  An SCM can make a good backup system though.  :)

> 
> I come from a git /repo background where:
> 
> * repo init -u /<URL>/ [/<OPTIONS>/]
> 
>                * Will get the manifest.xml file with the trees
> 
> * repo sync
> 
> Will download the forest to my local HDD and I am good to go.
> 

This is very reasonable.  As I mentioned above breaking the problem into
two/three parts and treating parts as RO, controlled RW, and regular development
practice helps a lot.

You may need specific mechanisms to manage branch changes and rebases, but it
all starts with updating the control file.. and getting developers to
pull/update/rebase regularly as part of their work flows.  At some point during
product development a lead/architect needs to make the decision to 'freeze'
development and at that point everything is tagged/branched and only backports
are used from them on.  (If the number of backports gets too large, you MIGHT
decide to selectively rebase.)

> 
> I am having some problem understanding how to use Yocto/Bitbake in a development
> team and using source control/CM similar to what we had before. For example all
> out team members will use:
> 
> poky
> 
> meta-intel
> 
> meta-openembedded
> 
> meta-oracle-java

Team members need to get in the habit of updating at the start of each day,
during there development day (as long as it's not disruptive), and prior to
submitting any changes for review.  (Changes must -always- be on the latest
agreed upon version.)

> …
> 
> ….
> 
> plus a few other ones. Is the idea that each developer should download these
> necessary git trees for example meta-intel/openembedded manually using git clone
> then update build/config/bblayers.conf manually? With this approach I feel that
> each developed needs to do multiple steps to setup their build environment just
> to get started.
> 

This is where OSV products and other things come into play.  Different OSVs have
different strategies for this, but generally they wrap the manual configuration
aspects using some type of a setup wrapper.  This wrapper can be configured in
different ways, but it ensures a consist configuration.

An alternative approach is to put your build/conf/*.conf files into the SCM as
well.  When you configure it, don't use any full path names, make everything
relative from the build dir... Then the typical developer experience is:

sync down all of the layers
sync down the project config
. ./oe-init-build-env <project>

everyone has the same starting point.  If there is a reason to change the
config, it can be reviewed and controlled.  everyone just resyncs those files --
and the layers as normal.

> 
> I have tried to add my own BB file and I am able to download the repo’s by
> running bitbake XXXX-meta-intel-lr
> 
> -rw-rw-r--. 1 XXX XXX 555 Mar  3 09:08 XXXX-meta-intel-lr_1.0.bb
> 
> -rw-rw-r--. 1 XXX XXX 564 Mar  3 10:47 XXXX-meta-openembedded-lr_1.0.bb
> 
> -rw-rw-r--. 1 XXX XXX 607 Mar  3 10:25 XXXX-meta-oracle-java-lr_1.0.b
> 
> And my code end up in
> tmp/work/i586-poky-linux/XXX-meta-oracle-java-lr/1.0-r0/git/ and I am then able
> to update build/config/bblayers.conf èBut this cant be the correct way to handle
> this, path might change and tmp is what the name implies, a temporary directory……..
> 

The 'tmp' directory is just that, temporary.  You should never SCM the tmp
contents.  The OUTPUT of the build, typically in tmp/deploy can be SCMed, but it
should be explicitly copied out and SCMed as a build output.  (My opinion at least).

See above for my workflows...

--Mark

> 
> For me I would like to have the necessary meta-XXXX downloaded by yocto in the
> same way repo init/sync handles it, this would allow developers to:
> 
> 1) Clone poky from local repository
> 
> 2) execute a yocto file/script (which was part of the poky clone) to download
> (no need to build anything) all the needed meta-XXXX.
> 
> 3) Update build/config/bblayers.conf (if needed) with correct paths to meta-XXXX
> 
> 4) Build
> 
> Is this possible in Yocto or do we need to wrap our development environment in
> something like repo int/sync to be able to solve this?
> 
>  
> 
> Regards
> 
> Rikard
> 
>  
> 
>  
> 
>  
> 
> 
> 


