Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ADC9E0073A; Fri,  9 May 2014 08:25:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB606E00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 08:25:04 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WimfX-0001rX-6Y
	for yocto@yoctoproject.org; Fri, 09 May 2014 17:25:03 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 17:25:03 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 17:25:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 09 May 2014 17:24:43 +0200
Message-ID: <lkirvr$pm6$2@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>	<CAJTo0LZ7=Zs3pcP30htX7_GfpWoOvfYU-Cg-71T7pTuLkazGLQ@mail.gmail.com>	<lkevco$bl6$1@ger.gmane.org>	<CAJTo0LZDzH3aQBiwMM=cR06CEqthVQycaSWsM8jAyEHxwYiRWQ@mail.gmail.com>	<536CADD1.1040402@gmx.de>	<CAC+thW3_DhKGai3kRXo+HnHOJeWDYdC7_zEg4Z2-wRZhn6iTfw@mail.gmail.com>	<lkirea$jo7$1@ger.gmane.org>
	<CAJTo0LabM49mYRxasAwo2wDkFbQQWKOOzLD7tV2ULSZXFRVpEw@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <CAJTo0LabM49mYRxasAwo2wDkFbQQWKOOzLD7tV2ULSZXFRVpEw@mail.gmail.com>
Subject: Re: replace udhcpc
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
X-List-Received-Date: Fri, 09 May 2014 15:25:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Great, then I will remove it.

My app does not run as root, but all system configuration tasks are only
available for root on my system.

Am 09.05.2014 17:22, schrieb Burton, Ross:
> On 9 May 2014 16:15, Neuer User <auslands-kv@gmx.de> wrote:
>> Do you by chance know, why it depends on the xuser-account package? I
>> don't want any additional user accounts on my system. If it is not
>> essential I would remove it.
> 
> If you're applications are running as root then you can remove the
> dependency on that package and the patch that changes the security
> policy.  The reasoning is complicated but basically so that the "user"
> can manipulate the network settings.
> 
> Ross
> 



