Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0472E00C1B; Thu, 12 Apr 2018 05:47:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 613B6E00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 05:47:31 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id z8-v6so5000884oix.2
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 05:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UCJ0FczIurH62kAIZXudxZezWCGwI+rKhBxtJ7xM7DA=;
	b=OmTMpXpQca7BP1d9VReBdQusInzVoMKdi7B+D/lVycXOiTB1xH1fp5GASoy1zrY6l/
	LYdDAAj7Zx1R1ZdL8mUlLk+HWUCFvpwJzu0JGvtg8wl59yy1TwbvBeaEfysQ/4OkKXvd
	Uy1zsAQ1kOSpjyDmsjRbAnlv0tU1lA0yzEGJ68HUpcj+N2vljp8JIWH1Hc8dPY35cI/y
	WEYPnqIdIi4ZoA3zlFtLChmnPiivDY3qYGE3bjTPUGz1QsaXZGhYLAaVjY2czemAPsr3
	wyvRSqmdNBrUpP7TVEZZY/zs+vxOOTp/qyRsbqDazZqfGAPFXGwY3ChihfEsMXbWah/u
	qFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UCJ0FczIurH62kAIZXudxZezWCGwI+rKhBxtJ7xM7DA=;
	b=o2qOPNMKvBVJVAjtoVStZj+O5BDALcf59eEuMgI8HIb76kj7hfuoSHdO7tIuhGJq6P
	FFhk6EokfGZwUf5vClLY/iTsDmgtLElSOHi/Wosxq9hPFN5SaGpxego7Q4Mee8ViBgw/
	9+LByz3cOFi4X4HXSX3AtSd3aC4jGhXPvrEo22u1GGJ41oQdHrXUkH8LW4av0Mj/av+I
	wFzjNIcOWu0x3ZnqI/rt0VhjdXPzxuZ1pRkYRpyAItBLpzi9r9KkYYgvBqwdbUoFpx67
	qifY1PRLi4WJkpVtM/SPwgohpnoJ/nhb6rEuYjDNHJ/seN49VBGcdKxyNAirmWMftRmw
	A+jA==
X-Gm-Message-State: ALQs6tA/vaskbAuR11zBq63ssjTTqxw8S8guJuep10OkD48JdkgE2vkY
	1OOzLRJm5Z8wP4bU02A+Bv/aED/EWuWwyXh08qx3GQ==
X-Google-Smtp-Source: AIpwx4+d2bFRFkm43GcIXt/3zBT5DTFcxnQL5KdILV52euUg+xoFnmYrCN+fEu+VF0nj8V/cv23fxPX0SUwSllVlmmE=
X-Received: by 2002:aca:698c:: with SMTP id
	e134-v6mr5964365oic.18.1523537251399; 
	Thu, 12 Apr 2018 05:47:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Thu, 12 Apr 2018 05:47:10 -0700 (PDT)
In-Reply-To: <CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
	<CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Apr 2018 13:47:10 +0100
Message-ID: <CAJTo0LZhxZNxHwOLzkWBXixKqU6i=pUQB+ZncMsCaXEwuCEJog@mail.gmail.com>
To: Richard Collins <richard.collins@guidedknowledge.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Thu, 12 Apr 2018 12:47:33 -0000
Content-Type: text/plain; charset="UTF-8"

I think the message here is that we need to embed the oe-core version
in the metadata somewhere...

On 12 April 2018 at 13:11, Richard Collins
<richard.collins@guidedknowledge.com> wrote:
> I get the following for DISTRO.
>
> DISTRO            = "yogurt"
> DISTRO_VERSION    = "BSP-Yocto-RK3288-PD17.1.1"
>
> Can't find any reference to yogurt so I assume this is something the
> supplier of our SOM's has done. Looking on their Wiki it seems to be based
> on 2.1.2 (Krogoth)
>
>
> Thanks for the help. :)
>
> On 12 April 2018 at 11:21, Alexander Kanavin
> <alexander.kanavin@linux.intel.com> wrote:
>>
>> On 04/12/2018 12:44 PM, Richard Collins wrote:
>>>
>>> I've inherited a Yocto project that I know to be an old version. So one
>>> of my tasks is to update to the latest version. Before I do this I would
>>> like to know what version I have. The only information I can find is the
>>> bitbake version, BB_VERSION        = "1.32.0".
>>
>>
>> When you run bitbake, it should also print the values of DISTRO and
>> DISTRO_VERSION. Those should give a clue where you are at.
>>
>> Alex
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

