Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BBD8E007BA; Sun, 23 Apr 2017 19:52:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E684E0074B
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 19:52:37 -0700 (PDT)
Received: by mail-wr0-f182.google.com with SMTP id w50so60044516wrc.0
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 19:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=s67uu77a0t16WgqUDQmX20U0LEfcYsxoqeA1J6G2dSI=;
	b=Yr6J1rJumD8bt5yPJ9sbHCbHGUnhn75WfySI1Cau3ypKJFmuYTTDvcN5shQikjyYZD
	06wuRuzkj4UPCSV50bPClpCbA6E9db3SXRw2F/ZlcDsTAFvlSB+kWqQEhRC7VtkDzeQN
	hYdAJ58Lu7gDqqQzhfz3cxH9VyuhTa1KovvhMMMkCqUKvo1rsHiAMfW+mKUSdw9/KksW
	9+YnJx4ArEu1CemXunFUmIx51IPWCTQDi7ATWOVmKSHlZbtnuVTN+muKgFyopULd1TkB
	eBp3jnR/k7vmHCGyhBmb7+rcYNGLCeEqcd/1lqGGJMf3m7tCj0m9J9wjy0ZNlrRrysrM
	MgfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=s67uu77a0t16WgqUDQmX20U0LEfcYsxoqeA1J6G2dSI=;
	b=JAExZCKioN2VN+cTcqh0y/MTizhcrrj2DNn9qygfv8r8SeCxGZY8W5zU2XNOT0vXc2
	2QR6Wp+8n918wADbsR24BQIqx7ayVNyYBWzcpL7XQjZ0Lzjk7bRbkKJJQxRwNq3PNr/C
	dMN4iS0A9/NH3vKB3xqL5GVg5LWamfDpjbW8rIORC3aYpsKRgUl26n9XpducecyNVvDP
	u0co7i3B0OHBawSh669uFwMrsR4RSbBlu2OA1i455IVO+A2nPzDF1IvSZaH10QrAHaih
	Zum4oaLpeTr2F+fZkKVLiR20Ogw/7/aoGLFNGMzv4CFRKabtEi1jenYhBO1HDPiw+yPN
	my4Q==
X-Gm-Message-State: AN3rC/6rH12thycDCjoLPL9GE6LvS7auFXxPynE8sY4tjejCgJi19aLi
	ORAISPWj+crIq0eo5bLQMkcTnYpjeQ==
X-Received: by 10.223.139.146 with SMTP id o18mr3646891wra.175.1493002356349; 
	Sun, 23 Apr 2017 19:52:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Sun, 23 Apr 2017 19:52:05 -0700 (PDT)
In-Reply-To: <CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
	<CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 23 Apr 2017 19:52:05 -0700
Message-ID: <CAMKF1spOfQgu0qish5uwBfFeX7t1b=11DvfiKBfrYEG2zvJxsw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 02:52:41 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 23, 2017 at 5:31 PM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
>
>
> On Sun, Apr 23, 2017 at 8:30 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
> wrote:
>>
>>
>>
>> On Sun, Apr 23, 2017 at 6:04 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>>
>>> On 16 April 2017 at 16:50, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> > I have put together recipes for upcoming gcc-7 major release as well
>>> > as glibc 2.26 release, which we would target for next release ( 2.4 )
>>> >
>>>
>>> I threw these at the autobuilder and the errors are starting to appear:
>>>
>>> http://errors.yoctoproject.org/Errors/Latest/?filter=
>>> eddf6362e17899113f10cf53ed0db8a4b13ff3fc&type=commit
>>>
>>> Repeated diffutils and rpcbind failures, but linux-yocto and grub too (I
>>> have your grub fix already).
>>
>>
>> I wasn't able to bring up the linux-yocto one .. but the 4.10 linux Yocto
>> should be at a high enough stable
>> release to build with gcc7. So if there's a direct link to that error, I
>> can take a closer look.
>
>
> And sure enough, after I sent that the error page with linux-yocto finally
> wheezed in.
>
> I see that it was the 4.1 kernel, which is expected to fail. I haven't
> looked into backporting gcc7 fixes
> that far, but if there's demand, it is something we can consider/look into.
>

I think we will need them on 4.1 too but lets wait for gkh to apply them first.

