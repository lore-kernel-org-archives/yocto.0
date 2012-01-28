Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E63AE0030F
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 02:41:41 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 10AB0F812CF; Sat, 28 Jan 2012 03:41:40 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1D361F81230;
	Sat, 28 Jan 2012 03:41:39 -0700 (MST)
Message-ID: <4F23D0E3.6030006@mlbassoc.com>
Date: Sat, 28 Jan 2012 03:41:39 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Sathishkumar Duraisamy <bewithsathish@gmail.com>
References: <CANJvwR-J4C50rF-hS=ANkH=SUsVDqpj64feTONGsmy1xOk=dmw@mail.gmail.com>
	<4F23CBD9.1080702@mlbassoc.com>
	<CANJvwR8kbNbSxUQueVpp0e_evPGKkbtyxAB-xTrM_zgWJkQRcw@mail.gmail.com>
In-Reply-To: <CANJvwR8kbNbSxUQueVpp0e_evPGKkbtyxAB-xTrM_zgWJkQRcw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Writing recipe for changing /etc/profile
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
X-List-Received-Date: Sat, 28 Jan 2012 10:41:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-28 03:34, Sathishkumar Duraisamy wrote:
> On Sat, Jan 28, 2012 at 3:50 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> On 2012-01-28 02:10, Sathishkumar Duraisamy wrote:
>>>
>>> Hi all,
>>>
>>> I have some doubts in launching my application while booting. That is,
>>> once  my device is powered on,  should land in my application. I found
>>> that by adding some scripts to /etc/profile and enabled auto login, it
>>> does.
>>>
>>> Is there a better way to do same? And if the current method is
>>> sufficient, then how do I add patch to change /etc/profile file, or
>>> which recipe gives this file so that I can the in my yocto layer.
>>>
>>
>> Add your scripts to /etc/profile.d
>>
>> There are a few examples in the source tree, e.g.
>>   meta/recipes-graphics/tslib/tslib_1.0.bb
>
> Thanks Gray Thomas, it works.

Glad to help.

n.b. I am gray (haired), but my name is Gary :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

