Return-Path: <arunkr.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E9C5E0079A; Fri, 12 Sep 2014 21:15:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (arunkr.linux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25EA7E0078E
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 21:15:40 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id v10so2586197pde.31
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 21:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=jZqGLDbHpHXzcZ2uz5heoFADpmQm8FsZEhpLiD0kE/8=;
	b=S9rhIpWtkrBnr/edgNpg2fWG0uuPwENDFEF9wkWz8GlBFfmblTRiqj0OyRLNAeLU56
	020i9jFlQXSLKDKISPcfYSIOIU8pjtaUNHqAYRnGzquOWgVM18zl63/aqOklQWUDEa/P
	Jv/kTnIAEsfdQBZxfM7gFKmAu3op+z9zJlyvAWlv+AaPJZZMr79mMe5WDWvcaLC2WdEc
	qBUWfNwqFwzz8MRS/KTXrUGxUtYSr43dDvAmMBWBb6DV07GCQToX9gHEGUzruZwHib8w
	K77oxYmagofnSVIWGus4CNbANwU8bRSmMdKidXdG65esGe1fa1aPb12nwFw9wz6TPoAU
	/Nyg==
X-Received: by 10.68.69.70 with SMTP id c6mr17729730pbu.111.1410581740483;
	Fri, 12 Sep 2014 21:15:40 -0700 (PDT)
Received: from [192.168.0.103] ([123.201.144.93])
	by mx.google.com with ESMTPSA id ad10sm5504405pad.4.2014.09.12.21.15.37
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 12 Sep 2014 21:15:39 -0700 (PDT)
Message-ID: <5413C4E3.4060102@gmail.com>
Date: Sat, 13 Sep 2014 09:45:31 +0530
From: Arun Kumar <arunkr.linux@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>, 
	Yocto Project Mailing List <yocto@yoctoproject.org>
References: <54134C92.3080208@gmail.com>
	<CAJTo0LZi1rLbkDYbYTYSFz6h9i_SXA8BP2Vxpv7vkgQbSgUT3A@mail.gmail.com>
In-Reply-To: <CAJTo0LZi1rLbkDYbYTYSFz6h9i_SXA8BP2Vxpv7vkgQbSgUT3A@mail.gmail.com>
Subject: Re: Basic build fails
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
X-List-Received-Date: Sat, 13 Sep 2014 04:15:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Thanks for the reply ross, but the build noise is too much form me to put it in here. I will post the last few lines of which i can make some sense, but the rest is somewhat incomprehensible.

/-------------------------------------------------------------------------------
| make[1]: *** [s-attrtab] Killed
| make[1]: *** Waiting for unfinished jobs....
| make[1]: Leaving directory `/home/arun/Documents/Dev/yocto/tmp/work/x86_64-poky-linux/gcc-cross-i586/4.9.1-r0/gcc-4.9.1/build.x86_64-linux.i586-poky-linux/gcc'
| make: *** [all-gcc] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/arun/Documents/Dev/yocto/build/../tmp/work/x86_64-poky-linux/gcc-cross-i586/4.9.1-r0/temp/log.do_compile.29857)
ERROR: Task 595 (/home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2729 tasks of which 2728 didn't need to be rerun and 1 failed.
No currently running tasks (307 of 5634)

Summary: 1 task failed:
  /home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
/-------------------------------------------------------------------------------------------------------

here is the pastebin link to the whole error http://pastebin.com/Y1JsA8dt
hope this helps



On Saturday 13 September 2014 01:37 AM, Burton, Ross wrote:
> On 12 September 2014 20:42, Arun Kumar <arunkr.linux@gmail.com> wrote:
>> Hi all,
>>
>>     I am new to the yocto project and was following the steps given in the quick start guide. I made a slight change as given in the superuser section.
>>
>> I used the "fetchall" option to get all the packages first and then started the build, now when i use this command
>>
>> "bitbake -k core-image-sato" i get the following error
>>
>> /------------------------------------------------------------------------------------
>> ERROR: Task 595 (/home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 2729 tasks of which 1784 didn't need to be rerun and 1 failed.
>> No currently running tasks (2729 of 5634)
>>
>> Summary: 1 task failed:
>>   /home/arun/Documents/Dev/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb, do_compile
>> Summary: There was 1 WARNING message shown.
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>> /------------------------------------------------------------------------------------
>>
>> any idea or hint where i might be going wrong?
> You've trimmed the output at just the place where it was telling you
> what went wrong.  Re-run bitbake gcc-cross, and paste the output of
> that.
>
> Ross
>


