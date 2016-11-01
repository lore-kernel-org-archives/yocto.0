Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D822E0049A; Tue,  1 Nov 2016 08:22:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl
	[149.210.149.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8702DE00444
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 08:22:47 -0700 (PDT)
Received: from submission5.mail.transip.nl (submission5.mail.transip.nl
	[149.210.149.125])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 3t7Zjd5rgwzSMXg;
	Tue,  1 Nov 2016 16:22:45 +0100 (CET)
Received: from webmail.frontend (web0.mail.transip.nl [149.210.149.95])
	by submission5.mail.transip.nl (Postfix) with ESMTPA id 3t7ZjY6CLmz7tt2;
	Tue,  1 Nov 2016 16:22:41 +0100 (CET)
MIME-Version: 1.0
Date: Tue, 01 Nov 2016 16:22:43 +0100
From: Herman van Hazendonk <me@herrie.org>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
Message-ID: <ab7a116c555eb819a7ccf0425150e6cd@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission5.mail.transip.nl
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 2.2 Morty supported Linux Distros
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Nov 2016 15:22:49 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Martin,

I would be surprised if it isn't. I've been running meta-openembedded 
and openembedded-core in our project without
any issues on 16.04 with both Krogoth and Morty.

Would be good if the project team can confirm though.

Herman

On 2016-11-01 16:19, Vuille, Martin (Martin) wrote:
> Noticed that Ubuntu 16.04 LTS is not on the list of supported
> 
> distributions for Morty.
> 
> Is that correct/intentional, or a documentation oversight?
> 
> Ubuntu 16.04 is mentioned elsewhere in the docs.
> 
> We are planning to upgrade from Ubuntu 12.04 LTS and it would
> 
> make more sense to go to the latest LTS rather than 14.04.
> 
> MV


