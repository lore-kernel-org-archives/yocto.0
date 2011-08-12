Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70A20E011B6
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 02:09:10 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:21144
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1QrmyU-0003MH-Gr
	for yocto@yoctoproject.org; Fri, 12 Aug 2011 09:20:14 +0100
Message-Id: <B44F0C76-F163-4264-B052-BA9E4CC4CDC3@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4E4473A4.4060403@windriver.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 12 Aug 2011 09:20:11 +0100
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
	<4E446C74.9070807@intel.com> <4E4473A4.4060403@windriver.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Fri, 12 Aug 2011 09:09:11 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Scott / Bruce,


On 12 Aug 2011, at 00:57, Scott Garman wrote:

>
>> cp: cannot stat
>> `/home/chris/yocto/yocto-versions/laverne-4.0.1/meta/recipes-kernel/ 
>> linux/files/defconfig':
>> No such file or directory
>
> It looks like this is where the file is expected.
>
> I believe also meta/recipes-kernel/linux/linux/defconfig should also  
> work.

I should have mentioned that ;-) As the bbappend file is in my layer,  
I was expecting (and want) the defconfig file to be stored/found in  
it. I created this layer by copying another one that I've got. It's  
unpack log shows:

NOTE: Unpacking /home/chris/yocto/yocto-downloads/ 
git_git.pokylinux.org.linux-2.6-windriver.git.tar.gz to /home/chris/ 
yocto/sjs-build/tmp/work/LX800-poky-linux/linux- 
wrs 
-2.6.34 
+ 
git0 
+ 
b67e060194a38c6331da1532bd06446087a42b3b_0 
+0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
NOTE: Unpacking /home/chris/yocto/meta-keylevel-sjs/recipes/linux/ 
linux-wrs/defconfig to /home/chris/yocto/sjs-build/tmp/work/LX800-poky- 
linux/linux- 
wrs 
-2.6.34 
+ 
git0 
+ 
b67e060194a38c6331da1532bd06446087a42b3b_0 
+0431115c9d720fee5bb105f6a7411efb4f851d26-r12/

I suspect I've got something configured wrong with the new layer, but...

On 12 Aug 2011, at 01:28, Bruce Ashfield wrote:

>> I believe also meta/recipes-kernel/linux/linux/defconfig should  
>> also work.
>
> Yep, bitbake is telling us where it is looking. The -wrs_git is the
> extension to the recipe, so that isn't where it is looking.

Sorry Bruce, that was a typo (see working log above for a layer that  
works). I've tried using:

MyLayer/recipies/linux/defconfig
MyLayer/recipies/linux/files/defconfig (with no FILESEXTRAPATHS)
MyLayer/recipies/linux/linux-wrs/defconfig

> On another note, there's been a lot of fixes to the kern tools to
> improve the process for adding BSPs and extending the tree (and
> one defconfig bug fix), so I'll be interested to hear how this
> goes.

I'm planning to give it a try after the next release. I'm currently  
just trying to migrate an existing (4.0.1) project to a new platform  
and decided to add a new layer rather than change version at the same  
time.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




