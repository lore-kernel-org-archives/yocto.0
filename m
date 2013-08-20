Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38207E00747
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 09:46:11 -0700 (PDT)
Received: from frontend3.mail.m-online.net (frontend3.mail.intern.m-online.net
	[192.168.6.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3cKHvP2nyXz3hhcR
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 18:46:08 +0200 (CEST)
Received: from localhost (dynscan3.mnet-online.de [192.168.6.84])
	by mail.m-online.net (Postfix) with ESMTP id 3cKHvN6Cngzbbbw
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 18:46:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.6.180])
	by localhost (dynscan3.mail.m-online.net [192.168.6.84]) (amavisd-new,
	port 10024) with ESMTP id m8k6ah2eg0Qw for <yocto@yoctoproject.org>;
	Tue, 20 Aug 2013 18:46:07 +0200 (CEST)
X-Auth-Info: KDn/WUBiTnwXK8jvTI4ateK6eB0yLf8Ibyx17bMcAqQ=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de
	[62.245.181.162]) by mail.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 18:46:07 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by webmail.mnet-online.de
	with HTTP (HTTP/1.1 POST); Tue, 20 Aug 2013 16:45:37 +0000
MIME-Version: 1.0
Date: Tue, 20 Aug 2013 18:45:37 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
In-Reply-To: <52113215.5090102@reliableembeddedsystems.com>
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
	<5203B0D7.809@mlbassoc.com>
	<5203B4AC.2030609@reliableembeddedsystems.com>
	<5203B7F9.20001@mlbassoc.com>
	<5203D594.8090400@reliableembeddedsystems.com>
	<5203DAD9.9080101@mlbassoc.com>
	<52040611.8020106@reliableembeddedsystems.com>
	<52041846.8010201@mlbassoc.com>
	<52113215.5090102@reliableembeddedsystems.com>
Message-ID: <c98ff6d31f5118f8f3154ed5746e3fc7@denx.de>
X-Sender: lothar@denx.de
User-Agent: Roundcube Webmail/0.9.2
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
X-List-Received-Date: Tue, 20 Aug 2013 16:46:12 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Am 2013-08-18 22:44, schrieb Robert Berger:
> Hi,
> 
> Just for the record I was able to remove the hard link with a small
> patch and now things look good (so far) - although it will consume more
> disk space.
> 
> diff --git a/meta/lib/oe/path.py b/meta/lib/oe/path.py
> index faa0f61..3225993 100644
> --- a/meta/lib/oe/path.py
> +++ b/meta/lib/oe/path.py
> @@ -90,7 +90,7 @@ def copyhardlinktree(src, dst):
>          if not len(os.listdir(src)):
>              return
>          src = src + "/*"
> -    cmd = 'cp -al %s %s' % (src, dst)
> +    cmd = 'cp -a %s %s' % (src, dst)
>      check_output(cmd, shell=True, stderr=subprocess.STDOUT)
> 
>  def remove(path, recurse=True):
> 
> Regards,
> 
> Robert
> ..."But I have a slowly coagulating theory that the size of a project 
> is
> directly proportional to the possibility that significant bugs will 
> crop
> up. Exponentiate for each additional programmer involved." - Steven K.
> Halliburton
> 
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi,
  I have just two points here to ask:

1) Wouldn't simply using SSTATE_MIRRORS be a better solution here, 
instead?

2) Patch: wouldn't it be nicer to try the cp -al, and catch the 
CalledProcessError Exception, if it is thrown, and then run the brute 
force cp -a? Perhaps even as a general approach?

[I didn't test it either practically, just, sometimes one may get the 
impression in yocto / bitbake, that a bit more exception handling and 
directly related error messages already are one of the worlds most 
expensive things to do.. pls, improve this situation!! ;) ]

BR,
Lothar


