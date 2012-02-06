Return-Path: <sean_liming@sjjmicro.com>
Received: from mail16c40.carrierzone.com (mail16c40.carrierzone.com
	[209.235.156.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBB90E01217
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 23:20:48 -0800 (PST)
X-Authenticated-User: sean_liming.sjjmicro.com
Received: from Sean7 (cpe-75-82-59-168.socal.res.rr.com [75.82.59.168])
	(authenticated bits=0)
	by mail16c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q167KjME004046
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 6 Feb 2012 07:20:46 +0000
From: "Sean Liming" <sean_liming@sjjmicro.com>
To: "'Khem Raj'" <raj.khem@gmail.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>	<CAMKF1srLO9pd57iUBRTRb5i54gPk-mRu04nAue9XYUnTRrGWYQ@mail.gmail.com>	<000701cce483$ffbda890$ff38f9b0$@sjjmicro.com>	<CAMKF1sqvj6tTPLaasNR9RphshHhM2FGS1gS83LekeJR=UVo7Cw@mail.gmail.com>
	<000001cce49d$a4d2ab50$ee7801f0$@sjjmicro.com>
In-Reply-To: <000001cce49d$a4d2ab50$ee7801f0$@sjjmicro.com>
Date: Sun, 5 Feb 2012 23:20:45 -0800
Message-ID: <000101cce49f$d8aa3c70$89feb550$@sjjmicro.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQDeeaN6WCC/SCu1Pyv4IHsWhZeyMAFr28wNAiGgPwoCLqC5RQH8QCYgl86JKpA=
X-Antivirus: avast! (VPS 120205-3, 02/05/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=EvEsscukRmgjQswahipJwS9n8HJRqjMP/c15HL5NnPc= c=1 sm=1
	a=aJh391NtreIA:10 a=kj9zAlcOel0A:10 a=z5g8Jwv4kxix1x/21EjHVg==:17
	a=iGHA9ds3AAAA:8 a=pGLkceISAAAA:8 a=muS382yeAAAA:8
	a=HVFoD6YnoRwqviTQiXIA:9
	a=r6Jy_cRJ2GB3mAlM88gA:7 a=CjuIK1q_8ugA:10 a=FCaQVidmf_IA:10
	a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10 a=MSl-tDqOz04A:10 a=aONyWnEeb94A:10
	a=z5g8Jwv4kxix1x/21EjHVg==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020201.4F2F7F4F.0043,ss=1,re=0.000,fgs=0
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
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
X-List-Received-Date: Mon, 06 Feb 2012 07:20:49 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us


Searching further there seems to be different patches for perl-native for
Ubuntu 10.04. Not sure what needs to be applied here.

Regards,

Sean 


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Sean Liming
Sent: Sunday, February 05, 2012 11:05 PM
To: 'Khem Raj'
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Build Error


How would I check if perl-native is staged? The intltool.inc has the updated
Rudolf.

Regards,

Sean 

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]
Sent: Sunday, February 05, 2012 10:30 PM
To: Sean Liming
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Build Error

On Sun, Feb 5, 2012 at 8:01 PM, Sean Liming <sean_liming@sjjmicro.com>
wrote:
> @ autif- thank you for the tar file. Placed it in the downloads folder and
the error doesn't appear.
>
>
> I added the two lines to the local.conf folder
>
> INHERIT += "own-mirrors"
> SOURCE_MIRROR_URL = "http://autobuilder.yoctoproject.org/pub/sources/"
>
> I am not sure how to resolve the lib-xml-parser for intltool issue based
on the post.
>

checking for perl... /usr/bin/perl
checking for perl >= 5.8.1... 5.12.4
checking for XML::Parser... configure: error: XML::Parser perl module is
required for intltool
ERROR: oe_runconf failed

it should not be getting perl from your build but from the native sysroot.
is perl-native staged ?
>
> Regards,
>
> Sean Liming
> Owner
> SJJ Embedded Micro Solutions, LLC.
> Tel: 714-970-7523 / Cell: 858-774-3176
>
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Sunday, February 05, 2012 4:00 PM
> To: Sean Liming
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Build Error
>
> On Sun, Feb 5, 2012 at 2:27 PM, Sean Liming <sean_liming@sjjmicro.com>
wrote:
>> Did I miss configure something? Wrong python version?
>>
>> There was a post about the dash vs. bash shell. I am not sure what 
>> shell is supposed to be using:
>
> you could add something like below to your local.conf
>
> INHERIT += "own-mirrors"
> SOURCE_MIRROR_URL = "http://autobuilder.yoctoproject.org/pub/sources/"
>
> that should help a bit
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


