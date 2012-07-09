Return-Path: <jack.mitchell@eumx.net>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9490E0145D
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 08:02:22 -0700 (PDT)
Received: from localhost ([127.0.0.1]:57630 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <jack.mitchell@eumx.net>) id 1SoFTh-0005Qk-Rf
	for yocto@yoctoproject.org; Mon, 09 Jul 2012 15:02:21 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:mime-version:cc:subject:references:in-reply-to
	:content-type:content-transfer-encoding; s=default; bh=KAAKU9NLe
	PBCjp8dTZmEfaEzIuw=; b=uscXn1Rg6Xaaqdx/taPOA55kCfymifvzeDWPt/rLU
	Xfyd2bmRASiDCvDaDuBZeTy56C11CAv4ynNi9N0RCHqXvTlo7spItxIeumwscrze
	wGZa1yXUjxpksu/UD8oLEketa4HZBD2Ily3gaGM6T6CtIgTETZakag54LKp+ySs+
	ow=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=eumx.net; h=message-id:date
	:from:mime-version:cc:subject:references:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=default; b=vO6
	CM7qhD1XTulFRbpk8CgqhnXg71QJ4NBMlYjirPFKkxoia96iy+tcacSipOFBBubc
	utMSxJaEsFFENWSJ260jSZLbMhwPfzn+TYrdFA4mfdI7nlgxpXNNQLGGFsv+C4yg
	31ormqQaprAq4g7lLHknVD4hE+Jm7OsOCMBw4oMk=
Received: from [195.171.99.130] (port=28944 helo=[192.168.0.54])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <jack.mitchell@eumx.net>) id 1SoFOr-0005FM-Kb
	for yocto@yoctoproject.org; Mon, 09 Jul 2012 14:57:21 +0000
Message-ID: <4FFAF198.20005@eumx.net>
Date: Mon, 09 Jul 2012 15:58:32 +0100
From: Jack Mitchell <jack.mitchell@eumx.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4FFAEBFC.2090603@communistcode.co.uk>
	<20120709143736.GE6308@jama.jama.net>
	<4FFAEFE7.4000303@communistcode.co.uk>
	<20120709145320.GF6308@jama.jama.net>
In-Reply-To: <20120709145320.GF6308@jama.jama.net>
X-Mailman-Approved-At: Mon, 09 Jul 2012 08:33:13 -0700
Subject: Re: m4 build failure - master && denzil branch
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
X-List-Received-Date: Mon, 09 Jul 2012 15:02:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/07/12 15:53, Martin Jansa wrote:
> On Mon, Jul 09, 2012 at 03:51:19PM +0100, Jack Mitchell wrote:
>> On 09/07/12 15:37, Martin Jansa wrote:
>>> On Mon, Jul 09, 2012 at 03:34:36PM +0100, Jack Mitchell wrote:
>>>> So, I'm fairly sure this is a real build failure this time, again on the
>>>> poky master and denzil branch.
>>>>
>>>> Please see attached file as the log is too big to paste.
>>>
>>> does your host use (e)glibc-2.16?
>>>
>>> if it's so, then you need this patch for m4
>>> http://patchwork.openembedded.org/patch/31377/
>>>
>>> Cheers,
>>>
>>
>> Yes it does, I saw this issue when building for the Rapsberry Pi the
>> other day and I pulled your patches in which worked. I had assumed it
>
> Those are Khem's patches..

Apologies.

>
>
>> was eglibc 2.16 on target that was causing issues not eglibc 2.16 on the
>> host - hence my confusion to why the Denzil branch not building. I
>> wonder if Saul looking into pulling these in soon?
>
> Well -native packages are using host libs.. so target recipes are fine
> until you manually switch to eglibc-2.16, but -native are affected
> immediately when your host distro upgrades (e)glibc.

Thanks!

>
>
> Cheers,
>



