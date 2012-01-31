Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DED2E00595
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 08:04:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 Jan 2012 08:04:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="104601566"
Received: from unknown (HELO [10.255.14.149]) ([10.255.14.149])
	by orsmga002.jf.intel.com with ESMTP; 31 Jan 2012 08:04:00 -0800
Message-ID: <4F2810F0.1050706@linux.intel.com>
Date: Tue, 31 Jan 2012 08:04:00 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2720B1.8070001@linux.intel.com> <4F27222D.7010302@gmail.com>
	<4F272474.80006@linux.intel.com> <4F2728A3.4070709@gmail.com>
	<4F27704B.5020002@linux.intel.com> <4F2808AE.3060306@gmail.com>
In-Reply-To: <4F2808AE.3060306@gmail.com>
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
X-List-Received-Date: Tue, 31 Jan 2012 16:04:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 31/01/12 07:28, jfabernathy wrote:
> On 01/30/2012 11:38 PM, Joshua Lock wrote:
>> On 30/01/12 15:32, jfabernathy wrote:
>>> On 01/30/2012 06:15 PM, Joshua Lock wrote:
>>>> On 30/01/12 15:05, jfabernathy wrote:
>>>>> On 01/30/2012 05:58 PM, Joshua Lock wrote:
>>>>>> It's beginning to sound like we've caught some folks off guard by
>>>>>> pushing changes to the edison branch of the poky repository in
>>>>>> preparation for an upcoming edison point release.
>>>>>>
>>>>>> The named branches are development branches for the release, stable
>>>>>> release development will be done in the named branch and we can't
>>>>>> guarantee they will be issue free (though we intend them to be where
>>>>>> possible).
>>>>>>
>>>>>> If you're looking to use a git checkout which matches the release
>>>>>> tarballs you should checkout the tags for the releases. i.e. for Poky
>>>>>> Edison-6.0/Yocto 1.1:
>>>>>>
>>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0
>>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0
>>>>>>
>>>>>>
>>>>> So instead of doing:
>>>>>
>>>>> git checkout -b edison origin/edison
>>>>>
>>>>> what should I do if I want to stay in sync with the tarball. This may
>>>>> just be a doc problem.
>>>>
>>>> I'd do:
>>>>
>>>> git fetch --tags
>>>> git checkout edison-6.0
>>>>
>>>> Then when a new tarball comes out, you'd repeat with the new tag name.
>>>>
>>>
>>> We I just tried that and it crashed a lot quicker. I'll just stick to
>>> the tarballs until this is all sorted out.
>>
>> Are you using an appropriate tag (or branch) of meta-intel? The master
>> branch of meta-intel with the bernard tag of poky will fail to parse
>> because some of the recipes being appended to in meta-intel have
>> changed names.
>>
> Can you explain the branch vs. tag as Yocto uses it? most of the help on
> git checkout refers to branch, where we are talking using a tag name. In
> Yocto what is the difference?

A tag is a snapshot, a release or milestone usually, and is static. 
Releases (and their tarballs) are generated from a tag.

A branch represents some ongoing development of some sort, we branch 
master when we're close to release and only put bug fixes in the branch. 
When it comes to release time we tag the release.

We use those same branches for any stable maintenance work, once that's 
ready for release we'll create another tag.

In short:
* branches are for development and the contents change
* tags are snapshots

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

