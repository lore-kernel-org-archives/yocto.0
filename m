Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 384BDE009ED; Wed, 22 Jul 2015 05:28:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1D8EE009BE
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 05:28:25 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C8F4EF811DD; Wed, 22 Jul 2015 06:28:24 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6D81AF811DC;
	Wed, 22 Jul 2015 06:28:24 -0600 (MDT)
Message-ID: <55AF8C69.60102@mlbassoc.com>
Date: Wed, 22 Jul 2015 06:28:25 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Proper use of remove and append
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
X-List-Received-Date: Wed, 22 Jul 2015 12:28:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I was trying to adjust a PACKAGECONFIG setting in my local.conf,
in this case removing a default value.

This didn't work:
   PACKAGECONFIG_pn-opencv_remove = "libv4l"
but this did:
   PACKAGECONFIG_remove_pn-opencv = "libv4l"

Which is correct (and why)?  The examples in the manual aren't
very helpful with this more complex variable.

What about append?  If I wanted to add a setting to my PACKAGECONFIG
variable, what's the correct way to write that?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

