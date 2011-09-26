Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED7E9E00552
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 01:21:26 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id AE1E422CB0
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 08:33:10 +0100 (BST)
Message-ID: <4E803604.1090209@communistcode.co.uk>
Date: Mon, 26 Sep 2011 09:21:24 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:6.0.2) Gecko/20110902 Thunderbird/6.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4E7C918D.5050407@communistcode.co.uk>
	<4E7C93EE.2030509@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F31BD344D6C@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F31BD344D6C@shsmsx502.ccr.corp.intel.com>
Subject: Re: Eclipse Plugin 1.1-M4
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
X-List-Received-Date: Mon, 26 Sep 2011 08:21:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 24/09/2011 03:22, Lu, Lianhao wrote:
> Hi Jack,
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jack Mitchell
>> Sent: Friday, September 23, 2011 10:13 PM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Eclipse Plugin 1.1-M4
>>
>> On 23/09/2011 15:02, Jack Mitchell wrote:
>>> I am trying to get the latest plugin working with Eclipse Indigo and
>>> have followed the instructions listed here:
>>>
>>> http://permalink.gmane.org/gmane.linux.embedded.yocto.general/2596
>>>
>>> The instructions all work fine until I point Eclipse to a local git
>>> clone of the EclipsePlugin directory. When I try to install the plugin
>>> I recieve this error message:
>>>
>>> Cannot complete the install because one or more required items could
>>> not be found.
>>>    Software being installed: Yocto Plugin for Eclipse 1.1.0.qualifier
>>> (org.yocto.sdk.feature.group 1.1.0.qualifier)
>>>    Missing requirement: Yocto Plugin for Eclipse 1.1.0.qualifier
>>> (org.yocto.sdk.feature.group 1.1.0.qualifier) requires
>>> 'org.yocto.sdk.source.feature.group 0.0.0' but it could not be found
>>>
>>> Could anyone shed any light on the situation?
> How did you build out the plugin? You many try out using the scripts/build.sh to build the 1.1M4 plugin upon your own Indigo.
>    ECLIPSE_HOME=<dir where you installed your Indigo>  scripts/build.sh 1.1M4<your release name>
> You should find the file org.yocto.sdk-<your release name>-<date>-archive.zip after a successful build. Please try install that archive zip file and see if it works.
>
>>> Regards,
>>> Jack.
>> Ok, I managed to get it installed by adding the 1.0 repository so that it could
>> find the'group' it was looking for. When installed I then tried to alter the
>> preferences and promtly recieved this message:
> Do you mean you installed the 1.0 plugin? I don't think 1.0 plugin would work with Indigo.
>
>> Unable to create the selected preference page.
>> org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage
>>
>> Screenshot: http://i.imgur.com/Ieibg.png
>>
>> If I try to create a project using the yocto plugin it throws a nullPointer error -
>> am I missing something here or are there still issues to be ironed out on the
>> new 1.1 git?
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Lu,

Thank you for your input, I managed to get it going to some extent with 
help from zhang in IRC, the method I am using at the moment is adding 
the projects to my workspace and launching the project as a plugin. I am 
now however fighting with tun/tap qemu issues, it's never easy is it!

Again, thank you for your help!

Jack.

