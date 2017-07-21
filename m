Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33875E0090A; Thu, 20 Jul 2017 23:21:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BC54E0090A
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 23:21:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v6L6L5c9000267
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 20 Jul 2017 23:21:05 -0700 (PDT)
Received: from [128.224.162.246] (128.224.162.246) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 20 Jul 2017 23:21:04 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1498203770.git.liezhi.yang@windriver.com>
	<2361969.H4jE58WX8T@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <956ce2d7-cad4-2f35-492b-1500ccc39f26@windriver.com>
Date: Fri, 21 Jul 2017 14:20:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <2361969.H4jE58WX8T@peggleto-mobl.ger.corp.intel.com>
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH V5 00/10] Several fixes for layerindex
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
X-List-Received-Date: Fri, 21 Jul 2017 06:21:09 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

Thank you very much.

// Robert

On 07/21/2017 02:19 PM, Paul Eggleton wrote:
> Hi Robert / all,
>
> This patchset finally got merged. I tweaked some of the commit messages,
> messages and comments but otherwise they went in unchanged. Thanks for sorting
> out these issues!
>
> Cheers,
> Paul
>
> On Friday, 23 June 2017 9:44:59 AM CEST Robert Yang wrote:
>> * V5
>>   - Fix Paul's comments
>>   - Add REMOVE_LAYER_DEPENDENCIES = False to settings, the
>>     _add_dependency() will check and remove dependencies which is not in
>>     conf/layer.conf when True (WARN when False)..
>>
>> * V4
>>   - Add an option -i to update_layer.py to get initial layer value
> (dependencies,
>>     versions and so on), update.py doesn't use tinfoil any more since
> tinfoil
>>     before morty can't be shutdown totally if the process is not exited,
> this was
>>     why splitted update_layer.py from update.py.
>>   - Squash 11 patches (v3) into 10, since two of them have overlap.
>>
>> * V3:
>>   - Better error messages when required collections not found
>>   - Delete layerbranch for non-existed branch
>>   - update_layer.py: remove --update-dependencies
>>
>> * V2:
>>   - Remove "import bb" from update.py to avoid causing confusions when
> switch branches.
>>
>> * V1:
>>   - The "-a ACTUAL_BRANCH" is a litle different from what we had talked, now
> it
>>     respects "-l" and "-b", we can use -l to specify layers or default to
> all,
>>     and it requires "-b" to work, only one branch is supported in a run, for
> example:
>>
>>     $ update.py -b master -a branch_20170526
>>     All the layers which have branch master and actual_branch
> branch_20170526
>>     will be updated to branch_20170526.
>>
>>     $ update.py -b master -l meta-oe -a branch_20170526
>>     Only meta-oe layer will be updated.
>>
>>     $ update.py -b master -l bitbake -a branch_20170526
>>     The bitbake's bitbake_branch will be updated.
>>
>> // Robert
>>
>> The following changes since commit b958a991caa947fde2ccb073e3cb7924e162562d:
>>
>>   layerindex/views: support querying by layer name (2017-06-15 16:04:14
> +0200)
>>
>> are available in the git repository at:
>>
>>   git://git.pokylinux.org/poky-contrib rbt/layerindex-10fixes
>>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/
> layerindex-10fixes
>>
>> Robert Yang (10):
>>   update.py: update actual branch for layer and bitbake
>>   layerconfparse.py: remove unused layerbranch from parse_layer()
>>   utils.py: add REMOVE_LAYER_DEPENDENCIES to remove dependencies
>>   update_layer.py: set layerbranch's collection before add_dependencies
>>   recipeparse.py: restore cwd when the parsing is done
>>   update.py: update layers orderly
>>   update_layer.py: remove --update-dependencies
>>   update_layer.py: move the location of transaction.atomic()
>>   update.py: add -p to git fetch
>>   update_layer.py: delete layerbranch for non-existed branch
>>
>>  layerindex/layerconfparse.py     |   2 +-
>>  layerindex/recipeparse.py        |   3 +
>>  layerindex/tools/import_layer.py |   2 +-
>>  layerindex/update.py             | 186 +++++++++++++++++++++++++++++
> +---------
>>  layerindex/update_layer.py       |  99 +++++++++------------
>>  layerindex/utils.py              |  71 ++++++++++++++-
>>  settings.py                      |   3 +
>>  7 files changed, 263 insertions(+), 103 deletions(-)
>>
>>
>
>

