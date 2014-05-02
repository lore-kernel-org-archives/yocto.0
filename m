Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83B0AE0096C; Thu,  1 May 2014 23:49:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F657E00478
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 23:49:38 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wg7Hs-0008V4-0Z
	for yocto@yoctoproject.org; Fri, 02 May 2014 08:49:36 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 08:49:36 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 08:49:36 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 02 May 2014 08:49:22 +0200
Message-ID: <ljvf5i$g7o$1@ger.gmane.org>
References: <ljt73p$k5f$1@ger.gmane.org> <ljvcm2$jfs$1@ger.gmane.org>
	<CAMKF1sqshMJd7Mejm78nUMb7Kdn50Bmr=NJ0VFNjyYAgkGb1Sg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <CAMKF1sqshMJd7Mejm78nUMb7Kdn50Bmr=NJ0VFNjyYAgkGb1Sg@mail.gmail.com>
Subject: Re: quilt-native do_populate_sysroot error [solved]
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
X-List-Received-Date: Fri, 02 May 2014 06:49:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 02.05.2014 08:43, schrieb Khem Raj:
> On Thu, May 1, 2014 at 11:06 PM, Neuer User <auslands-kv@gmx.de> wrote:
>> Before I copied the whole conf dir back from a backup. This time I tried
>> with a completely new conf dir. I did that and strangely got another
>> error message by "sanity-check" saying that I am missing two files
>> (makeinfo, chrpath).
> 
> well, conf/ dir is generated when you setup the workspace for firs
> time and then we do version checks if it needs to be updated. no idea
> what you backed up but usually keeping
> your changes applied on top of regenerated conf/ dir is a better
> option when you move
> from one version of YP release to another
> 

I backup up the whole conf dir, as I wanted to make sure that all
configuration is backed up. The problem I see is that the conf dir does
not only include configuration data, but also state data, namely the
state "system requirements have been checked" (sanity-check).

It seems to be no problem to completely restore the conf dir, when you
don't restore this one file.


