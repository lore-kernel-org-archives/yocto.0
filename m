Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 999BFE00A6A; Mon, 25 Jul 2016 07:40:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4714E00A03
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 07:40:37 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id B0AE268A01C; Mon, 25 Jul 2016 15:40:35 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 22C2668A019;
	Mon, 25 Jul 2016 15:40:35 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id CD8676740370;
	Mon, 25 Jul 2016 16:40:34 +0200 (CEST)
To: yocto@yoctoproject.org
References: <b44125f5-8305-978c-2282-01e54add131d@elfin.de>
	<b85c6663-e050-6729-a639-672c1d6af55f@linux.intel.com>
	<c43b98f7-117e-55d6-1446-653db31b9f2b@elfin.de>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <579624E2.5070502@mlbassoc.com>
Date: Mon, 25 Jul 2016 16:40:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <c43b98f7-117e-55d6-1446-653db31b9f2b@elfin.de>
Subject: Re: changing ownership of a file in a package
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
X-List-Received-Date: Mon, 25 Jul 2016 14:40:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-07-25 16:07, piotr.lewicki wrote:
> Thank you. I will try this, but I wonder what is the right way of dealing with that when I want to change the ownership
> of let's say 2 files from different packages to a user that I create?
>
> Is using "useradd" possible in 2 separate recipes (to create the same user)?

Probably not good practice - have one create the user and the other recipe
depend on it at build time so you know it's already in place.  Note that you
can set the ownership on the install command using -o and -g

> On 25.07.2016 15:58, Leonardo Sandoval wrote:
>> As a workaround, have you tried using the other class to include users (useradd)? Look at the 'note' of this section
>>
>> http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-extrausers
>>
>> Leo
>>
>>
>> El 07/25/2016 a las 07:22 AM, piotr.lewicki escribió:
>>> Hi,
>>>
>>> I have a package where I want to install some files into a home directory of a user "testuser". I create a user in my
>>> image bb file using "extrausers".
>>>
>>> My problem is that I'm unable to change ownership of those files from root to the testuser.
>>>
>>> Simple "chown testuser:testuser -R /home/testuser" inside do_install task makes those files being owned by "nobody".
>>>
>>> How can I manage ownership of those files properly?
>>>
>>>
>>>
>>> The recipe is like so:
>>>
>>> DESCRIPTION = "Files installed in testuser user home directory"
>>> LICENSE = "CLOSED"
>>>
>>> SRC_URI += " \
>>>            file://authorized_keys \
>>>            file://bash_profile \
>>>            file://bashrc \
>>>            "
>>>
>>> do_install(){
>>>     install -d ${D}/home/testuser/
>>>     install -m 0644 ${WORKDIR}/bash_profile ${D}/home/testuser/.bash_profile
>>>     install -m 0644 ${WORKDIR}/bashrc ${D}/home/testuser/.bashrc
>>>
>>>     install -d ${D}/home/testuser/.ssh
>>>     install -m 0644 ${WORKDIR}/authorized_keys ${D}/home/testuser/.ssh/
>>> }
>>>
>>> FILES_${PN} = "/home/testuser"
>>>
>>>
>>> Thanks,
>>>
>>> Piotr
>>>
>>
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

