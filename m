Received: from smtp5.emailarray.com (smtp5.emailarray.com [65.39.216.39])
 by mx.groups.io with SMTP id smtpd.web08.7801.1621515359334810148
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 05:55:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: balister.org, ip: 65.39.216.39, mailfrom: philip@balister.org)
Received: (qmail 70452 invoked by uid 89); 20 May 2021 12:55:53 -0000
Received: from unknown (HELO ?192.168.11.139?) (cGhpbGlwQG9wZW5zZHIuY29tQDczLjI1MS4xMC4xNDM=) (POLARISLOCAL)  
  by smtp5.emailarray.com with SMTP; 20 May 2021 12:55:53 -0000
Subject: Re: [yocto] hostile freenode takeover
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
 Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Khem Raj <raj.khem@gmail.com>,
 Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <a95d66fd6c9ec4a1549f243a47a2b10ac05a99ee.camel@iris-sensing.com>
 <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
 <CAMKF1srcOQwH41Z9g00ZRgaLuN=JS9D1wVNv-+3TP2c=GWOxYA@mail.gmail.com>
 <20210520081639.ybcnadwxsjvdgsme@qschulz>
 <CAP71WjwJ4QdLM7FJpuADLP7A5K4x8zvX8MeyFXBHaa6DBicHDg@mail.gmail.com>
From: "Philip Balister" <philip@balister.org>
Message-ID: <aeeca5ab-950b-ee70-a747-a3e2f04021ee@balister.org>
Date: Thu, 20 May 2021 08:55:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAP71WjwJ4QdLM7FJpuADLP7A5K4x8zvX8MeyFXBHaa6DBicHDg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 5/20/21 4:32 AM, Nicolas Dechesne wrote:
> On Thu, May 20, 2021 at 10:16 AM Quentin Schulz <
> quentin.schulz@streamunlimited.com> wrote:
> 
>> Hi Khem, all,
>>
>> On Wed, May 19, 2021 at 10:09:12AM -0700, Khem Raj wrote:
>>> On Wed, May 19, 2021 at 9:56 AM Nicolas Dechesne
>>> <nicolas.dechesne@linaro.org> wrote:
>>>>
>>>>
>>>>
>>>> On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko <
>> Jasper.Orschulko@iris-sensing.com> wrote:
>>>>>
>>>>> -----BEGIN PGP SIGNED MESSAGE-----
>>>>> Hash: SHA256
>>>>>
>>>>> Dear all,
>>>>>
>>>>> there have been recent reports of a hostile takeover of the freenode
>>>>> service, as described in
>>>>> https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409
>>>>>
>>>>> The Yocto Project should verify these reports and take the necessary
>>>>> actions, in order to protect its users.
>>>>
>>>>
>>>> Thanks for your email. We are aware, and have started to look into
>> that.
>>>>
>>>> It looks like some open source communities have started to move to
>> https://www.oftc.net/ or https://libera.chat/.. If anyone wants to bring
>> any insights or recommendations... feel free!
>>>
>>> perhaps good time to consider matrix
>>>
>>
>> I disagree. Matrix just does not work. I've been using with a few
>> friends with mixed homeservers, chat.privacytools.io, matrix.org,
>> converser.eu and self-hosted homeservers... I've sometimes not received
>> tens of messages in a row, usually for a duration of at least 15 mins
>> and there's obviously no indication whatsoever that I didn't receive
>> messages except that the discussion does not make sense at all. And this
>> happened to three other people on the room, each on a different homeserver
>> than the other, so not a PEBKAC :) Sometimes there are delays for
>> messages too (I've seen 30min delays), so the whole context is lost.
>>
>> For a federated chat solution, that's really a bummer that its main
>> feature is just so buggy it's unusable.
>>
>> If YP is ok with potentially not receiving questions or having people
>> ask questions and not receive answers, then fine by me :)
>>
>> I'm probably among the small (?) minority of people experiencing those
>> issues but that's not a bet I'd take with my projects.
>>
>> My 2¢.
>>
> 
> I think the question of setting up Matrix for our community is a valid
> question, though I think it's orthogonal to the current problem. If
> freenode goes away , we need an alternate plan to move *right away* to
> another IRC server. If we want to setup addition communications means (such
> as Matrix or anything else) that needs to be discussed and it might take
> more time.

We have registered #oe and #yocto on libera already, so we can easily
transition irc servers as the situation develops.

Philip

> 
> 
>>
>> Cheers,
>> Quentin
>>
> 
> 
> 
> 
> 
