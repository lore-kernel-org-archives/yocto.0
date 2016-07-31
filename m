Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EB9AE01076; Sun, 31 Jul 2016 12:54:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD8A5E01083
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 12:54:02 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id s63so130236711qkb.2
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 12:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GanfqRlLM9o1Dj+rrlgvLBOdRhLWLG2IvuZH19TM2OI=;
	b=OtG7Ybk9fCwhagCL4MD3oVLL2xu5bSaAWHMA4srKtlsIm8hqjzOubioteU+3N8n5br
	gX10nPacwVC+YwT4Kbjyq3qP0Ma3ETjV3W4zTN4zlEmzYrrnEhgs/XTRp6thNju2jzZ3
	mtaU4BQIbUrE9KBL6bxseFsAhYdSZLEQGPTihgjSw+kKZxna2nDkTGD4HeMt9t7sOajd
	QjTYp57w8lf6x2lukZ+bigEX2rbpJVlkAYT/b4c6TDCW/3co9PwQgl9lwHiWKubUtU5E
	Ud3ohgOM6NUpZdbDdczqrlbY4Uvg8nI164wu12X/dHN6YAGnT1+d5xN0jHhtYzCZvSgr
	PY6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GanfqRlLM9o1Dj+rrlgvLBOdRhLWLG2IvuZH19TM2OI=;
	b=h4pLknziN6dwKPjDFTEVp/pjx7fiQK6SXFB3Z2+6hH3Vcz+i8WwY1KddQfbADCc2Ml
	4HK7JLutxddWmjcfQIrjNc04nIJ5y5/OJ5E1YV2Tz/ewIGHkbuFLXaL4ZjB0PZtAdJO4
	UFi1554q7UYksWCx4DXOI3bG2OY+KsK/0fpOeLO6sIHkx9AY3DfoFR4fqYaqnWADvZDA
	jOr8S8DympdjSU/VsvP/x0GfFpBe8y0YPfkbz3T7tjYy8NxDKJ5rbd5mwo9AX0pzQtIb
	01+5Jtg/B+6+sCJ8nztVMoq/LCGAk3jmMzKP5xEBcBicx0/SACaCaZ6c13PzE7+6kbZE
	w5qA==
X-Gm-Message-State: AEkooutw+afjE7OcRevZlxj0tlpKW5vM91USI1f73g7B441yMObt1aHuKoleV9uAyFEYZiTuCL1GejNETS8OGw==
X-Received: by 10.55.178.195 with SMTP id b186mr59079194qkf.81.1469994842040; 
	Sun, 31 Jul 2016 12:54:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Sun, 31 Jul 2016 12:54:01 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Sun, 31 Jul 2016 12:54:01 -0700 (PDT)
In-Reply-To: <20160731185459.GC29087@resin.home>
References: <20160721080236.0ed7287e@nuc.betafive.co.uk>
	<001e01d1e366$2908ffc0$7b1aff40$@neuf.fr>
	<543dea85-f500-9551-12f2-25bc718b47d2@elfin.de>
	<CAMKF1srbdtSSthhR0mBq_Lfz=O14oANhnvwJjzRFFGSxPtVBLw@mail.gmail.com>
	<20160731185459.GC29087@resin.home>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 31 Jul 2016 13:54:01 -0600
Message-ID: <CAMKF1sqS=BWF-69Jri+cPouw+skdzts5bEfqjKLTdCDWKW=M3A@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] linux-raspberrypi versions
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
X-List-Received-Date: Sun, 31 Jul 2016 19:54:18 -0000
Content-Type: multipart/alternative; boundary=94eb2c06ee0461b1bc0538f3d8e0

--94eb2c06ee0461b1bc0538f3d8e0
Content-Type: text/plain; charset=UTF-8

