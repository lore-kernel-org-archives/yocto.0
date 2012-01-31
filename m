Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 900B9E0138D
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 20:38:35 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jan 2012 20:38:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118368887"
Received: from unknown (HELO [10.255.14.109]) ([10.255.14.109])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2012 20:38:35 -0800
Message-ID: <4F27704B.5020002@linux.intel.com>
Date: Mon, 30 Jan 2012 20:38:35 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2720B1.8070001@linux.intel.com> <4F27222D.7010302@gmail.com>
	<4F272474.80006@linux.intel.com> <4F2728A3.4070709@gmail.com>
In-Reply-To: <4F2728A3.4070709@gmail.com>
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
X-List-Received-Date: Tue, 31 Jan 2012 04:38:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 30/01/12 15:32, jfabernathy wrote:
> On 01/30/2012 06:15 PM, Joshua Lock wrote:
>> On 30/01/12 15:05, jfabernathy wrote:
>>> On 01/30/2012 05:58 PM, Joshua Lock wrote:
>>>> It's beginning to sound like we've caught some folks off guard by
>>>> pushing changes to the edison branch of the poky repository in
>>>> preparation for an upcoming edison point release.
>>>>
>>>> The named branches are development branches for the release, stable
>>>> release development will be done in the named branch and we can't
>>>> guarantee they will be issue free (though we intend them to be where
>>>> possible).
>>>>
>>>> If you're looking to use a git checkout which matches the release
>>>> tarballs you should checkout the tags for the releases. i.e. for Poky
>>>> Edison-6.0/Yocto 1.1:
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0
>>>>
>>> So instead of doing:
>>>
>>> git checkout -b edison origin/edison
>>>
>>> what should I do if I want to stay in sync with the tarball. This may
>>> just be a doc problem.
>>
>> I'd do:
>>
>> git fetch --tags
>> git checkout edison-6.0
>>
>> Then when a new tarball comes out, you'd repeat with the new tag name.
>>
>
> We I just tried that and it crashed a lot quicker. I'll just stick to
> the tarballs until this is all sorted out.

Are you using an appropriate tag (or branch) of meta-intel? The master 
branch of meta-intel with the bernard tag of poky will fail to parse 
because some of the recipes being appended to in meta-intel have changed 
names.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

