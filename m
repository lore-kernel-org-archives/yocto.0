Return-Path: <blloyd@familyhonor.net>
Received: from mho-02-ewr.mailhop.org (mho-04-ewr.mailhop.org [204.13.248.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29D50E0047F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 09:09:53 -0800 (PST)
Received: from [98.142.68.251] (helo=lloydserv.familyhonor.net)
	by mho-02-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1TvA1I-000DCs-Hx; Tue, 15 Jan 2013 17:09:52 +0000
Received: from [192.168.0.33] ([98.142.68.251]) (authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	r0FH9nHZ017019
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO);
	Tue, 15 Jan 2013 11:09:49 -0600
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.251
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX1++S8j4RcsTfz2ll2IeMru0CHncSfB6IiM=
Message-ID: <1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: Patrick Turley <PatrickTurley@gamestop.com>
Date: Tue, 15 Jan 2013 11:09:49 -0600
In-Reply-To: <1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
X-Mailer: Evolution 3.4.4 (3.4.4-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Tue, 15 Jan 2013 17:09:53 -0000
Content-Type: multipart/alternative; boundary="=-CUUbD+0jYTrDQ2Qfvlir"

--=-CUUbD+0jYTrDQ2Qfvlir
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Or better yet, now that it is past initial, use
http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules.  :)
It worked fine for 1.2 (denzil) for me, though it is written for a later
one.

Brian

On Tue, 2013-01-15 at 11:07 -0600, Brian Lloyd wrote:

> Try this in work documentation and let us know how it helps or if
> there is something missing that would help more:
> http://www.yoctoproject.org/docs/hart/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules
> 
> I just did the exact same thing and was happy to discover there is
> support in yocto for doing just this.
> 
> Brian
> 
> On Mon, 2013-01-14 at 23:27 +0000, Patrick Turley wrote: 
> 
> > I have to build a module from a third-party that has nothing to do with Yocto.
> > 
> > I want to build this module against the kernel Yocto is giving me.
> > 
> > The Make file for this module has a build command like this:
> > 
> >     make -C $(LINUX_DIR) M=`pwd` $(ENV) \
> >         EXTRA_CFLAGS="$(EXTRA_CFLAGS)" modules
> > 
> > Obviously, this command needs to connect with either the Linux source tree or something like a "kernel-headers" package.
> > 
> > I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it. Unfortunately, I don't see a "kernel-header" equivalent in there.
> > 
> > This leads me to imagine I must point this command at some sub-tree within the Yocto output (probably under tmp/sysroots). And, if I want that tree available elsewhere, I have to package it up into a tarball and transport it.
> > 
> > Usually, Yocto is way ahead of me on these sorts of things, and there's already a graceful way to deal with this -- I just haven't figure it out yet.
> > 
> > What am I missing?
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=-CUUbD+0jYTrDQ2Qfvlir
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=UTF-8">
  <META NAME="GENERATOR" CONTENT="GtkHTML/4.4.4">
</HEAD>
<BODY>
Or better yet, now that it is past initial, use <A HREF="http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules.&nbsp;">http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules.&nbsp;</A> :)<BR>
It worked fine for 1.2 (denzil) for me, though it is written for a later one.<BR>
<BR>
Brian<BR>
<BR>
On Tue, 2013-01-15 at 11:07 -0600, Brian Lloyd wrote:<BR>
<BLOCKQUOTE TYPE=CITE>
    Try this in work documentation and let us know how it helps or if there is something missing that would help more:<BR>
    <A HREF="http://www.yoctoproject.org/docs/hart/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules">http://www.yoctoproject.org/docs/hart/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules</A><BR>
    <BR>
    I just did the exact same thing and was happy to discover there is support in yocto for doing just this.<BR>
    <BR>
    Brian<BR>
    <BR>
    On Mon, 2013-01-14 at 23:27 +0000, Patrick Turley wrote: 
    <BLOCKQUOTE TYPE=CITE>
<PRE>
I have to build a module from a third-party that has nothing to do with Yocto.

I want to build this module against the kernel Yocto is giving me.

The Make file for this module has a build command like this:

    make -C $(LINUX_DIR) M=`pwd` $(ENV) \
        EXTRA_CFLAGS=&quot;$(EXTRA_CFLAGS)&quot; modules

Obviously, this command needs to connect with either the Linux source tree or something like a &quot;kernel-headers&quot; package.

I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it. Unfortunately, I don't see a &quot;kernel-header&quot; equivalent in there.

This leads me to imagine I must point this command at some sub-tree within the Yocto output (probably under tmp/sysroots). And, if I want that tree available elsewhere, I have to package it up into a tarball and transport it.

Usually, Yocto is way ahead of me on these sorts of things, and there's already a graceful way to deal with this -- I just haven't figure it out yet.

What am I missing?

_______________________________________________
yocto mailing list
<A HREF="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A>
<A HREF="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</A>
</PRE>
    </BLOCKQUOTE>
    <BR>
<PRE>
_______________________________________________
yocto mailing list
<A HREF="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</A>
<A HREF="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</A>
</PRE>
</BLOCKQUOTE>
<BR>
</BODY>
</HTML>

--=-CUUbD+0jYTrDQ2Qfvlir--
