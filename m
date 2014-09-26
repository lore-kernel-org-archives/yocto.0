Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF916E007A2; Thu, 25 Sep 2014 20:23:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 255A6E00790
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 20:23:25 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id a13so9654111igq.5
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 20:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=wRyc2nopJaZO73RowcMfbf8+qvo/3wZsn9DToKq6zQQ=;
	b=mR8fy1Rfs+GVGSqM1aG4aAnWO8XSh5TUlWqFCcg5+I9cGnQPM7FS6+otDFirZM3Cx0
	t16zotVTVzXXDlNm/zeVuFswQQWI6ZIkRdqhv1d2Bu2YU0nkpTqBghZ/0cBkM6uVrc+5
	C5EFqIM2c0BFu8enddbelE7uod016Oop5tZRyq+2aqVb65OCV1vsbhPdUNsq2vhdUoez
	00Ksna0wtQAJNXYk54yzP825KeHiGurVE+3CfiruB2/VjgLBknwKHebuz+ioVBiwrLHm
	R03rk58PB0Wh46grNzoJVuNurTtGmudjOcInYxq1StipdO0+2ElXt5IQU519xhU+IWhP
	haLw==
X-Received: by 10.50.66.197 with SMTP id h5mr9957427igt.20.1411701804619;
	Thu, 25 Sep 2014 20:23:24 -0700 (PDT)
Received: from 10.168.191.211-ra01.englewood.co.denver.comcast.net
	(fw01.aurora.co.denver.comcast.net. [198.178.8.81])
	by mx.google.com with ESMTPSA id ig9sm852819igb.13.2014.09.25.20.23.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Sep 2014 20:23:24 -0700 (PDT)
Message-ID: <5424DC2A.1060002@gmail.com>
Date: Thu, 25 Sep 2014 20:23:22 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: Navani Srivastava <navani.srivastava@gmail.com>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<CAMKF1sqc0+V0V__Ot1T_Qzd-DPpTK4OF9ooAz2EOEEXfT-S-aQ@mail.gmail.com>
	<CA+Z6RkUeUs0=EQ3adks8jBYbEQkiA6G8iP+Em8_YzHSGo2124Q@mail.gmail.com>
	<2064454.kM4kxd3gIa@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkXJWR0R6et_mz3kQatXCkRTzE85HaLHi2BKA8b6Ywq2mQ@mail.gmail.com>
	<CA+Z6RkUk5zeR3SiYd_ce2cY0-9fDSErhZuO4h2h9V-2ckp9icQ@mail.gmail.com>
In-Reply-To: <CA+Z6RkUk5zeR3SiYd_ce2cY0-9fDSErhZuO4h2h9V-2ckp9icQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Navani Srivastava <navani.srivastava@lnttechservices.com>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Fri, 26 Sep 2014 03:23:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 9/24/14 5:01 AM, Navani Srivastava wrote:
> Removing integration of meta-toolchain-qte from my image helped in building
> qjson as a part of SDK when running bitbake -c populate_sdk -v <myimage> or
> bitbake <myimage>.
> 

OK. Thats what is expected.

> Integration of meta-toolchain-qte might need some more modifications.
> 
> Still as a requirement, I need to integrate my custom recipe with
> meta-toolchain-qte to generate SDK having custom recipe as a tool.

when populate_sdk gives you an SDK I dont understand why this is a
requirement

 I have
> created nativesdk bb file for custom recipe to integrate it via
> nativesdk-packagegroup-qte-toolchain-host.bb but no luck..
> 
> On Wed, Sep 24, 2014 at 1:14 PM, Navani Srivastava <
> navani.srivastava@gmail.com> wrote:
> 
>> Yes.. i did...
>> On 24 Sep 2014 12:56, "Paul Eggleton" <paul.eggleton@linux.intel.com>
>> wrote:
>>
>>> On Wednesday 24 September 2014 10:26:41 Navani Srivastava wrote:
>>>> I corrected FILES_${PN} and added following in my image recipe-
>>>> QTNAME = "qte"
>>>> QT_DIR_NAME = "qtopia"
>>>> require recipes-qt/meta/meta-toolchain-qt.bb
>>>>
>>>> but that didn't make any difference related to SDK integration. On
>>>> executing 'bitbake -v <MyImageName>', it is generating rootfs and sdk,
>>> in
>>>> which contains rootfs contains qjson libraries but sdk doesn't integrate
>>>> anything.
>>>
>>> To generate the SDK you'd need to also do bitbake -c populate_sdk
>>> <imagename>
>>> - you did do that as well after making the changes to the recipe, right ?
>>>
>>> Cheers,
>>> Paul
>>>
>>> --
>>>
>>> Paul Eggleton
>>> Intel Open Source Technology Centre
>>>
>>
> 

- -- 
- -Khem
-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.22 (Darwin)
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlQk3CoACgkQuwUzVZGdMxS3EgCfVUdFehr4kmLrXfLy6jN25Q0e
YSAAn3Dhe/y2xVpFYtpTtDMGCA7qOQR5
=FZTr
-----END PGP SIGNATURE-----

