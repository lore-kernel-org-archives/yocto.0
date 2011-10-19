Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E014E0133D
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 07:14:42 -0700 (PDT)
Received: from [192.168.0.75] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 6021C2386E
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 13:32:57 +0100 (BST)
Message-ID: <4E9ED959.10705@communistcode.co.uk>
Date: Wed, 19 Oct 2011 15:06:17 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4E9EC5ED.6050503@ts.fujitsu.com>
	<4E9ECA29.3070400@communistcode.co.uk>
In-Reply-To: <4E9ECA29.3070400@communistcode.co.uk>
Subject: Re: Questions from a greenhorn about build problems
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
X-List-Received-Date: Wed, 19 Oct 2011 14:19:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 19/10/2011 14:01, Jack Mitchell wrote:
> On 19/10/2011 13:43, Rainer Koenig wrote:
>> Hi all,
>>
>> I'm using yoctoproject since one week now and got the latest
>> yocto-1.1/edison-6.0 git tree. I have been able to build core-image-sato
>> for the Beagleboard xM rev. A and the image works fine.
>>
>> Now my next goal is to build an image for the TI 8148 EVM board. Since
>> Yocto is based on OE-core I thought it was a good idea to get the
>> meta-texasinstruments layer that is listed in the OE wiki:
>> http://www.openembedded.org/wiki/LayerIndex
>>
>> So I cloned my git tree for meta-texasinstruments from
>> git://git.angstrom-distribution.org/meta-texasinstruments
>>
>> and looked a bit around in that. conf/machine shows a conf for
>> c6a814x-evm so I replaced the machine "beagleboard" with "c6a814x-evm"
>> in my local conf.
>>
>> I started `bitbake -k core-image-sato` and after builing around 4100 of
>> the 4221 recipes I got an error on a kernel tree from the arago-project
>> and from the u-boot compilation. I guess the second error occurs because
>> of the first error, so I had a better look at the first error.
>>
>> The buildstats for this packet show, that fetch failed. I tried to fetch
>> the SRC_URL by hand and it worked without any problem. Note: I'm behind
>> a firewall, so to clone git://... I need to go over a SOCKS proxy.
>> Therefore I created an /etc/gitconfig that works fine and the downloads
>> show, that lots of git-repos from the yocto recipes worked without any
>> probem, but now those from the meta-texasinstruments layer seem not to
>> work. I tried a bit around with bitbake -b -D and saw long commandlines
>> with lots of export before.
>>
>> It exports a GIT_CONFIG which points to
>> poky/tmp/sysroots/x86_64linux/usr/etc/gitconfig.
>>
>> First I replaced this gitconfig with my own gitconfig from /etc, but
>> that didn't work. Looking at the file structure there it seems that
>> ../sysroots/x86_64linux/ is chroot'ed somehow so I put gitconfig under
>> that chroot's /etc and now it seems that fetch is working.
>>
>> So stupid question: Is there a documentation that explains how that
>> build process is working on the machine/script level and why are the
>> recipes from yocto behaving different than to the ones that I imported
>> with the meta-texasinstruments layer?
>>
>> Best regards
>> Rainer
> Hi Rainer,
>
> Welcome to Yocto, I'm pleased you took my advice and are having a bit 
> more luck than you were with pure openembedded! There is a Wiki 
> article with some information about building behind a proxy 
> (https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy) 
> this has been discussed in length recently and lots of changes have 
> come into place. I am sure someone more knowlegdeable then me will be 
> along soon but there is lots of discussion on the subject here on the 
> mailing list and elsewhere.
>
> Cheers,
> Jack.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Further reading: 
http://www.yoctoproject.org/blogs/sgarman/2011/proxy-problem

