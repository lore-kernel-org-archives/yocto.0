Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AE49E0098D; Thu, 11 Jun 2015 14:16:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 744B7E00974
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 14:16:34 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 11 Jun 2015 14:16:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,597,1427785200"; d="scan'208";a="725626605"
Received: from alimon-thinkpad-w540.zpn.intel.com (HELO [10.219.4.173])
	([10.219.4.173])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2015 14:16:31 -0700
Message-ID: <5579FB11.7040105@linux.intel.com>
Date: Thu, 11 Jun 2015 16:18:09 -0500
From: =?windows-1252?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1433953732-29963-1-git-send-email-anibal.limon@linux.intel.com>
	<1740590.zL5b4dpnL6@peggleto-mobl.ger.corp.intel.com>
	<5579F619.4080504@linux.intel.com>
	<18387684.hUtqA0H8DF@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <18387684.hUtqA0H8DF@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 09/11][auh] upgradehelper.py: Change policy for send emails and fix error passing
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
X-List-Received-Date: Thu, 11 Jun 2015 21:16:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 11/06/15 16:05, Paul Eggleton wrote:
> On Thursday 11 June 2015 15:56:57 Aníbal Limón wrote:
>> Hi Paul,
>>
>> Comments below,
>>
>> Kind regards,
>>       alimon
>>
>> On 11/06/15 15:51, Paul Eggleton wrote:
>>> On Wednesday 10 June 2015 16:28:50 Aníbal Limón wrote:
>>>> Now send emails almost in all cases this give the maintainer
>>>> patches and diff to continue work also if the build isn't
>>>> succesful.
>>>>
>>>> [YOCTO #7489]
>>>>
>>>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>>>> ---
>>>>
>>>>    upgradehelper.py | 19 ++++++++++---------
>>>>    1 file changed, 10 insertions(+), 9 deletions(-)
>>>>
>>>> diff --git a/upgradehelper.py b/upgradehelper.py
>>>> index b1f075d..a4aa0ab 100755
>>>> --- a/upgradehelper.py
>>>> +++ b/upgradehelper.py
>>>>
>>>> @@ -381,8 +381,11 @@ class Updater(object):
>>>>                    "Attached are the patch, license diff (if change) and
>>>>
>>>> bitbake log.\n\n" \ "Regards,\nThe Upgrade Helper"
>>>>
>>>> -            # don't bother maintainer with mail if the recipe is already
>>>> up to date -            if status == "UpgradeNotNeededError":
>>>> +            if status == "Error" or status == "FetchError" or\
>>>> +               status == "UpgradeNotNeededError":
>>>> +                D( "%s: Don't send email to maintainer because the error
>>>> was " \ +                   "%s and the information isn't useful, please
>>>> review it." \ +                    % (self.pn, status))
>>> Obviously this is in the existing code, but I'm not hugely keen on
>>> checking
>>> the error name as a string - I'd much rather we checked it with isinstance
>>> here. That might require us to have all errors that the maintainer can fix
>>> as subclasses of a particular class though.
>> Yes i'll change the string testing for isinstance.
>>
>>> Also, do you have an idea of the types of exception that might now trigger
>>> an email that don't inherit from our "Error" class here but are actually
>>> worth telling the maintainer about? I can certainly think about
>>> situations where bugs in the script here could trigger a large number of
>>> emails to maintainers which we probably wouldn't want.
>> That's good observation i filter all the errors that don't are in the
>> class of Error,
>> also i avoided Error/FetchError/UpgradeNotNeeded because when happens no
>> usueful info is
>> generated.
> Sorry I'm not quite following - you mean you did filter out exceptions that
> don't inherit from Error or you will change it to do that? Unless I'm missing
> something, this patch now catches any exception of class Exception and passes
> it into this function, but we only skip Error/FetchError/UpgradeNotNeeded - so
> for example a SyntaxError will get sent after this change, right? Surely we
> don't want that?

Now it's filtering Error/FetchError/UpgradeNotNeeded errors but you are
right that we need to only take into account exceptions inherit Error to
avoid send emails with system exceptions like Syntax and IO.

I'll change the code for guarantee that.

Cheers,
     alimon


>
> Cheers,
> Paul
>


