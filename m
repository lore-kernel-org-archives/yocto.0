Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58CA6E013BB
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 21:09:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7A49DS0015582
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 9 Aug 2012 21:09:14 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.186) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Thu, 9 Aug 2012 21:09:13 -0700
Message-ID: <50248968.501@windriver.com>
Date: Fri, 10 Aug 2012 00:09:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1344545782.git.tom.zanussi@intel.com>
	<50247A30.7000805@windriver.com>
	<1344571618.7235.50.camel@trz-ThinkPad-T420>
In-Reply-To: <1344571618.7235.50.camel@trz-ThinkPad-T420>
Cc: yocto@yoctoproject.org, scott.a.garman@intel.com
Subject: Re: [PATCH 00/14][denzil] yocto-bsp updates for denzil, v2
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
X-List-Received-Date: Fri, 10 Aug 2012 04:09:15 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-10 12:06 AM, Tom Zanussi wrote:
> On Thu, 2012-08-09 at 23:04 -0400, Bruce Ashfield wrote:
>> On 12-08-09 5:01 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi<tom.zanussi@intel.com>
>>>
>>> This patchset fixes yocto bugs [YOCTO #2693] and [YOCTO #2587], and
>>> fixes some other minor usability problems reported by users.
>>>
>>> Please pull into the current poky/denzil point release branch.
>>>
>>> v2: This is the same patchset as the previous one, but an additional
>>> patch fixing problems found in testing has been tacked on.
>>
>> Tom,
>>
>> Do you also need the upcoming master branch validate_branches backported
>> to denzil to support your use cases ? I can arrange to do that next week,
>> if you've tested with it, and it meets your needs (I know it works for the
>> other use cases).
>>
>
> Yeah, I've done all my denzil testing for this patchset with the
> following patch in place:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=tzanussi/kern-tools-denzil-update-from-bruce&id=63aca78351c7065c6671ee7296a8ac191465d882
>
> I can't say I've tested every use case (were there any that come to mind
> that it might break?), but I have done quite a few and not seen any
> problems so far (and conversely lots of problems without it).

Nothing comes to mind that will break, and it has performed well here.
I'll send it out as a follow up to Scott this weekend or early next
week, so it'll be in place by the time it is needed.

Cheers,

Bruce

>
> Tom
>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> The following changes since commit 73cdebf60df225ee10f2eb215935be3b61e1b831:
>>>
>>>     documentation/dev-manual/dev-manual-kernel-appendix.xml: Add note about conflict (2012-06-29 15:54:26 +0100)
>>>
>>> are available in the git repository at:
>>>     git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-denzil-update
>>>     http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-denzil-update
>>>
>>> Tom Zanussi (14):
>>>     yocto-bsp: add new strip_base() function
>>>     yocto-bsp: strip '/base' from kernel branches in templates
>>>     yocto-bsp: update default branch names
>>>     yocto-bsp: allow branch display filtering
>>>     yocto-bsp: use branches_base
>>>     yocto-bsp: add standard branch mapping
>>>     yocto-bsp: use standard branch mapping in bsp templates
>>>     yocto-bsp: use rstrip() for assignment lines
>>>     yocto-bsp: remove 'branch' statements in .scc if reusing branch
>>>     yocto-bsp: add some standard policy
>>>     yocto-bsp: add i586 option for i386
>>>     yocto-bsp: use emgd 1.10 for i386 template
>>>     yocto-bsp: generate default properties even if json specified
>>>     yocto-bsp: use base branches for qemu 'newbranch' case
>>>
>>>    scripts/lib/bsp/engine.py                          |   44 ++++++++++++++++++-
>>>    scripts/lib/bsp/kernel.py                          |   18 ++++++++
>>>    .../linux/files/{{=machine}}-standard.scc          |    1 +
>>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
>>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
>>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
>>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
>>>    .../arch/i386/conf/machine/{{=machine}}.conf       |   14 ++++--
>>>    .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++
>>>    .../linux/files/{{=machine}}-standard.scc          |   14 ++++++-
>>>    .../recipes-kernel/linux/files/{{=machine}}.scc    |    2 +-
>>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
>>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
>>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
>>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
>>>    .../linux/files/{{=machine}}-standard.scc          |    1 +
>>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
>>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
>>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
>>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
>>>    .../linux/files/{{=machine}}-standard.scc          |    1 +
>>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
>>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
>>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
>>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
>>>    .../linux/files/{{=machine}}-preempt-rt.scc        |    5 +--
>>>    .../linux/files/{{=machine}}-standard.scc          |    9 +---
>>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   24 +++++-----
>>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   24 +++++-----
>>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   24 +++++-----
>>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   24 +++++-----
>>>    .../linux/files/{{=machine}}-preempt-rt.scc        |    7 +++
>>>    .../linux/files/{{=machine}}-standard.scc          |   10 ++++-
>>>    ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |    8 ++--
>>>    ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |    8 ++--
>>>    ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |    8 ++--
>>>    ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |    8 ++--
>>>    37 files changed, 240 insertions(+), 149 deletions(-)
>>>
>>
>
>


