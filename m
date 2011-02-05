Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65B284C800B7
	for <yocto@yoctoproject.org>; Fri,  4 Feb 2011 18:30:58 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1BBC1166015C; Fri,  4 Feb 2011 17:30:58 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 60E0D16600AC;
	Fri,  4 Feb 2011 17:30:57 -0700 (MST)
Message-ID: <4D4C9A41.7070709@mlbassoc.com>
Date: Fri, 04 Feb 2011 17:30:57 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D4B37F9.7080708@mlbassoc.com> <4D4BA607.3060006@linux.intel.com>
	<4D4C7BFC.60400@linux.intel.com> <4D4C7DE6.3010409@mlbassoc.com>
	<4D4C919B.4000100@linux.intel.com>
In-Reply-To: <4D4C919B.4000100@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Richard Purdie <richard.purdie@intel.com>
Subject: Re: meta-linaro woes continue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 05 Feb 2011 00:30:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2011 04:54 PM, Darren Hart wrote:
> On 02/04/2011 02:29 PM, Gary Thomas wrote:
>> On 02/04/2011 03:21 PM, Darren Hart wrote:
>
>>> I picked up your do_src_move change as it resolves the issue - but I
>>> can't say that I really understand the problem being solved - can you
>>> elaborate on why you took this approach?
>>> I'll credit you properly in the commit in the final set of branches.
>>
>> I made this change because do_unpack_append() was being treated
>> as a Python function, so the syntax was wrong. By using that
>> function to run a shell function, the problem is solved. I patterned
>> this after similar functions, e.g. in the eglibc recipe. It took me
>> a while to find and understand this, but then it became obvious.
>
> Ewww, that's pretty obfuscated. Did you determine why one function is treated as python and the other as bash?
>

No clue, I was just following precedent.  Richard probably
knows the details.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

