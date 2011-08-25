Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 133F1E00320
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 12:36:52 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B66201660520; Thu, 25 Aug 2011 13:36:50 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 27F3E16603EC;
	Thu, 25 Aug 2011 13:36:50 -0600 (MDT)
Message-ID: <4E56A452.1070802@mlbassoc.com>
Date: Thu, 25 Aug 2011 13:36:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <AAFBB6E0-E03A-4045-8C57-C522EAF735B3@keylevel.com>
	<4E569F39.3000500@mlbassoc.com>
	<A615BA66-D76B-4749-91D4-2C3121FDC78E@keylevel.com>
In-Reply-To: <A615BA66-D76B-4749-91D4-2C3121FDC78E@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding X to image
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
X-List-Received-Date: Thu, 25 Aug 2011 19:36:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-08-25 13:33, Chris Tapp wrote:
> On 25 Aug 2011, at 20:15, Gary Thomas wrote:
>
>> On 2011-08-25 13:07, Chris Tapp wrote:
>>> What do I need to add where to get 'X' in to my image?
>>>
>>> I've built poky-image-base (under 4.0.1) and things like xinit have been built and are in the tmp/work tree.
>>>
>>> What do I need to add so that xinit (and dependencies) are added to the image? Should I be building a different image?
>>
>> Try core-image-sato - it has a full-up X [matchbox based] X desktop
>
> Thanks Gary,
>
> I can't find that one, bit I'm trying task-poky-x11-sato...

If you're not using the bleeding-edge-master, it might be named poky-image-sato

task-poky-x11-sato is just a collection of packages needed for X.  It won't
build a final root file system.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

