Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F6D7E00524; Tue,  2 Sep 2014 11:40:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20D77E004A0
	for <yocto@yoctoproject.org>; Tue,  2 Sep 2014 11:40:43 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id AF6A822784C2;
	Tue,  2 Sep 2014 18:39:29 +0000 (UTC)
Message-ID: <54060EE0.5030103@mindchasers.com>
Date: Tue, 02 Sep 2014 14:39:28 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <5400D366.8050207@mindchasers.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FE01F8@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FE01F8@ORSMSX101.amr.corp.intel.com>
Subject: Re: [yocto-docs] should I be able to make the docs without warnings?
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
X-List-Received-Date: Tue, 02 Sep 2014 18:40:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/02/2014 02:09 AM, Rifenbark, Scott M wrote:
> Bob,
>
> The warnings when you make a PDF document consist of the following:
>
> * "cannot add @xml:base to node set root element. Relative paths may not work."
> * /usr/bin/fop: Unable to locate servlet-api in /usr/share/java"
> * Various font substitutions dependent on the build host
> * And then some line overflow messages (quite a few) that have the form: "Line 1 of a paragraph overflows the available area by xxxx millipoints. (See position xxx:xxx)
>
> I have just considered these warnings as acceptable.


Thank you Scott.  Yes, I believe your warning experience and mine are 
consistent.

It's great to have a sanity check.

If I ever have reason to develop some doc generation expertise, I'll 
take a closer look at the warnings.  Otherwise, I agree that the pdf 
docs are highly usable as is.

Thanks again,

Bob




I have never taken the time to try and run them down and figure out what 
they mean.  The PDF file builds out to an acceptable item in my opinion. 
  PDF versions of the manuals have taken a serious back-seat to their 
HTML counterparts.  If you can shed some light on these warnings I am 
all for trying to suppress them or eliminate them.  For the time being 
though, they would be low on my priority.
>
> Thanks,
> Scott
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Bob Cochran
>> Sent: Friday, August 29, 2014 12:24 PM
>> To: Yocto discussion list
>> Subject: [yocto] [yocto-docs] should I be able to make the docs without
>> warnings?
>>
>> Hello,
>>
>> I'm thinking about chasing down some of the warnings I see when I make the
>> docs (pdf) in yocto-docs.
>>
>> However, it's not clear to me whether the warnings I get are to be expected
>> or can be configured out.
>>
>> I don't see that the auto builder is used to build the docs. Therefore, can
>> someone please point me to a known good log or at least let me know that I
>> should be able to make the docs without warnings.
>>
>> Thanks,
>>
>> Bob
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


