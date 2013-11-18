Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99177E0030B
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 13:52:11 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E36F7F811E9; Mon, 18 Nov 2013 14:52:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4428DF811E8;
	Mon, 18 Nov 2013 14:52:09 -0700 (MST)
Message-ID: <528A8C14.1080308@mlbassoc.com>
Date: Mon, 18 Nov 2013 14:52:20 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <loom.20131118T201313-225@post.gmane.org>
In-Reply-To: <loom.20131118T201313-225@post.gmane.org>
Subject: Re: How to add modphp
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
X-List-Received-Date: Mon, 18 Nov 2013 21:52:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-11-18 12:23, Spenner wrote:
> Hi!
>
> I am trying to add modphp to my image and always seem to get
>   the same build error;
>
> ERROR: Task 2693
> (/home/gw/sources/meta-openembedded/meta-oe/recipes-support/
> mysql/mariadb-native_5.1.67.bb,do_compile) failed with exit code '1'
>
> I can add the apache2 package and the image will build and work fine but
> when I add modphp in the same fashion, i get the build error above.

More information about this error is needed to help figure out the problem.
Bitbake should have printed the last few lines of the error log which you
could paste here for us to see.  Alternatively, the complete log is at
   .../tmp/work/x86_64-linux/mariadb-native/5.1.67/temp/log.do_compile
      -or-
   .../tmp/work/i686-linux/mariadb-native/5.1.67/temp/log.do_compile

>
> Is there any dependencies for modphp that I could be missing?
>
> Thanks for any insight!

BTW, I just built this on my Ubuntu 12.04/x86_64 with no problems.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

