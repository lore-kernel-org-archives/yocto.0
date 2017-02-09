Return-Path: <jacob2.chen@rock-chips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E27E3E009CD; Wed,  8 Feb 2017 22:50:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [54.79.106.188 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtphy.263.net (syd-smtp01.263.net [54.79.106.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AB6CE00939
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 22:50:19 -0800 (PST)
Received: from smtphy.263.net (sg-smtp01.263.net [54.255.195.220])
	by smtphy.263.net (Postfix) with ESMTPS id 419D64022E
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 14:50:19 +0800 (CST)
Received: from smtphy.263.net (irl-smtp01.263.net [54.76.167.174])
	by smtphy.263.net (Postfix) with ESMTPS id 9B9023C
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 14:50:15 +0800 (CST)
Received: from transport.263xmail.com (unknown [38.83.106.156])
	by smtphy.263.net (Postfix) with ESMTPS id 37C29E01AD
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 14:50:11 +0800 (CST)
Received: from regular2.263xmail.com (unknown [192.168.165.161])
	by transport.263xmail.com (Postfix) with ESMTP id 345A56B2
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 14:50:06 +0800 (CST)
Received: from regular1.263xmail.com (unknown [192.168.165.234])
	by regular2.263xmail.com (Postfix) with ESMTP id 5F05018EC0E
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 14:50:03 +0800 (CST)
Received: from jacob2.chen?rock-chips.com (unknown [192.168.165.105])
	by regular1.263xmail.com (Postfix) with ESMTP id DF32791DF;
	Thu,  9 Feb 2017 14:49:58 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from smtp.263.net (va-smtp01.263.net [54.88.144.211])
	by smtp.263.net (Postfix) with ESMTP id 54CD9451;
	Thu,  9 Feb 2017 14:49:58 +0800 (CST)
Received: from [172.20.10.10] (localhost.localdomain [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTP id C40999F6FB;
	Thu,  9 Feb 2017 14:49:40 +0800 (CST)
X-RL-SENDER: jacob2.chen@rock-chips.com
X-FST-TO: eddie.cai@rock-chips.com
X-SENDER-IP: 202.68.200.147
X-LOGIN-NAME: jacob2.chen@rock-chips.com
X-UNIQUE-TAG: <2ff854c2b2aa260a26c5eca2086ffaf8>
X-ATTACHMENT-NUM: 0
X-SENDER: jacob2.chen@rock-chips.com
X-DNS-TYPE: 0
Received: from [172.20.10.10] (unknown [202.68.200.147])
	by smtp.263.net (Postfix) whith ESMTP id 133879X9YN9;
	Thu, 09 Feb 2017 14:49:43 +0800 (CST)
From: Jacob Chen <jacob2.chen@rock-chips.com>
To: Trevor Woerner <twoerner@gmail.com>,
	Romain Perier <romain.perier@gmail.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
	<CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
Message-ID: <33ec9539-bc2b-064f-a5c2-5b761841af00@rock-chips.com>
Date: Thu, 9 Feb 2017 14:49:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jacob Chen <jacob-chen@iotwrt.com>, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Thu, 09 Feb 2017 06:50:24 -0000
Content-Type: multipart/alternative;
	boundary="------------D20817C51F7CBE992BCA743F"

--------------D20817C51F7CBE992BCA743F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi


Trevor Woerner wrote on 2017年01月28日 03:41:
> On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier<romain.perier@gmail.com>  wrote:
>> Could you:
>> - Make one patch per new machine file and not one patch for all new added
>> machine
> Agreed.
>
> Are all of these machines actual devices? The evb one doesn't sound real.
>
> Are all of these machines released and available for purchase? I've
> heard of the tinkerboard (although I can't seem to find one I can
> actually buy) but I haven't heard of the fennec.

I think i should only leave tinker board here.
We have a lot of boards which are not open to the public,  it's not 
suitable  to push them to the community.

>> - Add a clear @DESCRIPTION for each board, see an example here:
>> https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf
>> - Write a clear and an understandable commit message for your new patches
>>
>> @Trevor: What do you think about this rk-linux.inc ? I don't like this,
>> either its name and what it contains.
> First off, I think it's really great to see people contributing to
> meta-rockchip! :-)
>
> This entire set of patches seems to be adding "official" support for
> the rockchip devices; in other words, these recipes will help you to
> create builds that use the official rockchip sources. That is great.
> But I think a good BSP gives a user all the possibilities but then
> leaves the final decision up to them.

: ) That's the reason why we try to push patches to here, we want that 
"meta-rockchip" can
build between vendor old kernel/new kernel/old u-boot/new u-boot and 
mainline kernel/u-boot
  well.  Community people might help develop mainline things.

> So I agree with Romain, I think the name could use more work. It would
> be nice if this set of patches included something in the name that let
> the user know these build from official sources. Then the user could
> decide whether they want to use the official rockchip sources, or
> whether they want to build from upstream. So I'm not opposed to the
> idea of adding recipes for official sources, I'd like like to see them
> added in a way that leaves the decision with the user.
>
>

I added rk-linux.inc because i need a place to set up verndor-BSP 
default settings.
I want that the user can choose various combinations by change the 
include file in machine file.
e.g:
     rk-linux.inc for linux-rockchip 4.4 + u-boot-rockchip-nex-dev
     rk-linux.inc + rk-uboot.inc for linux-rockchip + u-boot-rockchip

     rk-linux.inc for linux-mainline + u-boot-mainline

BTW, which name you think is better?


>> That's it for now.
>> Thanks for your patches
> +1 :-)
>


--------------D20817C51F7CBE992BCA743F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi<br>
    </p>
    <br>
    <div class="moz-cite-prefix">Trevor Woerner wrote on 2017年01月28日
      03:41:<br>
    </div>
    <blockquote
cite="mid:CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com"
      type="cite">
      <pre wrap="">On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier <a class="moz-txt-link-rfc2396E" href="mailto:romain.perier@gmail.com">&lt;romain.perier@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Could you:
- Make one patch per new machine file and not one patch for all new added
machine
</pre>
      </blockquote>
      <pre wrap="">Agreed.

Are all of these machines actual devices? The evb one doesn't sound real.

Are all of these machines released and available for purchase? I've
heard of the tinkerboard (although I can't seem to find one I can
actually buy) but I haven't heard of the fennec.
</pre>
    </blockquote>
    <br>
    I think i should only leave tinker board here.<br>
    We have a lot of boards which are not open to the public,  it's not
    suitable  to push them to the community.<br>
    <br>
    <blockquote
cite="mid:CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com"
      type="cite">
      <blockquote type="cite">
        <pre wrap="">- Add a clear @DESCRIPTION for each board, see an example here:
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf">https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf</a>
- Write a clear and an understandable commit message for your new patches

@Trevor: What do you think about this rk-linux.inc ? I don't like this,
either its name and what it contains.
</pre>
      </blockquote>
      <pre wrap="">First off, I think it's really great to see people contributing to
meta-rockchip! :-)

This entire set of patches seems to be adding "official" support for
the rockchip devices; in other words, these recipes will help you to
create builds that use the official rockchip sources. That is great.
But I think a good BSP gives a user all the possibilities but then
leaves the final decision up to them.
</pre>
    </blockquote>
    <br>
    : ) That's the reason why we try to push patches to here, we want
    that "meta-rockchip" can <br>
    build between vendor old kernel/new kernel/old u-boot/new u-boot and
    mainline kernel/u-boot<br>
     well.  Community people might help develop mainline things.<br>
    <br>
    <blockquote
cite="mid:CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com"
      type="cite">
      <pre wrap="">So I agree with Romain, I think the name could use more work. It would
be nice if this set of patches included something in the name that let
the user know these build from official sources. Then the user could
decide whether they want to use the official rockchip sources, or
whether they want to build from upstream. So I'm not opposed to the
idea of adding recipes for official sources, I'd like like to see them
added in a way that leaves the decision with the user.


</pre>
    </blockquote>
    <br>
    I added rk-linux.inc because i need a place to set up verndor-BSP
    default settings. <br>
    I want that the user can choose various combinations by change the
    include file in machine file.<br>
    e.g:<br>
        rk-linux.inc for linux-rockchip 4.4 + u-boot-rockchip-nex-dev<br>
        rk-linux.inc + rk-uboot.inc for linux-rockchip + u-boot-rockchip<br>
    <br>
        rk-linux.inc for linux-mainline + u-boot-mainline<br>
    <br>
    BTW, which name you think is better? <br>
    <br>
    <br>
    <blockquote
cite="mid:CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com"
      type="cite">
      <blockquote type="cite">
        <pre wrap="">That's it for now.
Thanks for your patches
</pre>
      </blockquote>
      <pre wrap="">+1 :-)

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------D20817C51F7CBE992BCA743F--
