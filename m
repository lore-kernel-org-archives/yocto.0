Return-Path: <Peter.Seebach@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3803CE011D1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 13:36:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2QKajKm016668
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 13:36:45 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 26 Mar 2012 13:36:46 -0700
Date: Mon, 26 Mar 2012 15:36:43 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120326153643.21618887@wrlaptop>
In-Reply-To: <1332609315.28414.19.camel@ted>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
	<20120323174506.5634af61@wrlaptop> <1332609315.28414.19.camel@ted>
X-Mailer: Claws Mail 3.7.8 (GTK+ 2.24.4; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: pseudo interaction issue
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
X-List-Received-Date: Mon, 26 Mar 2012 20:36:48 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Sat, 24 Mar 2012 17:15:15 +0000
Richard Purdie <richard.purdie@linuxfoundation.org> wrote:

> What puzzles me is we get this value from  envbackup[key] =
> os.environ.get("PSEUDO_PREFIX") so its already not in the environment.
> 
> So basically if we read "PSEUDO_PREFIX" from the environment we get
> nothing. If we unset the value back to being "nothing", things break.

Yes.  This is, of course, obviously impossible.

Hmm.  Well, hmm.  When we start up, we should pick up PSEUDO_PREFIX
from our environment, and during some of the initial client setup, we
should be stashing that value in our stashed values table.  At this
point, so far as I can tell, nothing should ever unset that stashed
value.

On fork(), we don't change anything until we're in the client side of
the fork, but that setup should happen in the same address space, with
the values still stashed.

I did find one other thing, though, which worries me.  I added a
popen() wrapper, and the thing is.  We're calling popen() with the
"antimagic" bit set (the one that suppresses all the wrappers).

Which would cause all sorts of problems, and I can't figure out how
it'd be happening.  So my new theory:

* There's something specific causing us to end up invoking popen()
  with the antimagic bit set.  This is obviously impossible.
* But that means that, even if we trap other syscalls made by popen(),
  we won't be doing wrappers or fixups.
* And that could expose problems to do with PSEUDO_PREFIX getting
  unset unexpectedly.

So I think adding it to BB_ENV_EXTRAWHITE will hide this, but it won't
explain how we're getting into a popen() call in antimagic mode.
(Antimagic is the internal thing pseudo uses while trying to do
client/server communications.  Pretty sure it never calls popen.)

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.

