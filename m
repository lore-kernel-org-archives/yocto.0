Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CA0CE00F35; Mon, 28 Sep 2015 08:46:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61845E009DB
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 08:46:00 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A4A8FF81199; Mon, 28 Sep 2015 09:46:00 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 28456F81199;
	Mon, 28 Sep 2015 09:46:00 -0600 (MDT)
To: yocto@yoctoproject.org
References: <2DCC166D4F5C8443941662E1E67FD5C17871C6C5@LEICESTER.internal.datapath.co.uk>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <560960C1.2070806@mlbassoc.com>
Date: Mon, 28 Sep 2015 09:46:09 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <2DCC166D4F5C8443941662E1E67FD5C17871C6C5@LEICESTER.internal.datapath.co.uk>
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
X-List-Received-Date: Mon, 28 Sep 2015 15:46:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-09-28 09:30, Stuart Weaver wrote:
> Hi all,
>
> I have a recipe for a package which builds well. I now need to add a patch into certain builds. What is the best way to do this?
>
> 1.Is there a variable I can append the image name to (similar to:/SRC_URI_image-name/)?//
>
> 2.Is there a way of creating a new ‘recipe 2’ that obtains the details from ‘recipe 1’ and applies a patch? This way I can then simply add the new recipe into any builds I want and
> includes any future changes I make to ‘recipe 1’. This solution also means not having to continuously reconfigure/recompile the original recipe!
>
> 3.Do I have to do it the hard way and copy the whole .bb file into a new one and make sure everything is in sync when future updates are applied?

If it's just a patch, the simplest way is to use something like this:
   SRC_URI_append_XYZ = "file://XYZ.patch"
where XYZ is something which can identify the override.  One example
might be where XYZ is the name of a target board (${MACHINE})

There are many examples of this usage in the Poky/Yocto tree(s)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

