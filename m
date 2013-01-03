Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0F6FE006D2
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 02:58:18 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>) id 1TqiRL-0000uz-8o
	for yocto@yoctoproject.org; Thu, 03 Jan 2013 10:54:23 +0000
Message-ID: <50E5641F.9050301@dynamicdevices.co.uk>
Date: Thu, 03 Jan 2013 10:57:35 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50E4AAFE.4080905@btinternet.com>
	<50E5620A.3070208@communistcode.co.uk>
In-Reply-To: <50E5620A.3070208@communistcode.co.uk>
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
X-List-Received-Date: Thu, 03 Jan 2013 10:58:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 03/01/2013 10:48, Jack Mitchell wrote:
> On 02/01/13 21:47, David Evans wrote:
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
>> As a complete Newbie to Yocto, having the Quick-Start fail like this 
>> is killing me, as I have no stable example upon which to build my 
>> under standing.
>>
>> My ultimate goal is to run the Raspberry Pi project as outlined at 
>> http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7, but I am 
>> seeing the same do_fetch failures as those reported by Ed Nelson at 
>> https://lists.yoctoproject.org/pipermail/yocto/2013-January/013571.html.
>>
>> Any help will be much appreciated.
>>
>>
>> Regards,
>>
>> David
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> I will try to get round to updating this tutorial soon; as it has become 
> a bit dated - however as Alex mentions it should still work fine albeit 
> with a few warnings due to unavailable sources.
> 
> It should just be a matter of changing a few git revisions, and tweaking 
> the wording a bit to involve the new meta-yocto, meta-yocto-bsp split. 
> If anyone wishes to step up to the plate the source for this blog post 
> is available at [1] and I will happily accept patches.
> 
> Cheers,
> Jack.
> 
> [1] https://github.com/CommunistCode/PimpMyPi-Community-Blog-Posts
> 

Jack,

I found that post hugely helpful thanks, as I'd tried some months before
with the information at Distant Earth (http://www.distant-earth.com/wp/)
and for some reason I just wasn't able to produce an image that booted
on the RPi.

As you mention, I did find those git commits to be a little old and I
wasn't able to get an EFL UI build working from them.

As a result I migrated forward to the latest head commits at the time
and was able to get a build going (running EFL in fact)

I put some notes up here as I went along, which build upon the Pimp My
Pi blog post -

https://www.assembla.com/spaces/ciseco-eve/wiki/Getting_Started

I haven't yet updated those notes to reflect the newer Git commits I was
using but I've noted them down here -

https://www.assembla.com/spaces/ciseco-eve/wiki/Work_in_progress

Not sure if that helps, except that I can say it is building and working
from these much more recent commits...

(On a separate note I'd be interested in a chat with anybody who has any
ideas on performance of EFL and how it can be improved, e.g. improved
XServer support, hard fp perhaps, maybe EFL on DirectFB or similar?)

Cheers,

Alex

