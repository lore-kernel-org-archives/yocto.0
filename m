Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 385CEE009C5; Thu, 13 Aug 2015 05:32:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD315E00947
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 05:32:36 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 5A7FE6001695;
	Thu, 13 Aug 2015 15:32:34 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1439469154; bh=ezCtEOMlYF75WkJu0dQToici8EfI8140A3OliAggaAI=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=J66H1DQm3HDtGv0rm0fzJuQ8dcPo0Hno8Od4t8quihX5Q2NS8kF7FOKiO2jtNO7km
	vzwUFvYWbZop1OIuqmNN5S/5uJ9zgy7GeFgfrnYtxIFpKhKY/OESKtfpTzLJUV7ppE
	pBMnkoLx2Gp1tRnYCzXbJHU8DIUPJWiYt/uDT1dI=
Message-ID: <55CC8E62.7070102@mail.bg>
Date: Thu, 13 Aug 2015 15:32:34 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: Paul Sherwood <paul.sherwood@codethink.co.uk>
References: <90967689f471f5ac0cf4edca77457a8c@codethink.co.uk>
In-Reply-To: <90967689f471f5ac0cf4edca77457a8c@codethink.co.uk>
Cc: takeshi.saito.xv@renesas.com,
	automotive-discussions@lists.linuxfoundation.org, yocto@yoctoproject.org
Subject: Re: How to submit patches upstream for repos at git.yoctoproject.org (eg meta-renesas)
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
X-List-Received-Date: Thu, 13 Aug 2015 12:32:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

On 08/13/2015 02:21 PM, Paul Sherwood wrote:
> Hi all,
> I am not affiliated to any Yocto Project member organisation, but am
> assisting with integration at the Automotive Grade Linux project, which
> is re-using some work from upstreams at git.yoctoproject.org
>
> Recently members of the AGL community have started contributing patches
> for meta-renesas at our mirror [1]. We would like to offer this and
> future work to upstream, and I am hoping to understand so that I can
> help guide AGL's activities so that we are properly aligned. Please can
> someone guide us on the accepted way to offer these and subsequent patches?
>
> br
> Paul
>
> [1] https://gerrit.automotivelinux.org/gerrit/#/c/4047/

Haven't seen you for a quite a while after Karlsruhe, hope you're doing
fine.

Regarding the upstreaming guidelines, the usual steps apply - ask
contributors to push patches as close to the upstream project as
possible, and just then go downstream, like this (in order of
preference):

1. Upstream components
2. Yocto meta layer (which you are reusing)
3. AGL repos

Also, it would be great if your AGL maintainers can enforce appropriate
patch tracking by Upstream-status tag + description, as it will help
everyone.

Kind regards,
Nikolay

