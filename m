Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3888E00CF1; Thu,  1 Sep 2016 03:57:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	*  1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0093E00CED
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 03:57:56 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id c133so71948050wmd.1
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 03:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=I4AJX91OO8CSYu+v8NPU9LMqHfQshMd/ZI7Fa+mWgXQ=;
	b=beE3skVR5iFD1RfQzJZUh31qIqpu1A8fvg2rvliiF/KxUY8Ffx1a+ICmBFWOr9DXvU
	D9E7iWDXa7RMVXehTFoSxmcgPnPgSdMDldbf51fNRVw8DQYS3fgNT9mS3zECZiyOtsEL
	DYEuIZZocY8jIm/vkd5JeV2qnooGtBhANU97gj1wc34RYrg/smjp8/pz3+A+AGtdkJDw
	QBHXq4+YLftWqVIRwNKZMTUuQX1q0GpuLzM96M0HO/Mq5GvYOYmzqK8Uv53ZjTT1UUlK
	MVe5xsVSGj7BQaCIp+O8QViP4JdO7knXT34yq+2SyPxytlZxXI6DYthg4sYbRbTK70PN
	6t/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=I4AJX91OO8CSYu+v8NPU9LMqHfQshMd/ZI7Fa+mWgXQ=;
	b=CSXpT+PIxbKxhzkplTN+BwcqC2wolWws5rMw7QjgbMnox2/sQXfy2o/WkDEo80IU/w
	UwKTJxTg9BpNz8Joo9QN5Ql8+TsOcNidx8SK50mH5i2YJmCTGRO+R1d/dDUU3gdlpVP3
	R7bT7uQrKcOyEolb7cte3h1YUcTuCeozVNZn5xxHYzVxRvgcBlDd8Pt49G2DspVhdhiT
	4UQ+CVdbVybeSpuU+Nw5jIdZj+qK04VdvI5896mtuPKclGFvvJ0mNEInQ6aZ+b5cMjCd
	vLTK2Oh6iN4OyENWImHXdX5PBo5tXtVG+ddfsXtICX2OdkFiTZkMRyahp0quo7PSX4Iz
	qf9w==
X-Gm-Message-State: AE9vXwODkXl4IkUVfnzrNrsWTssvb6mQWlvdFSCAYcKu6rcvAKSxdxp8x7I4GLPBk8AmrvscOcoiCQ411T9JpQ==
X-Received: by 10.28.167.7 with SMTP id q7mr1514812wme.29.1472727475122; Thu,
	01 Sep 2016 03:57:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.88.67 with HTTP; Thu, 1 Sep 2016 03:57:24 -0700 (PDT)
In-Reply-To: <CAHiDW_GBefiLcDQOgEEPVXeKTQGun8w6n62H33V6W4bvCv6sSA@mail.gmail.com>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
	<87fupkarqt.fsf@posteo.net>
	<85bd928a2ecb47663d9a90ca24756f16@herrie.org>
	<CAHiDW_GBefiLcDQOgEEPVXeKTQGun8w6n62H33V6W4bvCv6sSA@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Thu, 1 Sep 2016 12:57:24 +0200
Message-ID: <CAGiJk9fFfgezxUdR3+bEXmoRhqEubNgRQTs8yeBc3-QoBE5Wyg@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Pietro <pulsarpietro@posteo.net>
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 01 Sep 2016 10:58:00 -0000
Content-Type: text/plain; charset=UTF-8

2016-09-01 12:34 GMT+02:00 Jussi Kukkonen <jussi.kukkonen@intel.com>:
> On 1 September 2016 at 13:21, Herman van Hazendonk <me@herrie.org> wrote:
>>
>> Hi Pietro,
>>
>> You can override the recipe by adding a recipe for version 3.0.0+ in your
>> own layer and making sure your layer has a higher priority in bblayers.conf.
>> See for example what we do in our project:
>>
>>
>> https://github.com/webOS-ports/webos-ports-setup/blob/testing/conf/bblayers.conf
>>
>> openembedded-core provides ofono 1.1.7 for example with
>> https://github.com/openembedded/openembedded-core/tree/krogoth/meta/recipes-connectivity/ofono
>>
>> However we want to use ANOTHER version of ofono (1.1.7 based, but from a
>> different repo/project).
>>
>> So we have our own .bbappend at
>> https://github.com/webOS-ports/meta-webos-ports/blob/krogoth/meta-luneos/recipes-connectivity/ofono/ofono_git.bbappend
>> where we specify the different repo etc to use.
>>
>> This doesn't apply 1:1 in your case, but you could simply add a
>> protobuf_3.0.0.bb in your own layer and it should build that instead. Just
>> make sure you have your layer at a higher position compared to
>> meta-openembedded in your bblayers.conf
>
>
> In the normal case (a simple upgrade to the newest version) the best choice
> would be to send a upgrade patch to openembedded-devel list: that way you
> never have to maintain it in your own layer.
>

Hi,

protobuf 2.x and 3.x are incompatible, there is also a protobuf3
recipe in meta-maker.


-- 
Regards
Samuel

