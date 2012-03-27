Return-Path: <Peter.Seebach@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A929E0137D
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 20:47:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2R3lAme021554
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 20:47:10 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 26 Mar 2012 20:47:11 -0700
Date: Mon, 26 Mar 2012 22:47:08 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120326224708.6371085c@wrlaptop>
In-Reply-To: <1332798316.28414.138.camel@ted>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
	<20120323174506.5634af61@wrlaptop> <1332609315.28414.19.camel@ted>
	<1332610903.28414.24.camel@ted> <20120326114405.59b3eacc@wrlaptop>
	<1332780449.28414.122.camel@ted> <20120326121816.343a5f01@wrlaptop>
	<1332798316.28414.138.camel@ted>
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
X-List-Received-Date: Tue, 27 Mar 2012 03:47:14 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Mon, 26 Mar 2012 22:45:16 +0100
Richard Purdie <richard.purdie@linuxfoundation.org> wrote:

> I'm still a little surprised we don't make any system() calls though.
> I just tried putting a os.system("true") call into the "breakit"
> class and it doesn't trigger the warnings. Could that be down to the
> lack of a popen wrapper?

I think that part could be, but this doesn't explain why adding the
popen() wrapper doesn't fix it.  Oh, wait.  Yes, it does.  I think I am
now happy with this, although I have a loose end or two.

So, here's what I've figured out.

We start bitbake with PSEUDO_PREFIX set.  This then gets stored in the
internal stash.  Thus, on any call we catch, we should be restoring it.
We then unset it, because it's not part of the whitelisted environment.

Now, what this means is that when we spawn child processes, they should
be getting the environment, but the parent bitbake is running with
PSEUDO_DISABLED.  Which, in turn, sets antimagic.  So most calls run
through their non-wrapped form.

The problem:  I wrote my popen() wrapper wrong.  See, I carefully
removed the check for pseudo_disabled from the top of it.  But!  That
code path is not actually the only way in which pseudo_disabled affects
behavior.  That's just an *OPTIMIZATION*.  The pseudo_disabled flag
also means that antimagic is set, and I copied that part of the wrapper
in unmodified:

        if (antimagic > 0) {
                /* call the real syscall */
                rc = (*real_popen)(command, mode);
        } else {
                /* exec*() use this to restore the sig mask */
                pseudo_saved_sigmask = saved;
                rc = wrap_popen(command, mode);
        }

And antimagic is 1, so I call real popen.  Which forks.  And even
though pseudo isn't in the LD_PRELOAD environment variable, it's still
in the process's address space, but PSEUDO_PREFIX isn't set, and for
some reason, the stashed value is missing.  Not sure I can explain that
part yet; maybe we do have a path where we wipe the stashed value.

But the underlying problem is that my popen() wrapper was never
actually doing the setupenv/dropenv, or just a setupenv.

And the other underlying problem is that calling os.popen() directly is
probably something we should discourage, because we really do want to
know, for each subprocess we plan to spawn, whether it is running in
the pseudo environment or not.  So if you call os.popen(), you get
"whatever state bitbake is in", which may not be at all what you wanted
or intended.

If I fix the popen() patch, it may actually start working again,
although I'm still not totally sure why the prefix is getting wiped out.

So... I think...

1.  We should probably whitelist PSEUDO_PREFIX because life is a heck
of a lot easier if we aren't trying to set it and unset it all the time.
2.  I need to fix my popen patch.
3.  Once I've fixed that, I can probably do a much better job of
articulating what's happening to pseudo_prefix that's causing us to end
up with a child process where both the internal stash and the
environment variable are unset.

The big thing I was missing was that PSEUDO_DISABLED implies that
everything will always have antimagic >= 1.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.

