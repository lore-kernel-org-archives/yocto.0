Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48A6FE006D9
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 05:56:36 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BA498F811E5; Fri,  7 Feb 2014 06:56:35 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D4F6EF811E4;
	Fri,  7 Feb 2014 06:56:34 -0700 (MST)
Message-ID: <52F4E620.6090303@mlbassoc.com>
Date: Fri, 07 Feb 2014 06:56:48 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5.2
Subject: Adding functionality to SDK
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
X-List-Received-Date: Fri, 07 Feb 2014 13:56:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I have a basic image (similar to core-image-sato) that I've added
(on board) SDK to using packagegroup-core-sdk  & packagegroup-core-standalone-sdk-target.
This works pretty well but I've found some missing functionality.
In particular, I used it to build the kernel on my ARM board and
found the U-Boot 'mkimage' tool missing from the SDK.

How can I add this to my SDK build?  I'm interested in both
the specific answer of how to get the U-Boot utilities but
also how to include additional functionality in my SDK builds,
e.g. additional libraries, include files, etc.

I've looked through the reference manual and it seems to only
discuss cross-build SDK, not on-target SDK.

Thanks for any pointers

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

