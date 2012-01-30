Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27B17E0137F
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 14:47:32 -0800 (PST)
Received: by qcsg14 with SMTP id g14so2937376qcs.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 14:47:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jfabernathy@gmail.com designates
	10.229.136.15 as permitted sender) client-ip=10.229.136.15; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of jfabernathy@gmail.com
	designates 10.229.136.15 as permitted sender)
	smtp.mail=jfabernathy@gmail.com;
	dkim=pass header.i=jfabernathy@gmail.com
Received: from mr.google.com ([10.229.136.15])
	by 10.229.136.15 with SMTP id p15mr8432893qct.59.1327963651641
	(num_hops = 1); Mon, 30 Jan 2012 14:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=Er31pUaQhLbIHLdfUraVqlTwZD7c7G+gNcoBi4Mfbxc=;
	b=L6uQq+rS+vqFYrTxMaPqOzSsM4kZv8XMxBMc9KJaDBkd24cqUgRdgYGY2/u6amtqd7
	4diPTIKLwoMja71DvDTER1f0MHBsfJxkb9lLHM3DD+w0yNI+AI5vT1SfflHKbc5xhkI3
	qiGfgdiMxVaDNEOxNDjd4yhMriAwNrdek2Oq8=
Received: by 10.229.136.15 with SMTP id p15mr7094168qct.59.1327963651586;
	Mon, 30 Jan 2012 14:47:31 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	dm7sm37406361qab.5.2012.01.30.14.47.30 (version=SSLv3 cipher=OTHER);
	Mon, 30 Jan 2012 14:47:30 -0800 (PST)
Message-ID: <4F271E07.70306@gmail.com>
Date: Mon, 30 Jan 2012 17:47:35 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F270FF5.6040909@gmail.com>
	<CADkTA4O03RT7eSmeK+8QypxnyZzP=+izogzq6c2ywY=80oZd9Q@mail.gmail.com>
	<4F27118F.2060302@gmail.com> <4F2715BC.2060509@linux.intel.com>
	<4F271AD1.7040302@gmail.com> <4F271D1B.1090702@linux.intel.com>
In-Reply-To: <4F271D1B.1090702@linux.intel.com>
Subject: Re: So what happened to Edison??
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
X-List-Received-Date: Mon, 30 Jan 2012 22:47:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2012 05:43 PM, Joshua Lock wrote:
>
>
> On 30/01/12 14:33, jfabernathy wrote:
>> On 01/30/2012 05:12 PM, Joshua Lock wrote:
>>> On 30/01/12 13:54, jfabernathy wrote:
>>>> On 01/30/2012 04:51 PM, Bruce Ashfield wrote:
>>>>> On Mon, Jan 30, 2012 at 4:47 PM, jfabernathy<jfabernathy@gmail.com>
>>>>> wrote:
>>>>>> It seems that something happened today. I could not complete a
>>>>>> build on
>>>>>> edison branch for meta-cedartrail. I copied it to meta-mycdv, but
>>>>>> other
>>>>>> than that same, old same old. I tried the standard unchanged SRCREV
>>>>>> and
>>>>>> also tried the latest.
>>>>> I changed the main yocto 1.2 3.0 kernel repository to 3.0, and pushed
>>>>> some other kernel
>>>>> changes. But if you are purely on edison, and aren't using
>>>>> meta-kernel-dev there
>>>>> shouldn't have been any fallout from those changes. (I built 3.0
>>>>> several times today
>>>>> myself).
>>>>>
>>>>> Perhaps Josh knows if anything was pushed to edison ?
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>>
>>>> I'm retesting on the tarballs again. If successful I'll try git 
>>>> version
>>>> of edison. I started today with complete new clone of poky and
>>>> meta-intel.
>>>
>>> The Edison branch has been updated today for the upcoming 1.1 release,
>>> did you pull the updates?
>>>
>>> Other than meta-intel are you using any other layers? I will try and
>>> reproduce here.
>>>
>>
>> I tried some stuff this morning like switching branches, then doing git
>> pulls, etc. I was getting such bad results, I figured I had screwed up.
>> I re-cloned both poky and meta-intel earlier today. Maybe around 12 noon
>> EST.
>
> This sounds like meta-intel and the Edison updates aren't getting 
> along. Just to clarify are you using the latest poky edison branch? 
> Which meta-intel branch/tag are you using?
>
What I did after cloning Poky and Meta-intel, I cheched out edison in 
both poky and meta-intel direction using the same command that they use 
in Developer Manual  Appendix A.

> Cheers,
> Joshua


