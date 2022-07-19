Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95483C43334
	for <webhook@archiver.kernel.org>; Tue, 19 Jul 2022 17:35:50 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web09.43496.1658252144929939116
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jul 2022 10:35:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Q1EUhhDa;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 85BC460004;
	Tue, 19 Jul 2022 17:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1658252143;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DudPjw0vHn1aAPItSR36P832WScvtBB0No+fcQo+9i4=;
	b=Q1EUhhDabJYn86TJlyC3EjRjbw5EoHwrblvws0fdWaUgLmiPf0H6CeHFTqFIQ3wBn87TgH
	fj1v0N0mQQdg9o1PztLn/BVEl88cp3wuq0+KQMSa87GxiobRNOXV8OJM/8E85ii8MPEeeR
	CwSgi9fVlkaz7InB182inlGACMqtdF5wK+d7cj5k0dYNyLuzQJrrFY00/xn1MBLbkVdGp1
	MaFZP0cVvgpyKfK1+FO8b8hQgMPN6i0PQyG6pXkNZNGtDmhYBx7qWAhpvZd1Hjiul3OWZG
	fyizZy0vWmo3BhMSinoeGFBuXKtS2mcUOXct+atBv34omKyFyBJNU3njbBvaWQ==
Message-ID: <6f097af7-5e28-c684-4c08-0a9a76d3081a@bootlin.com>
Date: Tue, 19 Jul 2022 19:35:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: allow
 build warnings again
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 yocto@lists.yoctoproject.org
References: <20220622153201.2734009-1-michael.opdenacker@bootlin.com>
 <4828a5c0-59c1-ef5e-385f-1b563d3577ee@theobroma-systems.com>
 <c8b5d42614eb1dc29c203c82abe96733b42fcf83.camel@linuxfoundation.org>
 <0a485f9c-115d-7dad-74b7-f048b4daf4cc@theobroma-systems.com>
 <508fea9eb0f61c23f76ca419b8afdeb6e97bb25e.camel@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: 
 <508fea9eb0f61c23f76ca419b8afdeb6e97bb25e.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Jul 2022 17:35:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57572

Richard, Quentin,

On 7/5/22 13:58, Richard Purdie wrote:
> On Tue, 2022-07-05 at 13:21 +0200, Quentin Schulz wrote:
>> Hi Richard, Michael,
>>
>> On 7/4/22 16:23, Richard Purdie wrote:
>>> On Mon, 2022-07-04 at 15:24 +0200, Quentin Schulz wrote:
>>>> Hi Michael,
>>>>
>>>> On 6/22/22 17:32, Michael Opdenacker via lists.yoctoproject.org wrote:
>>>>> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>>>>
>>>>> This allows to switch to a more recent of Sphinx
>>>>> which will generate warnings with old versions of docs.
>>>>>
>>>>> This way, it's not immediately necessary to patch
>>>>> all such versions.
>>>>>
>>>>> This commit reverts
>>>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.yoctoproject.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D8273124feb9da2ffe93fcee7c4529d5597e1684a&d=DwIDAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=je4C362aUVxZ2rdozdrQVTgzhi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=9u5-2R_NLEQy5w0pFgklKIUQnAvVLuHX1ASaeEBBJJ4&e=
>>>>> which originally reverted
>>>>> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.yoctoproject.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D931d409b255a85f2217ca093d8391a678ce00ddb&d=DwIDAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=je4C362aUVxZ2rdozdrQVTgzhi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=bTED2gTptfT6bSvLayy3fEpQJyUdbo5gLlt7ZGKkD1c&e=
>>>>>
>>>>> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>>>> ---
>>>>>     scripts/run-docs-build | 4 ++--
>>>>>     1 file changed, 2 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
>>>>> index 648a29d..0f74520 100755
>>>>> --- a/scripts/run-docs-build
>>>>> +++ b/scripts/run-docs-build
>>>>> @@ -63,7 +63,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>>>>>         git checkout $branch
>>>>>         git checkout master releases.rst
>>>>>         make clean
>>>>> -    make publish
>>>>> +    SPHINXOPTS="-j auto" make publish
>>>>>     
>>>>>         if [ "$branch" = "master-next" ]; then
>>>>>             branch="next"
>>>>> @@ -136,7 +136,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
>>>>>         fi
>>>>>     
>>>>>         make clean
>>>>> -    make publish
>>>>> +    SPHINXOPTS="-j auto" make publish
>>>>>     
>>>> What about doing this for all branches except master? To have at least
>>>> some checks and not completely disable the warnings.
>>>>
>>>> I'm a bit afraid we'll just not care about warnings anymore since they
>>>> won't fail the autobuilder anymore. I also understand it's not really
>>>> sustainable to leave them on for old docs since they won't be maintained
>>>> at one point in time but we still very mnuch would like to be able to
>>>> build them.
>>>>
>>>> Not sure what's the best solution here right now unfortunately :/
>>> Enabling them for master could be a compromise, I'd take such a patch
>>> (Michael is away for a while).
>>>
>> Some warnings are actually valid. Such is the case for the one that
>> warranted
>> https://git.yoctoproject.org/yocto-docs/commit/?id=9a797dedf6708da3e7ce789c5c8735e5d891cde4.
>> The issue is that we build the docs from old versions with the same
>> version of sphinx. Therefore, this patch fixes the issue in master but
>> should also be backported to all other impacted versions, even the
>> unmaintained ones. See
>> https://docs.yoctoproject.org/dunfell/dev-manual/dev-manual-common-tasks.html#recipe-syntax,
>> instead of a link we now have a path between quotes.
>>
>> There are two ways to fix that one warning:
>>    - add intersphinx_disabled_reftypes=[] in conf.py manually from the
>> run-docs-build script, c.f.
>> https://www.sphinx-doc.org/en/master/usage/extensions/intersphinx.html#confval-intersphinx_disabled_reftypes
>>    - patch all (tagged and branch) releases from 3.2 to current master in
>> scripts/docs-build-patches,
>>
>> I prefer the second option because it feels less hacky, but that means
>> MANY times the same file added to docs-build-patches directory.
>>
>> The same could be done for the patch I just sent for yocto-docs to use
>> the %s substitution characters for the cve extlinks to fix a warning. We
>> could just apply this patch to affected releases (kirkstone-4.0.1 tag +
>> kirkstone branch). I could technically request a backport to yocto-docs
>> kirkstone branch, the only thing I don't like is bumping the min version
>> requirement for sphinx for a release that was already released, but if
>> that's okay with you, we could avoid having to add patches in the
>> autobuilder for every new tagged release of kirkstone.
>>
>> I'm honestly not sure there's a lot of benefit in disabling the warnings
>> for now, or enabling them only for select releases. I understand that
>> this increases the maintenance burden on unmaintained branches every
>> time we update the sphinx binary in the docs buildtools. However, we
>> missed this new broken link for almost a month now, which shows we don't
>> look at successful docs build logs from the autobuilder.
> Perhaps it is time we split the master build from the stable releases
> and used different buildtools tarballs for them?
>
> That has it's own set of challenges of course too.


I'd vote for such a solution, as it would allow to move on to newer 
versions of Sphinx without breaking existing documentation, causing a 
lot of extra work that's distracting us from working on the current docs.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


