Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA63E013CE
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 15:17:47 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Jan 2013 15:16:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,398,1355126400"; d="scan'208";a="266461348"
Received: from unknown (HELO [10.255.14.64]) ([10.255.14.64])
	by orsmga002.jf.intel.com with ESMTP; 02 Jan 2013 15:17:42 -0800
Message-ID: <50E4C016.6040408@linux.intel.com>
Date: Wed, 02 Jan 2013 15:17:42 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <50E4AAFE.4080905@btinternet.com> <50E4ACE5.2020502@mlbassoc.com>
In-Reply-To: <50E4ACE5.2020502@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: Basic failures building 1st Yocto Project and Yocto Raspberry Pi
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
X-List-Received-Date: Wed, 02 Jan 2013 23:17:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/02/2013 01:55 PM, Gary Thomas wrote:
> On 2013-01-02 14:47, David Evans wrote:
>> Dear Sirs,
>>
>> I apologise for asking this question to everyone, but I can't figure
>> out who best to direct this question to.
>>
>> When I build the standard Yocto Project in the Quick-Start guide I get
>> the following Warnings.
>>
>> WARNING: Failed to fetch URL
>> http://www.apache.org/dist/subversion/subversion-1.7.6.tar.bz2,
>> attempting MIRRORS if available
>> WARNING: Failed to fetch URL
>> ftp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz, attempting MIRRORS
>> if available
>> WARNING: Failed to fetch URL
>> http://downloads.sourceforge.net/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.bz2,
>> attempting MIRRORS if available
>>
Notice that these are WARNINGS, bitbake is doing the right thing and 
falling back to the Yocto Project Mirrors where those older tarballs do 
exist.

>> As a complete Newbie to Yocto, having the Quick-Start fail like this
>> is killing me, as I have no stable example upon which to build my
>> under standing.
>>
Is your build failing beyond this?  Are you able to create an image?  I 
recently built RPi, myself and it worked OK for me, both images.


If you have other failures please let us know.


>> My ultimate goal is to run the Raspberry Pi project as outlined at
>> http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7, but I am
>> seeing the same do_fetch failures as those
>> reported by Ed Nelson at
>> https://lists.yoctoproject.org/pipermail/yocto/2013-January/013571.html.
>>
>> Any help will be much appreciated.
>
> What version of Yocto (OE-core) do you have?  Those are pretty old
> recipes and the corresponding tarballs seem to no longer be available.
> If you update your repositories, you may get farther along.
>
Both Openembedded and the Yocto Project keep mirrors of the older 
tarballs since as you say some upstreams remove older tarballs from 
their sites.


Sau!

> n.b. when you run bitbake, you'll see a summary of what repositories
> you are using.  Posting that would help a lot.
>

