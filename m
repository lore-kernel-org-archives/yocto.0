Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE4F0E00AE4
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 07:57:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 6CDA3F811D8; Wed, 23 Apr 2014 08:57:01 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 73224F81199;
	Wed, 23 Apr 2014 08:56:59 -0600 (MDT)
Message-ID: <5357D4BE.6090309@mlbassoc.com>
Date: Wed, 23 Apr 2014 08:57:02 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5357CAF3.1070702@mlbassoc.com>
	<CABcZANmHUB-v=zek8jxLWtUjSEGYZCjqL2q=3a=fUKXiMn4nSw@mail.gmail.com>
In-Reply-To: <CABcZANmHUB-v=zek8jxLWtUjSEGYZCjqL2q=3a=fUKXiMn4nSw@mail.gmail.com>
Subject: Re: How does python-native work?
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
X-List-Received-Date: Wed, 23 Apr 2014 14:57:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-04-23 08:21, Chris Larson wrote:
> On Wed, Apr 23, 2014 at 7:15 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     How is python-native supposed to work?  I can see that it's
>     built and installed in my tmp/sysroots/HOST but it's installed
>     in a sub-directory which is not found by normal means.
>
>
> inherit pythonnative (or one of the classes that inherit it)

Thanks, I imported 'distutils' and that helped, but I still have problems with it.  Looking
at log.do_configure:
   checking for python... /local/rpi_2014-04-10/tmp/sysroots/x86_64-linux/usr/bin/python-native/python
   checking for python-config... /local/rpi_2014-04-10/tmp/sysroots/x86_64-linux/usr/bin/python-native/python-config
   Traceback (most recent call last):
     File "/local/rpi_2014-04-10/tmp/sysroots/x86_64-linux/usr/bin/python-native/python-config", line 6, in <module>
       from distutils import sysconfig
     File "/local/rpi_2014-04-10/tmp/sysroots/x86_64-linux/usr/lib/python2.7/distutils/sysconfig.py", line 22, in <module>
       PREFIX = os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
   TypeError: expected a character buffer object

When I ran python-config before (original email), the results
were from outside the build environment, i.e. the command line
where I run 'bitbake'.  When do_configure() runs in my recipe,
the environment seems to be quite different.  If I try to run
python-config from devshell (for my recipe), it fails as above.

I'm sure I'm just missing something...

Thanks for the help

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

