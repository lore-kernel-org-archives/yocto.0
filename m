Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 540C2E0044D
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 01:51:51 -0800 (PST)
Received: from [192.168.0.49] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 263DB2949D
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2012 09:43:31 +0000 (GMT)
Message-ID: <4F548CC0.4050802@communistcode.co.uk>
Date: Mon, 05 Mar 2012 09:52:00 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120217 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric>
	<4F514EC8.8000606@ti.com> <4F515551.50708@mlbassoc.com>
	<20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203041310220.20388@oneiric>
	<20120304192728.GO24667@denix.org> <4F53C63D.1000305@mlbassoc.com>
	<alpine.DEB.2.02.1203041629001.18196@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203041629001.18196@oneiric>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Mon, 05 Mar 2012 09:51:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/12 21:38, Robert P. J. Day wrote:
> On Sun, 4 Mar 2012, Gary Thomas wrote:
>
>> Can you explain what the toolchain problems are and why the versions
>> in oe-core don't work for meta-ti?
>
>    i just finished doing a "bitbake core-image-minimal" for a
> beagleboard using the meta-ti layer, and having only to set a
> preferred version for udev.
>
>    the build finished (albeit with a few warnings), and i have all of
> the images i would expect for a beagle xM.  should i consider this a
> form of success -- the simple fact that the build appeared to succeed?
>
> rday
>

Does it boot? I would expect this to be the next test? If you don't have 
a beagleboard to test if you host it somewhere I can give it quick go 
later today if I get time.

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


