Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1A2DE00A1A; Mon, 22 Oct 2018 06:15:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
X-Greylist: delayed 301 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Oct 2018 06:15:04 PDT
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61FA9E00826
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 06:15:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id B33506680;
	Mon, 22 Oct 2018 06:10:02 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jV5vgHFJUYDW; Mon, 22 Oct 2018 06:09:57 -0700 (PDT)
Received: from Jakobs-Air.localdomain (h-244-80.A137.corp.bahnhof.se
	[176.10.244.80])
	by smtp1.genivi.org (Postfix) with ESMTPSA id B8995667B;
	Mon, 22 Oct 2018 06:09:56 -0700 (PDT)
Message-ID: <1540213783.7688.234.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Joe Flowers <joe.flowers@nofreewill.com>, imdibene@gmail.com
In-Reply-To: <CA+4=ZENx5DtdAUMH5Paia2Sv395=yrHH+t+puHeb9jwCi2w+kw@mail.gmail.com>
References: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
	<2DE4399C-7659-49BD-AF9E-259315E5D1DD@gmail.com>
	<CA+4=ZENx5DtdAUMH5Paia2Sv395=yrHH+t+puHeb9jwCi2w+kw@mail.gmail.com>
Organization: GENIVI Alliance
Date: Mon, 22 Oct 2018 15:09:43 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Cc: yocto@yoctoproject.org
Subject: Re: SUSE SLES target OS
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
X-List-Received-Date: Mon, 22 Oct 2018 13:15:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-10-19 at 17:43 -0400, Joe Flowers wrote:
> Yes, unfortunately, I mean SLES.
> 
> Your answer implies that to create a minimal SLES build I will have to
> abandon Yocto and look for another build (or reduction) solution as I know
> this has been done by non-SUSE entities.

Hmm...  Very interesting, but strange... but interesting... question.  Makes
me wonder why you are so set on building SLES for an embedded board?
But that's not for me to second-guess.  :-)

As pointed out the family of OpenEmbedded-based systems provide their own
set of build recipes ("layers") and several different reference
distributions (with appropriate patches and so on).  

For source availability, I liked the analogy with building RHEL vs Fedora,
although on that side CentOS source distribution is available as a very
close duplicate of RHEL.  If you wanted to do something similar to meta-
debian what basis were you thinking of using in order to create your own
SLES if not OpenSUSE?  (Actually answering that would veer the thread off-
topic for the list I imagine, I'm just curious).

Related to the topic, the only similar ideas that I have seen floated in the
past involved using Debian source code with OE/Yocto build system.  I
suppose the idea for that would be that you have a strong handling of
security updates a compatible basic distro and of course a very large amount
of packages.  

I still think it's a fairly strange approach since building Debian using
Debian tooling might suffice in that case (e.g. [2]).  You might get a bit
of a larger ecosystem of available BSPs in OpenEmbedded/Yocto environment
and a few additional embedded-targeted components (but a lot are built
with fairly standard setups like cmake anyway).  It wasn't clear if you need
a lot of different hardwares or just any board like minnowboard.

I was going to link the meta-debian layer, but it seems the Linutronix
slides cover this and more alternatives, so (for those interested in the
Debian/Yocto idea I mean) just start with that slide deck (and search
GitHub).

[1] https://linutronix.de/en/open-source/vortraege.php (look for slides &
video)
[2] https://apertis.org (not Yocto)

HTH,
- Gunnar

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance



