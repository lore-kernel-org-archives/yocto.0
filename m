Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC93AE002AC
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 05:07:58 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 90F8BF8123A; Tue, 18 Sep 2012 06:07:55 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D461EF81239;
	Tue, 18 Sep 2012 06:07:53 -0600 (MDT)
Message-ID: <50586422.3080301@mlbassoc.com>
Date: Tue, 18 Sep 2012 06:08:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANmVirgOc_q2oedDxnCQBqgP+-t8=DdFT_nhTGjbAh=9iZZhaA@mail.gmail.com>
	<10140530.yfykbKl0dX@helios>
In-Reply-To: <10140530.yfykbKl0dX@helios>
Subject: Re: Bitbake for list packages
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
X-List-Received-Date: Tue, 18 Sep 2012 12:07:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-09-17 06:39, Paul Eggleton wrote:
> On Monday 17 September 2012 09:37:13 Raul Rosetto Munoz wrote:
>> I know that habe a bitbake command that list all packages.
>
> Do you mean list all recipes? If so, one of the following may be helpful:
>
>    bitbake -s
>
>    bitbake-layers show-recipes

Of these, 'bitbake -s' seems more useful as it also tells you the
package revision (PR) value used.

Would it be possible to do something like
   bitbake -s core-image-minimal
to see just what packages/recipes are used to create that image?
That would be most useful, especially for things like documentation
and quality/revision tracking.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

