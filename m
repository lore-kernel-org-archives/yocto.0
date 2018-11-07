Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EBC6E009B2; Wed,  7 Nov 2018 03:14:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd01217.aruba.it (smtpcmd01217.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D53E00720
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 03:14:44 -0800 (PST)
Received: from [10.0.3.97] ([78.6.3.122]) by smtpcmd01.ad.aruba.it with bizsmtp
	id wzEg1y01k2dwwGE01zEhP5; Wed, 07 Nov 2018 12:14:42 +0100
To: Khem Raj <raj.khem@gmail.com>
References: <40261230-160a-83b8-b0f2-eb996ab1fd7b@faresoftware.it>
	<CAMKF1spFYQJ_CNeS=ogO2U797tDq7-1qLAz6C-edmXu6Eft87w@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <a427f106-c74a-9299-c056-5006cd0f0dbb@faresoftware.it>
Date: Wed, 7 Nov 2018 12:14:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1spFYQJ_CNeS=ogO2U797tDq7-1qLAz6C-edmXu6Eft87w@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1541589282; bh=nSGmUlNyGoQZeDl40t7uf6hayRGFJOXAFth3n9nBTEo=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=CCh9zRNzDUzoQ6C98DyFBFqhrFqsFDIjPHMkb+eDGN1RqYYjfPNi9ZRAQknLIFTa5
	WGclNnAbVSphh3LVQUtyo3Tz1nhb3Es4aWoKMDDefjBW+xWEhBKClG6s5IJ4bAYQas
	JtaB0+2yyWRBTWZ/WeEE8K/pq61R3VL3G0OoJCFUhZ1hRmkdViAGUowwvsarF/m0iq
	CRlrStxqdAC7HfvoQgbTwNb/f5N6IMdUBFxbY2jEaA1LQkVGsT/tApeInwMn+bbP1z
	HuGwFtJlBtzoOTc90Fw6xuuYxSs7sGCV702Bs3PcqoHLVIk8acH8/rMLMzBKS+zh0Y
	sTkuxP4c8EC/w==
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto and Debian package repositories
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
X-List-Received-Date: Wed, 07 Nov 2018 11:14:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: it

Thank you for your answer.

My system is produced only from Yoctk Krogoth with deb package, and
package-management turned on into EXTRAS_DISTRO_FEATURES.

The server repository is only my server and there are only the debs
built with yocto.

So I think the dependecies are always ok, because non other repos are used.


Mauro


Il 30/10/2018 22:21, Khem Raj ha scritto:
> On Tue, Oct 30, 2018 at 8:14 AM Mauro Ziliani <mauro@faresoftware.it> wrote:
>> Hi all.
>>
>> I often work with Debian and I build my own repository accessible with apt.
>>
>> I look that when I build the image recipe many deb pacakages are
>> produced with Packages and Release ready.
>>
>> How can I use this pakcages to upload all packages to a Debian customer
>> server?
> So I am assuming you are thinking of installing these .debs onto a
> debian base target
> if so then its not quite the right direction. with OE build system we
> can generate output packages
> as ipks, rpms, debs and tarballs, its just another output format but
> is not meant to be consumed
> on rpm-like or deb-like linux systems which are built using non-OE
> distros, because packages have
> dependencies and sometimes version specific dependencies which may not
> match between two ecosystems.
>
>> Best regards,
>>
>>   MZ
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


