Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65E03E00D58; Wed,  4 May 2016 14:59:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9476BE00CD1
	for <yocto@yoctoproject.org>; Wed,  4 May 2016 14:59:18 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ay4p8-0004F6-PZ
	for yocto@yoctoproject.org; Wed, 04 May 2016 23:59:14 +0200
Received: from ppp-2-86-128-117.home.otenet.gr ([2.86.128.117])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 May 2016 23:59:14 +0200
Received: from gmane by ppp-2-86-128-117.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 May 2016 23:59:14 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 05 May 2016 00:59:01 +0300
Message-ID: <572A70A5.5000607@reliableembeddedsystems.com>
References: <alpine.LFD.2.20.1605040709320.20578@localhost.localdomain>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-128-117.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <alpine.LFD.2.20.1605040709320.20578@localhost.localdomain>
Subject: Re: docs: standardizing on "+=" versus "_append" for clarity
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
X-List-Received-Date: Wed, 04 May 2016 21:59:20 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi,

On 05/04/2016 02:20 PM, Robert P. J. Day wrote:>
> i understand that there are times when you *want* _append to delay
> processing until the end, and i understand that conditional appending
> with OVERRIDES requires the "_append" syntax, but other than these
> special cases, is there an encouraged standard to use "+=" if either
> syntax will do?

That's my understanding:

_append (override style syntax):

append without spaces,
differs from :=,.=,=.,+=,=+ because assignment is deferred until after
parsing,
can be used with executable meta data

.= :

appending without spaces, immediate assignment

+= :

appending with spaces, immediate assignment

All of them have left and right hand side variable expansion recursive
when used.


>
> rday
>

Regards,

Robert
..."C++ is an horrible language" - Linux Torvalds

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



