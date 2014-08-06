Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 852CDE00563; Wed,  6 Aug 2014 09:27:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C677E0054C
	for <yocto@yoctoproject.org>; Wed,  6 Aug 2014 09:27:42 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 83A35F811ED; Wed,  6 Aug 2014 10:27:42 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7591CF811E5;
	Wed,  6 Aug 2014 10:27:40 -0600 (MDT)
Message-ID: <53E25797.6030206@mlbassoc.com>
Date: Wed, 06 Aug 2014 10:28:07 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.LFD.2.11.1408030456480.14212@localhost>	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD3136@ORSMSX101.amr.corp.intel.com>	<2384884.X0kGjS6PL9@peggleto-mobl5.ger.corp.intel.com>
	<alpine.LFD.2.11.1408061218490.11952@localhost>
In-Reply-To: <alpine.LFD.2.11.1408061218490.11952@localhost>
Subject: Re: question about installing multiple versions of a single library
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
X-List-Received-Date: Wed, 06 Aug 2014 16:27:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-08-06 10:20, Robert P. J. Day wrote:
> On Wed, 6 Aug 2014, Paul Eggleton wrote:
>
>> Hi Robert,
>>
>> On Monday 04 August 2014 05:29:45 Rifenbark, Scott M wrote:
>>>> -----Original Message-----
>>>> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>>>> Sent: Sunday, August 03, 2014 2:05 AM
>>>> To: Rifenbark, Scott M
>>>> Subject: question about installing multiple versions of a single library
>>>>
>>>>   sorry for the interruption, i'm reading dev manual here:
>>>> http://www.yoctoproject.org/docs/latest/dev-manual/dev-> >manual.html#installing-multiple-versions-of-the-same-library
>>>>
>>>> and the example used (clutter) doesn't even exist in oe-core with those
>>>> version numbers, i was looking for another example that actually exists,
>>>> didn't immediately see one.
>>>>
>>>>   more to the point, the version numbers used in those clutter recipe files
>>>>   look>
>>>> weird:
>>>>      clutter-1.6_1.6.20.bb
>>>>      clutter-1.8_1.8.4.bb
>>>>
>>>> i'm not used to seeing recipe files that appear to combine a
>>>> higher version number *and* what looks like a minor version
>>>> number upgrade as well. do you know what's going on there? maybe
>>>> that's not the best example for trying to explain this topic.
>>
>> The specific versions of clutter may no longer exist in the
>> metadata, but we do still use this scheme for clutter recipes and
>> others (gstreamer comes to mind). The point is you change PN to be
>> version-specific - you have clutter-1.6 and clutter-1.8, such that
>> you can depend on the specific version where needed.
>
>    ah, i see ... the software name is not simply "clutter", it is
> "clutter-1.6" or "clutter-1.8". got it.

The '_' in the recipe name is the key - everything to the left of
it is the package name and the version is to the right.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

