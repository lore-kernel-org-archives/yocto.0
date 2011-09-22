Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D70EEE0051B
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2011 01:13:03 -0700 (PDT)
Received: from [192.168.0.58] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id AFCF522BCE
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2011 08:32:33 +0100 (BST)
Message-ID: <4E7AEE10.8030702@communistcode.co.uk>
Date: Thu, 22 Sep 2011 09:13:04 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:6.0.2) Gecko/20110902 Thunderbird/6.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <201108231642.49667.paul.eggleton@linux.intel.com>
	<201109211813.28264.paul.eggleton@linux.intel.com>
In-Reply-To: <201109211813.28264.paul.eggleton@linux.intel.com>
Subject: Re: Tested host distros for 1.1
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
X-List-Received-Date: Thu, 22 Sep 2011 08:13:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 21/09/2011 18:13, Paul Eggleton wrote:
> On Tuesday 23 August 2011 16:42:49 Paul Eggleton wrote:
>> We now have the mechanism for fixing bug #1096 [1] i.e. showing a warning
>> if the user is running a build on a distro that has not been tested;
>> however to make this work what we now need is a list of distributions we
>> want to consider tested. What distros specifically are we going to list
>> for 1.1?
>>
>> [1] http://bugzilla.pokylinux.org/show_bug.cgi?id=1096
> So thanks to Jiajun we now have a wiki page to track tested host distros:
>
>    https://wiki.yoctoproject.org/wiki/Distribution_Support
>
> If you're successfully building Yocto on a host distro that's not currently
> listed, could you reply here with the information we're collecting on that
> page (or if you prefer, add it to the wiki page yourself)?
>
> Many thanks,
> Paul
>

I'm building on an ArchLinux 64bit host here. Can't remember the exact 
packages that were required to install but I retrieved them all easily 
from offical and possibly one from an unofficial repository.

One thing to note though is that I could only have Python2 installed and 
I had to symlink it to python, as ArchLinux has Python3 linked to python 
by default.

Regards,
Jack.

