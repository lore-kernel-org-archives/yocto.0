Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67910E00406
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 07:30:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r7GETtpL027103
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 16 Aug 2013 07:29:56 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 16 Aug 2013 07:29:56 -0700
Message-ID: <520E3762.8040307@windriver.com>
Date: Fri, 16 Aug 2013 09:29:54 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD><520D242A.6040103@linux.intel.com><D4677E29EEA744F99ECD3BF698767C89@PAULD>
	<520D6431.2080105@windriver.com>
	<E7C5F907D16F437AB756BDEC599B01C4@PAULD>
In-Reply-To: <E7C5F907D16F437AB756BDEC599B01C4@PAULD>
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Fri, 16 Aug 2013 14:30:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/15/13 7:20 PM, Paul D. DeRocco wrote:
>> From: Mark Hatle
>>
>> A simple way to diagnose if your package is even in the
>> install list is to do
>> bitbake -e <image>, then scan the output for
>> "PACKAGE_INSTALL".  If your package
>> is not listed there, then something has either cleared your
>> configuration or you
>> have a typo.
>>
>> IMAGE_INSTALL_append = " my_package" should work, and
>> generally won't be cleared
>> by a recipe.
>
> It's there, and it's all working now. I've had things break in odd ways
> before, and recover when I rebuilt. This time it took a couple of tries.
>
> What makes it frustrating is that I'm building on a wimpy Atom system.
> I've been on the verge of buying a killer system just to do builds, but I
> keep thinking, maybe I'll only need to do this another dozen or so times
> and then I'll be done, in which case it wouldn't be a good investment.
>
>> (Note you should modify IMAGE_INSTALL, which is transformed
>> by the system into
>> PACKAGE_INSTALL... modifying PACKAGE_INSTALL can lead to problems.)
>
> I don't think that all the various ways to append stuff will ever make
> sense to me. Currently, I'm using IMAGE_INSTALL += "..." in my top level
> recipe, and it works. I don't know what IMAGE_INSTALL_append does
> differently.
>

Difference between IMAGE_INSTALL += and IMAGE_INSTALL_append is when the process 
happens.

IMAGE_INSTALL += happens immediately, and if something later in the resolution 
does "IMAGE_INSTALL = " then you can lose the value.

IMAGE_INSTALL_append happens at the very end of variable resolution.. i.e.:

IMAGE_INSTALL_append = " mypkg"
IMAGE_INSTALL = "foo"
IMAGE_INSTALL += "bar"
IMAGE_INSTALL = "foobar"

Your end result will be "foobar mypkg"...

(USUALLY the '=' in the example above actually indicates a bug of some kind.. 
but it does happen.)

--Mark

