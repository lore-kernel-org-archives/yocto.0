Return-Path: <lukas.boehm@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5050BE009B3; Thu, 23 Jul 2015 06:41:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1021 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Jul 2015 06:41:22 PDT
Received: from mailout02.ims-firmen.de (mailout02.ims-firmen.de
	[213.174.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05520E00867
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 06:41:22 -0700 (PDT)
Received: from mailin03.ims-firmen.de ([192.168.1.143])
	by mailout02.ims-firmen.de with esmtp
	(envelope-from <lukas.boehm@iseg-hv.de>) id 1ZIGTz-00043H-kk
	for yocto@yoctoproject.org; Thu, 23 Jul 2015 15:24:19 +0200
Received: from [217.235.11.203] (helo=[192.168.25.172])
	by mailin03.ims-firmen.de with esmtpa
	(envelope-from <lukas.boehm@iseg-hv.de>) id 1ZIGTx-00016J-78
	for yocto@yoctoproject.org; Thu, 23 Jul 2015 15:24:19 +0200
To: yocto@yoctoproject.org
References: <55A79757.8010704@mlbassoc.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FE9BBF806@MSXBEBVT12.planar.net>
From: =?UTF-8?Q?Lukas_B=c3=b6hm?= <lukas.boehm@iseg-hv.de>
Organization: iseg Spezialelektronik GmbH
Message-ID: <55B0EAFA.40502@iseg-hv.de>
Date: Thu, 23 Jul 2015 15:24:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FE9BBF806@MSXBEBVT12.planar.net>
Subject: Re: Read-only file system with persistent storage
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
X-List-Received-Date: Thu, 23 Jul 2015 13:41:29 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



Am 21.07.2015 um 18:01 schrieb Matt Schuckmann:
> If you are using systemd you can simply create a separate writeable partition and then use the volatile_binds.bb recipe to map files or directories from the read only rootfs to the writable partition via bind mounts.

How should one use the volatile-binds.bb recipe? How can I configure which 
files, directories shall be bind mounted?
Thanks

> If you are not using systemd you can do the same thing with sysVinit you'll just have to write your own recipe equivalent to volatile_binds.bb
>
> This method works and the way volatile_binds is written it takes the default settings from the read only rootfs which is nice.
>
> The only problem I've found is if you have a bind mount to a file you have to be careful not to delete the file or it will break the mount link.You'd be surprised how often you want to delete the file when you go to update it. Therefore I tend to use directories with volatile_binds.bb instead of individual files.
>
> Matt S.
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Gary Thomas
>> Sent: Thursday, July 16, 2015 4:37 AM
>> To: Yocto Project
>> Subject: [yocto] Read-only file system with persistent storage
>>
>> I'd like to set up a system with a read-only root file system along with some
>> persistent read-write storage.  What are the [best] options in Poky/Yocto for
>> this?  Is there any support for some type of overlay file system?
>>
>> Thanks for any ideas/pointers
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
Lukas Böhm                       fon:  ++49 351 26996-0
iseg Spezialelektronik GmbH      fax:  ++49 351 26996-21
Bautzner Landstr. 23             mail: lukas.boehm@iseg-hv.de
D-01454 Radeberg OT Rossendorf   web:  www.iseg-hv.de

Geschäftsführer/Managing Director:
     Dr. Frank Gleisberg, Dr. Joachim Pöthig
Registergericht/Lower District Court:
     Amtsgericht Dresden HRB 16250
Umsatzsteuer-Identnummer / VAT Id:
     DE 812 50 89 42


