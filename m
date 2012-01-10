Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42763E0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 06:57:57 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C8184F8123A; Tue, 10 Jan 2012 07:57:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4494FF811EF;
	Tue, 10 Jan 2012 07:57:48 -0700 (MST)
Message-ID: <4F0C51EC.1030401@mlbassoc.com>
Date: Tue, 10 Jan 2012 07:57:48 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
	<2F4E813B930D429F95E9E2DCFB2C36A2@gmail.com>
	<4F0C4FBF.6080100@gmail.com>
In-Reply-To: <4F0C4FBF.6080100@gmail.com>
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
X-List-Received-Date: Tue, 10 Jan 2012 14:57:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-10 07:48, Jim Abernathy wrote:
> On 01/09/2012 09:07 PM, Christopher Larson wrote:
>> Read layer.conf in each layer. See the BBFILES variable.
>> --
>> Christopher Larson
>>
>> On Monday, January 9, 2012 at 5:51 PM, James Abernathy wrote:
>>
>>> I'm trying to understand how bitbake parses the poky directory tree a little better.
>>>
>>> The best I can figure all .bb files are NOT included. Just some of them are. I'm guessing that the .bb in the meta/recipe-sato named core-image-sato.bb is the one that is used
>>> to start the parsing if bitbake core-image-sato is executed.
>>> I originally thought all subdirectories of a path included in BBLAYER were parsed looking for .bb files, but now I know that is not true, but not sure why.
>>>
>>> For example, it does not appear that webkit is included in the core-image-sato even though the recipe-sato directory includes the webkit subdirectory with it's recipe. What
>>> would be the proper way of adding the webkit to core-image-sato??
>>>
>>> Jim A
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
> the layer.conf in meta/conf includes and covers  all .bb files under it like receipe-sato, which includes web-webkit.  So does this say that the web-webkit get's built by bitbake,
> but the images does not contain web-webkit until you put in the IMAGE_INSTALL += "web-webit"???

No, only packages which are needed to satisfy the needs of
the given image are built.  So, if your image does not include
web-webkit, it won't be built even though there is a recipe
for it.

When building an image, bitbake looks at the image recipe and
figures out what packages are needed (these are listed explicitly).
Then any additional packages which are needed (DEPENDS, RDEPENDS, etc)
will be added to the list.  This process continues until all
dependencies are met, yielding the final package set.  Out of
the 1000 or so possible recipes, you may end up only building
a few hundred and many of these are support - i.e. only used
for the build process itself.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

