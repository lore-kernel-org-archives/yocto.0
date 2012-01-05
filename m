Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5733FE006DD
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 03:44:55 -0800 (PST)
Received: from [192.168.0.27] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 6E6F722D0B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 11:18:34 +0000 (GMT)
Message-ID: <4F058D02.2050707@communistcode.co.uk>
Date: Thu, 05 Jan 2012 11:44:02 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Integrating 3rd Party BSP Layers
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
X-List-Received-Date: Thu, 05 Jan 2012 11:44:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Good morning everyone,

I am currently trying to figure out the best way to integrate the 
meta-texasinstruments layer with the Yocto provided layers. According to 
the meta-texasinstruments readme, it requires the meta-oe, meta-angstrom 
and meta-oe-core. Now Yocto provides the stable meta-oe-core (correct?), 
so I would clone the meta-oe and meta-angstrom, add them and the 
meta-texasinstruments layer to my bblayers.conf then build away, yes?

However, what implications does adding these new layers bring when using 
them in the Yocto environment?

Any thoughts would be greatly appreciated on the consequences and/or my 
methodology!

The main aim of the game is trying to build an image for the beagleboard 
using the meta-texasinstruments layer as to get the latest and greatest 
support - with the possibility of using it later in the day when the 
beaglebones start appearing but with the stability and additional 
support that is acquired through the Yocto umbrella.

Kind Regards,
Jack.

