Return-Path: <jaymin.dabhi@vivaldi.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C4D4E00B33; Thu, 18 Jul 2019 00:34:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [82.221.130.149 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtp.vivaldi.net (smtp.vivaldi.net [82.221.130.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E462E00A96
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 00:34:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 36BF63FBAD;
	Thu, 18 Jul 2019 07:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net 36BF63FBAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
	t=1563435288; bh=Cfwh6EZfWbtDlbGt+J/wOE+66GnDJo3HbZ4ET0jPvQM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=T4sCWz3ooi51AoGRYw4+wrQWOYm3hoqgH4syZWQBxHD5xQSc3DgNbBl5axsCY/d2I
	UuqKPYnZcfkQtCSlXFfhEJ2LvEZeqEixrPcMTH2V6nPbECw0X5qIfhfSY65+ivjFRJ
	Ngrhu/6gemB5498k0ZRbjCKRcaNoGO6DrU8AwGtr+prlqkd09r2iyDLxKk2ph7yFTM
	S5wqodJG3eVd0cWFWDSSmDyXJVxbwpF4diZzNum9EVkgCNilpzeaj9IDPrNoVSerVX
	3k2e1suGypVoxHE5KG2UUwUjxST6rcf5XgxBIVdAd+tpnpTiNcWbJT3E0PvLZHaWrV
	RUtUyVwIfj0zQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo-new.viv.ext [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zFll7XiYoE4V; Thu, 18 Jul 2019 07:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net 4C9BE3EC4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
	t=1563435286; bh=Cfwh6EZfWbtDlbGt+J/wOE+66GnDJo3HbZ4ET0jPvQM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=gN8kHUbEsKWm1vpSA7x0bx9SIGjQhPOQjD67t0SUxo8vGyqLkz6OP0LHduaDApgC1
	zSM5AOzt324cMmdU0jDgnuBWIKtFPlzlxEYmQ3ycE7mK6ievLccum1q6ha3AZ9hbko
	qwBzgDw0V3qzLA/7R+7MeWSvFiNcPHYkDSQ8bnirTHvxAPtOsu3Njhud3vCjTqDCHn
	Yc58DXb2N64xIu7C5pb3S+Lh0SIBjL57lfTXAq40AVO5Es83A5sbv2jbHZu5wXLqfz
	ih9cj+/eMfkm5tExVjopGpOPNKDJjahBQXitKpQs9u0CjzeHKpK1fjkK8zM3aUlqa5
	yJBg/RwT2h0hg==
Date: Thu, 18 Jul 2019 13:04:41 +0530
From: jaymin.dabhi@vivaldi.net
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
In-Reply-To: <a5abd61c-39b6-6dd6-43b6-2344f6311b2c@3mdeb.com>
References: <2df6a579f4b90431256b6e19a41d852f@vivaldi.net>
	<a5abd61c-39b6-6dd6-43b6-2344f6311b2c@3mdeb.com>
Message-ID: <5c62f8aa593a2a37344471fe24f696c9@vivaldi.net>
X-Sender: jaymin.dabhi@vivaldi.net
User-Agent: Roundcube Webmail/1.3.9
Cc: yocto@yoctoproject.org
Subject: Re: List of Supported Python versions
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
X-List-Received-Date: Thu, 18 Jul 2019 07:34:50 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Maciej,

Thanks for the link.
If I want to use different(updated) version of a particular function, 
e.g. Python, Is is possible?
As per link Jethro is supporting Python version 2.7.9. I want to 
integrate Python version 2.7.16 and Python3 3.7.
So, Do I need to use another branch which is supporting these versions 
or Is there any way to integrate these versions without changing 
current(Jethro) branch?

In my case, I have limitation. Can't change to any other branch.
I want to integrate Python3-Numpy, Python3-OpenCV, Python-Scipy and 
Python3-scipy modules in the build.
Python3-Scipy is dependent on Python3-Numpy and Python3-Numpy is 
dependent on OpenBLAS, ATLAS and few other libraries. While these 
libraries are dependent on FORTRAN (libgfortran) compiler. Now, in my 
current (Jethro) branch, when I am trying to build libgfortran, it 
requires GCC version >=5. And, facing so many errors while building GCC 
5.2 in the Yocto build. While GCC 5.2.0 is already supported in the 
Jethro.

In simple,
How can I integrate Python3-Numpy, Python-Scipy, Python3-Scipy and 
Python3-OpenCV packages without changing the branch?
What is the simplest way to integrate above packages?

Please suggest.

Regards,
Jaymin

On 18-07-2019 12:24 PM, Maciej Pijanowski wrote:
> The link to the search engine:
> https://layers.openembedded.org/layerindex/branch/master/recipes/
> 
> On 18.07.2019 07:41, jaymin.dabhi@vivaldi.net wrote:
>> Hello Team,
>> 
>> Which Python, Python-OpenCV, Python-Numpy, Python-Scipy and OpenCV
>> (max)versions are supported in Yocto 2.0.3 (Jethro) distro version?
>> 
>> Can I get list of notes in which version of all supported modules have
>> been mentioned?
>> 
>> 
>> Please let me know.
>> 
>> Regards,
>> Jaymin
> 
> --
> Maciej Pijanowski
> Embedded Systems Engineer
> https://3mdeb.com | @3mdeb_com
> 
> 
> 
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

