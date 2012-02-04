Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5408BE0044D
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2012 07:18:19 -0800 (PST)
Received: by qcsd1 with SMTP id d1so3139976qcs.35
	for <yocto@yoctoproject.org>; Sat, 04 Feb 2012 07:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=gxAvoOqndjLnwHnCZxWl/0gdkz0ZAFW4dJdrE8Kq5iY=;
	b=fwcX7OREokpCVSPJoZOsJ6ssqZ9ciXNAhwoAH9slMCAsrNI9ErnldIrY0dJFSbSUNz
	NJlk+D5uL8gc3TAQDVETlXfSQwGInuFbmOqLGPfIs008veaGK0H9YnAj7y1vhoiGTULe
	eNGAEv+OnhYURwZy/ZJovLFOxuSSinquPisHk=
Received: by 10.229.77.141 with SMTP id g13mr4399314qck.11.1328368698539;
	Sat, 04 Feb 2012 07:18:18 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	ef1sm20454493qab.19.2012.02.04.07.18.16 (version=SSLv3 cipher=OTHER);
	Sat, 04 Feb 2012 07:18:16 -0800 (PST)
Message-ID: <4F2D4C39.3050004@gmail.com>
Date: Sat, 04 Feb 2012 10:18:17 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: autif khan <autif.mlist@gmail.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
	<4F29B248.4060202@linux.intel.com>
	<1328132827.2304.149.camel@elmorro> <4F29BF30.80808@gmail.com>
	<1328140929.2304.157.camel@elmorro> <4F29DF85.9040605@gmail.com>
	<1328145634.2304.159.camel@elmorro>
	<CANFv2Emx6kbdEwnWkkORp7h-vZovGSExUnn45JORZ56MuNeEfQ@mail.gmail.com>
	<1328226148.2304.188.camel@elmorro>
	<63ECFF2A2302B44093D7CE9E9962C49002A8A2@ORSMSX103.amr.corp.intel.com>
	<CANFv2EnGGu70vzv+KFagLTRscoGv2k_ob27qxdhw9H3tWsnG8w@mail.gmail.com>
	<CANFv2E=jRpNm7YxyrOobjhvscisE3y1a5xQbukZeSYbuWpyw=w@mail.gmail.com>
	<CADzUK1J_n4YYvMzBf8G5AhjQ7_=tUscTSkHPVHD5Am6vWq2OLQ@mail.gmail.com>
In-Reply-To: <CADzUK1J_n4YYvMzBf8G5AhjQ7_=tUscTSkHPVHD5Am6vWq2OLQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gaku music player
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
X-List-Received-Date: Sat, 04 Feb 2012 15:18:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2012 05:52 PM, autif khan wrote:
> Hi Jim,
>
> I would appreciate if you could add some information to the How do I
> section in the wiki. I am not there yet, but I also need audio and
> video on crownbay in about 4-8 weeks.

Just edited the HOW DO I.

JIm A

> Thanks for getting to the bottom of this
>
> Autif
>
> On Fri, Feb 3, 2012 at 3:21 PM, James Abernathy<jfabernathy@gmail.com>  wrote:
>>
>> On Fri, Feb 3, 2012 at 11:02 AM, James Abernathy<jfabernathy@gmail.com>
>> wrote:
>>> I tried all the different mixer options on the Crownbay.  It's just not
>>> very loud.  I'll try an amplifier, but with earphones, it almost not loud
>>> enough to hear.  I don't remember other Linux's having this issue.  Could
>>> there be something else software wise?  The good news is the built-in GUI
>>> Music and Video players work with the H.264 files I've tested as well as the
>>> command line stuff.
>>>
>>> Also got the glxgears works as well.
>>>
>>> Jim A
>> To close this one out.  The Crownbay seems to have a line level out only and
>> not a port that supports headphones and line level.  Once I put minimal Line
>> in level amplfication, the audio works as expected.
>>
>> Thanks for the help. It's good to see nice integration in Yocto of video and
>> music players that actually plays the the H.264 and MP3 files.
>>
>> Jim A
>>
>>>
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


