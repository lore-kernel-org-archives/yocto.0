Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E093E00887; Thu,  6 Apr 2017 07:38:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9084CE007BA
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 07:38:33 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 43125265757
Message-ID: <1491489509.25991.58.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Thu, 06 Apr 2017 16:38:29 +0200
In-Reply-To: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
References: <CAHrosF_fjd8v_L8iKSR3kt3OEBnUy_h-pArG4LvQ8dPkpUWpdQ@mail.gmail.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Local repo no network help request
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
X-List-Received-Date: Thu, 06 Apr 2017 14:38:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-04-05 at 19:57 -0700, Matthew Phillips wrote:
> Hi all,
> 
> I am trying to do the following:
> 
> I have a local git repo, pulled manually from a remote repo (via a script).
> I have a .bb file set up referencing this repo. This .bb file includes
> (among other things):
> 
> > > SRC_URI = "git://${TOPDIR}/../sources/my-repo;protocol=file;branch=master"
> > > SRCREV = "${AUTOREV}"
> 
> I do not want to use the network (so BB_NO_NETWORK is 1).
> 
> Although the SRC_URI is pointing to the correct path, the yocto build
> fails because it tries to access the network.
> 
> How should I be doing this instead?

Can you use network features with ssh on localhost ?
Why don't you create tarball for delivery and cross compile for development?

> 
> I can run a script (preferably bash atm) before the build if doing
> something pre-build will help simplify anything.
> 
> Thank you,
> M