On Jul 31, 2016 12:55 PM, "Andrei Gherzan" <andrei@gherzan.ro> wrote:
>
> On Fri, Jul 22, 2016 at 07:07:07AM -0700, Khem Raj wrote:
> > On Fri, Jul 22, 2016 at 12:03 AM, piotr.lewicki <piotr.lewicki@elfin.de>
wrote:
> > > Hi all,
> > >
> > > I also think that's a good idea. In my opinion we should at least make
> > > latest LTS (4.4) the default kernel and try to add latest mainline.
> > >
> > > Probably the "proper way" of dealing with the issue is using
branches. This
> > > way (as it is in oe-core): jethro would have kernel 3.18 and 4.1,
krogoth
> > > would have 4.4 and 4.1 and master would only have 4.4 and latest
mainline.
> >
> > 4.1 is also LTS, So it should be kept along with 4.4 until next LTS
>
> I'm 100% on removing < 4 and keep 4.4 default along with LTS 4.1 and the
> current tip.
>

Good so we are on same page. I have staged patches for this too.

> >
> > >
> > > Don't you think that it would be a good idea to create some "quasi"
krogoth
> > > branch out of what is on master and then cleaning the master (e.g.
removing
> > > kernel 3.18 and 4.1) ?
> > >
> > >
> > > BR,
> > >
> > > Piotr
> > >
> > >
> > >
> > > On 21.07.2016 17:39, Herve Jourdain wrote:
> > >>
> > >> Hi Paul,
> > >>
> > >> I had the same line of thoughts...
> > >> I believe 3.18 should be dropped, maybe even 4.1, default to 4.4, and
> > >> maybe
> > >> add 4.7 to the mix, since 4.7 seems to be where the bulk of the work
is
> > >> done
> > >> now.
> > >>
> > >> Herve
> > >>
> > >> -----Original Message-----
> > >> From: yocto-bounces@yoctoproject.org
> > >> [mailto:yocto-bounces@yoctoproject.org]
> > >> On Behalf Of Paul Barker
> > >> Sent: jeudi 21 juillet 2016 09:03
> > >> To: yocto@yoctoproject.org
> > >> Subject: [yocto] [meta-raspberrypi] linux-raspberrypi versions
> > >>
> > >> Hi all,
> > >>
> > >> I'm planning to look at the linux-raspberypi recipes once I've had
time to
> > >> send V2 of my u-boot patches. I'd like to know people's thoughts on
the
> > >> available kernel versions in the meta-raspberrypi layer:
> > >>
> > >> Is anyone still using the linux-raspberrypi 3.18 recipe? The commit
> > >> referenced in SRCREV is from June 2015. I think it's probably time to
> > >> retire
> > >> this unless anyone has a reason to keep it around.
> > >>
> > >> Is there any reason to keep linux-raspberrypi 4.1 as the default
recipe?
> > >> The
> > >> last commit to the 4.1 branch was in April and the default branch on
the
> > >> linux-raspberrypi GitHub repository has been
> > >> 4.4 since then. I think we should change the default version to 4.4
unless
> > >> there's a good reason not to.
> > >>
> > >> If there's no objections I'll send a couple of patches to drop 3.18
and
> > >> change the default to 4.4.
> > >>
> > >> Thanks,
> > >> Paul Barker
> > >> --
> > >> _______________________________________________
> > >> yocto mailing list
> > >> yocto@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/yocto
> > >>
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Andrei Gherzan

--94eb2c06ee0461b1bc0538f3d8e0
Content-Type: text/html; charset=UTF-8

