Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id EBC55E0027E
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 11:09:52 -0700 (PDT)
Received: (qmail 31238 invoked by uid 1003); 17 Oct 2012 18:09:47 -0000
Received: from unknown (HELO ?10.16.24.66?) (philip@opensdr.com@157.22.28.10)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	17 Oct 2012 18:09:47 -0000
Message-ID: <507EF46A.6010405@balister.org>
Date: Wed, 17 Oct 2012 11:09:46 -0700
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <12F9B0C37BAC49429468AA27112A5F5B37B94DF4@DB3PRD0510MB368.eurprd05.prod.outlook.com>
	<2287710.4FdqJpfmq4@helios>
In-Reply-To: <2287710.4FdqJpfmq4@helios>
Cc: yocto@yoctoproject.org
Subject: Re: How to avoid re-creating a recipe (+my meta-bucket approach)
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
X-List-Received-Date: Wed, 17 Oct 2012 18:09:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/17/2012 01:49 AM, Paul Eggleton wrote:
> On Wednesday 17 October 2012 08:39:36 Tim O'Callaghan wrote:
>> After seeing the lmsensors thread float by I thought it about time I started
>> the discussion on how people manage to avoid re-inventing recipes, and to
>> get the ball rolling, I thought I would describe mine.
>>
>> As I do not have the any idea what recipes may be kicking about, I devised
>> what I call the meta-bucket approach. It is pretty simple, I have a script
>> that clones every existing OE/Yocto repository I know about into one easily
>> grep-able place[1].
>>
>> The to the main question, how are others managing this?
>
> I clone the layer repositories most likely to hold new recipes and then use
> some scripts I wrote to process them into a list of recipes that can be easily
> searched using grep. I wouldn't mind sharing those scripts if some people
> would find them useful.
>
> However, what I hope we can do in the 1.4 timeframe would be to implement my
> proposal here:
>
>   https://bugzilla.yoctoproject.org/show_bug.cgi?id=3272
>
> This would provide us with a way to search all published layers down to the
> recipe level from the web.

This is an excellent idea!

Philip

