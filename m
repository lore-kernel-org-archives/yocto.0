Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EAE5E00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 15:15:02 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2012 15:15:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="104332417"
Received: from mkgumbel-mobl5.jf.intel.com (HELO [10.7.199.151])
	([10.7.199.151])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2012 15:15:02 -0800
Message-ID: <4F272474.80006@linux.intel.com>
Date: Mon, 30 Jan 2012 15:15:00 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2720B1.8070001@linux.intel.com> <4F27222D.7010302@gmail.com>
In-Reply-To: <4F27222D.7010302@gmail.com>
Subject: Re: Using stable releases from git
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
X-List-Received-Date: Mon, 30 Jan 2012 23:15:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 30/01/12 15:05, jfabernathy wrote:
> On 01/30/2012 05:58 PM, Joshua Lock wrote:
>> It's beginning to sound like we've caught some folks off guard by
>> pushing changes to the edison branch of the poky repository in
>> preparation for an upcoming edison point release.
>>
>> The named branches are development branches for the release, stable
>> release development will be done in the named branch and we can't
>> guarantee they will be issue free (though we intend them to be where
>> possible).
>>
>> If you're looking to use a git checkout which matches the release
>> tarballs you should checkout the tags for the releases. i.e. for Poky
>> Edison-6.0/Yocto 1.1:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0
>>
> So instead of doing:
>
> git checkout -b edison origin/edison
>
> what should I do if I want to stay in sync with the tarball.  This may just be a doc problem.

I'd do:

git fetch --tags
git checkout edison-6.0

Then when a new tarball comes out, you'd repeat with the new tag name.

You can see the tags with:
git tag -l
(be sure to have git fetch --tags first)

i.e. to update through bernard releases
git fetch --tags
git checkout bernard-5.0
<time passes, 5.0.1 released>
git fetch --tags
git checkout bernard-5.0.1
<time passes, 5.0.2 released>
git fetch --tags
git checkout bernard-5.0.2

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