<p dir="ltr"></p>
<p dir="ltr">On Jul 31, 2016 12:55 PM, &quot;Andrei Gherzan&quot; &lt;<a href="mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, Jul 22, 2016 at 07:07:07AM -0700, Khem Raj wrote:<br>
&gt; &gt; On Fri, Jul 22, 2016 at 12:03 AM, piotr.lewicki &lt;<a href="mailto:piotr.lewicki@elfin.de">piotr.lewicki@elfin.de</a>&gt; wrote:<br>
&gt; &gt; &gt; Hi all,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I also think that&#39;s a good idea. In my opinion we should at least make<br>
&gt; &gt; &gt; latest LTS (4.4) the default kernel and try to add latest mainline.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Probably the &quot;proper way&quot; of dealing with the issue is using branches. This<br>
&gt; &gt; &gt; way (as it is in oe-core): jethro would have kernel 3.18 and 4.1, krogoth<br>
&gt; &gt; &gt; would have 4.4 and 4.1 and master would only have 4.4 and latest mainline.<br>
&gt; &gt;<br>
&gt; &gt; 4.1 is also LTS, So it should be kept along with 4.4 until next LTS<br>
&gt;<br>
&gt; I&#39;m 100% on removing &lt; 4 and keep 4.4 default along with LTS 4.1 and the<br>
&gt; current tip.<br>
&gt;</p>
<p dir="ltr">Good so we are on same page. I have staged patches for this too.</p>
<p dir="ltr">&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Don&#39;t you think that it would be a good idea to create some &quot;quasi&quot; krogoth<br>
&gt; &gt; &gt; branch out of what is on master and then cleaning the master (e.g. removing<br>
&gt; &gt; &gt; kernel 3.18 and 4.1) ?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; BR,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Piotr<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On 21.07.2016 17:39, Herve Jourdain wrote:<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Hi Paul,<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; I had the same line of thoughts...<br>
&gt; &gt; &gt;&gt; I believe 3.18 should be dropped, maybe even 4.1, default to 4.4, and<br>
&gt; &gt; &gt;&gt; maybe<br>
&gt; &gt; &gt;&gt; add 4.7 to the mix, since 4.7 seems to be where the bulk of the work is<br>
&gt; &gt; &gt;&gt; done<br>
&gt; &gt; &gt;&gt; now.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Herve<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; -----Original Message-----<br>
&gt; &gt; &gt;&gt; From: <a href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a><br>
&gt; &gt; &gt;&gt; [mailto:<a href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>]<br>
&gt; &gt; &gt;&gt; On Behalf Of Paul Barker<br>
&gt; &gt; &gt;&gt; Sent: jeudi 21 juillet 2016 09:03<br>
&gt; &gt; &gt;&gt; To: <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; &gt; &gt;&gt; Subject: [yocto] [meta-raspberrypi] linux-raspberrypi versions<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Hi all,<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; I&#39;m planning to look at the linux-raspberypi recipes once I&#39;ve had time to<br>
&gt; &gt; &gt;&gt; send V2 of my u-boot patches. I&#39;d like to know people&#39;s thoughts on the<br>
&gt; &gt; &gt;&gt; available kernel versions in the meta-raspberrypi layer:<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Is anyone still using the linux-raspberrypi 3.18 recipe? The commit<br>
&gt; &gt; &gt;&gt; referenced in SRCREV is from June 2015. I think it&#39;s probably time to<br>
&gt; &gt; &gt;&gt; retire<br>
&gt; &gt; &gt;&gt; this unless anyone has a reason to keep it around.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Is there any reason to keep linux-raspberrypi 4.1 as the default recipe?<br>
&gt; &gt; &gt;&gt; The<br>
&gt; &gt; &gt;&gt; last commit to the 4.1 branch was in April and the default branch on the<br>
&gt; &gt; &gt;&gt; linux-raspberrypi GitHub repository has been<br>
&gt; &gt; &gt;&gt; 4.4 since then. I think we should change the default version to 4.4 unless<br>
&gt; &gt; &gt;&gt; there&#39;s a good reason not to.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; If there&#39;s no objections I&#39;ll send a couple of patches to drop 3.18 and<br>
&gt; &gt; &gt;&gt; change the default to 4.4.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Thanks,<br>
&gt; &gt; &gt;&gt; Paul Barker<br>
&gt; &gt; &gt;&gt; --<br>
&gt; &gt; &gt;&gt; _______________________________________________<br>
&gt; &gt; &gt;&gt; yocto mailing list<br>
&gt; &gt; &gt;&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; &gt; &gt;&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; yocto mailing list<br>
&gt; &gt; &gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; &gt; &gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; &gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt; --<br>
&gt; Andrei Gherzan<br></p>

--94eb2c06ee0461b1bc0538f3d8e0--
