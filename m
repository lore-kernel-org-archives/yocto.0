Return-Path: <BATV+53ef477e94675cf97a0f+2614+infradead.org+hohndel@canuck.srs.infradead.org>
Received: from canuck.infradead.org (canuck.infradead.org [134.117.69.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3448D4C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 16:59:05 -0500 (CDT)
Received: from localhost ([127.0.0.1] helo=x201s.gr8dns.org)
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P8gga-0001cg-Cs; Wed, 20 Oct 2010 21:59:04 +0000
Received: by x201s.gr8dns.org (Postfix, from userid 500)
	id D1A82AC4DA; Wed, 20 Oct 2010 10:02:21 -0700 (PDT)
From: Dirk Hohndel <hohndel@infradead.org>
To: Richard Purdie <rpurdie@linux.intel.com>, yocto <yocto@yoctoproject.org>
In-Reply-To: <1287580041.16386.145.camel@rex>
References: <1287580041.16386.145.camel@rex>
User-Agent: Notmuch/0.3.1-105-g45d00c2 (http://notmuchmail.org) Emacs/23.2.1
	(x86_64-redhat-linux-gnu)
Date: Wed, 20 Oct 2010 10:02:21 -0700
Message-ID: <m3zku8x0f6.fsf@x201s.gr8dns.org>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hohndel@infradead.org> by
	canuck.infradead.org See http://www.infradead.org/rpr.html
Subject: Re: Release checklist
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 21:59:05 -0000
Content-Type: text/plain; charset=us-ascii

On Wed, 20 Oct 2010 14:07:21 +0100, Richard Purdie <rpurdie@linux.intel.com> wrote:
> Coming up to launch there are going to be some technical things that
> need to be done, I'm aiming to write these down and assign owners so we
> remember them all and that they all happen:
> 
> * Remove password protection from yoctoproject.org (sub)domains [RP]
> * Swap default site redirection and name for lists.* and wiki.* [RP]
> * Make meta-demo public [RP]
> * Remove password protection from autobuilder [ScottG]
> * Upload final version of the eclipse plugin [Jessica]
> * Upload final Yocto release images and tarballs [???]

While not exactly technical, these should be tracked as well:

* post announcement email to LWN [RP or DH]
* post announcement email to... (where else?)
* prior to announcement distribute Q&A inside Intel [TE]

> What date and time are we going to actually do these things?

- We should open everything up 4pm UK time on Wednesday
- Post announcements AFTER dinner (so 8pm UK time)

/D

