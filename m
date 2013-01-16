Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6674EE01490
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 06:11:51 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 02552F81243; Wed, 16 Jan 2013 07:11:50 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2BAF4F8121F;
	Wed, 16 Jan 2013 07:11:50 -0700 (MST)
Message-ID: <50F6B52E.5050006@mlbassoc.com>
Date: Wed, 16 Jan 2013 07:11:58 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
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
In-Reply-To: <50F6B2EF.9030807@dynamicdevices.co.uk>
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
X-List-Received-Date: Wed, 16 Jan 2013 14:11:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-01-16 07:02, Alex J Lennon wrote:
> On 16/01/2013 13:59, Robert P. J. Day wrote:
>> On Wed, 16 Jan 2013, Alex J Lennon wrote:
>>
>>> On 16/01/2013 05:45, Ed Nelson wrote:
>>>> I finally got a response back from github ....
>>>>
>>>> Hi Ed,
>>>>
>>>> We tracked the issue down to an internal network timeout (it only happens
>>>> when `--quiet` is used, because git is silent on the network while preparing
>>>> the clone in that case). We've bumped up the limit, and you should be able
>>>> to clone now. Please let us know if you have any more trouble.
>>>>
>>>> ....
>>>>
>>>> I have not tried it yet but hopefully they fixed the problem
>>> I've just tried it and it is still failing -
>>>
>>> WARNING: Failed to fetch URL
>>> git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27,
>>> attempting MIRRORS if available
>>> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>>> Cloning into bare repository
>>> '/data_drive/RPiMonoSmoke/yoctoProject/raspberryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'...
>>>
>>> fatal: read error: Connection timed out
>>> fatal: early EOF
>>> fatal: index-pack failed
>>>
>>> ERROR: Function failed: Fetcher failure for URL:
>>> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'.
>>> Unable to fetch URL from any source.
>>    github has been particularly annoying with respect to this lately.
>> my workaround is to simply clone what you need manually, then tweak
>> the recipe thusly to point at your local repo:
>>
>> SRCREV = "10182a3bc434b27740f81c2b836a1af943060241"
>> SRC_URI =
>> "git:///home/rpjday/oe/dist/t/linux;protocol=git;branch=rpi-3.2.27 \
>>            "
>>
>>    yes, it's hacky, but it lets me get back to work.  sure be nice when
>> this silliness is resolved.
>>
>> rday
>>
>
> Thanks Robert. I've got an archive I can use but wanted to see if it was working yet.
>
> I think the fetcher archives up the retrieved git repo into a .tar.gz doesn't it in the downloads
> directory? Would  it not help if those tarballs were mirrored so the fetcher could fall back on
> the mirror?

Yes, that would work (it's how I use it).  However, it's not tiny :-)  Here's what the
tarball looked like last I touched this:

-rw-rw-r-- 1 996 996 555905690 Sep  5 10:29 /work/misc/Poky/sources/git2_github.com.raspberrypi.linux.git.tar.gz

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

