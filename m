Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9838EE003FA
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 08:23:35 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8DDEFF811FD; Thu,  8 Aug 2013 09:23:34 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4F066F811EE;
	Thu,  8 Aug 2013 09:23:32 -0600 (MDT)
Message-ID: <5203B7F9.20001@mlbassoc.com>
Date: Thu, 08 Aug 2013 09:23:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
	<5203B0D7.809@mlbassoc.com>
	<5203B4AC.2030609@reliableembeddedsystems.com>
In-Reply-To: <5203B4AC.2030609@reliableembeddedsystems.com>
Subject: Re: can not build yocto on NFS mounted NAS
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
X-List-Received-Date: Thu, 08 Aug 2013 15:23:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-08 09:09, Robert Berger wrote:
> Hi,
>
> On 08/08/2013 05:53 PM, Gary Thomas wrote:
>>
>> Interesting.  I'm building now - OEROOT on a local ext3 file system,
>> build/tmp on NFS - and it's working just fine.  My host is Fedora (15).
>>
>
> /poky
>    /beagle-xm
>      /cache
>      /conf
>      /tmp    <--- this /tmp?
>
> How you do this?
>
> Do you use some magic build setting for this or a symlink to the nfs?


I used the standard setup script, like this:
   % . /local/poky/oe-init-build-env /MY_NFS_VOLUME/build_dir

This will create a build tree on MY_NFS_VOLUME named 'build_dir'.  Then
I adjusted /MY_NFS_VOLUME/build_dir/conf/local.conf as needed and ran
bitbake...

Note: I NEVER build inside of my Poky/Yocto tree - always in a separate
build directory and quite often on a separate file system.

(sorry for any duplicate messages, I forgot to follow my own advice
and CC the list!)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

