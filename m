Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1CA1E00292
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 12:41:43 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3XcQfc0tgRz3hhh5;
	Wed, 10 Oct 2012 21:41:28 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3XcQfc0kYBzbbfb;
	Wed, 10 Oct 2012 21:41:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id Tb6u4y3sf4JQ; Wed, 10 Oct 2012 21:40:16 +0200 (CEST)
X-Auth-Info: LH9ycTrYokCD0SvECP4LqxMqsqOXtHLEuC0m8HsK0qw=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed, 10 Oct 2012 21:41:26 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id A6CCC1A61D0;
	Wed, 10 Oct 2012 21:41:26 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 4EB772002F8;
	Wed, 10 Oct 2012 21:41:24 +0200 (CEST)
To: Elvis Dowson <elvis.dowson@gmail.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <8FDC41DC-70B4-4BCB-9B95-51CFBCA8961D@gmail.com>
References: <8FDC41DC-70B4-4BCB-9B95-51CFBCA8961D@gmail.com>
Comments: In-reply-to Elvis Dowson <elvis.dowson@gmail.com>
	message dated "Wed, 10 Oct 2012 21:00:44 +0400."
Date: Wed, 10 Oct 2012 21:41:24 +0200
Message-Id: <20121010194124.4EB772002F8@gemini.denx.de>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: denx.de site down?
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
X-List-Received-Date: Wed, 10 Oct 2012 19:41:44 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Elvis,

In message <8FDC41DC-70B4-4BCB-9B95-51CFBCA8961D@gmail.com> you wrote:
>
>                         I noticed that your site has been down since
> yesterday? I usually sync with your u-boot and eldk repositories, and
> during the yocto build process, it failed because your site was
> un-reachable.
> 
> I was able to get past the yocto build issue, by temporarily modifying
> my u-boot repositories to point to the local file system.
> 
> I'm sure others are also facing a similar issue.

I apologize for the inconveniencies.  We had a hardware problem on our
main server (actually nothing serious, just a dead disk drive), but our
hoster handles this not exactly in a competent way - instead of just
hot-swapping the failed drive so we just have to re-sync the degraded
RAID array he decided to replace _all_ disks so we are forced to
reinstall from scratch and restore from backups.

This process is still in the works.  Sorry for that.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
You don't need a weatherman to know which way the wind blows.
                                                          - Bob Dylan

