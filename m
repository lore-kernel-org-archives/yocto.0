Return-Path: <gordan@bobich.net>
Received: from external.sentinel2 (78-86-195-58.zone2.bethere.co.uk
	[78.86.195.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10CEEE0071A
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 15:26:08 -0700 (PDT)
Received: from ariia.shatteredsilicon.net (unknown [10.2.3.1])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	by external.sentinel2 (Postfix) with ESMTPSA id 7B25029BF;
	Tue, 23 Aug 2011 23:26:02 +0100 (BST)
Message-ID: <4E5428F8.2050000@bobich.net>
Date: Tue, 23 Aug 2011 23:26:00 +0100
From: Gordan Bobic <gordan@bobich.net>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.20) Gecko/20110816 Red Hat/3.1.12-1.el6_1 Lightning/1.0b2
	Thunderbird/3.1.12
MIME-Version: 1.0
To: omalleys@msu.edu
References: <20110809181534.GR10171@einval.com>	<20110823161134.GV3053@linaro.org>	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
	<20110823140143.11573jx2b3qwm51j@mail.msu.edu>
In-Reply-To: <20110823140143.11573jx2b3qwm51j@mail.msu.edu>
Cc: cross-distro@lists.linaro.org, Ubuntu Devel <ubuntu-devel@lists.ubuntu.com>,
	GCC developers <gcc@gcc.gnu.org>, yocto@yoctoproject.org,
	Gentoo Embedded <gentoo-embedded@lists.gentoo.org>,
	Debian ARM <debian-arm@lists.debian.org>,
	Fedora ARM <arm@lists.fedoraproject.org>,
	OLPC Devel <devel@lists.laptop.org>,
	OpenEmbedded Devel <openembedded-devel@lists.openembedded.org>,
	cooker@mandrivalinux.org, MeeGo Dev <meego-dev@meego.com>,
	LSB discuss <lsb-discuss@lists.freestandards.org>,
	Mageia Dev <mageia-dev@mageia.org>
Subject: Re: ARM 3D support was Re: [fedora-arm] ARM summit at Plumbers 2011
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
X-List-Received-Date: Tue, 23 Aug 2011 22:26:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2011 07:01 PM, omalleys@msu.edu wrote:
> Quoting Gordan Bobic <gordan@bobich.net>:
>> Unfortunately there is no way I could make it, but on the subject of 3D
>> support on ARM, Luke recently mentioned something that initially seemed
>> outlandish but upon closer examination doesn't seem like a bad idea. As
>> we all know, the state of openness of specifications of commonly used
>> ARM 3D GPUs is at best dire. What has been proposed is a bit radical,
>> but it doesn't actually seem that implausible. Specifically, combining
>> Open Graphics Project (http://wiki.opengraphics.org/tiki-index.php) and
>> the xilinx zynq-7000 or similar (dual core Cortex A9 + FPGA). The idea
>> is to have an OGP GPU in firmware in FPGA. In terms of the power budget,
>> it seems to work relatively sanely considering what it is, and it is as
>> ideal as it gets as far as openness and flexibility goes.
>>
>> I just thought it's worthy of a mention.
>
> It does seem outlandish, but it is kind of cool. Is it going to give
> enough 3d speed? The next gen tegra is supposed to have a 24 core GPU.

If you can quantify what "enough 3D speed" means, then perhaps that can 
be assessed. There really aren't many applications around at the moment 
to make this an issue. I'd be more interested in it's ability to decode 
1080p.

Then again - it's FPGA! You can load a different "firmware" depending on 
whether you need 1080p decoding or 3D rendering, or some other kind of 
specialized DSP offload with only bare minimal VGA. :)

Personally, I think OGP would be worth it even if just for the fact that 
we would no longer have to beg (in vain) the vendors for decent drivers 
or published specs. The added flexibility on top is just a "free extra". :)

Gordan

