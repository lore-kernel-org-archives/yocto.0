Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2314FE0072E
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 06:51:01 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qB9EosPd006305
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 9 Dec 2012 06:50:54 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.22.120) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Sun, 9 Dec 2012 06:50:54 -0800
Message-ID: <50C4A54C.9060201@windriver.com>
Date: Sun, 9 Dec 2012 09:50:52 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <560B845B-ADB9-4244-B82D-8B7136E70F13@keylevel.com>
	<CABcZANm7UGMYO1BRK8k9EQdGrDG6w013S-nkQrCgFe5O+4v1SQ@mail.gmail.com>
	<58D08629-AD55-4693-8F56-83EA0A52CA77@keylevel.com>
	<CADkTA4ORbfM0zT5g5j4pSMUtfH7LJmSsdbckahXPu=2FDiDv7g@mail.gmail.com>
	<26A95DB9-6C86-4677-94FA-48C0E0AFF2B9@keylevel.com>
In-Reply-To: <26A95DB9-6C86-4677-94FA-48C0E0AFF2B9@keylevel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: bbappending a bbappend
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
X-List-Received-Date: Sun, 09 Dec 2012 14:51:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-12-09 5:48 AM, Chris Tapp wrote:
> On 9 Dec 2012, at 04:47, Bruce Ashfield wrote:
>
>>
>>
>>
>> On Sat, Dec 8, 2012 at 7:54 PM, Chris Tapp <opensource@keylevel.com
>> <mailto:opensource@keylevel.com>> wrote:
>>
>>     On 9 Dec 2012, at 00:11, Chris Larson wrote:
>>
>>>     On Sat, Dec 8, 2012 at 5:07 PM, Chris Tapp
>>>     <opensource@keylevel.com <mailto:opensource@keylevel.com>> wrote:
>>>
>>>         Is it possible to have more than one bbappend applied to a
>>>         recipe?
>>>
>>>         I'm using meta-cedartrail with my own layer (which is set as
>>>         lower priority).
>>>
>>>         Meta-cedartrail has a linux-yocto_3.0.bbappend, but I want to
>>>         be able to enable CONFIG_HID_APPLE in my layer so my Apple
>>>         keyboard works (and keep meta-cedartrail 'clean'). Is it
>>>         possible to use another linux-yocto_3.0.bbappend in my layer?
>>>         I've given it a try, but it's not working and I thought it
>>>         would be an idea to see if it __should__ before I try and fix
>>>         it ;-)
>>>
>>>
>>>     All bbappends from all layers are applied, in layer priority order.
>>
>>     Thanks, I was hoping that was the case.
>>
>>     I wonder why this isn't working then - I think I've done it as
>>     shown in the dev manual...
>>
>>
>> Is it something other than the bbappends ? i.e. are you sure you have
>> all the required
>> dependencies for CONFIG_HID_APPLE already enabled, or in the same fragment
>> you are appending ?
>
> menuconfig shows that the dependencies are ok. I've got a single
> fragment referenced using a SRC_URI in the bbappend which sets
> FILESEXTRAPATHS_prepend. The .cfg file just sets:
>
> CONFIG_HID_APPLE=y
>
> I can't find my .cfg file in the work area, so it seems as if it's not
> being picked up.

Aha. That is interesting, since if the file wasn't found, you should
get a fetcher error. But if the file isn't in the workdir, then it 
definitely
won't be tacked on the end of the configuration for you (as you've
seen).

So that brings the question back to the bbappend, and why wouldn't your
file be found and propagated. hmm. I can always try something here, but
I've had multiple bbappends in the past and they've worked .. but one just
never knows what can silently break.

Bruce


>
>> Bruce
>>
>>
>>>     --
>>>     Christopher Larson
>>
>>     Chris Tapp
>>
>>     opensource@keylevel.com <mailto:opensource@keylevel.com>
>>     www.keylevel.com <http://www.keylevel.com/>
>>
>>
>>
>>
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
>
> Chris Tapp
>
> opensource@keylevel.com <mailto:opensource@keylevel.com>
> www.keylevel.com <http://www.keylevel.com>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


