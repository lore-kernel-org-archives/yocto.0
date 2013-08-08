Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B71F4E01480
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 10:30:12 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V7U2J-0007BA-Tn
	for yocto@yoctoproject.org; Thu, 08 Aug 2013 19:30:07 +0200
Received: from 213.249.12.30 ([213.249.12.30])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 19:30:07 +0200
Received: from gmane by 213.249.12.30 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 19:30:07 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Thu, 08 Aug 2013 20:29:56 +0300
Message-ID: <5203D594.8090400@reliableembeddedsystems.com>
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
	<5203B0D7.809@mlbassoc.com>
	<5203B4AC.2030609@reliableembeddedsystems.com>
	<5203B7F9.20001@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.30
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <5203B7F9.20001@mlbassoc.com>
Cc: public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
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
X-List-Received-Date: Thu, 08 Aug 2013 17:30:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 08/08/2013 06:23 PM, Gary Thomas wrote:
>>
>> How you do this?
>>
>> Do you use some magic build setting for this or a symlink to the nfs?
> 
> 
> I used the standard setup script, like this:
>   % . /local/poky/oe-init-build-env /MY_NFS_VOLUME/build_dir
> 
> This will create a build tree on MY_NFS_VOLUME named 'build_dir'.  Then
> I adjusted /MY_NFS_VOLUME/build_dir/conf/local.conf as needed and ran
> bitbake...
> 
> Note: I NEVER build inside of my Poky/Yocto tree - always in a separate
> build directory and quite often on a separate file system.
> 

I just tried this and with Ubuntu 12.04.2 LTS it does __NOT__ work (as
expected). I'm really surprised that you can have
/MY_NFS_VOLUME/build_dir due to the fact that there are hard links
required between the /MY_NFS_VOLUME/build_dir and where your host Linux
rootfs resides.

So either we have a different NFS setup or cp -al behaves differently.

Do you happen to have an Ubuntu build machine to test? I'm currently on
the road so it's a bit tricky for me to try with Fedora.

Regards,

Robert



..."As far as I know we never had an undetected error." - Anonymous

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



