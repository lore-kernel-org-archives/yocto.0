Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C7DAE00B71; Thu, 11 Jun 2015 07:28:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39500E00AC8
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 07:28:18 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Z33Sp-00036v-W6
	for yocto@yoctoproject.org; Thu, 11 Jun 2015 16:28:16 +0200
Received: from ppp-2-86-141-63.home.otenet.gr ([2.86.141.63])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 16:28:15 +0200
Received: from gmane by ppp-2-86-141-63.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 16:28:15 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 11 Jun 2015 17:28:09 +0300
Message-ID: <55799AF9.1060607@reliableembeddedsystems.com>
References: <DB59870584238C45879465F0A2E5C3F17B01E6@IRVEXCHMB14.corp.ad.broadcom.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-141-63.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <DB59870584238C45879465F0A2E5C3F17B01E6@IRVEXCHMB14.corp.ad.broadcom.com>
Subject: Re: multi-user shared state
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
X-List-Received-Date: Thu, 11 Jun 2015 14:28:46 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hi,

On 06/10/2015 10:25 PM, Luke (Lucas) Starrett wrote:
> Hi,
> 
>  
> 
> I’m trying to understand the feasibility of shared-state across multiple
> users in a development environment.  Does anyone have first-hand
> experience with this?  Am I asking for trouble?

Have a look here [1] 3.2.1.2. Core System Development, and [2]

I did have troubles in the past. When I built e.g. for 2 different
boards both using the same compiler and the same sstate funny things
happened when 2 machines tried to work on the same package at the same
time. But everything should be fine as long as things work sequentially.
Don't know if the sstate mechanism works concurrently in the meantime.

> 
>  
> 
> If this is expected to work, a secondary question would be whether or
> not shared-state on a NFS mounted path works.  Any thoughts?

shared state works (and as a matter of fact everything on an nfs share
would work)

> 
>  
> 
> Thanks,
> 
>  
> 
> Luke Starrett     
> 
>  

[1] http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html
[2]
http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#shared-state-cache
> 
> 
> 
> -- 
> 

Regards,

Robert

..."Teaching of beginners should be done by a master, not by a hack." -
Deming

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



