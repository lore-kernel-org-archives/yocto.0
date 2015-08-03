Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BD70E009BC; Mon,  3 Aug 2015 08:55:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E80C4E0034B
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 08:55:08 -0700 (PDT)
Received: by iggf3 with SMTP id f3so58472963igg.1
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 08:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=597aNRM2aTYnvBku81XA2QG9QRnASeSYg6TfZNpz7sk=;
	b=WeOwvy+dWAYnGpUOnSF6Yxwtk24ZzK++feGBWvONAfUYBzrgbNDCfETR+BavATPxEa
	k7xDhFnKYY+THNeeM8/w0TbHbup9lZa1HUihYBArA4UVbHKiaMfL8rszO3DznQaR7osJ
	2yi9Syy6fWf8jRl+oz1rATuqGusiUYLhg1SZxGszPMpESyFAasztGjPW/0vFNPRu08mG
	lWA2lkukxWKFXTlQ6xdfKZ3OEuJ1r8+IvZsK/YGCC0joB674L4VCANFhRe1R+UoyJYrV
	EEeRt/VNWKGmamTS9NkbSgIWfJVF2+jtgSAxJjrePwpt968tYQ2NVTUpbRHeGl+MNOy2
	6o9w==
X-Received: by 10.50.90.179 with SMTP id bx19mr22942098igb.43.1438617308040;
	Mon, 03 Aug 2015 08:55:08 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id d4sm485031igl.1.2015.08.03.08.55.06
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Aug 2015 08:55:07 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
	<81e2e36e8df04c9584ea5a9ca8afa303@googlemail.com>
	<2238EDC6081C944E97E4EE915AE5CBEC5476EED6@EXCHANGE-B.raylase.de>
	<7861693.hW9MCO2lEF@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1soKnb5LR7pkiXW2=o0hjA4iVx_803yO3P=2vEc_85Y0gQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55BF8ED7.7090408@gmail.com>
Date: Mon, 3 Aug 2015 11:55:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1soKnb5LR7pkiXW2=o0hjA4iVx_803yO3P=2vEc_85Y0gQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Dalon Westergreen <dwesterg@gmail.com>,
	Yves Vandervennet <yvanderv@opensource.altera.com>,
	"rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
	"enak999@googlemail.com" <enak999@googlemail.com>
Subject: Re: Which repo for meta-altera ?
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
X-List-Received-Date: Mon, 03 Aug 2015 15:55:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 07/30/15 13:02, Khem Raj wrote:
> On Thu, Jul 30, 2015 at 12:50 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> (Adding Khem and Yves, the maintainers of the github repo, to CC)
>>
>> In the interests of keeping the layer index accurate, can we get some
>> clarification on which repo is the official BSP?
> Please use github.com/kraj/meta-altera as mentioned in layerindex as
> well. This is the community supported BSP

If/when a vendor implements their own layer, I thought it was a
stipulation of using the layer index that the community layer is asked
to change its name to avoid confusion? As a convention "layer" would be
changed to "layer-community" for clarity.

