Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24F79E00A8C; Tue, 29 Sep 2015 10:30:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49B80E006CD
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 10:30:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 81986F811DA; Tue, 29 Sep 2015 11:30:36 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D43BBF81188;
	Tue, 29 Sep 2015 11:30:34 -0600 (MDT)
References: <mailman.7.1443466802.26370.yocto@yoctoproject.org>
	<2DCC166D4F5C8443941662E1E67FD5C17871C98D@LEICESTER.internal.datapath.co.uk>
To: Stuart.Weaver@datapath.co.uk
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <560ACAC6.70008@mlbassoc.com>
Date: Tue, 29 Sep 2015 11:30:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <2DCC166D4F5C8443941662E1E67FD5C17871C98D@LEICESTER.internal.datapath.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 60, Issue 78
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
X-List-Received-Date: Tue, 29 Sep 2015 17:30:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-29 03:38, Stuart Weaver wrote:
> Many thanks for your answers Gary/Daniel,
>
> Gary- I've tried:
> 		 SRC_URI_append_image-name2 = "file://XYZ.patch"
> 	But no luck, when building the image it seems to skip over it with no patching occurring. I can't use the ${MACHINE} variable as the two images will be for the same ${MACHINE}

Sorry, I didn't see this because of the [misleading] subject :-(  Next time,
either reply to the [single] message directly, or at least modify the subject
line to match the current thread.

You're command is incorrect - there is a big difference between "_"
and "-" when it comes to bitbake parsing.  Try this:
   SRC_URI_append_image_name2 = "file://XYZ.patch"
                       ^
Notice this uses underscore (_) not hyphen (-)

>
>
> Daniel- with a .bbappend, to my knowledge I wouldn't be able to include it to just one image.
>
> My "perfect" solution would be to find a variable out there that will copy/refer to a current recipe and add the details into the new recipe with it's own ${S} etc... Of course I could just copy one to another, but then there's the problem of updating files later on. Therefore, unless there is another option that I haven't considered, I might look at refactoring everything into a .inc file and have two different  recipe names of which I can then include seperately in the respective images.
>
> Many Thanks,
> Stuart Weaver
>
>>
>> On 2015-09-28 11:59, Daniel. wrote:
>>> I think you're searching for .bbappend don't?
>>
>> Shouldn't be any need for that - it's his recipe, so he can modify it as he
>> wishes.
>> One uses .bbappend to made changes/additions to a recipe where you don't
>> want (or
>> can't) modify the original.
>>
>>>
>>> http://www.yoctoproject.org/docs/current/dev-manual/dev-
>> manual.html#us
>>> ing-bbappend-files
>>>
>>> Or, maybe, put all the common things in a .inc file, create the recipes,
>> include the files in recipes. There is also a lot of examples of this:
>>> http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-bsp/hosta
>>> p/
>>>
>>> Cheers,
>>> - dhs
>>>
>>> 2015-09-28 12:46 GMT-03:00 Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>>:
>>>
>>>      On 2015-09-28 09:30, Stuart Weaver wrote:
>>>
>>>          Hi all,
>>>
>>>          I have a recipe for a package which builds well. I now need to add a
>> patch into certain builds. What is the best way to do this?
>>>
>>>          1.Is there a variable I can append the image name to (similar
>>> to:/SRC_URI_image-name/)?//
>>>
>>>          2.Is there a way of creating a new ?recipe 2? that obtains the details
>>from ?recipe 1? and applies a patch? This way I can then simply add the new
>> recipe into any builds I
>>>          want and
>>>          includes any future changes I make to ?recipe 1?. This solution also
>> means not having to continuously reconfigure/recompile the original recipe!
>>>
>>>          3.Do I have to do it the hard way and copy the whole .bb file into a new
>> one and make sure everything is in sync when future updates are applied?
>>>
>>>
>>>      If it's just a patch, the simplest way is to use something like this:
>>>         SRC_URI_append_XYZ = "file://XYZ.patch"
>>>      where XYZ is something which can identify the override.  One example
>>>      might be where XYZ is the name of a target board (${MACHINE})
>>>
>>>      There are many examples of this usage in the Poky/Yocto tree(s)
>>>
>>>      --
>>>      ------------------------------------------------------------
>>>      Gary Thomas                 |  Consulting for the
>>>      MLB Associates              |    Embedded world
>>>      ------------------------------------------------------------
>>>      --
>>>      _______________________________________________
>>>      yocto mailing list
>>>      yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>      https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>>
>>>
>>> --
>>> /"Do or do not. There is no try"/
>>> ///*Yoda Master*/
>>>
>>>
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>
>
>
> Regards,
> Stuart Weaver
>
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

