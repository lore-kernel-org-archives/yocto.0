Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 287B4E00D69; Wed,  7 Dec 2016 11:12:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C0040E00D62
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 11:12:26 -0800 (PST)
Received: (qmail 2590 invoked by uid 1003); 7 Dec 2016 19:12:25 -0000
Received: from unknown (HELO ?10.16.32.193?)
	(philip@opensdr.com@207.114.172.147)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	7 Dec 2016 19:12:25 -0000
To: "Burton, Ross" <ross.burton@intel.com>,
	david bensoussan <minipada@gmail.com>
References: <CALxi_JGOFMsiLLavJHF1uNDdu10zA_6YhgXXqEOf5Qw8Mw_C1g@mail.gmail.com>
	<CAJTo0LatFuGHQu+s1VV9Q3wirbC7EUkyjgXCrMa9TDenxso4Hw@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <f6321fee-459c-58e6-c5e8-9e3c16579ac3@balister.org>
Date: Wed, 7 Dec 2016 11:12:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LatFuGHQu+s1VV9Q3wirbC7EUkyjgXCrMa9TDenxso4Hw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package depending on ATLAS, BLAS, libmetis, liblapack
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
X-List-Received-Date: Wed, 07 Dec 2016 19:12:33 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 12/07/2016 05:01 AM, Burton, Ross wrote:
> On 7 December 2016 at 11:57, david bensoussan <minipada@gmail.com> wrote:
> 
>> Those are tuning libraries which cannot be cross compiled
>> <http://www.vesperix.com/arm/atlas-arm/faq/index.html>.
>>
> 
> One solution that really isn't too difficult is to replace the places where
> it runs tests with simple scripts that generate the relevant output, and
> provide that output in the recipe.  So if  you were building for ARM you'd
> build once on arm, determine what the results of the tests are, and then
> put those values in the recipe.

Numpy (I think) has a script you run to collect information about the
system. Our recipe carries the output file and inserts it in the correct
place before building. I've been wondering if we can do this with atlas.
I haven't made it past the thinking phase though.

Philip

> 
> Ross
> 
> 
> 

