Return-Path: <dv@pseudoterminal.org>
Received: from ptmx.org (ptmx.org [178.63.28.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC98E00576
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2014 08:21:44 -0800 (PST)
Received: from [192.168.178.14] (chello080108009040.14.11.vie.surfer.at
	[80.108.9.40]) by ptmx.org (Postfix) with ESMTPSA id 23FB3225E3;
	Sun,  2 Feb 2014 17:21:42 +0100 (CET)
Message-ID: <52EE7117.2040806@pseudoterminal.org>
Date: Sun, 02 Feb 2014 17:23:51 +0100
From: Carlos Rafael Giani <dv@pseudoterminal.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "Kishore Divvela -ERS, HCL Tech" <kishore-d@hcl.com>, 
	Khaja Hussain Shaik <khajahussain-s@hcl.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
	<1938188.T29nr9UITP@peggleto-mobl5.ger.corp.intel.com>
	<52D8DBA7.4070700@pseudoterminal.org>
	<31DD9473F5EB4E468EDC3B5642AD64BD08E3F431@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<52EE67AF.60308@pseudoterminal.org>
	<84B977B6A84B774995572EB08A8E2D3C01241E76@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
In-Reply-To: <84B977B6A84B774995572EB08A8E2D3C01241E76@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto dylan
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
X-List-Received-Date: Sun, 02 Feb 2014 16:21:46 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Kishore,

please provide more details. What is the device you run GStreamer on? 
What is the format of the media you are playing? What is the log output?


On 2014-02-02 16:59, Kishore Divvela -ERS, HCL Tech wrote:
> Hi Carlos,
>
> On Gstreamer1.0 when we play with Playbin it is not working .. But it works with "uridecodebin and fpsdisplaysink"
>
> Regards,
> Kishore
>
>
> -----Original Message-----
> From: Carlos Rafael Giani [mailto:dv@pseudoterminal.org]
> Sent: Sunday, February 02, 2014 9:14 PM
> To: Khaja Hussain Shaik
> Cc: Nicolas Dechesne; yocto@yoctoproject.org; Dipesh Karmakar; Paul Eggleton; Kishore Divvela -ERS, HCL Tech
> Subject: Re: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan
>
> On 2014-01-28 13:49, Khaja Hussain Shaik wrote:
>> Hi Carlos,
>>
>> Did you get a chance to look into the porting of gst1.0 to Dylan?
>>
>> Regards
>> Khaja
>>
> I have now upgraded the recipes in meta-gstreamer1.0 to version 1.2.2.
> It is a backport from the current OE-core recipes. Furthermore, I added
> the Orc OE-core recipes to this layer. This way, gstreamer is built with
> Orc support by default, even for danny and dylan.
>
> cheers,
> Carlos
>
>
> ::DISCLAIMER::
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liability on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of the author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction, dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior written consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error please delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruses and other defects.
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------


