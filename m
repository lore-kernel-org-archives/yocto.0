Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FE3EE014E0
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 03:23:47 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B4AE2F811E3; Thu, 18 Apr 2013 04:23:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F1B8DF811E2;
	Thu, 18 Apr 2013 04:23:44 -0600 (MDT)
Message-ID: <516FC9B2.1090802@mlbassoc.com>
Date: Thu, 18 Apr 2013 04:23:46 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios> <516EBBE7.8060201@mlbassoc.com>
	<CAHUNapRQdV5hM8rMrChYD4joa1N0eN9iok6+C4UU07AaJv04Zg@mail.gmail.com>
In-Reply-To: <CAHUNapRQdV5hM8rMrChYD4joa1N0eN9iok6+C4UU07AaJv04Zg@mail.gmail.com>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Thu, 18 Apr 2013 10:23:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-17 16:26, Trevor Woerner wrote:
> On Wed, Apr 17, 2013 at 11:12 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> I also think it would be good to point out the use of := in the
>> FILESEXTRAPATHS
>> assignment and why it's important.
>
> Knowing that the := operator will put your directories first is only
> useful if you also know that the underlying mechanism will take the
> first such files from the given directories it encounters :-) What's
> to say bitbake doesn't look at all the directories/files and take the
> last ones?

This has more to do with how the path is constructed (using _prepend).

My point, which was totally unclear to me when using this line, was
that with ':=' ${THISDIR} evaluates to the directory that contains
the .bbappend file (what you want/need) whereas with '=' it evaluates
to the directory containing the main .bb file.  Incredibly confusing
if you miss it...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

