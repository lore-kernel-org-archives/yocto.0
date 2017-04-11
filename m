Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78D07E00AF0; Tue, 11 Apr 2017 05:37:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34BD4E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 05:37:18 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 8DDA4266085
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	liezhi.yang@windriver.com
References: <20170405150521.19160-1-romain.perier@collabora.com>
	<20170405150521.19160-2-romain.perier@collabora.com>
	<1491478720.17200.35.camel@linuxfoundation.org>
	<9ea767b3-abdc-41b6-cd7b-5ffd209867e6@collabora.com>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <2d9138e7-41d4-ac66-5fe7-56991cfeff62@collabora.com>
Date: Tue, 11 Apr 2017 14:37:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <9ea767b3-abdc-41b6-cd7b-5ffd209867e6@collabora.com>
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCH 1/2] logrotate: Bump to 3.11.0
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
X-List-Received-Date: Tue, 11 Apr 2017 12:37:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

ping,


Le 06/04/2017 à 14:20, Romain Perier a écrit :
> Hello,
>
>
> Le 06/04/2017 à 13:38, Richard Purdie a écrit :
>> On Wed, 2017-04-05 at 17:05 +0200, Romain Perier wrote:
>>> This commit updates the recipe to the last upstream tag. Then, as the
>>> tarball no longer contains the pre-generated Makefile, inherit from
>>> autotools
>>>
>>> [...]
>>> -PACKAGECONFIG ?= "${@bb.utils.filter('DISTRO_FEATURES', 'acl
>>> selinux', d)}"
>>> +PACKAGECONFIG ?= "\
>>> +    ${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)} \
>>> +    ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux',
>>> '', d)} \
>>> +"
> Correct, I probably did something wrong during rebase.
>
>> I'm not sure the above should be there, it reverts someone else's
>> change?
>>
>> I am a little nervous of taking this at this point in the release
>> too...
> What do you think if we backport the systemd service and the systemd
> timer from upstream into 3.9.1 and then add support for systemd in the
> recipe ? (In the original patches, I have written systemd services
> myself) The code of logrotate would be unchanged.
>
> Regards,
> Romain
What do we do for this ? this is possible or I have to propose this
feature for master-next ? (I mean post 2.3)

Thanks,
Romain

