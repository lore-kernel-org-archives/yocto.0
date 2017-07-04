Return-Path: <ashie@clear-code.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30D9BE00BDA; Mon,  3 Jul 2017 23:43:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.clear-code.com (mail.clear-code.com [219.94.234.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D4A8E00BD0
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 23:43:04 -0700 (PDT)
Received: from [192.168.10.53] (27.84.111.219.dy.bbexcite.jp [219.111.84.27])
	by mail.clear-code.com (Postfix) with ESMTPSA id 3C0E0E146C;
	Tue,  4 Jul 2017 15:43:03 +0900 (JST)
From: Takuro Ashie <ashie@clear-code.com>
To: Riko Ho <antonius.riko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
	<b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com>
	<d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
	<8692e969-0575-1a75-b0a7-1567bcb51786@gmail.com>
	<7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com>
	<73d209dc-6d41-3f70-78d0-a360410a7695@gmail.com>
	<2b0c40c5-27be-f3a0-20f5-c0bdff57cb44@clear-code.com>
Message-ID: <dfd204c9-c53d-97c8-684a-22fdead61856@clear-code.com>
Date: Tue, 4 Jul 2017 15:43:03 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <2b0c40c5-27be-f3a0-20f5-c0bdff57cb44@clear-code.com>
Subject: Re: /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb =>how to update the newest version ?
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
X-List-Received-Date: Tue, 04 Jul 2017 06:43:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

   ac_add_options --with-system-nss
   ac_add_options --with-system-jpeg

Oops, it's wrong.

   ac_add_options --with-system-nss
   ac_add_options --with-system-nspr


On 2017年07月04日 15:34, Takuro Ashie wrote:
> You need latest poky (current master branch is needed).
> But upgrading poky may also introduce unexpected changes for you.
>
> Another solution is using built-in nss & nspr instead of system's one.
> To use it remove or comment out following lines in your 
> meta-browser/recipes-mozilla/firefox/firefox/mozconfig
>
>   ac_add_options --with-system-nss
>   ac_add_options --with-system-jpeg
>
> Regards,


