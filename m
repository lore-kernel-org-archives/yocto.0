Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8340E00867; Wed,  5 Apr 2017 05:40:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AFF9E00655
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 05:40:17 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id E9F732656A7
To: openembedded-core@lists.openembedded.org
References: <20170324084604.10391-1-romain.perier@collabora.com>
	<04e6341e-ae56-b867-5a6a-7b89cda539d6@collabora.com>
	<5f4c4daa-3745-d5e7-9581-e8b7179b6dfd@linux.intel.com>
	<acf909bb-42c8-337d-1f41-463680ce2626@collabora.com>
	<0cb24550-5cd8-78a0-951f-5a3589511fc0@collabora.com>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <9670c5a6-1947-f238-197d-6a43f268740c@collabora.com>
Date: Wed, 5 Apr 2017 14:40:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <0cb24550-5cd8-78a0-951f-5a3589511fc0@collabora.com>
Cc: yocto@yoctoproject.org
Subject: Re: [OE-core] [PATCH v2] logrotate: Add systemd support
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
X-List-Received-Date: Wed, 05 Apr 2017 12:40:18 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

I have just realized, systemd service and timer is already present and
supported on upstream (like cron, in examples/). At least in 3.11.0 and
master.

I will propose an update of this recipe to 3.11.0 (the last release) and
then add support for systemd.


Regards,

Romain


Le 05/04/2017 à 11:41, Romain Perier a écrit :
> Add yocto and Alexander to Cc: (sorry)
>
> Romain
>
>
> Le 05/04/2017 à 11:30, Romain Perier a écrit :
>> Hello,
>>
>>
>> Le 05/04/2017 à 10:25, Alexander Kanavin a écrit :
>>> On 04/05/2017 10:58 AM, Romain Perier wrote:
>>>> ping
>>>>
>>> Is this available in newer upstream versions of logrotate? Should you
>>> send it there first?
>>>
>>> Alex
>>>
>> No, not yet.
>> Mhhh, we have variables specific to the recipe in the .service and
>> .timer, but I think that I can still send a generic version of these
>> files on upstream and use sed anyway from the recipe...
>>
>> Romain


