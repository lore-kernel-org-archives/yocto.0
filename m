Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D01DDE003D4
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2013 00:03:27 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V8PgT-0004Bo-SG
	for yocto@yoctoproject.org; Sun, 11 Aug 2013 09:03:25 +0200
Received: from 213.249.12.26 ([213.249.12.26])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2013 09:03:25 +0200
Received: from gmane by 213.249.12.26 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2013 09:03:25 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 11 Aug 2013 10:03:12 +0300
Message-ID: <52073730.8080203@reliableembeddedsystems.com>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<5205E9D6.6020408@reliableembeddedsystems.com>
	<3217805.kYDiUIXKQu@helios>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.26
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <3217805.kYDiUIXKQu@helios>
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
X-List-Received-Date: Sun, 11 Aug 2013 07:03:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 08/10/2013 01:02 PM, Paul Eggleton wrote:
> 
> The new framework replaces the old, is written in python and makes writing 
> tests much easier. As a result we are going through a process of adding many 
> more runtime tests than we had previously.

I'm confused now. Is it autobuilder + new stuff in python and/or ptest
or something completely different? Are there already some examples in
git I could have a look at?

> 
> 
> We do definitely want automated testing on real hardware; it's just that that 
> it presents a number of problems that need solving:
> 
>  * How do you deploy the image/kernel/bootloader onto the board in an 
> automated manner? 

I use kernel over tftp and rootfs over nfs. The trivial example of a
boot loader upgrade is when you have a running (Linux) system just scp
it over. It's getting non trivial in case you manage to screw up the
boot loader. For the generic case maybe some update strategy with a
fallback solution to a known good boot loader might be needed.

> To different kinds of boards?

kernel over tftp and rootfs over nfs should work with all boards.

>  * How do you manage access to the boards when you have multiple autobuilders 
> potentially wanting to make use of them at around the same time?

Mutual exclusive access to the (serial) console can be handled by
conserver. Mutual exclusive via ssh gets more tricky.

I don't think it makes much sense to access the same board from multiple
autobuilders. This is most likely an error case which you would like to
catch.

> 
> We'll be working through these but the likelihood is that we won't have this 
> part of it for 1.5. Once we do though, connecting the currently QEMU-based 
> testing framework to it should be trivial.

OK understood. Please keep me updated.

> 
> Cheers,
> Paul

Regards,

Robert

...If you think good architecture is expensive, try bad architecture -
Brian Foote and Joseph Yoder

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



