Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49DC0E00B6D; Thu, 10 Sep 2015 10:38:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A789E00D5F
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 10:38:41 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Za5nt-0003SO-Rf
	for yocto@yoctoproject.org; Thu, 10 Sep 2015 19:38:33 +0200
Received: from ppp-2-86-165-64.home.otenet.gr ([2.86.165.64])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 19:38:33 +0200
Received: from gmane by ppp-2-86-165-64.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 19:38:33 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 10 Sep 2015 20:37:54 +0300
Message-ID: <55F1BFF2.9040708@reliableembeddedsystems.com>
References: <CALLyC8QDpCybg9+-zxf5HP-6xKMOUkUjUkJ6x2O2ebTcCK10ww@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-165-64.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <CALLyC8QDpCybg9+-zxf5HP-6xKMOUkUjUkJ6x2O2ebTcCK10ww@mail.gmail.com>
Subject: Re: dropbear is not working after including in IMAGE_FEATURES
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
X-List-Received-Date: Thu, 10 Sep 2015 17:38:46 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/10/2015 05:17 PM, Vivek Per wrote:> Hi,
>       I have included IMAGE_FEATURES += "ssh-server-dropbear" in my
> recipe image. and created the image.

So you have something like:

image-features-image.bb with something like this?

-->

IMAGE_INSTALL = "packagegroup-core-boot packagegroup-base-extended"

IMAGE_FEATURES += "debug-tweaks splash x11-base ssh-server-dropbear \
                   package-management x11-sato"

inherit core-image

<--

> But after flashing the image i was not able to connect to target using
> ssh from my host machine. but target to host is working fine. Can any
> one tell me why it is not working. Is there any package need to add?

check your IMAGE_FEATURES if it's really like you want it:

bitbake -e image-features-image | grep ^IMAGE_FEATURES=

I see something like this:

IMAGE_FEATURES="debug-tweaks splash x11-base ssh-server-dropbear
package-management x11-sato"

You might want to check if dropbear made it into your image with
something like this before flashing it:

bitbake -g image-features-image && cat pn-depends.dot | grep -v -e
'-native' | grep -v digraph | grep -v -e '-image' | awk '{print $1}' |
sort | uniq

This will give you a list and you should find something like:

"dropbear"


"packagegroup-core-ssh-dropbear"

>
>
> Thanks and Regards
>
>
> --
>

Regards,

Robert..."Whereas Europeans generally pronouce my name the right way
(Ni-klows Virt), Americans invariably mangle it into 'Nickle-less
Worth'. This is to say that Europeans call me by name, but Americans
call me by value." -- Niklaus Wirth

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



