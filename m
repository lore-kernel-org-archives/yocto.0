Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA0BEE01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 01:25:10 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V99uZ-0000je-OX
	for yocto@yoctoproject.org; Tue, 13 Aug 2013 10:25:03 +0200
Received: from 213.249.12.88 ([213.249.12.88])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 10:25:03 +0200
Received: from gmane by 213.249.12.88 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 10:25:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 13 Aug 2013 11:21:12 +0300
Message-ID: <5209EC78.5070406@reliableembeddedsystems.com>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<3217805.kYDiUIXKQu@helios>
	<52073730.8080203@reliableembeddedsystems.com>
	<4160632.rshblPy5ts@helios>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.88
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <4160632.rshblPy5ts@helios>
Cc: Robert Berger
	<public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@plane.gmane.org>,
	public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: [Announcement] Yocto Project 1.5 Milestone 3 now available.
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
X-List-Received-Date: Tue, 13 Aug 2013 08:25:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 08/12/2013 12:44 PM, Paul Eggleton wrote:
> 
> There's not much on the autobuilder side apart from ensuring the appropriate 
> configuration is set - one of the aims was to avoid too much intrusion into the 
> autobuilder code. The main class is testimage.bbclass, so you can just do 
> INHERIT += "testimage" in local.conf and then run bitbake -c testimage 
> <imagename>. The tests are in meta/lib/oeqa/runtime/ and utility code under 
> meta/lib/oeqa/utils. 
> 
> There's no documentation for this yet other than what's in the code (and there 
> are some comments there), but it's coming soon.

;)

I'll have a look at it.

Regards,

Robert


...A clever person solves a problem.A wise person avoids it.- Einstein

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



