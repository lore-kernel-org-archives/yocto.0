Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EED52E00B97; Thu, 15 May 2014 06:03:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.kmu-office.ch (unknown [178.209.48.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3CDAE00B85
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 06:03:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id 7EFDF40059C
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 14:59:08 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kmu-office.ch
Received: from mail.kmu-office.ch ([127.0.0.1])
	by localhost (mail.kmu-office.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qTANBaHUPpTh for <yocto@yoctoproject.org>;
	Thu, 15 May 2014 14:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id 72EC1400619
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 14:59:07 +0200 (CEST)
Received: from webmail.kmu-office.ch (unknown [178.209.48.103])
	(Authenticated sender: stefan@agner.ch)
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 4B5994004AA;
	Thu, 15 May 2014 14:59:07 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 15 May 2014 15:03:27 +0200
From: Stefan Agner <stefan@agner.ch>
To: stefan@agner.ch
In-Reply-To: <cover.1399561605.git.stefan@agner.ch>
References: <cover.1399561605.git.stefan@agner.ch>
Message-ID: <31cd125eb073f74ce6383396ad8df696@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.0.1
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH v1 0/4] fixes for use with Angstrom
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
X-List-Received-Date: Thu, 15 May 2014 13:03:55 -0000
Content-Type: text/plain; charset=
Content-Transfer-Encoding: 7bit

Am 2014-05-08 18:44, schrieb stefan@agner.ch:
> From: Stefan Agner <stefan@agner.ch>
> 
> Hi folks,
> 
> We plan to make use of the Yocto Autobuilder at Toradex. I successfully
> deployed an installation, however since we distribute an Anstrom based
> BSP I had to adjust some files. With those patches and a custom layer
> configuration (not included since quite ugly) I'm able to build our BSP.
> 
> Would be good to have those changes upstream. Especially the new way to
> preserve the order of builders is more generic, however maybe not yet
> perfect. I needed this especially since I build some other stuff using
> POBBC (plain old build bot configuration :-)).
> 
> Just as a general question: What is planned with the autobuilder in 
> general? Is there an integration planned with Toaster? As far as I can
> see, since the build directory is recreated each time, this is not
> really possible right now. It would need adjustment to the autobuilder
> to start the toaster web interface for each builder, and clean/restart
> builds in a way that doesn't interfere with Toaster. Any thoughts on
> this?

Any thoughts on this Patchset?

Today I had troubles with our builder. After removing the whole source
directory and restart the build, the autobuilder somehow checked out and
resetted the autobuilder git! (the dora branch was checked out, which I
tried to checkout from a source branch). So far I could not reconstruct
what exactly happend, but the builder must have been in the wrong
directory when issuing some commands... Ugly. Calls for sandboxes :-)

Anyway, I lost my custom master.cfg since git restored the version from
the dora branch (always remember to backup!)...

