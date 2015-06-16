Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 767F5E0095D; Tue, 16 Jun 2015 16:54:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3863E00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 16:54:24 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 16 Jun 2015 16:54:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,629,1427785200"; d="scan'208";a="509465352"
Received: from hwshim-mobl1.amr.corp.intel.com (HELO [10.254.183.224])
	([10.254.183.224])
	by FMSMGA003.fm.intel.com with ESMTP; 16 Jun 2015 16:54:23 -0700
Message-ID: <5580B79A.4030808@linux.intel.com>
Date: Tue, 16 Jun 2015 18:56:10 -0500
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1434139845-34607-1-git-send-email-anibal.limon@linux.intel.com>
	<2202663.KVYxiN3Sl2@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2202663.KVYxiN3Sl2@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2 09/11][auh] upgradehelper.py: Change policy for send emails and fix error passing
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
X-List-Received-Date: Tue, 16 Jun 2015 23:54:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Paul,

On 16/06/15 08:01, Paul Eggleton wrote:
> Hi Aníbal,
>
> On Friday 12 June 2015 20:10:45 Aníbal Limón wrote:
>> Now send emails almost in all cases this give the maintainer
>> patches and diff to continue work also if the build isn't
>> succesful.
>>
>> [YOCTO #7489]
>>
>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>> ---
>>   upgradehelper.py | 19 ++++++++++---------
>>   1 file changed, 10 insertions(+), 9 deletions(-)
>>
>> diff --git a/upgradehelper.py b/upgradehelper.py
>> index b1f075d..d065fba 100755
>> --- a/upgradehelper.py
>> +++ b/upgradehelper.py
>> @@ -346,8 +346,6 @@ class Updater(object):
>>                   self.git.clean_untracked()
>>                   return
>>
>> -        status = type(err).__name__
>> -
>>           # drop last upgrade from git. It's safer this way if the upgrade
>> has # problems and other recipes depend on it. Give the other recipes a #
>> chance...
>> @@ -381,8 +379,14 @@ class Updater(object):
>>                   "Attached are the patch, license diff (if change) and
>> bitbake log.\n\n" \ "Regards,\nThe Upgrade Helper"
>>
>> -            # don't bother maintainer with mail if the recipe is already up
>> to date -            if status == "UpgradeNotNeededError":
>> +            # if error only send email when useful infomration for
>> maintainers exist +            if err and not (isinstance(err, PatchError)
>> or \
>> +               isinstance(err, ConfigureError) or \
>> +               isinstance(err, CompilationError) or \
>> +               isinstance(err, LicenseError)):
>> +                D( "%s: Don't send email to maintainer because the error
>> was " \ +                   "%s and the information isn't useful, please
>> review it." \ +                    % (self.pn, type(err).__name__))
>>                   return
> I think a better approach here would be to have the classes of error that are
> likely to be fixable by the maintainer as inheriting from a particular class
> (e.g. MaintainerError) and then we can just check for that rather than having
> to extend this code every time we add a new type of error.
I agree, i'll add new class MaintainerError and make 
Configure/Compilation/Patch/License to
extend it.

>
>>               if self.maintainer in maintainer_override:
>> @@ -478,6 +482,7 @@ class Updater(object):
>>
>>           attempted_pkgs = 0
>>           for self.pn, self.new_ver, self.maintainer in pkgs_to_upgrade:
>> +            error = None
>>               self.recipe = None
>>               attempted_pkgs += 1
>>               I(" ATTEMPT PACKAGE %d/%d" % (attempted_pkgs, total_pkgs))
>> @@ -489,10 +494,6 @@ class Updater(object):
>>                       step()
>>
>>                   I(" %s: Upgrade SUCCESSFUL! Please test!" % self.pn)
>> -                error = None
>> -            except UpgradeNotNeededError as e:
>> -                I(" %s: %s" % (self.pn, e.message))
>> -                error = e
> I'm confused by this. Won't this change result in UpgradeNotNeededError being
> treated as an actual error? Surely we don't actually want that?
Now UpgradeNotNeededError is handled by new upstream mechanism when load 
recipes to upgrade
printing message about it.

>
> Cheers,
> Paul
>

Regards,
     alimon

