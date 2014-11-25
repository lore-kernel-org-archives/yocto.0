Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2070E008D9; Tue, 25 Nov 2014 10:19:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [83.145.59.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0EB1E0084E
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 10:19:38 -0800 (PST)
Received: from android-17c990e6fd634c9c.lan (83.233.19.145) by
	stoexhubfe01.domain01.net (10.12.10.6) with Microsoft SMTP Server (TLS)
	id 8.3.279.1; Tue, 25 Nov 2014 19:19:36 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <f36cad6dbfa6fc9e2121fcea6efeefbb9db05c32@webmail.adam.com.au>
References: <f36cad6dbfa6fc9e2121fcea6efeefbb9db05c32@webmail.adam.com.au>
MIME-Version: 1.0
From: Anders Darander <anders@chargestorm.se>
Date: Tue, 25 Nov 2014 19:19:27 +0100
To: "peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>
Message-ID: <060EFF06-F136-4BC9-8F2B-944D64EB3F00@chargestorm.se>
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New error in 1.7
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
X-List-Received-Date: Tue, 25 Nov 2014 18:19:54 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="UTF-8"



On 25 November 2014 17:13:17 CET, "peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au> wrote:
>My original problem is that the image built in 1.6.1 does not build in
>1.7. Paul indicated this is probably because of the -foreign issue as
>referred to in the reference manual Section 5.6.3 when upgrading. 
>
>
>What I need to do is modify my recipe to include this. I understand
>once I have modified the recipe I can generate a patch against the
>original.

The easiest way is likely to patch configure.ac, similar to what was done in http://git.openembedded.org/openembedded-core/commit/?id=60da074fea280d8190e7439361712dcc86177f12

So you were on the right track in your earlier email. 

>However, I still cannot identify the original change to the recipe
>required to add this item.
>
>
>I have added to the recipe
>
>
>EXTRA_OECONF = " 'AM_INIT_AUTOMAKE([foreign]); "
>
>
>Is this the correct change to the recipe to ensure the config.ac file
>is updated so that any non-conformance with GNU guidelines is
>overlooked?

No, what that line does is add some extra argument to the call to configure. AM_INIT_AUTOMAKE is a macro in configure.ac. 

 Create the patch that you talked about in got previous email, and make sure that it applies. Then this problem will go away. 

Cheers, 
Anders 

-- 
ChargeStorm AB / eStorm 

