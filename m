Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CC62E00B68; Fri, 16 May 2014 00:04:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26A18E00A44
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 00:04:20 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WlCBn-0001e4-Gd
	for yocto@yoctoproject.org; Fri, 16 May 2014 09:04:19 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 09:04:19 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 09:04:19 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 16 May 2014 09:04:04 +0200
Message-ID: <ll4d94$jfk$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>	<lkvsj2$vof$1@ger.gmane.org>	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>	<lkvt3i$bhu$1@ger.gmane.org>	<CAJTo0La4jbY+7Tcgf+vf6z1gaHo1tru_Dx8QGx9KLOfdMk2C9Q@mail.gmail.com>	<lkvu7b$qf$1@ger.gmane.org>	<CAJTo0LZM1BAkH4BHS8=nn86MfVPah5U-HxCGbHyCLjR5XjZXwg@mail.gmail.com>	<lkvuuu$eil$1@ger.gmane.org>
	<lkvvbt$jss$1@ger.gmane.org> <1400186599.28353.5.camel@ted>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <1400186599.28353.5.camel@ted>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Fri, 16 May 2014 07:04:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 15.05.2014 22:43, schrieb Richard Purdie:
> On Wed, 2014-05-14 at 16:42 +0200, Neuer User wrote:
>> Probably solved. It should be
>>
>> include conf/distro/poky.conf
>>
>> instead of
>>
>> include poky.conf.
>>
>> (Stupid newbie error).
> 
> FWIW if you said "require" instead of "include" you'd have got a useful
> error saying it couldn't find the file.
> 
> Cheers,
> 
> Richard
> 

Ah, really? So, "include" means, "if you find it then include it -  if
not, then doesn't matter"?

Good to know :-)

Thanks to everybody. I have it working now :-)

Michael


