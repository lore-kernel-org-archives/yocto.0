Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1ABBE008FB; Mon,  3 Oct 2016 22:26:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1370AE00724
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 22:26:34 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id D006168A01C; Tue,  4 Oct 2016 06:26:32 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 5685A68A019;
	Tue,  4 Oct 2016 06:26:32 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id BEA0967400B5;
	Tue,  4 Oct 2016 07:26:31 +0200 (CEST)
To: yocto@yoctoproject.org
References: <20161002143422.GA24664@openSUSE-i7.site>
	<DC4D7174-E554-4A40-A0BC-B20623C83300@gmail.com>
	<HE1PR01MB18837565069037BC361486E792C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB188308CD0299E2BC792EF3C692C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161003184826.GA30939@openSUSE-i7.site>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <b14ffd5f-22fd-9caa-e9bd-51b2b8ff561b@mlbassoc.com>
Date: Tue, 4 Oct 2016 07:26:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20161003184826.GA30939@openSUSE-i7.site>
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Tue, 04 Oct 2016 05:26:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-10-03 20:48, Trevor Woerner wrote:
> On Mon 2016-10-03 @ 06:45:55 PM, Karim ATIKI wrote:
>> Note: I just launched the build again with bitbake -k core-image-x11....and
>>
>>  the error did not occur again.
>> Well, a bit weird. Don't really know why does this error raised though.

Unless you made a change to the image, your second bitbake command will have
no effect which is [probably] why no message.

Also note that this is labeled "Error", but the image is actually built

>
> It looks like the patch to which Khem refers was just added and pushed within
> the last couple hours :-)

Actually, it was pushed on 2016-09-16

>
>> is it due to use of DATE and TIME issue ? I think there was such a patch proposed to meta-rpi see
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=4c02c7ce07121c2f5367204445f93199d828bb10


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

