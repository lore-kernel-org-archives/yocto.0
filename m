Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC894E00CF4; Wed, 18 May 2016 17:01:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57C9DE00CA4
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 17:01:06 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id y2so1371933vka.0
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 17:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=gjPes4NKVuEJIcIex7u2ittjQHDqohOaXeubu+zXXgQ=;
	b=Y59ekJQgvsxLWE38fhusvcAIX1StZ/15jhVg8iysH/won3x870TYuTOflPxaQRmHNd
	/cYJfXlBrGQtxpV/5FV9p+qaHILi5oaS5lQS19g0Ayhk95pDtnXtYGUY7Q2OfS2Zvq5S
	80GH93M8dkcxcg8R4MXk3OCDljR8L95NvIvegI9151hvHD2+BivS2NjxMawkY+ZuDXDw
	PJAroWXlxOvVib//6fKVZWhRFR+JI+wH2tLadd370CBzp5mLRCkHKkBozeho5gbNknpE
	FBhwCvywOkV+FYPtp7BaUt5xJmv/8/Euk9TzquEpH3YV13I/fL1rTYz4j6dSZVAFEKZ9
	bcFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=gjPes4NKVuEJIcIex7u2ittjQHDqohOaXeubu+zXXgQ=;
	b=ifhZRTLVXW2PLA6YTeZ7MTKgVVUvCJS8rF8nIDBHqTOXe3fPVyT2T34/dcyMCGSADE
	UJQB5NV/aXb8HVb7zL1h+spQQ5/sFeHDoU4wkNdIgosQYwkl264rnbJsUew/8UFDyFHO
	BknjUbDeBfrufzqIIZGc5/TcOOaVjhBAXP4XxikY4krmf4jZD4efb0CszlovJIw0NDov
	MjoQ2UBWMNVACRsmtL0IcWaignWn2TlkInVmm2N9k7FWWfOaFX4wHNeuaHhntyCuDAsq
	myvFQrU6uvcnlIhYh3DxdllYgGJSJqEl8yx28E4C7RZga8NOGB8ZuiPvNtvTK55RRftw
	8eig==
X-Gm-Message-State: AOPr4FXqg56MzJKepPiJuWEWtXpviKYLoGPF1aJ/9qDfdqBh5IifIcTLNkzwK2vrmITXjpEf8nrCwatwVT2Ckg==
MIME-Version: 1.0
X-Received: by 10.159.38.54 with SMTP id 51mr5625816uag.27.1463616066411; Wed,
	18 May 2016 17:01:06 -0700 (PDT)
Received: by 10.159.39.68 with HTTP; Wed, 18 May 2016 17:01:06 -0700 (PDT)
In-Reply-To: <CALbNGRSVrA_bE8-YeaVV4ih8AdiGrYVZv0i3UgnL7sOoY8iDZg@mail.gmail.com>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-9-git-send-email-herve.jourdain@neuf.fr>
	<CALbNGRSVrA_bE8-YeaVV4ih8AdiGrYVZv0i3UgnL7sOoY8iDZg@mail.gmail.com>
Date: Thu, 19 May 2016 02:01:06 +0200
Message-ID: <CALbNGRSA0YVYmgqyMem7GU6awLouKEBg3M4utDr5LKF0VQ2sFg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 8/8] Support for vc4 graphics driver: modify the configuration for mesa
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
X-List-Received-Date: Thu, 19 May 2016 00:01:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 19, 2016 at 12:02 AM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Wed, May 18, 2016 at 2:21 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
>> This patch series enables the support for the VC4 graphics driver from E=
ric Anholt.
>> Add some configuration for building mesa, on raspberrypi, when VC4 is in=
 use.
>>
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> ---
>>  recipes-graphics/mesa/mesa_%.bbappend | 4 ++++
>>  1 file changed, 4 insertions(+)
>>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>>
>> diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/me=
sa/mesa_%.bbappend
>> new file mode 100644
>> index 0000000..b182388
>> --- /dev/null
>> +++ b/recipes-graphics/mesa/mesa_%.bbappend
>> @@ -0,0 +1,4 @@
>> +PACKAGECONFIG_append_rpi =3D " gallium"
>> +GALLIUMDRIVERS_rpi =3D "vc4"
>> +DRIDRIVERS_rpi =3D ""
>> +
>> --
>> 2.7.4
>>
>> --
> FWIW: An update of mesa would at least help for Qt applications [1]
>
> [1] https://github.com/anholt/mesa/issues/26
>
Have checked this again: Patch 'vc4: Fix subimage accesses to LT
textures.' is included in mesa 11.2.2 build by current oe-core.

So forget about my comment

Andreas

