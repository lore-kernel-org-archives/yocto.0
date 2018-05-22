Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99443E009BC; Tue, 22 May 2018 00:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.197.172.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gw01.mail.saunalahti.fi (gw01.mail.saunalahti.fi
	[195.197.172.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67B2BE0086B
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 00:45:17 -0700 (PDT)
Received: from linux.suse (91-157-45-43.elisa-laajakaista.fi [91.157.45.43])
	by gw01.mail.saunalahti.fi (Postfix) with ESMTP id C5CF3400D0;
	Tue, 22 May 2018 10:45:12 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
Date: Tue, 22 May 2018 10:45:12 +0300
Message-ID: <87lgcckubb.fsf@linux.suse>
MIME-Version: 1.0
Subject: Re: ldd
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
X-List-Received-Date: Tue, 22 May 2018 07:45:18 -0000
Content-Type: text/plain

Hi!

When searching for "yocto ldd" Google brings up this old posting

On Mon Nov 11 05:25:08 PST 2013 Chris Hallinan challinan at gmail.com wrote:

> On Sat, Nov 9, 2013 at 9:57 AM, Gary Thomas <gary at mlbassoc.com> wrote:
>
>> On 2013-11-09 06:42, Seth Bollinger wrote:
>>
>>> Hello All,
>>>
>>> I don't see that ldd is part of the cross toolchain build anywhere.  Am I
>>> missing something?
>>>
>>
>> It's built with the eglibc recipe and is packaged separately.
>>
>>

Right, and the command to locate it is

$ oe-pkgdata-util find-path /usr/bin/ldd
ldd: /usr/bin/ldd

So the package name is indeed ldd.

>Gosh, I though ldd, originally a hard-to-maintain script, was obsoleted a
>long time ago. This command:
>
>$ readelf --dynamic <binary>
>
>provides the same information, and readelf can be found in every cross
>toolchain.
>
>-Chris
>

I don't think that is correct. readelf only shows static information
embedded into the binary. ldd does runtime lookup obeying e.g. the
LD_LIBRARY_PATH environment variable. It also has options -r and -u for
actually doing the relocations and it will report errors if they don't
succeed. So ldd is more useful than readelf for some use cases. 

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

