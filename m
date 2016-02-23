Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D007E00D0B; Tue, 23 Feb 2016 08:53:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46978E00D07;
	Tue, 23 Feb 2016 08:53:28 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fy10so112960322pac.1;
	Tue, 23 Feb 2016 08:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=ISglDmKB2+i4AUvm0nnzhAsxk8vs5VkZOw9w2qmpqTA=;
	b=p0vjCpn52LWsY80UzL/8Iwezm7l5rYzisk0ZljWr9/B3quXPJay3qKC9bzgmmqqbtn
	aD4T50dObSUjsQxTDPx86wWlLqcjEjEQoalf6VjLavd+MxVHYU8AWS46+J/zyozUlgFh
	e+N6xFU78AQ82X59nx/J2rxettXUEHIdfk157+OHBmKJQOXhgVRT45dlYHzCnMfDYZyZ
	Aw53r6UwnI8I4c8DxOMkXd6rTrTUAu90ZjlO6EYih7ZKhh5YSUUUC/inJHkROAycVwPK
	qoyXeWHLOHGCqCJAg95ipJNEsiTNVZIlivtodoDcmmURd5kgyHWZNcmqGZHcmhIsFBLG
	UAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=ISglDmKB2+i4AUvm0nnzhAsxk8vs5VkZOw9w2qmpqTA=;
	b=eK88vTP5UC08mFdaP+jmtOz1we/OOphAHDF9fyC5FlkzZySOa8teIbmjgxPyuicqOM
	WSbKvoax62H2LuixF5BvYbuXSEohs3rpIiRqE5zmwnMb9NyDeb1eJImq7isyrtMfirTV
	xmMxKVkDLhTJK9X4J565dWXXtjqjKpCOZxX5wT7GIjIFRbMOjP/XVYQ/W0Gbi0G8CymX
	B4r2e2R3mstbJ3uKAv2/E4PIQ8X+1se2vOZWgS4fNFfUY3xb3e4jVX+6wxOFPvFKEPxN
	zD2WncyJ19Z+khzbT/9xww2P4Qcl+ULPd5r7KxE6XJ4Ogjzal0aICDGcSe/A5odKYMfQ
	zkxg==
X-Gm-Message-State: AG10YOQe+UCWbsL+KwWWvLE69Yyt0Uhluf0rMrhQxLRPhTJVuAwbuc3AObM70yne30MWGA==
X-Received: by 10.66.139.199 with SMTP id ra7mr47803092pab.74.1456246407740;
	Tue, 23 Feb 2016 08:53:27 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:8d8b:cff6:170e:6755?
	([2601:202:4000:1239:8d8b:cff6:170e:6755])
	by smtp.googlemail.com with ESMTPSA id
	m5sm45341682pfi.84.2016.02.23.08.53.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Feb 2016 08:53:26 -0800 (PST)
To: Philip Balister <philip@balister.org>, akuster <akuster@mvista.com>,
	Jeff Osier-Mixon <jefro@jefro.net>,
	Yocto Project <yocto@yoctoproject.org>, yocto-announce@yoctoproject.org
References: <CA+YB3rYvuwFo1WDCQzO4vzhXGT05Nd7dThwdFRv3xhZ3yxAUOQ@mail.gmail.com>
	<56A91153.20901@mvista.com> <56A93B76.7070506@balister.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56CC8E79.50200@gmail.com>
Date: Tue, 23 Feb 2016 08:53:13 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56A93B76.7070506@balister.org>
Subject: Re: Embedded Linux Conference, YP DevDay, and OEDAM
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
X-List-Received-Date: Tue, 23 Feb 2016 16:53:32 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 01/27/2016 01:49 PM, Philip Balister wrote:
> On 01/27/2016 07:49 PM, akuster wrote:
>>
>>
>> On 01/27/2016 10:15 AM, Jeff Osier-Mixon wrote:
>>> If you are planning to attend the Embedded Linux Conference in San
>>> Diego this April, I wanted to let you know about the Yocto Project
>>> Developer Day that the team is planning. This will be similar to
>>> previous DevDays, with hands-on training in both introductory and
>>> advanced tracks. The day will happen just after ELC, on April 7 at the
>>> Marriott in downtown San Diego, just across from the ELC venue. We'll
>>> have more details posted later this week.
>>>
>>> The project is also a sponsor for the event and we will have a booth.
>>> If you have something cool that you have been working on and would
>>> like to show it off in the booth during the conference, let me know
>>> and we'll see what we can do to make some space for your project.
>>
>> I will be bring at least one demo. Not sure if its cool.
>>
>>>
>>> For those also in the OpenEmbedded community, there will be an OE
>>> developer's meeting and working session on Friday, April 8. This is a
>>> working session for OE members (not an educational session, sorry!)
>>> and space is limited, so if you plan to attend, please let me know so
>>> I can plan space accordingly.
>>
>> I will be there. I take it there will be a wiki sigh up like before?
> 
> Yep, I'm on the road, but will copy the last OE developer meeting to
> start to page. If you do not have a wiki account go ahead and make on.

Is there an OEDAM page yet?

> Accounts need to be approved by a human now, the spammers were getting
> bad again :(

Submitted a login request a month ago and no email or response.

I am not a bot.

- Armin
> 
> Philip
> 
> 
> 
>>
>> - armin
>>>
>>> thanks!
>>>

