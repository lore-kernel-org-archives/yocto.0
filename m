Return-Path: <gordan@bobich.net>
Received: from external.sentinel2 (78-86-195-58.zone2.bethere.co.uk
	[78.86.195.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5AE2E00321
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 09:25:43 -0700 (PDT)
Received: from mail.shatteredsilicon.net (localhost [127.0.0.1])
	by external.sentinel2 (Postfix) with ESMTP id 2AC4B29BF;
	Tue, 23 Aug 2011 17:25:35 +0100 (BST)
MIME-Version: 1.0
Date: Tue, 23 Aug 2011 17:25:34 +0100
From: Gordan Bobic <gordan@bobich.net>
To: <cross-distro@lists.linaro.org>
In-Reply-To: <20110823161134.GV3053@linaro.org>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
Message-ID: <efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
X-Sender: gordan@bobich.net
User-Agent: Roundcube Webmail/0.4.2
X-Mailman-Approved-At: Tue, 23 Aug 2011 09:26:45 -0700
Cc: GCC developers <gcc@gcc.gnu.org>,
	Ubuntu Devel <ubuntu-devel@lists.ubuntu.com>, yocto@yoctoproject.org,
	Gentoo Embedded <gentoo-embedded@lists.gentoo.org>,
	Debian ARM <debian-arm@lists.debian.org>,
	Fedora ARM <arm@lists.fedoraproject.org>,
	OLPC Devel <devel@lists.laptop.org>,
	OpenEmbedded Devel <openembedded-devel@lists.openembedded.org>,
	cooker@mandrivalinux.org, MeeGo Dev <meego-dev@meego.com>,
	LSB discuss <lsb-discuss@lists.freestandards.org>,
	Mageia Dev <mageia-dev@mageia.org>
Subject: Re: [fedora-arm] ARM summit at Plumbers 2011
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
X-List-Received-Date: Tue, 23 Aug 2011 16:25:45 -0000
Content-Type: text/plain;
 charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

 On Tue, 23 Aug 2011 17:11:34 +0100, Steve McIntyre 
 <steve.mcintyre@linaro.org> wrote:
> On Tue, Aug 09, 2011 at 07:15:34PM +0100, Steve McIntyre wrote:
>>Hi folks,
>>
>>Following on from the founding of the cross-distro ARM mailing list,
>>I'd like to propose an ARM summit at this year's Linux Plumbers
>>conference [1]. I'm hoping for a slot on Thursday evening, but this
>>remains to be confirmed at this point.
>>
>>We had some lively discussion about the state of ARM Linux distros at
>>the Linaro Connect [2] event in Cambridge last week. It rapidly 
>> became
>>clear that some of the topics we discussed deserve a wider audience,
>>so we're suggesting a meetup at Plumbers for that bigger
>>discussion. The initial proposed agenda is:
>>
>> * ARM hard-float
>>   + What is it and why does it matter?
>>   + How can distributions keep compatible (i.e. gcc triplet to
>>     describe the port)?
>>
>> * Adding support for ARM as an architecture to the Linux Standard
>>   Base (LSB)
>>   + Does it matter?
>>   + What's needed?
>>
>> * FHS - multi-arch coming soon, how do we proceed?
>>
>> * 3D support on ARM platforms
>>   + Open GL vs. GLES - which is appropriate?
>>
>>but I'm sure that other people will think of more issues they'd like
>>to discuss. :-)
>>
>>If you wish to attend, please reply to the cross-distro list and let
>>us know to expect you. Make sure you're registered to attend Plumbers
>>Conf, and get your travel and accommodation organised ASAP.
>>
>>[1] http://www.linuxplumbersconf.org/2011/
>>[2] http://connect.linaro.org/
>
> UPDATE: we've not had many people confirm interest in this event yet,
> which is a shame. If you would like to join us for this session,
> please reply and let me know. If we don't get enough interest by the
> end of Sunday (28th August), then we'll have to cancel the meeting.

 Unfortunately there is no way I could make it, but on the subject of 3D 
 support on ARM, Luke recently mentioned something that initially seemed 
 outlandish but upon closer examination doesn't seem like a bad idea. As 
 we all know, the state of openness of specifications of commonly used 
 ARM 3D GPUs is at best dire. What has been proposed is a bit radical, 
 but it doesn't actually seem that implausible. Specifically, combining 
 Open Graphics Project (http://wiki.opengraphics.org/tiki-index.php) and 
 the xilinx zynq-7000 or similar (dual core Cortex A9 + FPGA). The idea 
 is to have an OGP GPU in firmware in FPGA. In terms of the power budget, 
 it seems to work relatively sanely considering what it is, and it is as 
 ideal as it gets as far as openness and flexibility goes.

 I just thought it's worthy of a mention.

 Gordan

