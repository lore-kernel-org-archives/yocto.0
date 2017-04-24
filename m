Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CFC2E007BA; Sun, 23 Apr 2017 22:45:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B07AE0074B
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 22:45:44 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id w64so52588920wma.0
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 22:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sMoOcsFgGEzi8V8g9fTTsgv4IEzNPa6OZSH9sffXFUU=;
	b=KusfLEsO+SJwDAqMun+pHL79+p4Nvy88SuP2sPJURkuHfA9QJloD8VnkSCTboWzQjc
	IwhH28hqQn/xP5+iBqiRsO/SIApsy3E4i1/QSWP2si3RpDcs3WPK7uGrn1iWHEEdsO2q
	kP6h71caf8hst5o9gy+pLpQhCmMVvtiu8ChbgFQuaAa84H2mTA+JR5o/urLsuNFMvgw6
	V6+PwjOqxDp5crKx8mEP4xViedR32NggAWnaqQBkzN/JmknY1NEMeP3mbrNiRzBXl1SL
	6OnST7KutTVssqMMKp4G912EiMy8H6tcWQUTMnWizp+arGVBUiQpBpjPRmejneQ8ZIX9
	bNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sMoOcsFgGEzi8V8g9fTTsgv4IEzNPa6OZSH9sffXFUU=;
	b=fHkhbnqVytRVjmKNKoo6mIUPmbMuAsKeknBGCmCKc0awwGJ/nN2gtTplLmjFxC8w2d
	jVmbkF2Dyd0yuXkIMxvRg1OZ1fun1v04ljWTxSeixRjAWQL/1B9dhZTzCpQqW+4MCUoF
	XUCpcpwDNEXBe8GXHNWE9QGNn6VheMujtm3s866iWQx24H6fj4GjqkF4Kp+aTFvyqdXj
	IvcxQQuirEOCxr5b2xBwsdVBUs7v1xmNk1hMEwD3t7zc7lG8KMruA6EbCahv4FVsYd16
	FQFX+CRPhxoCanlhpfwigLqk0PJNe3jRPzenygg2VRptsuq5nvQxxmVw5OvPEnTgUaYv
	Gz8A==
X-Gm-Message-State: AN3rC/50T5brXeSDshd5mCDhZE7qVf4y91z5elLFvO6ThJmX2wWK2YnT
	lqoAtQUxBBbbs2ogNYy5/9Ice8LqUg==
X-Received: by 10.28.206.195 with SMTP id e186mr7557571wmg.37.1493012743294;
	Sun, 23 Apr 2017 22:45:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Sun, 23 Apr 2017 22:45:12 -0700 (PDT)
In-Reply-To: <CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 23 Apr 2017 22:45:12 -0700
Message-ID: <CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 05:45:48 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 23, 2017 at 3:04 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 16 April 2017 at 16:50, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> I have put together recipes for upcoming gcc-7 major release as well
>> as glibc 2.26 release, which we would target for next release ( 2.4 )
>
>
> I threw these at the autobuilder and the errors are starting to appear:
>
> http://errors.yoctoproject.org/Errors/Latest/?filter=eddf6362e17899113f10cf53ed0db8a4b13ff3fc&type=commit
>
> Repeated diffutils and rpcbind failures, but linux-yocto and grub too (I
> have your grub fix already).

There are few other fixes that needs to be in there. glibc and gcc recipes
also needed some fixes. I have pushed the whole series to kraj/master
branch on contrib repo

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/master

give it a whirl again.

>
> Ross

