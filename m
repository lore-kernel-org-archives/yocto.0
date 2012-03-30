Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71673E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 12:26:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2UJQMO0027941
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 12:26:22 -0700 (PDT)
Received: from msp-dhcp12.wrs.com (172.25.34.12) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 30 Mar 2012 12:26:22 -0700
Message-ID: <4F7608DC.1000402@windriver.com>
Date: Fri, 30 Mar 2012 14:26:20 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
In-Reply-To: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 19:26:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/30/12 1:44 PM, Koen Kooi wrote:
> Hi,
>
> RP said I should raise this on the yocto lists, so here it is:
>
> The Angstrom core team would like to move angstrom under the yocto banner so
> we can formally claim to be 'yocto'.

For it to be on the yocto project web site, it just need to have the layers 
hosted on the git.yoctoproject.org.  But there is no "yocto".. It's the Yocto 
Project, Poky, or specific git repositories.  There is no reason we can't have 
an angstrom repository.  It could be in a similar format to the Poky repository 
(everything combined for a single download), or it could be a layer [or layers] 
that sit on top of Poky.

>
> What is the process to make that happen? I suspect OSVs will need to know as
> well, since lately yocto is being defined as 'poky + 1 bsp layer' which makes it
> impossible to provide any added value if you want to keep calling it 'yocto' to
> your customers.

I've never seen it defined as that.  I've presented on numerous occasions that 
end users using the Yocto Project build environment, Poky, should expect to add 
1 or more layers to Poky.  Usually I present that would be 2 or 3 layers 
depending on their projects.  1 (or more) BSP layers, 1 (or more) userspace 
layers, and 1 (or more) internal project/device layers.

External items come in layers and should not be modified, to ease long term 
maintenance and upgrading.  Local changes should be made in one or more layers 
depending on responsibilities, work flow and project requirements.

What I personally would like to see is Angstrom being one or more layers that 
define a new distribution that can be added to Poky (or oe-core...)

--Mark

>
> regards,
>
> Koen
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


