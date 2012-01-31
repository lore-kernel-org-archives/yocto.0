Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95F37E00595
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 07:28:51 -0800 (PST)
Received: by qadz32 with SMTP id z32so3100271qad.14
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2012 07:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=iBajkrBm8SEs+f6k4ju0b6AGGoYYLQgXxcy7NkK+FKA=;
	b=ILpyHj3hnfqJFv2z3lEy/TJgcg9FhAIeCRcWWxlIR9VL7ESX9+wrvuNeR1+qU3Yk9Z
	RJyZtysRy7URmtrX7lqtfK+xjfNmQZ6DVkSbYo/OSVr7+mD464RljOBF9YG6MUZSmlsw
	XsBhU9dMEnQciKlI4YxhuOWdWTQSx5U/e8sEA=
Received: by 10.224.217.10 with SMTP id hk10mr28135819qab.15.1328023730961;
	Tue, 31 Jan 2012 07:28:50 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	ft9sm41873422qab.20.2012.01.31.07.28.46 (version=SSLv3 cipher=OTHER);
	Tue, 31 Jan 2012 07:28:47 -0800 (PST)
Message-ID: <4F2808AE.3060306@gmail.com>
Date: Tue, 31 Jan 2012 10:28:46 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2720B1.8070001@linux.intel.com> <4F27222D.7010302@gmail.com>
	<4F272474.80006@linux.intel.com> <4F2728A3.4070709@gmail.com>
	<4F27704B.5020002@linux.intel.com>
In-Reply-To: <4F27704B.5020002@linux.intel.com>
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
X-List-Received-Date: Tue, 31 Jan 2012 15:28:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2012 11:38 PM, Joshua Lock wrote:
> On 30/01/12 15:32, jfabernathy wrote:
>> On 01/30/2012 06:15 PM, Joshua Lock wrote:
>>> On 30/01/12 15:05, jfabernathy wrote:
>>>> On 01/30/2012 05:58 PM, Joshua Lock wrote:
>>>>> It's beginning to sound like we've caught some folks off guard by
>>>>> pushing changes to the edison branch of the poky repository in
>>>>> preparation for an upcoming edison point release.
>>>>>
>>>>> The named branches are development branches for the release, stable
>>>>> release development will be done in the named branch and we can't
>>>>> guarantee they will be issue free (though we intend them to be where
>>>>> possible).
>>>>>
>>>>> If you're looking to use a git checkout which matches the release
>>>>> tarballs you should checkout the tags for the releases. i.e. for Poky
>>>>> Edison-6.0/Yocto 1.1:
>>>>>
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0 
>>>>>
>>>>>
>>>> So instead of doing:
>>>>
>>>> git checkout -b edison origin/edison
>>>>
>>>> what should I do if I want to stay in sync with the tarball. This may
>>>> just be a doc problem.
>>>
>>> I'd do:
>>>
>>> git fetch --tags
>>> git checkout edison-6.0
>>>
>>> Then when a new tarball comes out, you'd repeat with the new tag name.
>>>
>>
>> We I just tried that and it crashed a lot quicker. I'll just stick to
>> the tarballs until this is all sorted out.
>
> Are you using an appropriate tag (or branch) of meta-intel? The master 
> branch of meta-intel with the bernard tag of poky will fail to parse 
> because some of the recipes being appended to in meta-intel have 
> changed names.
>
Can you explain the branch vs. tag as Yocto uses it?  most of the help 
on git checkout refers to branch, where we are talking using a tag 
name.  In Yocto what is the difference?
> Cheers,
> Joshua


