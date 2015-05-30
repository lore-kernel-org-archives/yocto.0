Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4AFEE00A1C; Sat, 30 May 2015 05:26:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF423E00A04
	for <yocto@yoctoproject.org>; Sat, 30 May 2015 05:26:09 -0700 (PDT)
Received: by igbhj9 with SMTP id hj9so32754212igb.1
	for <yocto@yoctoproject.org>; Sat, 30 May 2015 05:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=nyGt0uSidCXzhb8MahyWs6013dSsztf/DkFL/3bMH1o=;
	b=rsVKyDtPOyzNHUNzDX4hZElVUwmyF1LpC1G788jvNqNrzoMT6xomktSfDcXvkkN6OG
	skpeJjUYjOiyLJtpp8Qmz1qr7dZ3Eta5NcEXaswW/f+BeIXTZF6gBC+f9GIa3NX6GE/b
	nog+GkDeN0Kg1Q5hkoqtc2SM+g2vqGZ59EK9gVxYZWsOo32AKA8hk0GhU2VqOztscXqO
	17Vm3pSI1hnbxepqNkjzAwuwVnAqTr0TwAbbBBRIqWw1IZrUpvIcbwz02jHdhLC2vgVv
	nsNXYm77CSP6ZlW0UoDs2O4jXU6AguPCT+LIXZCOex1VB3Limla/mE5c3l5F+a0G0j5A
	4GVQ==
X-Received: by 10.42.200.8 with SMTP id eu8mr20024800icb.65.1432988769185;
	Sat, 30 May 2015 05:26:09 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	q85sm6262911ioi.6.2015.05.30.05.26.08
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 30 May 2015 05:26:08 -0700 (PDT)
Message-ID: <5569AC5F.2020004@gmail.com>
Date: Sat, 30 May 2015 08:26:07 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <5568E11F.8030000@gmail.com>
	<CBC34811-90A4-4B1D-8157-BE4997FDB6A4@gmail.com>
In-Reply-To: <CBC34811-90A4-4B1D-8157-BE4997FDB6A4@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: overriding equals
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
X-List-Received-Date: Sat, 30 May 2015 12:26:15 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 05/29/15 19:13, Khem Raj wrote:
>> On May 29, 2015, at 2:58 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>> If a BSP layer sets a preferred kernel using an equals sign (e.g.
>> PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi") is there any
>> way of overriding this decision that doesn't involve:
>> 1) forking the layer
>> 2) hoping the maintainer accepts a relevant patch
>> 3) creating my own DISTRO
>> ?
> you may try the following in your config metadata ( local.conf )
> PREFERRED_PROVIDER_virtual/kernel_forcevariable = "linux-raspberrypi"

Thank you! That's exactly what I needed :-)

