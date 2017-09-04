Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7505FE00CC4; Mon,  4 Sep 2017 00:33:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61DA6E00CD5
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 00:33:30 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id i145so14400933wmf.1
	for <yocto@yoctoproject.org>; Mon, 04 Sep 2017 00:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=LcptZinmDVwzBXQ3f16hZekUE1D00gpCbnyIND1mnIY=;
	b=iKLx7qi/NDGjySLkU0WscpKBtb6agUFmk1SHpPx3Jc4GPe0Wv0Dg+tDk3snpsQHJA1
	Wf2tqQawuFjQfb8U6Xc3bEb4P2YpfSTyNUeKn+jRE++9I8ZZbSm88dSBgXqXGJcK7Kbw
	D8r7nM0nnDB6as+CCwjFoGwLW9xNo88EvQFy3wADyzX2bwLXPI+j2w/Fv/1oAD1s9vr2
	lYHNEL0RiYbRVeExPFNeTJMc6//P3tAs8HS+wXbPN+0tY/ntCpbFvspGQK7vRk+frBAM
	X9k+w5AAtjMbFCDH1t0hKcZTIaHcbDgjbiQxmqqNCKdPwYJiQWUjiPB0xq+H+NPsbjpG
	vJdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=LcptZinmDVwzBXQ3f16hZekUE1D00gpCbnyIND1mnIY=;
	b=rjgrTixXWTbIeZCckr/8gYK3f80UIL/fLaQlLBcZkrgIJ/3N16EoR35plGu8A6+FLf
	jnIvzZdauJmRKFYlujl2eZ5pF0Dbkn78krN1XxDNRwNG7yxGTsIXt9hCcJeyosOYRvko
	YaisWkk5BvW8BFhelq8g57dZun2QjDmEtcOQB4qdujb4E6EO4Ap9LqKZNXcJsodlCOEn
	PCANm+RRWlils/hUyyxPddiC8MUL5wCuuNPcwlnjXTMC+Kc5kAssp1F4YOYhcKm1eXj4
	tT2GDGieA4yleb8B8TGKrmVgv+o1kAcQjTyy4EQDritVfOsShfxg5Lh9tP9qcR7Ib6ZF
	X5iA==
X-Gm-Message-State: AHPjjUgl77mE3ur1jxYhCk4Vpw1vqyCT/r6yuQf3YP6mK1PdwQNUWC9T
	CrbpHhZNiCeENXus
X-Google-Smtp-Source: ADKCNb6pdusAdU1ixkzLXqZtUlZwMc9DrHkIfEAAHteEXCPlBqxwtaV9HiILOVH8sPUFuMQmm0+IVA==
X-Received: by 10.28.203.199 with SMTP id b190mr1766779wmg.105.1504510409206; 
	Mon, 04 Sep 2017 00:33:29 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8F21C.dip0.t-ipconnect.de. [93.232.242.28])
	by smtp.gmail.com with ESMTPSA id
	l19sm5675630wrl.45.2017.09.04.00.33.28
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 04 Sep 2017 00:33:28 -0700 (PDT)
Message-ID: <1504510407.12799.57.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Andrea Galbusera <gizero@gmail.com>, Maciej =?UTF-8?Q?Borz=C4=99cki?=
	<maciej.borzecki@rndity.com>
Date: Mon, 04 Sep 2017 09:33:27 +0200
In-Reply-To: <CAC+thW3WCk90+eGs5wiT6bari4MGxxN_ParbySkM4rgTSW0a4Q@mail.gmail.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
	<CAD4b0_LdonvEYaAANBiUhmYN5iaderdSpOMEmqQTtam+Z2s=2g@mail.gmail.com>
	<CAC+thW3WCk90+eGs5wiT6bari4MGxxN_ParbySkM4rgTSW0a4Q@mail.gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Mon, 04 Sep 2017 07:33:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-09-01 at 17:04 +0200, Andrea Galbusera wrote:
> Hi Maciej,
> 
> On Fri, Sep 1, 2017 at 4:08 PM, Maciej Borzęcki <maciej.borzecki@rndi
> ty.com> wrote:
> > On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera <gizero@gmail.com>
> > wrote:
> > > Hi!
> > >
> > > I was trying to share sstate between different hosts, but the
> > consumer build
> > > system seems to be unable to use re-use any sstate object. My
> > scenario is
> > > setup as follows:
> > >
> > > * The cache was populated by a pristine qemux86 core-image-
> > minimal build of
> > > morty. This was done in a crops/poky container (running in docker
> > on Mac)
> > > * The cache was then served via HTTP
> > 
> > Make sure that you use a decent HTTP server. Simple `python3 -m
> > http.server` will quickly choke when the mirror is being checked.
> > Also
> > running bitbake -DDD -v makes investigating this much easier.
> 
> To be honest, the current server was indeed setup with python's
> SimpleHTTPServer... As you suggest, I checked the verbose debug log
> and noticed what's happening behind the apparently happy "Checking
> sstate mirror object availability" step. After a first "SState:
> Successful fetch test for" that I see correctly served with 200 on
> the server side, tests for any other sstate object suddenly and
> systematically fail with logs like this:
...
> DEBUG: checkstatus() urlopen failed: <urlopen error [Errno 9] Bad
> file descriptor>

More recent bitbake should not fail like that anymore. It's still
better to use an HTTP server that performs better, though.

commit 6fa07752bbd3ac345cd8617da49a70e0b2dd565f
Author: Patrick Ohly <patrick.ohly@intel.com>
Date:   Mon Jul 17 15:25:10 2017 +0200

    fetch2/wget.py: improve error handling during sstate check
    
    When the sstate is accessed via HTTP, the existence check can fail due
    to network issues, in which case bitbake silently continues without
    sstate.
    
    One such network issue is an HTTP server like Python's own SimpleHTTP
    which closes the TCP connection despite an explicit "Keep-Alive" in
    the HTTP request header. The server does that without a "close" in the
    HTTP response header, so the socket remains in the connection cache,
    leading to "urlopen failed: <urlopen error [Errno 9] Bad file
    descriptor>" (only visible in "bitbake -D -D" output) when trying to
    use the cached connection again.
    
    The connection might also get closed for other reasons (proxy,
    timeouts, etc.), so this is something that the client should be able
    to handle.
    
    This is achieved by checking for the error, removing the bad
    connection, and letting the check_status() method try again with a new
    connection. It is necessary to let the second attempt fail
    permanently, because bad proxy setups have been observed to also lead
    to such broken connections. In that case, we need to abort for real
    after trying twice, otherwise a build would just hang forever.
    
    [YOCTO #11782]

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



