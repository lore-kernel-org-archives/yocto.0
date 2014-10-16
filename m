Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0C6FE00790; Thu, 16 Oct 2014 11:38:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D31E00744
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 11:38:54 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id w10so3751313pde.0
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 11:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=V157cLMFzRJQDM++irqc9pBkuKozSKE5yy0a33Fr1Wc=;
	b=hFH6eHgVaCbgGZ6vZCKUobkmmWa0UoJ7NMhf5pmf0YW3fDrSU9QMT0ifMd9YFTB3ba
	Gl4hjPDGBTlquzwfdZfcJO0eTo3Fc4fB5E7fv4qIX0g6farkNNXWcC1MYG7+J2XzbxWY
	dsCAhTR+purX43yFNa/1VQfONqpqLYg6Ptya2OcU6YSs3258ashPHHW9CK6ke9TKVeNc
	KiXB48h1oxY9BaO8CUktJD0+2UNC8cL/jCPgQg3LMn5iMl/GogcJ+8G7XY9OJ1JRMFml
	ibZAdObOoJ3r8P3VHJ6VHhhJ7KNkBz/4tViigLFogRKcye/19UdHD28m2C3XzN/9OqzC
	ug6A==
X-Received: by 10.66.124.136 with SMTP id mi8mr3078482pab.105.1413484734277;
	Thu, 16 Oct 2014 11:38:54 -0700 (PDT)
Received: from [192.168.18.12] (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	wr8sm20344735pbc.52.2014.10.16.11.38.51 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Oct 2014 11:38:52 -0700 (PDT)
Message-ID: <544010BA.8060808@gmail.com>
Date: Thu, 16 Oct 2014 11:38:50 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>, 
	"Burton, Ross" <ross.burton@intel.com>
References: <3230301C09DEF9499B442BBE162C5E482576880D@SESTOEX04.enea.se>	<CAJTo0La=7QNS53qZDgShj+9yr6Ge0hyk9HFAdS+Ue0bZAkck4A@mail.gmail.com>	<CAJTo0La9iMQ4ZiSuTFo35271c2McpzkSvugOEqL6dBNoncdkZQ@mail.gmail.com>	<CAJTo0LYNjC6knwruug3cNP6DTwYGvBzDAxgseUnaVWRx0d+Y0g@mail.gmail.com>
	<CAP9ODKrgD2WDQFd=-xPw6NvV-W-CLkVhzXMH_jAmES7z83JOXw@mail.gmail.com>
In-Reply-To: <CAP9ODKrgD2WDQFd=-xPw6NvV-W-CLkVhzXMH_jAmES7z83JOXw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Truly scary SSL 3.0 vuln to be revealed soon:
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
X-List-Received-Date: Thu, 16 Oct 2014 18:38:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/16/2014 11:27 AM, Otavio Salvador wrote:
> On Thu, Oct 16, 2014 at 1:45 PM, Burton, Ross <ross.burton@intel.com> wrote:
>> On 15 October 2014 16:31, Burton, Ross <ross.burton@intel.com> wrote:
>>> There's a openssl 1.0.1j out now (fixing FOUR (!) CVEs, including
>>> "disabling SSLv3 didn't work"...).  I think considering the situation
>>> we'd take the upgrade for dizzy, even though we've frozen.  Anyone
>>> volunteering to take lead of upgrading dizzy to 1.0.1j and backporting
>>> the relevant patches to the previous releases? (eg daisy is on
>>> 1.0.1g).
>>
>> For anyone else interested, I've currently got 1.0.1j patches for
>> dizzy in testing.  There's been debate over whether we backport the
>> fixes to daisy's 1.0.1g, or upgrade as the number of fixes is
>> growing...
>
> I think the upgrade is the way to go. We are likely to break 1.0.1g
> someday during backporting of security fixes.
>

In this case I would agree.  Updating daisy makes sense as we are only 
dealing with a minor version update.

- Armin

