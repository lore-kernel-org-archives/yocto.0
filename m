Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA89EE00942; Wed, 21 Jan 2015 11:32:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E2810E0089B
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 11:32:12 -0800 (PST)
Received: (qmail 30132 invoked by uid 1003); 21 Jan 2015 19:32:11 -0000
Received: from unknown (HELO ?192.168.1.124?)
	(philip@opensdr.com@108.44.84.240)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	21 Jan 2015 19:32:11 -0000
Message-ID: <54BFFEB9.80103@balister.org>
Date: Wed, 21 Jan 2015 14:32:09 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Benjamin Fleming <bfleming@meteorcomm.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <206093a14a0a41e78260f711393dfd79@MCCRENEX01.meteorcomm.lan>
	<54BF00D5.3000104@balister.org>
	<9e7eb6c8cd2346bc96c44d70b390f8c1@MCCRENEX01.meteorcomm.lan>
In-Reply-To: <9e7eb6c8cd2346bc96c44d70b390f8c1@MCCRENEX01.meteorcomm.lan>
Subject: Re: CMake in populate_sdk
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
X-List-Received-Date: Wed, 21 Jan 2015 19:32:17 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 01/21/2015 02:26 PM, Benjamin Fleming wrote:
> 
> 
>> -----Original Message-----
>> From: Philip Balister [mailto:philip@balister.org]
>> Sent: Tuesday, January 20, 2015 5:29 PM
>> To: Benjamin Fleming; yocto@yoctoproject.org
>> Subject: Re: [yocto] CMake in populate_sdk
>>
>> On 01/20/2015 02:42 PM, Benjamin Fleming wrote:
>>> How do I add packages to the populate_sdk option?
>> Something like this:
>>
>> https://github.com/balister/meta-sdr/blob/master/recipes-
>> images/images/native-sdk.inc
>>
> Ok, adding TOOLCHAIN_HOST_TASK_append = " nativesdk-cmake" seems to work; it adds cmake to the SDK.
> One more question; when building using the SDK, my cmake-based project fails to find required libraries; presumably it needs a toolchain.cmake file. Is there some way for the populate_sdk task to generate the toolchain.cmake files also? (I see that it generates something for autotools)

We added this to gnuradio:

https://github.com/gnuradio/gnuradio/blob/master/cmake/Toolchains/oe-sdk_cross.cmake

I wonder if we could generalize this.

Philip


> 
> Thanks, Ben 
> 
>> Philip
>>
>>>
>>> -Ben Fleming
>>>
> 
> 

