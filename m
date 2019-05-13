Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59946E00D5D; Mon, 13 May 2019 00:46:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9B07E00D3F
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 00:46:25 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 452Xv35H83z5m;
	Mon, 13 May 2019 09:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1557733584;
	bh=G1eGJjq6vqiinOukb9+sUXYSyaGPdmqHpTNTJAEIPog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I0XeD4dWuRNyvdZ1UsRxycCTitWYS+7TwsCxsi5y025a1Yf0RNYTrktDzlo+8i2j4
	w+GOyRPWN9zqWb5ruq6rwl/P8R67t7iPvf/aMGdEGS1bHMYFnAakd2PWziojkZp9Hw
	ehFhYM9AuHyNtKYepvfOWBYT0dOijJtby1k6jv1T6x5NRh6U8cjekoMOmE6dUnn1MY
	M8YAWppW/DtzKO3nKOcfG6sDHboyQmOpAc9Rv8XSK+VON5gggORDbq5mTP3WB7Zok5
	eQ5RH3GLphfxuo/LOXFZi/vQqA6BjDA6DXQ6vdFxBN92tGQ+le66EOADRBR028sDr6
	TKHwdRmCnyokEiKJzT0PKezImbinDK9qQclPvkMv0cTytzRDzZezgkJrZ1Ts5XpIJf
	d4zVHaUZn5+Avwa2u3bbpkMM7DpRD2pgGmeSVnNOPP4Td5TogepuJm/De7dYql/m67
	5pl9T97hIH+J2/sJjbpTWEeOSo3k+GNoFhTZQJGE/YYEwceeIW4bSMP4a5hTc8jikg
	QXJPdybNXlwbcrE9iWNxjqHGCk7H8c21/QIkeyxZk4akYomyWTNGOflYd26uvvpZMC
	6kkCHKFMVH/opXRnokBqHFJewQb3jnoaRUN65ECQbHfekaAq2/9L/hAdW9jPBS9DuR
	o+tk48eQcW58xQpvdjNB1nsA=
Date: Mon, 13 May 2019 10:46:20 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20190513074620.GA14282@localhost>
References: <e86cf937-5734-fc36-cd94-fad9b0155059@gmail.com>
	<65432636-c595-ed39-28f3-efb7a0d565da@gmail.com>
	<bf12fd00-e786-25dc-4b10-056ce5adffb4@windriver.com>
MIME-Version: 1.0
In-Reply-To: <bf12fd00-e786-25dc-4b10-056ce5adffb4@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	akuster808 <akuster808@gmail.com>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] patchwork
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
X-List-Received-Date: Mon, 13 May 2019 07:46:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon, May 13, 2019 at 10:32:48AM +0300, Mark Hatle wrote:
> On 5/12/19 9:04 PM, akuster808 wrote:
> > ok, so no Admins. This is unexceptionable.
> > 
> > OE TSC and Board, I believe its your time to get involved.
> 
> I've not used patchwork before, do you know who originally configured it?  Was
> it Paul Eggleton, or Richard, or?  If I have an idea who was originally
> responsible, I'm pretty sure we can figure out a handoff plan to someone else.

http://git.yoctoproject.org/cgit/cgit.cgi/patchwork/

> --Mark

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


