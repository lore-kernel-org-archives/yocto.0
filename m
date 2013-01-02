Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2291AE013CE
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 14:06:54 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>) id 1TqWOp-0000e0-FC
	for yocto@yoctoproject.org; Wed, 02 Jan 2013 22:02:59 +0000
Message-ID: <50E4AF57.8010302@dynamicdevices.co.uk>
Date: Wed, 02 Jan 2013 22:06:15 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50E4AAFE.4080905@btinternet.com> <50E4ACE5.2020502@mlbassoc.com>
In-Reply-To: <50E4ACE5.2020502@mlbassoc.com>
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
X-List-Received-Date: Wed, 02 Jan 2013 22:06:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 02/01/2013 21:55, Gary Thomas wrote:
> On 2013-01-02 14:47, David Evans wrote:
>> Dear Sirs,
>>
>> I apologise for asking this question to everyone, but I can't figure out who best to direct this question to.
>>
>> When I build the standard Yocto Project in the Quick-Start guide I get the following Warnings.
>>
>> WARNING: Failed to fetch URL http://www.apache.org/dist/subversion/subversion-1.7.6.tar.bz2, attempting MIRRORS if available
>> WARNING: Failed to fetch URL ftp://ftp.ossp.org/pkg/lib/uuid/uuid-1.6.2.tar.gz, attempting MIRRORS if available
>> WARNING: Failed to fetch URL http://downloads.sourceforge.net/project/libpng/libpng12/1.2.49/libpng-1.2.49.tar.bz2, attempting MIRRORS if available
>>
>> As a complete Newbie to Yocto, having the Quick-Start fail like this is killing me, as I have no stable example upon which to build my under standing.
>>
>> My ultimate goal is to run the Raspberry Pi project as outlined at http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7, but I am seeing the same do_fetch failures as those
>> reported by Ed Nelson at https://lists.yoctoproject.org/pipermail/yocto/2013-January/013571.html.
>>
>> Any help will be much appreciated.
> 
> What version of Yocto (OE-core) do you have?  Those are pretty old
> recipes and the corresponding tarballs seem to no longer be available.
> If you update your repositories, you may get farther along.
> 
> n.b. when you run bitbake, you'll see a summary of what repositories
> you are using.  Posting that would help a lot.
> 

fwiw I followed these instructions over the Christmas period and they
worked well for me to build a working RPi image.

You do see warnings from time to time as the build tool fails to find a
primary source, but usually it falls back to a mirror (although it
doesn't seem to tell you that) and works.

Have you tried adding a few -vv 's to the bitbake command line to give
you some more information about what's going on?

Cheers,

Alex


