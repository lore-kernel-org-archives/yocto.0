Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE9B0E00B47; Wed, 10 May 2017 04:06:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F15BE00B3E
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 04:06:00 -0700 (PDT)
Received: (qmail 2594 invoked by uid 1003); 10 May 2017 11:05:59 -0000
Received: from unknown (HELO ?10.50.10.213?) (philip@opensdr.com@69.7.123.146)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	10 May 2017 11:05:59 -0000
To: JAYMIN DABHI <jaymind@glidemtech.com>, yocto@yoctoproject.org
References: <1e39ba0e26232aa4f6788139982da3a5.squirrel@emailmg.ipower.com>
From: Philip Balister <philip@balister.org>
Message-ID: <4e0c3618-21f4-a05e-9516-20aaa8fd213c@balister.org>
Date: Wed, 10 May 2017 05:05:57 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1e39ba0e26232aa4f6788139982da3a5.squirrel@emailmg.ipower.com>
Subject: Re: How to integrate mender to Yocto Jethro (4.1.15-1.2.0) for Pico i.MX6UL Hobbit Board?
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
X-List-Received-Date: Wed, 10 May 2017 11:06:12 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 05/10/2017 04:13 AM, JAYMIN DABHI wrote:
> Hi All,
> 
> Want to integrate mender with existing Yocto build. My Yocto repo branch
> is Jethro 4.1.15 and poky branch is morty.
> 
> Current machine environment detail is as below:
> 
> Development board - Pico i.MX6UL Hobbit TechNexion Board.
> DISTRO Version  = 4.1.15-1.2.0
> DISTRO Name = 'fsl-imx-fb'
> 
> Bitbake for - core-image-base
> 
> What would be the process or steps for integrating mender (meta-mender
> layer) in existing Yocto repo for custom board?
> 
> Followed this link :
> https://docs.mender.io/1.0/Artifacts/Building-Mender-Yocto-image, but it
> was unsuccessful.
> 
> Any suggestions.

Ask in the mender group.

https://mender.io/community

Philip

> 
> Thanks,
> 

