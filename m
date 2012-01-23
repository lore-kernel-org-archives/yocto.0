Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4662E01373
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 04:52:07 -0800 (PST)
Received: by qcsg14 with SMTP id g14so748921qcs.35
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 04:52:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=BQqwhItHyoJQel905GOh8igzt3iY0/ABISL41ZfTKhM=;
	b=NylPmS0DLzJLZHUPuUS/9NtiM/uu7+1fQgvaTGKYKHH5aOnWN7sBYhhN2IWbSlA8F9
	QsPXuiDWmFh6h7Ckr3J9CjW20lGHdohMof9l5gJJZUWd2T4Dij/GLYcJeqryry4fWds0
	6Fr2WzxKm25EJTbZeNWcSNexACz6jK4gMCe24=
Received: by 10.224.195.133 with SMTP id ec5mr8725043qab.7.1327323126820;
	Mon, 23 Jan 2012 04:52:06 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	r17sm26764569qap.11.2012.01.23.04.52.03 (version=SSLv3 cipher=OTHER);
	Mon, 23 Jan 2012 04:52:04 -0800 (PST)
Message-ID: <4F1D57CE.2050807@gmail.com>
Date: Mon, 23 Jan 2012 07:51:26 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <56375FA8-BB1F-4D3B-91EC-C84665DF9905@gmail.com>
	<4F1CB41A.301@mlbassoc.com>
In-Reply-To: <4F1CB41A.301@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: tar ball vs. git development questions
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
X-List-Received-Date: Mon, 23 Jan 2012 12:52:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/22/2012 08:12 PM, Gary Thomas wrote:
> On 2012-01-22 13:19, James Abernathy wrote:
>> I have used both git and the tarball methods of bitbaking projects, 
>> all of them derivatives of the examples in the Yocto documentation. I 
>> was having issues using the local clone of
>> the Yocto kernel git repository this weekend. I had successfully done 
>> that before, but I was rebuilding the PC workstation, and getting 
>> everything setup and tested some of the
>> meta-intel BSPs to make sure I had everything right. Cloning the 
>> linux-yocto-3.0 repository was successful, but the bakes against it 
>> failed. I made sure I had poky-extras setup
>> right, but I still had problems. To isolate the problem, I changed to 
>> building with the tarballs and everything worked fine.
>>
>> So that got me thinking what are the differences between the 2 methods:
>>
>>   * I assume that if I use the tarball method, bitbake, using the 
>> recipes, pulls down files from the online repositories and puts those 
>> files into the centralized local download
>>     directory ($DL_DIR), allowing reuse instead of re-downloading 
>> each time. The content downloaded for linux-yocto-3.0 is exactly what 
>> would be pulled from the local repository if
>>     I used a local clone of the git repository for linux-yocto-3.0.
>>   * If my assumption above is correct, if I'm not modifying the 
>> source code of the kernel (only changing config parameters), then 
>> once you've run at least one build with the
>>     tarball method, the $DL_DIR directory contains all the files 
>> you'll need to build any image with linux-yocto-3.0. So there is no 
>> need to have a local clone of the kernel
>>     repository for speeding up development. Am I right?
>>   * If I have a successful creation of a bare clone of 
>> linux-yocto-3.0.git, how could builds of Edison packages be failing? 
>> That makes me concerned about using git and successfully
>>     repeating builds of stable branches like Edison.
>
> If you set BB_GENERATE_MIRROR_TARBALLS = "1" (e.g. in local.conf)
> then you'll get tarballs which hold the git repositories after
> download.  You can then reuse these (by sharing the DL_DIR or
> using a local mirror).  Does that help with the issue you're seeing?
>
I'm not sure it does.  I don't want poky to do more work.  I have my 
download directory, $DL_DIR, outside my build directory so I can keep it 
run to run, as mentioned in the comments in local.conf. I was trying to 
understand 2 basic questions:

1.  what could be causing build failures using a freshly created bare 
clone yesterday vs. using the poky-edison-6.0 tarball.  It would be 
scary if you could clone the linux-yocto-3.0 successfully one day and 
have it be used in a build successfully, but clone it another day and it 
not work.  I figured that bitbake/poky pulled the same information into 
DL_DIR regardless of whether you pulled from the bare clone locally or 
straight from the on-line repository.
2. I was trying to look at items to speed up build runs.  I thought that 
if the downloads in DL_DIR were reused if they existed, it would speed 
up a run. It seems to.  So the question is, after the first build, the 
files I need for linux-yocto-3.0 are in DL_DIR regardless of whether 
they came from the online repository or the local bare clone. right?

Jim A


