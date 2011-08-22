Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D039AE0071A
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2011 11:52:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7MIq7vM004090
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 22 Aug 2011 11:52:07 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 22 Aug 2011 11:52:07 -0700
Message-ID: <4E52A554.6050806@windriver.com>
Date: Mon, 22 Aug 2011 14:52:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>	<4E45D1F2.6040902@windriver.com>	<84AA8A6F-7556-4965-93ED-BDD4322047B3@keylevel.com>	<4E4BDBAE.1060402@windriver.com>	<8232FE7C-6344-44C9-A87C-24C5AABF2E06@keylevel.com>	<4E4C1347.4050100@windriver.com>	<15790C7C-DBA3-4DF8-9147-806203D05544@keylevel.com>	<4E4C2399.1040505@windriver.com>
	<8BE62F3C-20FF-4D5C-AD60-5C31DB910E17@keylevel.com>
In-Reply-To: <8BE62F3C-20FF-4D5C-AD60-5C31DB910E17@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring a layer to support multiple targets
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
X-List-Received-Date: Mon, 22 Aug 2011 18:52:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-17 04:42 PM, Chris Tapp wrote:
> On 17 Aug 2011, at 21:24, Bruce Ashfield wrote:
>
>> I have to head out for the day, but I'll loop around on this.
>> Technically I'm out of the office for the next 2 days, but can
>> sneak this in. I just need to double check a couple things in
>> the 2.6.34 support to see if inheriting from 'standard' directly
>> will work for you .. and if it won't, I can give you patch
>> to carry locally for a bit.
>
> Thanks, but please don't speed too much time on it if 'standard' isn't
> going to work. This is only a research project at the moment and I can
> patch my defconf easily enough for now (especially as it seems I need to
> re-enable USB_SERIAL with USB_SERIAL_GENERIC to get the CM119 usb audio
> on the SoC to work, which means a defconf will now do what I want).
>
> It would be nice to have a proper (generic) solution going forward, but
> I plan to switch to linux-yocto-stable in the pending release.

As it turns out, you would need some tweaks to the kern tools
(backports) to get this working. There's low value in this, so
as you said, if you don't need it. I'll consider this a closed
issue and I can help on newer releases (and have some docs) to
show you what is required.

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


