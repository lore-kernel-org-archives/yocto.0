Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED25DE00D42; Tue, 28 May 2019 19:29:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9D93E00B8F
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 19:29:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x4T2SwDm022426
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 May 2019 19:29:01 -0700 (PDT)
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Tue, 28 May 2019 19:28:58 -0700
To: akuster <akuster@mvista.com>, Randy MacLeod <randy.macleod@windriver.com>
References: <1551779999-231946-1-git-send-email-changqing.li@windriver.com>
	<3427a8c2-543e-f71c-9c10-fca3b5c0667e@windriver.com>
	<a42d5db8-1cae-008e-dd8f-d533662007d6@windriver.com>
	<46d05a5b-c884-0f87-5cee-02d005f04225@mvista.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <dd502bbb-d5a4-35fb-fb64-3af8af8a3ede@windriver.com>
Date: Wed, 29 May 2019 10:28:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <46d05a5b-c884-0f87-5cee-02d005f04225@mvista.com>
X-Originating-IP: [128.224.162.186]
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
X-List-Received-Date: Wed, 29 May 2019 02:29:09 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 5/28/19 10:53 PM, akuster wrote:
>
> On 5/27/19 6:00 PM, Changqing Li wrote:
>> ping
>>
>> On 4/29/19 2:10 PM, Changqing Li wrote:
>>> ping
>>>
> Does this mean you have a working knowledge of patchtest?
>
> The one used by the project appears to be off line.  Can you help?
>
> kind regards,
> Armin

I have do some work on this,  and can try to help,  but I don't have

access right of the server,  and I also don't have the admin account of

the patchwork.  if  someone can  provide these info,  I am glad to help.

>>> On 3/5/19 5:59 PM, changqing.li@windriver.com wrote:
>>>> From: Changqing Li <changqing.li@windriver.com>
>>>>
>>>> Adds new unittest detecting when a patch file is added but no
>>>> corresponding
>>>> change to the SRC_URI is done.
>>>>
>>>> This patch is from <daniela.plascencia@linux.intel.com>, get from
>>>> commit
>>>> 49201c19cfe4cadd127b112d2858d5b28db49c20, this commit is reverted by
>>>> commit
>>>> 6108d97f83b211f9eb245f339a412debd0ec5db4.
>>>>
>>>> The added test case is ok, reason of series 9949 patchtest failed is:
>>>> recipe weston have REQUIRED_DISTRO_FEATURES, so parse recipe skipped,
>>>> cause self.modified is none, actually .bb is mofified, so make the
>>>> testcase failed.
>>>>
>>>> during patchtest, we don't really need DISTRO_FEATURES, so fix the
>>>> problem
>>>> by set REQUIRED_DISTRO_FEATURES to "" in repo patchtest, meantime,
>>>> add this
>>>> testcase back.
>>>>
>>>> [Yocto #13005]
>>>>
>>>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>>>> ---
>>>>    tests/test_metadata_src_uri.py | 25 +++++++++++++++++++++++++
>>>>    1 file changed, 25 insertions(+)
>>>>
>>>> diff --git a/tests/test_metadata_src_uri.py
>>>> b/tests/test_metadata_src_uri.py
>>>> index a4c5caa..f684ced 100644
>>>> --- a/tests/test_metadata_src_uri.py
>>>> +++ b/tests/test_metadata_src_uri.py
>>>> @@ -85,3 +85,28 @@ class SrcUri(base.Metadata):
>>>>                                  'Amend the patch containing the
>>>> software patch file removal',
>>>>                                  data=[('Patch', f) for f in
>>>> not_removed])
>>>>    +    def test_src_uri_path_not_updated(self):
>>>> +        new_patches = set()
>>>> +        for patch in self.patchset:
>>>> +            if patch.is_added_file and patch.path.endswith('.patch'):
>>>> +                new_patches.add(os.path.basename(patch.path))
>>>> +
>>>> +        if not new_patches:
>>>> +            self.skip('No new patches added, skipping test')
>>>> +
>>>> +        if not self.modified:
>>>> +            self.fail('New patch path missing in SRC_URI',
>>>> +                       "Add the patch path to the recipe's SRC_URI",
>>>> +                       data=[('New patch(es)',
>>>> '\n'.join(new_patches))])
>>>> +
>>>> +        for pn in self.modified:
>>>> +            rd = self.tinfoil.parse_recipe(pn)
>>>> +
>>>> +            patchtestdata.PatchTestDataStore['%s-%s-%s' %
>>>> (self.shortid(), self.metadata, pn)] = rd.getVar(self.metadata)
>>>> +            test_src_uri    =
>>>> patchtestdata.PatchTestDataStore['%s-%s-%s' % (self.shortid(),
>>>> self.metadata, pn)].split()
>>>> +            test_files    = set([os.path.basename(patch) for patch
>>>> in test_src_uri if patch.startswith('file://')])
>>>> +
>>>> +            if not test_files.issuperset(new_patches):
>>>> +                self.fail('New patch path missing in SRC_URI',
>>>> +                          "Add the patch path in the recipe's
>>>> SRC_URI",
>>>> +                          data=[('New patch(es)', p) for p in
>>>> new_patches.difference(test_files)])
>
-- 
BRs

Sandy(Li Changqing)


