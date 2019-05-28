Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BCE6E00D44; Tue, 28 May 2019 07:53:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 955D8E00D32
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 07:53:31 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id d21so8453049plr.3
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 07:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=PS/69R5AhLlALIO7Xn37rTKC3YouHtqmEc9QF5L4tik=;
	b=0GaPswu3WXSAivY77zLKMLLEuZpdVl0Zxi7WYzRk9X7SKSFZZ4F2Rbz/jUtpFc6AEI
	HCYN0p73ysTtOaejenE5cXkn/ClxH03uZNSedKnBjrKJ/5yVIOOghhzLkS+pYEEwBPhS
	m3cHbjdQkmAXxydaOSyNw2tVEFA7avZjrU/HGTb3KcaCEH2DSiLgUP1X9LGeZBtk39Ph
	WksezGB7JsJvVEOsL/8GCJ6HKyxEIwpK7N2J5FlK/SKhyCwTU4YRs4kAsjr90Y369m73
	CQnvOhM6UrHCtLlHXyJiNEwO44+yjAeN//mSXWD5lqpJ39QjT1ApirAiC4MDcP1KUtY8
	2Peg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=PS/69R5AhLlALIO7Xn37rTKC3YouHtqmEc9QF5L4tik=;
	b=LBNz61udmVC1Qq1jhuT+mMTTitTqk2K+EMG7v3HFn9E/AmHI8i7j72D1X5Xk5LfZJ2
	BUJdkUMTgMLVXcu/DjyM1YUPk8MqGSZ9DOwnJZEQkbr8oNuzRAPW1aYKuUMBuDoasz1e
	Co7mumdNM5yb6mUPE5km4IwOgB86gCGRNjWyt4PSF7jrbi4bR2QYGN0Q7W9qTw1yR/RO
	LZX8OsXEOv8sUay56pMke03cBBcQbG/AVzRzZTuNlvL/zZh3riIPW8rP4RiOttE5D0jg
	2OTRRu4V2Pg010YDve7H9tZUQuI1t4dYq8V86oP1/EfVF3X5XjqR6D57nPo3XtyDM0wX
	qgkQ==
X-Gm-Message-State: APjAAAX8unIuzs+4RPjJ4beyrpZUKpMDeXtxJZotHPlAAId7YkxQ79Ba
	TZbiyS/VO47wnQlC/hx5BJSZWJAu06c=
X-Google-Smtp-Source: APXvYqyoHJdplUWrv+IdN26/q5Ku6LbmbBlZ2YDQEgAUNmhnu7scKlvUeQYcOYn8RIOtC7nM8X07uQ==
X-Received: by 2002:a17:902:1347:: with SMTP id
	r7mr91750665ple.45.1559055210660; 
	Tue, 28 May 2019 07:53:30 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:88b0:7832:d929:cf73?
	([2601:202:4180:c33:88b0:7832:d929:cf73])
	by smtp.gmail.com with ESMTPSA id
	h13sm17180142pfo.98.2019.05.28.07.53.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 May 2019 07:53:29 -0700 (PDT)
To: Changqing Li <changqing.li@windriver.com>,
	Randy MacLeod <randy.macleod@windriver.com>
References: <1551779999-231946-1-git-send-email-changqing.li@windriver.com>
	<3427a8c2-543e-f71c-9c10-fca3b5c0667e@windriver.com>
	<a42d5db8-1cae-008e-dd8f-d533662007d6@windriver.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <46d05a5b-c884-0f87-5cee-02d005f04225@mvista.com>
Date: Tue, 28 May 2019 07:53:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a42d5db8-1cae-008e-dd8f-d533662007d6@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [patchtest-oe][PATCH] test_metadata_src_uri: new unittest detecting added patch files without modifying SRC_URI
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
X-List-Received-Date: Tue, 28 May 2019 14:53:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 5/27/19 6:00 PM, Changqing Li wrote:
> ping
>
> On 4/29/19 2:10 PM, Changqing Li wrote:
>> ping
>>

Does this mean you have a working knowledge of patchtest?

The one used by the project appears to be off line.  Can you help?

kind regards,
Armin
>> On 3/5/19 5:59 PM, changqing.li@windriver.com wrote:
>>> From: Changqing Li <changqing.li@windriver.com>
>>>
>>> Adds new unittest detecting when a patch file is added but no
>>> corresponding
>>> change to the SRC_URI is done.
>>>
>>> This patch is from <daniela.plascencia@linux.intel.com>, get from
>>> commit
>>> 49201c19cfe4cadd127b112d2858d5b28db49c20, this commit is reverted by
>>> commit
>>> 6108d97f83b211f9eb245f339a412debd0ec5db4.
>>>
>>> The added test case is ok, reason of series 9949 patchtest failed is:
>>> recipe weston have REQUIRED_DISTRO_FEATURES, so parse recipe skipped,
>>> cause self.modified is none, actually .bb is mofified, so make the
>>> testcase failed.
>>>
>>> during patchtest, we don't really need DISTRO_FEATURES, so fix the
>>> problem
>>> by set REQUIRED_DISTRO_FEATURES to "" in repo patchtest, meantime,
>>> add this
>>> testcase back.
>>>
>>> [Yocto #13005]
>>>
>>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>>> ---
>>>   tests/test_metadata_src_uri.py | 25 +++++++++++++++++++++++++
>>>   1 file changed, 25 insertions(+)
>>>
>>> diff --git a/tests/test_metadata_src_uri.py
>>> b/tests/test_metadata_src_uri.py
>>> index a4c5caa..f684ced 100644
>>> --- a/tests/test_metadata_src_uri.py
>>> +++ b/tests/test_metadata_src_uri.py
>>> @@ -85,3 +85,28 @@ class SrcUri(base.Metadata):
>>>                                 'Amend the patch containing the
>>> software patch file removal',
>>>                                 data=[('Patch', f) for f in
>>> not_removed])
>>>   +    def test_src_uri_path_not_updated(self):
>>> +        new_patches = set()
>>> +        for patch in self.patchset:
>>> +            if patch.is_added_file and patch.path.endswith('.patch'):
>>> +                new_patches.add(os.path.basename(patch.path))
>>> +
>>> +        if not new_patches:
>>> +            self.skip('No new patches added, skipping test')
>>> +
>>> +        if not self.modified:
>>> +            self.fail('New patch path missing in SRC_URI',
>>> +                       "Add the patch path to the recipe's SRC_URI",
>>> +                       data=[('New patch(es)',
>>> '\n'.join(new_patches))])
>>> +
>>> +        for pn in self.modified:
>>> +            rd = self.tinfoil.parse_recipe(pn)
>>> +
>>> +            patchtestdata.PatchTestDataStore['%s-%s-%s' %
>>> (self.shortid(), self.metadata, pn)] = rd.getVar(self.metadata)
>>> +            test_src_uri    =
>>> patchtestdata.PatchTestDataStore['%s-%s-%s' % (self.shortid(),
>>> self.metadata, pn)].split()
>>> +            test_files    = set([os.path.basename(patch) for patch
>>> in test_src_uri if patch.startswith('file://')])
>>> +
>>> +            if not test_files.issuperset(new_patches):
>>> +                self.fail('New patch path missing in SRC_URI',
>>> +                          "Add the patch path in the recipe's
>>> SRC_URI",
>>> +                          data=[('New patch(es)', p) for p in
>>> new_patches.difference(test_files)])
>>


