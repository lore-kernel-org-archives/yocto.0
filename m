Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC5FBE0103D; Tue, 22 Sep 2015 08:12:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7DE9E00461
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 08:12:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id EA78AF811F0; Tue, 22 Sep 2015 09:12:27 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 23221F811F0;
	Tue, 22 Sep 2015 09:12:27 -0600 (MDT)
To: yocto@yoctoproject.org
References: <CAKjpqyJDgoV=+4QqtJ5Q5p2WcdqkioFDR5LMNicc+h42seEbpA@mail.gmail.com>
	<CAF3SDA7_M70fr29QWLdtN4jxGWiQozH=nVjAk9tYNroM11c0gw@mail.gmail.com>
	<CAKjpqyLFgtTmW=VOWXuo7MD-2BGV2q9xH65YaC7NeXhMCqeqtg@mail.gmail.com>
	<CAF3SDA6Go=zg0ABE6BH7MspciH7Wt-aSrwfwwA_3isyAyOxkrQ@mail.gmail.com>
	<CAKjpqyLs5AgWkxY2zf_zQ-oWk-j7pqPj6QZRkCFO470rYEa9yQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56016FE8.2070503@mlbassoc.com>
Date: Tue, 22 Sep 2015 09:12:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CAKjpqyLs5AgWkxY2zf_zQ-oWk-j7pqPj6QZRkCFO470rYEa9yQ@mail.gmail.com>
Subject: Re: error in do_rootfs
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
X-List-Received-Date: Tue, 22 Sep 2015 15:12:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-09-22 08:53, Mayank Agarwal wrote:
> Thanks Daniel for your help.Please specify how can i remove it

It would be a lot easier to help you diagnose your problem if you provide
more data:
   * What version of Yocto are you using?
   * What is your target machine?
   * What image are you trying to build?
   * What changes have you made to local.conf that might affect the result,
     e.g. adding any additional packages, etc?
More details, the better.

> On Tue, Sep 22, 2015 at 8:21 PM, Daniel. <danielhilst@gmail.com <mailto:danielhilst@gmail.com>> wrote:
>
>     Will you use bash? If not, try to remove it from image, so /bin/bash isn't created.
>
>
>     Cheers,
>     - dhs
>
>     2015-09-22 11:42 GMT-03:00 Mayank Agarwal <mayank77fromindia@gmail.com <mailto:mayank77fromindia@gmail.com>>:
>
>          From that error:
>         Error: not linking /1.0-r0/rootfs//bin/bash to /bin/busybox.nosuid since rootfs//bin/bash exists and is not a link
>
>         Any solutions for above,even if i create symlink this error doesn't go
>
>         Regards
>         Mayank
>
>         On Tue, Sep 22, 2015 at 7:47 PM, Daniel. <danielhilst@gmail.com <mailto:danielhilst@gmail.com>> wrote:
>
>             There should be a log.do_rootfs in something like BUILD_DIR/tmp/work/MACHINE-TOOLCHAIN/IMAGE/PV-PR/temp/. There you will find a proper failure message with the command
>             that triggered the failure and is output.
>
>             Cheers,
>             - dhs
>
>             2015-09-22 6:36 GMT-03:00 Mayank Agarwal <mayank77fromindia@gmail.com <mailto:mayank77fromindia@gmail.com>>:
>
>                 Hi,
>
>                 I am getting the below error in do_rootfs:
>
>                 ERROR: Unable to install packages. Command
>                   returned 255:
>
>
>                 I uderstand this error comes from certificate validation
>                 failure.
>
>                 Is there any option i can override the certificate validation
>                 in do_rootfs and get the binaries imstalled in final image
>
>                 Regards
>                 Mayank
>
>
>                 --
>                 _______________________________________________
>                 yocto mailing list
>                 yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>                 https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>             --
>             /"Do or do not. There is no try"/
>             ///*Yoda Master*/
>
>
>
>
>
>     --
>     /"Do or do not. There is no try"/
>     ///*Yoda Master*/
>
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

