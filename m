Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A329E007A2; Thu, 25 Sep 2014 21:13:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCE99E00790
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 21:13:52 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id 5EF1C2294E0F
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 04:13:50 +0000 (UTC)
Message-ID: <5424E7FC.6070403@mindchasers.com>
Date: Fri, 26 Sep 2014 00:13:48 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACjDgAMYTpdLF5YSJNVkceaYMXCVT1n-th1nJuTc=nYFu7EPDg@mail.gmail.com>	<CAJTo0La-_4byM=QnF8-_wT_JBaPs=P-vUjqvxHfBTBo2boaO-w@mail.gmail.com>
	<CACjDgAO+390wcoRYGkcPOSMeXNmjgATskfWhyFTzP7y60CgV-Q@mail.gmail.com>
In-Reply-To: <CACjDgAO+390wcoRYGkcPOSMeXNmjgATskfWhyFTzP7y60CgV-Q@mail.gmail.com>
Subject: Re: Adding OpenEmbedded layer
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
X-List-Received-Date: Fri, 26 Sep 2014 04:13:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/25/2014 10:11 PM, Albert K wrote:
> Hi,
>
> Thanks for the information.   I removed the previously cloned
> directory and re-clone it with the following command and now it works.
>
> sudo git clone -b daisy git://git.openembedded.org/meta-openembedded


FYI - you could have done a

$ git branch -r

and you would have seen the remote daisy branch. After that, you could 
have just done a:

$ git checkout daisy

and it would have created a local daisy tracking branch for you.





>
>
>
> On Thu, Sep 25, 2014 at 6:18 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> On 25 September 2014 11:00, Albert K <alberk@gmail.com> wrote:
>>> ExpansionError during parsing
>>> /yocto/poky/meta-openembedded/meta-oe/recipes-support/lzip/lzip_1.15.bb:
>>> Failure expanding variable do_fetch[file-checksums], expression was
>>> ${@bb.fetch.get_checksum_file_list(d)} which triggered exception
>>> MalformedUrl: The URL: '${SAVANNAH_GNU_MIRROR}/lzip/lzip-1.15.tar.gz'
>>> is invalid and cannot be interpreted
>>
>> You're using poky 1.7.1 but meta-oe from git master, which depends on
>> some variables that have been added to poky master.
>>
>> Switch the meta-oe clone to the daisy branch, and it will work.
>>
>> Ross


