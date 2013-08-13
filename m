Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA26E01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 01:20:04 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V99pj-0005HY-S8
	for yocto@yoctoproject.org; Tue, 13 Aug 2013 10:20:03 +0200
Received: from 213.249.12.88 ([213.249.12.88])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 10:20:03 +0200
Received: from gmane by 213.249.12.88 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 10:20:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 13 Aug 2013 11:18:25 +0300
Message-ID: <5209EBD1.6040403@reliableembeddedsystems.com>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<3217805.kYDiUIXKQu@helios>
	<20130812091145.GE12589@sestofb10.enea.se>
	<3375908.sLNS3qEgcB@helios>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.88
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <3375908.sLNS3qEgcB@helios>
Cc: public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org,
	=?ISO-8859-1?Q?Bj=F6rn_Stenberg?= <public-bjst-AM1FMPraTHU@plane.gmane.org>
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
X-List-Received-Date: Tue, 13 Aug 2013 08:20:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 08/12/2013 12:28 PM, Paul Eggleton wrote:
> 
> I agree. In fact our test lab would probably be limited to the reference 
> boards that the Yocto Project officially supports within meta-yocto i.e. what we 
> currently test on manually.

I have the Yocto reference boards as well, but will add boards on
customer request (some are already on the queue).

BTW what should be defined what kind of extra hardware/software is
needed for remote hardware testing. As I said I have some infrastructure
to power on/off boards and monitor the serial over conserver(s).

Is that's it?

Regards,

Robert
..."100% test coverage is insufficient. 35% of the faults are missing
logic paths." - Robert Glass

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



