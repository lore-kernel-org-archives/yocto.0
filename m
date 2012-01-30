Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 752D7E00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 15:32:51 -0800 (PST)
Received: by qcsg14 with SMTP id g14so2959312qcs.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 15:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=w0oeFWpI7SxAPWnG4KIO8JpoaaCo4HpM4x3i8BReInY=;
	b=b9rqpqI6ariHe9XRT3O1EitlkUX869Dji8GuGrJf4dTs5M0vsr0c3Sphua9wlMt+5E
	LTWEstUKAny8f9NnoP4Rkd++1DlbbqY+q9Zau5QUAUIEb+JCLdyoZ764EpPuJHfCvWJF
	CfSs/i505EO2nt75yhpPyiHJ9mJU5D6K85YZs=
Received: by 10.224.186.209 with SMTP id ct17mr24445427qab.55.1327966367832;
	Mon, 30 Jan 2012 15:32:47 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	g9sm37552950qad.16.2012.01.30.15.32.46 (version=SSLv3 cipher=OTHER);
	Mon, 30 Jan 2012 15:32:46 -0800 (PST)
Message-ID: <4F2728A3.4070709@gmail.com>
Date: Mon, 30 Jan 2012 18:32:51 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2720B1.8070001@linux.intel.com> <4F27222D.7010302@gmail.com>
	<4F272474.80006@linux.intel.com>
In-Reply-To: <4F272474.80006@linux.intel.com>
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
X-List-Received-Date: Mon, 30 Jan 2012 23:32:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2012 06:15 PM, Joshua Lock wrote:
> On 30/01/12 15:05, jfabernathy wrote:
>> On 01/30/2012 05:58 PM, Joshua Lock wrote:
>>> It's beginning to sound like we've caught some folks off guard by
>>> pushing changes to the edison branch of the poky repository in
>>> preparation for an upcoming edison point release.
>>>
>>> The named branches are development branches for the release, stable
>>> release development will be done in the named branch and we can't
>>> guarantee they will be issue free (though we intend them to be where
>>> possible).
>>>
>>> If you're looking to use a git checkout which matches the release
>>> tarballs you should checkout the tags for the releases. i.e. for Poky
>>> Edison-6.0/Yocto 1.1:
>>>
>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tag/?id=edison-6.0
>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tag/?id=edison-6.0
>>>
>> So instead of doing:
>>
>> git checkout -b edison origin/edison
>>
>> what should I do if I want to stay in sync with the tarball.  This 
>> may just be a doc problem.
>
> I'd do:
>
> git fetch --tags
> git checkout edison-6.0
>
> Then when a new tarball comes out, you'd repeat with the new tag name.
>

We I just tried that and it crashed a lot quicker.  I'll just stick to 
the tarballs until this is all sorted out.

Jim A

> You can see the tags with:
> git tag -l
> (be sure to have git fetch --tags first)
>
> i.e. to update through bernard releases
> git fetch --tags
> git checkout bernard-5.0
> <time passes, 5.0.1 released>
> git fetch --tags
> git checkout bernard-5.0.1
> <time passes, 5.0.2 released>
> git fetch --tags
> git checkout bernard-5.0.2
>
> Cheers,
> Joshua


