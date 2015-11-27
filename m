Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDD04E009D7; Fri, 27 Nov 2015 08:50:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD4EE007C3
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 08:50:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Nov 2015 08:50:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,352,1444719600"; d="scan'208";a="861127923"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.171])
	([10.219.5.171])
	by fmsmga002.fm.intel.com with ESMTP; 27 Nov 2015 08:50:02 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
	<1448496046-13186-9-git-send-email-anibal.limon@linux.intel.com>
	<1888682.UUv9aA8xNY@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <565889ED.8050405@linux.intel.com>
Date: Fri, 27 Nov 2015 10:50:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1888682.UUv9aA8xNY@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [[AUH] 08/17] recipe/base.py: Add support for get recipe inherits.
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
X-List-Received-Date: Fri, 27 Nov 2015 16:50:05 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 11/26/2015 02:25 PM, Paul Eggleton wrote:
> On Wednesday 25 November 2015 18:00:37 Aníbal Limón wrote:
>> Recipe inherits are needed to detect what recipes support
>> certain feature.
>>
>> For example: For detect ptest enable recipes and then do
>> ptest runtime test after succesful upgrade.
>>
>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>> ---
>>  modules/recipe/base.py | 25 +++++++++++++++++++++++++
>>  1 file changed, 25 insertions(+)
>>
>> diff --git a/modules/recipe/base.py b/modules/recipe/base.py
>> index 5c70c61..dabad2f 100644
>> --- a/modules/recipe/base.py
>> +++ b/modules/recipe/base.py
>> @@ -57,6 +57,16 @@ def modify_recipe_files(func):
>>                  os.rename(full_path_f + ".tmp", full_path_f)
>>      return modify
>>
>> +def read_recipe_files(func):
>> +    def read(env, recipe_dir):
>> +        for f in os.listdir(recipe_dir):
>> +            full_path_f = os.path.join(recipe_dir, f)
>> +            if is_recipe_or_include_file(env, full_path_f, f):
>> +                with open(full_path_f) as recipe:
>> +                    for line in recipe:
>> +                        func(line)
>> +    return read
>> +
>>  class Recipe(object):
>>      def __init__(self, env, new_ver, interactive, workdir, recipe_dir,
>> bitbake, git): self.env = env
>> @@ -85,8 +95,23 @@ class Recipe(object):
>>          self.commit_msg = self.env['PN'] + ": upgrade to " + self.new_ver +
>> "\n\n" self.rm_patches_msg = "\n\nRemoved the following patch(es):\n"
>>
>> +        self._inherits = None
>> +
>>          super(Recipe, self).__init__()
>>
>> +    def get_inherits(self):
>> +        @read_recipe_files
>> +        def _get_inherits(line):
>> +            m = re.search("^inherit (.*)$", line)
>> +            if m:
>> +                tmp = m.group(1).split()
>> +                self._inherits.extend(tmp)
>> +
>> +        if not self._inherits:
>> +            self._inherits = []
>> +            _get_inherits(self.env, self.recipe_dir)
>> +
>> +        return self._inherits
>>
>>      def update_env(self, env):
>>          self.env = env
> 
> I'm not sure I like this - you're not parsing the recipe so you'll miss things 
> such as inc files inheriting the recipe. Would it be possible to parse the 
> recipe properly instead e.g. with tinfoil?

I agree with you but for now it works for detect recipes that have ptest
enabled.

This change isn't trivial so i loaded a ticket for change AUH to use
tinfoil (may be tinfoil2 :)).

Cheers,
	alimon

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=8735

> 
> Cheers,
> Paul
> 

