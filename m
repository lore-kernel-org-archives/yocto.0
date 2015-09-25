Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15502E00A75; Fri, 25 Sep 2015 13:04:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9793E0049B
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 13:04:16 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0243EF811D8; Fri, 25 Sep 2015 14:04:14 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1534CF811D8;
	Fri, 25 Sep 2015 14:04:14 -0600 (MDT)
To: yocto@yoctoproject.org
References: <5551EDA3-4D20-44A0-BA06-DDC2AEC3B7AC@ac2enterprises.com>
	<CABcZANm5WtVgshp6mBTn08fPrH4+eDTD+uHKr31VQyL=R7dbRQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5605A8C2.7060209@mlbassoc.com>
Date: Fri, 25 Sep 2015 14:04:18 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CABcZANm5WtVgshp6mBTn08fPrH4+eDTD+uHKr31VQyL=R7dbRQ@mail.gmail.com>
Subject: Re: bbappend a "required" bb file
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
X-List-Received-Date: Fri, 25 Sep 2015 20:04:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-25 09:38, Christopher Larson wrote:
>
> On Thu, Sep 24, 2015 at 4:18 PM, Allen Curtis <ajcurtis@ac2enterprises.com <mailto:ajcurtis@ac2enterprises.com>> wrote:
>
>     I am working with a BSP that has multiple image recipes.
>
>     foo-hwbringup-image.bb <http://foo-hwbringup-image.bb>
>     foo-qt5demo-image.bb <http://foo-qt5demo-image.bb>
>
>     foo-qt5demo-image.bb <http://foo-qt5demo-image.bb> contains "require foo-hwbringup-image.bb <http://foo-hwbringup-image.bb>"
>
>     However if I create foo-hwbringup-image.bbappend, it gets ignored.
>
>     What are the rules with appending included recipes?
>
>
> bbappends do not append arbitrary files, only recipes (and in this case, the inclusion treats them as an arbitrary file). They do not apply to anything included or required, only
> the recipe itself. So you'll need to bbappend every recipe that includes foo-hwbringup-image.bb <http://foo-hwbringup-image.bb> in this case.

What's the argument against requires picking up any .bbappends?
I agree with the original poster - this seems only natural and
would be extremely useful, not necessitating jumping through
hoops like "IMAGE_FEATURES", etc.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

