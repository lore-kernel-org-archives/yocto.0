Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C813E00C09; Tue,  9 Aug 2016 13:53:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97CB8E00AA2
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 13:53:45 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id cf3so1493387pad.2
	for <yocto@yoctoproject.org>; Tue, 09 Aug 2016 13:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=R4R0qicVzacty9gMseteFVEJ3wy3cXVHCzp3lA6PIyY=;
	b=pydutQ2WyR3Y3U7HiKTfGSNO65m8KlEDwN0hBz+VMf9OzxnMwX7+RERRLjDo9wriUw
	4YWmWij8cuf4GDLrU8RogOy7qOcIK8yvyFi3LwlbEYxWeHx9/Z0dRh3Qugo9MtMQyx/E
	TWcqpG3D5ZhKDO7uYVu5pHbNW1gg5LeXH57XkINXe/v3fdj6JUHy5Be4+ny1s//Y+yYy
	ric/f5CseReVbnp/TJ25Mfrv1pV2CzOYtR9rHoGoidUGhopWfkkdRD5mNj1qudmbpozF
	RELze0U+9gKUe4kIXeH127Venh+Y1MpTJPzq0mCTYK4yIk2AU1yTTnZHsiIGVc1ZrZnm
	A+og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=R4R0qicVzacty9gMseteFVEJ3wy3cXVHCzp3lA6PIyY=;
	b=XaGYL2zUSqulEsgxiv7o7U7PFnbIB+bB6cy0M30FHKEwTWQUC3e7wGrtkX+eak2J6I
	0MU2O9bxyne+hKszVsFVxlr7ty0adtKMz0bCMaLNtJlgBL4qhM4VINfu+ON5hVNJ7XxL
	muGzp0GFaj+HON+BZKITRt2JIkBqiI6ct63iF4ibxyCBYXbmsw2KXD+0L+D3zCjhaeH6
	uPv06kGPGdUzJgqImwuyt+PTFwuuKjI7kIhli6Mkqyg9Y97bMjjvyxTkcLmmMbTDiUf/
	sg3RHECNlcwAlFmKcCU9EMBYiizy2zjA+zqZX7QWdPC2EHGxVualKrsJA6VSeiprQ0mq
	k/yg==
X-Gm-Message-State: AEkoousMfKW7HN1XozhNbKRnvrNwv5FGElc4563iPXbFISvf8teDxtdwkQxnhKqTGKHzoA==
X-Received: by 10.66.86.170 with SMTP id q10mr574334paz.105.1470776025196;
	Tue, 09 Aug 2016 13:53:45 -0700 (PDT)
Received: from [10.43.100.29] ([50.233.148.156])
	by smtp.googlemail.com with ESMTPSA id
	fe8sm58350390pad.2.2016.08.09.13.53.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Aug 2016 13:53:44 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <1470151429.3175.189.camel@linux.intel.com>
	<5598b740-e529-52a3-91e0-e4b34d2bde01@balister.org>
	<32f35f59-c150-838f-4a53-d7dab0648252@gmail.com>
	<34036CC4-991B-4ED1-AB67-3F54E0C610B9@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <57AA42D6.4000606@gmail.com>
Date: Tue, 9 Aug 2016 13:53:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <34036CC4-991B-4ED1-AB67-3F54E0C610B9@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 7, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 09 Aug 2016 20:53:46 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 08/09/2016 12:36 PM, Khem Raj wrote:
> 
>> On Aug 3, 2016, at 8:17 AM, akuster808 <akuster808@gmail.com> wrote:
>>
>> On 8/3/16 6:19 AM, Philip Balister wrote:
>>>
>>> On 08/02/2016 11:23 AM, Jolley, Stephen K wrote:
>>>> Attendees: Saul, David Wolfe, Joshua, Belen, Ross, Mark, Bill
>>>>
>>> ....
>>>
>>>>        Poky - LTS/LTM Branch
>>>>        - Community Driven
>>>>        - 2 Years
>>>>        - Companies continue to push on older branches that they are
>>>> interested in.
>>>>        - Most patches would be in Oe-Core meta-data
>>> This kind of jumped out at me. Can anyone explain why the Yocto Project
>>> needs an LTS version of the reference distribution?
>>
>> I am glad you asked.
>>
>> In order for a Yocto Member to be Yocto Compatible, any changes made to
>> Bitbake or OE-core have to be submitted to the mailing list. If I have
>> to submit changes then is makes sense that there be a central place like
>> a repo where these changes can live. We have this for the first year.
>> MontaVista and I am sure other Member's support products beyond the
>> first year.  It seems natural to have a process in place to continue the
>> behavior and work Yocto Members are required to perform to maintain
>> Yocto compatibility. Or are you saying Yocto Compatible is only good for
>> 1 year?
> 
> Dont we accept patches indefinitely as long as they keep coming?

Are far as I know we do.

> so in theory every branch is LTS for someone if one cares enough
> about compatibility with compliance programs.

Only if patches make it into a stable branch will they count, it makes
it more official. It is the overhead placed upon Richard and his minions
to take those patches and check them into the appropriate stable
branches. This drops off dramatically once a stable branch transitions
to EOL.


 However, LTS does provide
> a cushion for decision makers, practically, I see we are doing it
> ever since.
> 
>>
>> It not so much having an LTS Poky as much as having LTS branches for OE
>> core and bitbake. This means Poky would not have to be kept updated nor
>> would the Yocto Project need to build or QA the LTS branches.
>>
>> As I see it, an LTS branch would only exist if there is a need and is
>> supported by the ones who desire the LTS branch.  I am sure there will
>> be some prerequisites in doing this.  I don't see this as a bad thing
>> for the community or the Project.
>>
>> regards,
>> Armin
>>
>>
>>
>>>
>>> Philip
>>>
>>>
>>>> * Team Sharing - 10 min
>>>> RP has branch with multi-config in parallel
>>>>  - fixes various other tools
>>>>  - Distributed builds in 2.2 is unlikely due to resource constraits
>>>>
>>>> Thanks,
>>>>
>>>> Sau!
>>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 

