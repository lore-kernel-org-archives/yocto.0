Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6943DE0054C
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 08:37:01 -0800 (PST)
Received: (qmail 3734 invoked by uid 1003); 9 Dec 2011 16:37:00 -0000
Received: from unknown (HELO ?192.168.1.104?) (philip@opensdr.com@96.240.172.5)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	9 Dec 2011 16:37:00 -0000
Message-ID: <4EE2392A.1040302@balister.org>
Date: Fri, 09 Dec 2011 11:36:58 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111108 Fedora/3.1.16-1.fc14 Thunderbird/3.1.16
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CAEsOVNeYZ4hwvV8dXMadkzchyA_nRHeZ63_s-XgJBzaEymUKdg@mail.gmail.com>	<1323431474.5309.128.camel@ted>	<CAEsOVNexQiXQkWQH8hEBq+4JFGihda7_azWPrxeTG9J+M3wgvw@mail.gmail.com>
	<1323447637.5309.180.camel@ted>
In-Reply-To: <1323447637.5309.180.camel@ted>
X-Enigmail-Version: 1.1.2
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-oe branch for edison?
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
X-List-Received-Date: Fri, 09 Dec 2011 16:37:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/09/2011 11:20 AM, Richard Purdie wrote:
> On Fri, 2011-12-09 at 15:46 +0000, McClintock Matthew-B29882 wrote:
>> On Fri, Dec 9, 2011 at 5:51 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>> On Thu, 2011-12-08 at 20:01 +0000, McClintock Matthew-B29882 wrote:
>>>> Hi all,
>>>>
>>>> Can we create a meta-oe repo in git.yoctoproject.org?
>>>
>>> This might create a little friction with the OE community. What would be
>>> the reason for the repository?
>>>
>>>>  I'd like to also
>>>> create a branh within the repo that tracks a valid version of the repo
>>>> for specific Yocto releases.
>>>>
>>>> (I can add that in my investigation so far -
>>>> f78f3f31c06c669006fcb567c8f503d4dbec68da looks like a good starting
>>>> commit for edison)
>>>
>>> I'd certainly be happy to see such a branch. It might be more
>>> appropriate to call it 2011-1 which corresponds to the OE-Core branch
>>> name that is edison in the poky repo.
>>
>> Well I don't particularly care if we create a repo or not. I just want
>> a place to go for a working meta-oe for all future releases of Yocto.
>> I had to figure this out on my own, but I'm can imagine others will
>> attempt similar things.
> 
> I think it should be fine to add an appropriate branch to the meta-oe
> repository itself.

We should probably have this discussion on the oe list.

Basically, we should have a way to create a "stable" branch for oe-core
and meta-oe. There also needs to be some "policy" in place for commits.
The primary concern is making sure the development branches get all
needed fixes that go into the branches.

Philip

