Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 429D5E00AE4; Sun, 22 Apr 2018 21:23:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1340EE00529
	for <yocto@yoctoproject.org>; Sun, 22 Apr 2018 21:23:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w3N4NnHl023687
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Apr 2018 21:23:49 -0700 (PDT)
Received: from [128.224.16.130] (128.224.16.130) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Sun, 22 Apr 2018 21:23:48 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
	<2037793.CeckpQWsM0@peggleto-mobl.ger.corp.intel.com>
	<551359ef-fb5c-1cec-2d28-2ff715e7767d@windriver.com>
	<15882216.6VK8L3jXBo@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <73c50dd1-cc29-c7b2-4df9-e65ff89f2c56@windriver.com>
Date: Mon, 23 Apr 2018 12:23:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <15882216.6VK8L3jXBo@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/4] update_layer.py: move layer validation to update.py (Performance improve)
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
X-List-Received-Date: Mon, 23 Apr 2018 04:23:52 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Yes, you're right, I updated the two comments in the repo:

+                    if layerbranch:
+                        if layerbranch.actual_branch:
+                            branchname = layerbranch.actual_branch
+                            branchdesc = "%s (%s)" % (branch, branchname)
+                    else:
+                        # LayerBranch doesn't exist for this branch, create it 
temporarily
+                        # (we won't save this - update_layer.py will do the 
actual creation
+                        # if it gets called).
+                        newbranch = True
+                        layerbranch = LayerBranch()
+                        layerbranch.layer = layer

...

+                    if layerbranch.vcs_last_rev == topcommit.hexsha and not 
update.reload:
+                        logger.info("Layer %s is already up-to-date for branch 
%s" % (layer.name, branchdesc))
+                        collections.add((layerbranch.collection, 
layerbranch.version))
+                        continue
+                    else:
+                        # Check out appropriate branch
+                        if not options.nocheckout:
+                            utils.checkout_layer_branch(layerbranch, repodir, 
logger=logger)
+                        layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
+                        if layerbranch.vcs_subdir and not os.path.exists(layerdir):
+                            print_subdir_error(newbranch, layer.name, 
layerbranch.vcs_subdir, branchdesc)
+                            continue
+
+                        if not os.path.exists(os.path.join(layerdir, 
'conf/layer.conf')):
+                            logger.error("conf/layer.conf not found for layer 
%s - is subdirectory set correctly?" % layer.name)
+                            continue

// Robert

On 04/23/2018 11:35 AM, Paul Eggleton wrote:
> On Monday, 23 April 2018 3:06:43 PM NZST Robert Yang wrote:
>> On 04/23/2018 09:55 AM, Paul Eggleton wrote:
>>> It seems that you are missing a call somewhere to layerbranch.save() later
>>> on, guarded with "if newbranch:". This was easy to miss though when copying
>>> over from update_layer.py seeing as we were relying upon saving it later on
>>> there (and that is still needed).
>>
>> We don't need it to save the new branch here, we just want to know whether it is
>> a new branch or not, the logic is:
>>
>> if newbranch and "the branch doesn't exist" in the repo:
>>       continue
>> else: # "the branch exits in the repo"
>>       update_layer.py
>>
>> So we don't have to save the new branch here, the update_layer.py will save the
>> new branch when needed, this can reducing a lot of calls to update_layer, which
>> can save a lot of time.
> 
> OK - I had missed that you hadn't removed the code from
> update_layer.py that does the actual creation, so the logic is fine.
> I think however we need to adjust the "LayerBranch doesn't exist
> for this branch, create it" comment here though, something like
> "LayerBranch doesn't exist for this branch, create it temporarily
> (we won't save this - update_layer.py will do the actual creation
> if it gets called)."
>   
>>>> +                    if layerbranch.vcs_last_rev == topcommit.hexsha and not update.reload:
>>>> +                        logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
>>>> +                        collections.add((layerbranch.collection, layerbranch.version))
>>>> +                        continue
>>>> +
>>>> +                    if layerbranch.vcs_last_rev != topcommit.hexsha or update.reload:
>>>> +                        # Check out appropriate branch
>>>> +                        if not options.nocheckout:
>>>> +                            utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
>>>
>>> Isn't "if layerbranch.vcs_last_rev != topcommit.hexsha or update.reload:"
>>> superfluous here? We're skipping to the next layer if that wasn't true via
>>> "continue" above, so it should always evaluate to true.
>>
>> Let's ignore the update.reload here, then the logic will be clear:
>>
>> if layerbranch.vcs_last_rev == topcommit.hexsha:
>>       continue
>> else:
>>       checkout_layer_branch()
>>
>> So we can't ignore the else block here, the "if" block doesn't cover the "else"
>> block. And If update.reload, then we can't continue, so the first "if" is:
>> "if layerbranch.vcs_last_rev == topcommit.hexsha and not update.reload"
>>
>> And for the second "if", we need checkout the branch when:
>> "layerbranch.vcs_last_rev != topcommit.hexsha or update.reload"
>>
>> And check whether there is a conf/layer.layer in the repo, we have a lot of
>> layers which are only for specific releases, for example, a layer is for morty
>> branch only, then we cleanup its master branch, just leave a README
>> (no conf/layer.conf) file on master branch which says this layer is for morty
>> only, check conf/layer.conf in update.py rather than in update_layer.py can
>> save a lot of time, too.
> 
> Right, I understand the logic, what I'm saying is that the two if statements
> are opposites, and the first one results in a "continue" if true, so the second one
> can logically never evaluate to false, thus there's no point doing the check - just
> put the code inside the block immediately afterwards, i.e.:
> 
>                      if layerbranch.vcs_last_rev == topcommit.hexsha and not update.reload:
>                          logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
>                          collections.add((layerbranch.collection, layerbranch.version))
>                          continue
> 
>                      # Check out appropriate branch
>                      if not options.nocheckout:
>                          utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
>                      ...
> 
> If you wanted to make it even more clear you could have it in an "else" block
> instead, but that's not strictly necessary.
> 
> Cheers,
> Paul
> 

