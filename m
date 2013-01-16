Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C052E011AB
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 06:20:47 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TvTn6-0006ZI-8Z; Wed, 16 Jan 2013 14:16:32 +0000
Message-ID: <50F6B72C.5070208@dynamicdevices.co.uk>
Date: Wed, 16 Jan 2013 14:20:28 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: gary@mlbassoc.com
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
	<50EA5C2E.9060701@comcast.net>
	<50EAB28F.6080506@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301071251510.1319@oneiric>
	<CAK18fxFLb3PsK0c=kBucStW_7OFj+UrxCg=g4b7M=D3MXCvw5A@mail.gmail.com>
	<alpine.DEB.2.02.1301071450500.21516@oneiric>
	<50F63E70.3000000@comcast.net>
	<50F6AF06.3020908@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301160857110.20863@oneiric>
	<50F6B2EF.9030807@dynamicdevices.co.uk>
	<50F6B52E.5050006@mlbassoc.com>
In-Reply-To: <50F6B52E.5050006@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Wed, 16 Jan 2013 14:20:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 16/01/2013 14:11, Gary Thomas wrote:
> On 2013-01-16 07:02, Alex J Lennon wrote:
>> On 16/01/2013 13:59, Robert P. J. Day wrote:
>>> On Wed, 16 Jan 2013, Alex J Lennon wrote:
>>>
>>>> On 16/01/2013 05:45, Ed Nelson wrote:
>>>>> I finally got a response back from github ....
>>>>>
>>>>> Hi Ed,
>>>>>
>>>>> We tracked the issue down to an internal network timeout (it only 
>>>>> happens
>>>>> when `--quiet` is used, because git is silent on the network while 
>>>>> preparing
>>>>> the clone in that case). We've bumped up the limit, and you should 
>>>>> be able
>>>>> to clone now. Please let us know if you have any more trouble.
>>>>>
>>>>> ....
>>>>>
>>>>> I have not tried it yet but hopefully they fixed the problem
>>>> I've just tried it and it is still failing -
>>>>
>>>> WARNING: Failed to fetch URL
>>>> git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27,
>>>> attempting MIRRORS if available
>>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, 
>>>> output:
>>>> Cloning into bare repository
>>>> '/data_drive/RPiMonoSmoke/yoctoProject/raspberryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'... 
>>>>
>>>>
>>>> fatal: read error: Connection timed out
>>>> fatal: early EOF
>>>> fatal: index-pack failed
>>>>
>>>> ERROR: Function failed: Fetcher failure for URL:
>>>> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'. 
>>>>
>>>> Unable to fetch URL from any source.
>>>    github has been particularly annoying with respect to this lately.
>>> my workaround is to simply clone what you need manually, then tweak
>>> the recipe thusly to point at your local repo:
>>>
>>> SRCREV = "10182a3bc434b27740f81c2b836a1af943060241"
>>> SRC_URI =
>>> "git:///home/rpjday/oe/dist/t/linux;protocol=git;branch=rpi-3.2.27 \
>>>            "
>>>
>>>    yes, it's hacky, but it lets me get back to work.  sure be nice when
>>> this silliness is resolved.
>>>
>>> rday
>>>
>>
>> Thanks Robert. I've got an archive I can use but wanted to see if it 
>> was working yet.
>>
>> I think the fetcher archives up the retrieved git repo into a .tar.gz 
>> doesn't it in the downloads
>> directory? Would  it not help if those tarballs were mirrored so the 
>> fetcher could fall back on
>> the mirror?
>
> Yes, that would work (it's how I use it).  However, it's not tiny :-)  
> Here's what the
> tarball looked like last I touched this:
>
> -rw-rw-r-- 1 996 996 555905690 Sep  5 10:29 
> /work/misc/Poky/sources/git2_github.com.raspberrypi.linux.git.tar.gz
>

Quite :) I took a look in classes/mirrors.bbclass and I see a Yocto 
mirror URI in there for git://

http://downloads.yoctoproject.org/mirror/sources/

I see that there are similar sized linux yocto tarballs mirrored at that 
location. Would it be appropriate to
mirror the RPi kernel tarball up there for the time being?

Cheers, Alex


