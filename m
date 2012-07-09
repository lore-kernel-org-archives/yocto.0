Return-Path: <scott.a.garman@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCCC8E0027D
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 14:05:12 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 09 Jul 2012 14:05:12 -0700
Received: by pbbro8 with SMTP id ro8so19339898pbb.25
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 14:05:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=lozezutCCIbZUTeak948Idj9vgdx9Y9Mh9gZge/UY1k=;
	b=Ha/AqfXkCZjJplcXrLlNUwsg3vp20+2T3XInpaQLsxIaoilCLfJ78h/4mRXpgRLjyQ
	RVRu1mO6Gmg9YE2K0zwZ0t0qwQ98LexD/qh5qkkQNm3ox8iJGlqUYq+fiC7k1ioVRLOK
	chHhrG7Lmfvff1PDcnCS2aZ0Iyu0WOVEfttnzg5Vy3N1MiAAkQp4YA+nbrsTgNARYP0b
	VC855Gm4q1KYfZcXtEALwTSTNfGLc1MwxK9QXhPri0iOXZLdJgqz25q/cIrmHpinuk88
	5pT88dSsP0G+brW3ew3mz4f+w27r/LKyK5JDBFG0dWH872uoRrrXVCz13FS15yttN+Tf
	3SDg==
Received: by 10.68.195.167 with SMTP id if7mr63359777pbc.16.1341867911131;
	Mon, 09 Jul 2012 14:05:11 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id rv9sm28374892pbc.43.2012.07.09.14.05.08
	(version=SSLv3 cipher=OTHER); Mon, 09 Jul 2012 14:05:09 -0700 (PDT)
Message-ID: <4FFB477F.7050802@intel.com>
Date: Mon, 09 Jul 2012 14:05:03 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4FFAEBFC.2090603@communistcode.co.uk>
	<20120709143736.GE6308@jama.jama.net>
	<4FFAEFE7.4000303@communistcode.co.uk>
In-Reply-To: <4FFAEFE7.4000303@communistcode.co.uk>
X-Gm-Message-State: ALoCoQleHmOC0XcVKNKdjrcaQ3YTWeYF48/eZJxmDSKTsTGP20Ab+kAcZkov4wOxwiG7POApl+Ma
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
X-List-Received-Date: Mon, 09 Jul 2012 21:05:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/09/2012 07:51 AM, Jack Mitchell wrote:
> On 09/07/12 15:37, Martin Jansa wrote:
>> On Mon, Jul 09, 2012 at 03:34:36PM +0100, Jack Mitchell wrote:
>>> So, I'm fairly sure this is a real build failure this time, again on the
>>> poky master and denzil branch.
>>>
>>> Please see attached file as the log is too big to paste.
>>
>> does your host use (e)glibc-2.16?
>>
>> if it's so, then you need this patch for m4
>> http://patchwork.openembedded.org/patch/31377/
>>
>> Cheers,
>>
>
> Yes it does, I saw this issue when building for the Rapsberry Pi the
> other day and I pulled your patches in which worked. I had assumed it
> was eglibc 2.16 on target that was causing issues not eglibc 2.16 on the
> host - hence my confusion to why the Denzil branch not building. I
> wonder if Saul looking into pulling these in soon?

As the denzil maintainer, I'm going to watch for Khem's patches to hit 
master, and will have them pulled into denzil ASAP.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center



