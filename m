Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6A66E00C3B; Tue, 18 Jul 2017 00:12:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B60F7E00C39
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 00:12:07 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1dXMfn-0002Yi-NP
	for yocto@yoctoproject.org; Tue, 18 Jul 2017 09:11:59 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@telfort.nl>
Date: Tue, 18 Jul 2017 07:11:52 +0000 (UTC)
Message-ID: <okkcbo$8r6$1@blaine.gmane.org>
References: <okj1jq$log$1@blaine.gmane.org>
	<CAMKF1soyv1xqY06yXj=C4Xz_1LePJhch0H8a4TgNcL_ufpw-cA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Pan/0.141 (Tarzan's Death; 168b179 git.gnome.org/pan2)
Subject: Re: Build core2 (i686) U-Boot for a core-i7 (amd64) image
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
X-List-Received-Date: Tue, 18 Jul 2017 07:12:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Op Mon, 17 Jul 2017 22:49:51 -0400, schreef Khem Raj:

> On Mon, Jul 17, 2017 at 3:02 PM, Ferry Toth
> <ftoth@telfort.nl> wrote:
>> On edison U-Boot is 32 bit. I'm building a 64 bit kernel + rootfs.
>>
>> The only recipy that fails is U-Boot with:
>> undefined reference to `__normal___udivdi3'
>>
>>
> this means gcc is generating a helper call which it assumes libgcc will
> provide but here the toolchain in multilib env might be not providing
> it.

I am not using multilib yet, as I don't know exactly how to do that. 
Actually that is my question.

> One solution is to rewrite the code such that this call is not generated
> by gcc. So help the compiler.

Rewrite U-Boot to not use this helper, that doesn't sound right.

I would rather tell this specific recipe to use the 32 bit compiler, 
while all other recipies are built with 64. 

>> Apparently, when building 32 bit U-Boot outside of yocto on a 64bit
>> machine you need to install gcc-6-multilib.
>>
>> How would I configure poke or change the recipe to do the same?
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



