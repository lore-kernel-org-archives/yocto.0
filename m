Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 335E9E00406
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 01:17:39 -0700 (PDT)
Received: from frontend3.mail.m-online.net (unknown [192.168.6.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3cKhZB3RP6z4KK66
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 10:17:38 +0200 (CEST)
Received: from localhost (dynscan3.mnet-online.de [192.168.6.84])
	by mail.m-online.net (Postfix) with ESMTP id 3cKhZB1Vwczbbbw
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 10:17:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.6.180])
	by localhost (dynscan3.mail.m-online.net [192.168.6.84]) (amavisd-new,
	port 10024) with ESMTP id y1WQXlM-jBo7 for <yocto@yoctoproject.org>;
	Wed, 21 Aug 2013 10:17:36 +0200 (CEST)
X-Auth-Info: LzOZNb4N75fBj1IClAS/vFUBtoT+9aJGnsYtia5jeYc=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de
	[62.245.181.162]) by mail.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 10:17:36 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by webmail.mnet-online.de
	with HTTP (HTTP/1.1 POST); Wed, 21 Aug 2013 08:17:06 +0000
MIME-Version: 1.0
Date: Wed, 21 Aug 2013 10:17:06 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
In-Reply-To: <5214571E.7040904@reliableembeddedsystems.com>
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
	<c98ff6d31f5118f8f3154ed5746e3fc7@denx.de>
	<5214571E.7040904@reliableembeddedsystems.com>
Message-ID: <68565ff1f22cf29de1f668b22d5ce805@denx.de>
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
X-List-Received-Date: Wed, 21 Aug 2013 08:17:42 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Am 2013-08-21 07:58, schrieb Robert Berger:
> Hi,
> 
> On 08/20/2013 07:45 PM, lothar@denx.de wrote:
>> 
>> Hi,
>>  I have just two points here to ask:
>> 
>> 1) Wouldn't simply using SSTATE_MIRRORS be a better solution here, 
>> instead?
> 
> It's not the same.
> 
> SSTATE and DL_DIR are on an nfs export anyhow and this works.
> 
> The problem here is with TMP dir (and an nfs server with a funny
> underlying filesystem like UFS) and hard links.
> 
>> 
>> 2) Patch: wouldn't it be nicer to try the cp -al, and catch the
>> CalledProcessError Exception, if it is thrown, and then run the brute
>> force cp -a? Perhaps even as a general approach?
> 
> In theory yes, in practice you will find out that if you build 
> something
> like core-image-sato-sdk "cp -al" is not the only place which creates
> hard links.
> 
> Regards,
> 
> Robert
> ..."There's an infinite number of ways to make a simple problem seem
> difficult; only a handful to make a difficult problem seem simple" -
> Jack Crenshaw's Law #1
> 
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Robert,

Thank you for the answer. About my second point, I think you 
missunderstood, or I do not get your answer correctly, respectively.

In brief, I mean:
TRY.... CATCH... EXCEPTION

In detail:
The issue you discovered here, IMHO is definitely a real problem, when 
it comes to do hardlinks across filesystems.

Grepping for 'cp -al', though, to me only reviels this single place 
where hardlinks are done (do you know more?), which I showed you in the 
chat we had apart and for which you posted the fix here in the ML. To my 
understanding, it is only used by the sstate .bbclass, to refer to the 
build products after recipe execution. Means, say, using for instance a 
central SSTATE_DIR folder, you may remove the 'tmp' folder in a 
particular build folder (referring to the SSTATE_DIR), and still be able 
to build in your other build folders (having set SSTATE_DIR) relatively 
fast, since the build products were referenced in SSTATE_DIR by 
hardlinks. This is done by this 'cp -al', which is applied to every 
single recipe's build, means it is pretty central!

Thus, simply exchanging 'cp -al' by 'cp -a' would affect all recipes' 
execution. But running 'cp -al' and extending it by a fallback to 'cp 
-a' using the already thrown EXCEPTION, does not change the original 
behavior, but extends it. Perhaps this remark seems a bit hairsplitting. 
Ok, but, not handling any exception here, IMHO seems to be wrong, too, 
since it will already be thrown. And if so, it should be fixed, or not? 
This was my point about. Keeping in mind that if both approaches fail, 
there could be at least e.g. printstacktrace() like output..
AFAIR, the git fetcher uses a similar fallback approach for handling 
unaccessable repositories.

Just some remarks, maybe I'm wrong.. but, also currently messing a bit 
with sstate.
BR,
Lothar Rubusch

