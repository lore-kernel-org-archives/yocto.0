Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83337E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 04:36:58 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A9FDDF81237; Tue, 10 Jan 2012 05:36:56 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7AFCAF81235;
	Tue, 10 Jan 2012 05:36:38 -0700 (MST)
Message-ID: <4F0C30D6.9010209@mlbassoc.com>
Date: Tue, 10 Jan 2012 05:36:38 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
	<4F0C28FD.3010402@mlbassoc.com>
	<205064BA-C265-4A33-8449-7118FF11AB9D@gmail.com>
In-Reply-To: <205064BA-C265-4A33-8449-7118FF11AB9D@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: understanding what's in an image
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
X-List-Received-Date: Tue, 10 Jan 2012 12:36:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-10 05:23, James Abernathy wrote:
>
> On Jan 10, 2012, at 7:03 AM, Gary Thomas wrote:
>
>> On 2012-01-09 17:51, James Abernathy wrote:
>>> I'm trying to understand how bitbake parses the poky directory tree a little better.
>>>
>>> The best I can figure all .bb files are NOT included. Just some of them are.  I'm guessing that the .bb in the meta/recipe-sato named core-image-sato.bb is the one that is used to start the parsing if bitbake core-image-sato is executed.
>>> I originally thought all subdirectories of a path included in BBLAYER were parsed looking for .bb files, but now I know that is not true, but not sure why.
>>>
>>> For example, it does not appear that webkit is included in the core-image-sato even though the recipe-sato directory includes the webkit subdirectory with it's recipe.  What would be the proper way of adding the webkit to core-image-sato??
>>
>> The 'webkit' is just a library used to build tools such as a
>> web browser.  You might want to start with an application that
>> actually uses webkit, such as web-webkit.
>>
>> To build an image which includes web-webkit, add this line to
>> your local.conf file and rebuild the image:
>>   IMAGE_INSTALL += "web-webkit"
>>
>> You can also build packages which are not installed into your
>> image by default and use a package manager (e.g. zypper) to
>> install the package later onto a running system.
>>
> This was very helpful. Before I got your email, I had gotten the advice to
> put the IMAGE_INSTALL += "web-webkit" into the core-image-sato.bb file.
> Both seem to work.  Not sure which is the best approach.  Maybe creating a .bbappend
> in my BSP??

It's seldom a good idea to modify anything in the Yocto core unless that
change should be pushed to everyone.  Make the changes you need in your
local layers.

If you're building a specialized system/image for your target, you should
probably consider making your own "image" recipe.  The easiest way is to
start with one of the extant image recipes and modifying it for your needs.

>
> So how do I know which applications are installed in an image? is there a how file of IMAGE_INSTALL statements?

You could use hob to see which packages are in your image.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

