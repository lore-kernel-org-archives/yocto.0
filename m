Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ED64E00716; Fri, 23 May 2014 10:31:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33CE9E006EC
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 10:30:56 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WntIz-0005x2-Uv
	for yocto@yoctoproject.org; Fri, 23 May 2014 19:30:53 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 19:30:53 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 19:30:53 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 23 May 2014 19:30:37 +0200
Message-ID: <llo0jt$vbu$1@ger.gmane.org>
References: <llcim8$3rn$1@ger.gmane.org>	<CAJTo0Laf+EEiBAcmKwtU08LLPYynDavNbfuC3TaGKLe2oBtR+w@mail.gmail.com>	<llcj8i$cfi$1@ger.gmane.org>	<CANyK_8fjtaN6iXOXm9YqLxK25_VUbYqH8_83GOYm81GjRc9wyA@mail.gmail.com>	<llcrst$jsc$1@ger.gmane.org>
	<llhs5e$jt8$1@ger.gmane.org>	<CAJTo0LbV1AoU=qmb0S=dtbsaor4jWGckGPM80g=tETFi3Ri0sQ@mail.gmail.com>	<537C84D4.3030302@gmx.de>
	<CAJTo0LZCTV0uEeXy+zOo31NnYSgGHv=4tphusb3Nj-VMv5JacA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <CAJTo0LZCTV0uEeXy+zOo31NnYSgGHv=4tphusb3Nj-VMv5JacA@mail.gmail.com>
Subject: Re: Strange certificate problem with wget
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
X-List-Received-Date: Fri, 23 May 2014 17:31:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Btw, this works beautifully. Thanks a lot!

Michael

Am 21.05.2014 17:02, schrieb Burton, Ross:
> On 21 May 2014 11:49, Auslands-KV <auslands-kv@gmx.de> wrote:
>> That's it. It does't seem to know where they are. If I add the option
>> with the path, it works.
>>
>> Do I miss something in my local.conf?
> 
> No, OpenSSL should know where they are out of this, this is probably a
> problem with the OpenSSL recipe.
> 
> GnuTLS is known to integrate better in general, so you might want to
> try applying this patch to switch wget to GnuTLS:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?id=8f42471e4bd5505a1f2766bbc675d23e078dfdc7
> 
> Ross
> 



