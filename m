Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23F4FE00970; Fri, 28 Nov 2014 05:52:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [83.145.59.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from stoexhubfe02.domain01.net (STOEXHUBFE02.domain01.net
	[83.145.59.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E29DDE008EA
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 05:52:28 -0800 (PST)
Received: from ad.chargestorm.se (81.232.163.241) by stoexhubfe02.domain01.net
	(10.12.10.7) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Fri, 28 Nov 2014 14:52:25 +0100
Date: Fri, 28 Nov 2014 14:51:45 +0100
From: Anders Darander <anders@chargestorm.se>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Message-ID: <20141128135145.GA9445@ad.chargestorm.se>
Mail-Followup-To: Matt Schuckmann <Matt.Schuckmann@planar.com>,
	Jim Rafert <jimr@spectralogic.com>,
	Mike Looijmans <mike.looijmans@topic.nl>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDB561BFD@MSXBEBVT12.planar.net>
	<5475E5E2.7090805@topic.nl>
	<86196249137E0843B2E0673D4F731E0C0108E25842@reactor.sldomain.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FDB561C51@MSXBEBVT12.planar.net>
MIME-Version: 1.0
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDB561C51@MSXBEBVT12.planar.net>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Cc: Jim Rafert <jimr@spectralogic.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Support for writable files with a read-only root file system
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
X-List-Received-Date: Fri, 28 Nov 2014 13:52:35 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Matt Schuckmann <Matt.Schuckmann@planar.com> [141126 18:22]:
> Yes you are correct I want a small number of files into to reside in a
> writeable partition with links in the root file system to point to
> them. I guess I latched on to the volatiles mechanism because it seems
> close to meeting my needs.

The volatile-binds from meta-ro-rootfs can be used to handle exactly
this. (I.e. they doesn't have to point to tmpfs).

The 3rd alternative is the old classical approach of using a symbolic
links...

> Making entire directory hierarchies like /etc writeable seems risky,
> things that you never want changed could get changed. Furthermore it
> makes it harder to deal with setting up default versions of files. 

> Is there really no mechanism for this type of thing in OE? It seems
> like such a common thing for anybody creating a system with a ro root
> file system to need or am I missing something. 

It depends on your which version you're running. Up to daisy, you'd have
to use meta-ro-rootfs to get access to volatile-binds.

From dizzy onward, volatile-bind was merged to oe-core, so there's no
need for an additional layer nowadays.

> If there is not such a mechanism then I will probably recreate the
> VOLATILE_BINDS mechanism that was in the MentorEmbedded layer and
> maybe call it PERSISTENT_BINDS or some such. I'm pretty new to OE so
> whatever I come up with will be pretty rough but I'd be willing to
> share my solution if there was interest. 

Use volatile-binds.

Cheers,
Anders

-- 
Never make any mistaeks.
		-- Anonymous, in a mail discussion about to a kernel bug report

