Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15727E00C8D; Mon, 28 Sep 2015 11:22:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC408E00A28
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 11:22:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3C4F3F811F7; Mon, 28 Sep 2015 12:22:28 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8104DF81199;
	Mon, 28 Sep 2015 12:22:27 -0600 (MDT)
To: yocto@yoctoproject.org
References: <2DCC166D4F5C8443941662E1E67FD5C17871C6C5@LEICESTER.internal.datapath.co.uk>
	<560960C1.2070806@mlbassoc.com>
	<CAF3SDA6ChKcwaJA7hOKYqNZFi0J=5MkfDrCVjp7ib4kNigHQaA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5609856D.5050908@mlbassoc.com>
Date: Mon, 28 Sep 2015 12:22:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CAF3SDA6ChKcwaJA7hOKYqNZFi0J=5MkfDrCVjp7ib4kNigHQaA@mail.gmail.com>
Subject: Re: Creating a new recipe based on another recipe
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
X-List-Received-Date: Mon, 28 Sep 2015 18:22:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-09-28 11:59, Daniel. wrote:
> I think you're searching for .bbappend don't?

Shouldn't be any need for that - it's his recipe, so he can modify it as he wishes.
One uses .bbappend to made changes/additions to a recipe where you don't want (or
can't) modify the original.

>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-bbappend-files
>
> Or, maybe, put all the common things in a .inc file, create the recipes, include the files in recipes. There is also a lot of examples of this:
> http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-bsp/hostap/
>
> Cheers,
> - dhs
>
> 2015-09-28 12:46 GMT-03:00 Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>>:
>
>     On 2015-09-28 09:30, Stuart Weaver wrote:
>
>         Hi all,
>
>         I have a recipe for a package which builds well. I now need to add a patch into certain builds. What is the best way to do this?
>
>         1.Is there a variable I can append the image name to (similar to:/SRC_URI_image-name/)?//
>
>         2.Is there a way of creating a new ‘recipe 2’ that obtains the details from ‘recipe 1’ and applies a patch? This way I can then simply add the new recipe into any builds I
>         want and
>         includes any future changes I make to ‘recipe 1’. This solution also means not having to continuously reconfigure/recompile the original recipe!
>
>         3.Do I have to do it the hard way and copy the whole .bb file into a new one and make sure everything is in sync when future updates are applied?
>
>
>     If it's just a patch, the simplest way is to use something like this:
>        SRC_URI_append_XYZ = "file://XYZ.patch"
>     where XYZ is something which can identify the override.  One example
>     might be where XYZ is the name of a target board (${MACHINE})
>
>     There are many examples of this usage in the Poky/Yocto tree(s)
>
>     --
>     ------------------------------------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------------------------------------
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> /"Do or do not. There is no try"/
> ///*Yoda Master*/
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

