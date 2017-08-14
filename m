Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB9FBE00CCB; Mon, 14 Aug 2017 12:37:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3900E00B8D
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 12:37:09 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id AEDF61622;
	Mon, 14 Aug 2017 12:37:08 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3LnUgtjcwfv; Mon, 14 Aug 2017 12:37:03 -0700 (PDT)
Received: from linuxlap.zyxel.com (c83-248-212-222.bredband.comhem.se
	[83.248.212.222])
	by smtp1.genivi.org (Postfix) with ESMTPSA id 74AD01620;
	Mon, 14 Aug 2017 12:37:02 -0700 (PDT)
Message-ID: <1502737813.26251.119.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Russell Peterson <bluehills7@comcast.net>, yocto@yoctoproject.org
In-Reply-To: <CC06751E-FB4C-46CE-8127-6344F8B00D96@comcast.net>
References: <CC06751E-FB4C-46CE-8127-6344F8B00D96@comcast.net>
Organization: GENIVI Alliance
Date: Mon, 14 Aug 2017 21:10:13 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Subject: Re: release management
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
X-List-Received-Date: Mon, 14 Aug 2017 19:37:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


Hey Russell

I don't claim to be an authority on best practices but I will share some
thoughts.

On Sun, 2017-08-13 at 06:58 -0400, Russell Peterson wrote:
> Hello.
> 
> As I learn more about yocto and more importantly gain practical experience
> with it I have started to think about my release structure.  Is there a
> “best practices” document or something like that that speaks to this?
> For example, how does everyone deal with “external” meta layer
> dependencies?  My software uses poky and meta-openembedded, of course.  

We simply use a parent project [1] that includes git submodules, one per
yocto layer.  I'm of the opinion that if git (only) can be used, why
introduce other tools?   But it requires you to learn and master that
feature.

For the primary layer that is unique to this project, meta-genivi-dev, we
later on decided to merge it into the parent git repository instead, but
keep all other layers as submodules.  Since there are frequent changes to
the primary layer, it reduces the complexity of having to update a submodule
for them continuously.  But the purpose is also to keep *only* unique things
there, and thereby such things that are reusable by others will be naturally
pushed to the other layers (those that are reusable, and therefore should be
separate repos).

There's a natural tradeoff between layers being developed independently (and
widely reused by other projects), vs. the complexity of hacking on your
project.

Other projects use Google's "repo" tool but I have yet to understand what
that adds compared to git-submodules (in a medium sized project at least),
other than just additional hoops to jump through.

> It also relies on some recipes in meta-linaro and meta-virtualization.  I
> suspect there will be more as time goes by.  I have tweaked my layer
> priorities as well as used BBMASK to avoid unwanted bbappend files etc…
> works but seems slightly clunky… still better than duplicating recipes in
> my meta layer I think.

I think you've got it.  Those are the tools you have.  I haven't found too
frequent needs to mask away that which is provided by other layers, but it
depends on your needs...

> 
> Also… I quickly came to the conclusion that “thou shall not modify poky or
> meta-openembedded”.  
> That is, ALWAYS use bbappend files instead of modifying external layers.  

Absolutely that's the Yocto way.  But .bbappends are a kind of patches,
so who's to say what is right or wrong?  Some people might think that git is
actually a better tool to keep track of local modifications - keeping those
on branches that can be efficiently diffed and merged when upstream changes.

But clearly most Yocto proficient developers will be used to a .bbappend
based workflow, and I would wager that you will be better received with any
support questions than if you say "I have made my own branch of poky/meta-
oe).  Strictly speaking the two option ought to be equivalent, but I'm just
guessing it will still be perceived differently.  Yocto devs might agree or
disagree.


> If I think that poky or some other layer has a recipe bug or want to
> change something in poky, for example, I plan to upstream a fix to the
> project and when that becomes available I rebase my poky and remove the
> bbappend from my meta layer. 

> One thing about modifying poky and not using bbappend files is that I
> would then need to ship patches for poky instead of just directing users
> to to use this branch and this commit for release x.y.z.

You're not really asking a question here - just drawing the standard open-
source process conclusions.  I for one agree with you.  Use bbappends.  Talk
to the upstream.  Always second-guess why you need to change anything at
all.  Then if the appends become very complex, consider if finally
overriding with a new .bb file fits better.  

In our policy that I will describe further (below) we also mostly prefer the
more explicit separate bbappend files that by virtue of having its own path
location can be selectively included or not included in the local.conf for
different project variations.  This feels less magical than having various
hardware-specific overrides and other deeply embedded tweaks.  But there's
not 100% right or wrong here -- it's clearly a case of use the right tool
depending on the situation.

> 
> Comments and suggestions welcome.

In the GENIVI community we decided on a quite specific organization for
layer modifications / bbappends.  I have been meaning to write an email to
gather community feedback on it, but it's better done in a separate thread I
think.

Best Regards
- Gunnar

[1] https://github.com//GENIVI/genivi-dev-platform

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance


> 
> Regards,
> 
> Russell
> 
> 
> 
> 


