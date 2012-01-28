Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14584E0030F
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 02:13:40 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A9D12F812C7; Sat, 28 Jan 2012 03:13:36 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 037F1F81232;
	Sat, 28 Jan 2012 03:13:35 -0700 (MST)
Message-ID: <4F23CA4E.3000400@mlbassoc.com>
Date: Sat, 28 Jan 2012 03:13:34 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2182E2.2030101@gmail.com> <4F21A1B4.60305@intel.com>
	<4F21C66C.408@gmail.com> <4F21C7E4.3070102@intel.com>
	<4F21CDDB.1040106@gmail.com> <4F21CF79.5060909@intel.com>
	<4F22F040.3000109@linux.intel.com>
	<CAEsOVNc1Fqm2buWjOg41AMd2sa7bO-v++OEdJH7m_ESdYNxDTQ@mail.gmail.com>
In-Reply-To: <CAEsOVNc1Fqm2buWjOg41AMd2sa7bO-v++OEdJH7m_ESdYNxDTQ@mail.gmail.com>
Subject: Re: understanding recipes
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
X-List-Received-Date: Sat, 28 Jan 2012 10:13:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-27 18:42, McClintock Matthew-B29882 wrote:
> On Fri, Jan 27, 2012 at 10:43 AM, Joshua Lock<josh@linux.intel.com>  wrote:
>> On 26/01/12 14:11, Scott Garman wrote:
>>>
>>> In this case, the LIC_FILES_CHKSUM is storing the md5sum of the COPYING
>>> file, which is stored in the top-level directory of the extracted sources.
>>>
>>> So manually download the hello version you are trying to use, extract
>>> the tarball locally, and run md5sum against the COPYING file. Then
>>> update the LIC_FILES_CHKSUM field with that new md5 checksum.
>>
>>
>> Or if you're lazy, like me, you can just run the build and let it fail then
>> run md5sum on the extracted source in the work directory.
>>
>> i.e. for qemux86 hello world I could bitbake helloworld then:
>>
>> md5sum tmp/work/i586-poky-linux/hello-world-2.7-r0/hello-world-2.7/COPYING
>
> I think it even tells you what it should be, so you don't even need to
> do this step. Just set the right file and the correct lines within the
> file and run until failure.

Not quite; bitbake will tell you what the correct MD5 and SHA checksums
are for the source package, but it has ho idea what file(s) contain
license information so there's little it can do to guide you on that front.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

