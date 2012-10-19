Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BD7DE003D7
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 04:50:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Oct 2012 04:50:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,612,1344236400"; d="scan'208";a="237462691"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 19 Oct 2012 04:50:34 -0700
Received: from mlindnex-mobl1.ger.corp.intel.com (unknown [10.237.105.49])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 27D302C8001
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 04:50:33 -0700 (PDT)
Message-ID: <50813E84.9010102@linux.intel.com>
Date: Fri, 19 Oct 2012 14:50:28 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20121016 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DDDB9E6645DE24488B8485B41A051F471D9618D2@Mercury.usurf.usu.edu>
	<36ED13F3654AE54CA763E6821D93A5711047B519@szxeml534-mbx.china.huawei.com>,
	<507E6C5A.1080108@linux.intel.com>
	<DDDB9E6645DE24488B8485B41A051F471D965CDB@Mercury.usurf.usu.edu>
In-Reply-To: <DDDB9E6645DE24488B8485B41A051F471D965CDB@Mercury.usurf.usu.edu>
Subject: Re: .bashrc not being used by root account
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
X-List-Received-Date: Fri, 19 Oct 2012 11:50:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/18/2012 07:52 PM, Jonathan Haws wrote:
> Okay, I have done a couple of things:
>
> 1. I appended to the base-passwd recipe and added my own patch that would patch the passwd file to have root use a bash shell.  I have verified that this is the case when I login via echo $0.  It tells me that root's shell is bash.
>
> 2. I have appended to the base-files recipe and added a do_install_append() function to my bbappend file that copies the dot.bashrc to /home/root/.bashrc.  I have verified that this is taking place and the .bashrc file is actually in /home/root.
>
> 3. I ran 'strace -f bash' after logging in and /home/root/.bashrc is sourced (I saw it in the output and my aliases were available).
>
> However, upon first login, it appears that /home/root/.bashrc is NOT sourced by bash.  How can I get bash to source that file when I login at a console?
>

There are 2 solutions for this: rename your .bashrc in .profile, or copy 
/etc/skel/.profile in /root/.profile

.bashrc is sourced only for non-login shells. For console login shells 
only .profile (or .bash_profile or .bash_login) is sourced.

Cheers,
--Mihai

> Thanks for the help!
> Jonathan
>
>
> ________________________________________
> From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on behalf of Mihai Lindner [mihaix.lindner@linux.intel.com]
> Sent: Wednesday, October 17, 2012 02:29
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] .bashrc not being used by root account
>
> On 10/17/2012 09:25 AM, Venkata ramana gollamudi wrote:
>> You can check the same with  "strace -f bash"
>> You can see the files being loaded, as there is a rc file loading sequence exists for bash.
>>
>> Regards,
>> Ramana
>>
>> ________________________________________
>> From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on behalf of Jonathan Haws [Jonathan.Haws@sdl.usu.edu]
>> Sent: Tuesday, October 16, 2012 9:32 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] .bashrc not being used by root account
>>
>> I have modified the .bashrc file for the system, however the root account does not seem to use it by default.  What am I missing?  I would rather not have to source the .bashrc file every time I login as root.
>
> Try `echo $0` to see the shell you're in. By default you should be in
> `sh`, which does not source .bashrc.
> You can execute `bash` after login, or change the login shell of 'root'.
>
> Cheers,
> --Mihai
>
>>
>> Thanks,
>> Jonathan
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> Mihai Lindner
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Mihai Lindner

