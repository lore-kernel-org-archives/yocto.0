Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25777E00DC4; Thu, 17 Sep 2015 00:15:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.17.115.56 listed in list.dnswl.org]
X-Greylist: delayed 126 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Sep 2015 00:15:02 PDT
Received: from atl4mhfb02.myregisteredsite.com
	(atl4mhfb02.myregisteredsite.com [209.17.115.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93AB9E00BC6
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 00:15:02 -0700 (PDT)
Received: from atl4mhob03.myregisteredsite.com
	(atl4mhob03.myregisteredsite.com [209.17.115.41])
	by atl4mhfb02.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
	t8H7CvdE024958
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 03:12:57 -0400
Received: from mailpod.hostingplatform.com ([10.30.71.204])
	by atl4mhob03.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
	t8H7CscL008779
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 03:12:54 -0400
Received: (qmail 20871 invoked by uid 0); 17 Sep 2015 07:12:54 -0000
X-TCPREMOTEIP: 88.159.208.100
X-Authenticated-UID: mike@milosoftware.com
Received: from unknown (HELO ?192.168.80.121?)
	(mike@milosoftware.com@88.159.208.100)
	by 0 with ESMTPA; 17 Sep 2015 07:12:54 -0000
To: yocto@yoctoproject.org
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
	<55F82F8A.0@gmail.com><F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
	<55F913D0.2000109@topic.nl> <F45FA12158354FC0BEDC44D9390F3A23@PAULD>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <55FA67F5.2010301@topic.nl>
Date: Thu, 17 Sep 2015 09:12:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <F45FA12158354FC0BEDC44D9390F3A23@PAULD>
Subject: Re: I hate busybox!
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
X-List-Received-Date: Thu, 17 Sep 2015 07:15:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 16-09-15 18:43, Paul D. DeRocco wrote:
>> From: Mike Looijmans
>>
>> "Embedded" in my world is not about RAM or disk size. It's about
>> building a device that has a set task in life, and nothing is as
>> important as that one task. Whether that's running on an i7
>> or an M3 is irrelevant.
>>
>> For a system to acquire and process sensor data, record your
>> favorite TV
>> shows, or guide a missile, there's no need for a full fledged
>> bash shell
>> interpreter. It just needs a bit of plumbing to get the
>> application up
>> and running, and that's about it.
>>
>> Busybox is for systems like that. For these systems, anything more is
>> overkill, and will waste resources and increase the boot time.
>
> If you've got a 1GB eSSD drive, because that's the smallest you can buy,
> having a 382MB image rather than a 346MB image isn't a waste of anything.

To me it looks like a waste of 36 MB that could have been used for storing 
useful data.

For many projects, 36MB is more than I have for the whole root filesystem. 
Usually I get between 8 and 32 MB for the whole system (bootloader, kernel, 
rootfs and user data storage).

> How much boot time increase do you think you'll get from full-featured
> command line tools? I'd be surprised if it was noticeable to anyone.

My current boot time is about 4 seconds. The SD memory on this board reads at 
roughly 20MB/s, so each MB that I need to read at boot will cost me 50ms 
extra. That is most certainly measurable. The NAND flash reads at 10MB/s, so 
that'll be 100ms per megabyte.


As I said before, you and I live in different worlds. From where I'm standing, 
your system is the exception, not the rule.

