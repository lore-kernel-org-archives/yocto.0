Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B198AE009AA; Sun, 28 Oct 2018 18:43:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E438E00872
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 18:43:21 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id u4-v6so804671pfh.12
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 18:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=LSw2CdtzUJbMWyOnd3Zr+VJn1TYKEMSQ6t2s7Lo1prM=;
	b=UhP5/UJE4BaKxcwHchfp3mRsYjkyAXGSCIc3VEOhhuK8FJwQromnmif4TuSpeRf3jQ
	nvooIY+cpk7z/jcj59BvsoTI3RgW1qKIH8ZIF+fC4NWXP+MmpGBzTLqVOYDXH09XZQVu
	L2kllmIpLyavlPLesomIlg8ayYMgFaoP97jyRVxpV2D81ZuVmnRrIWiTPTF0NE86ap+9
	G4XLs9guI0Dt3H4JwjCqZGGI2Ty1Im8+BGiHumPL1N9ewVAAWq1728Xy7eJkBzU7zdwC
	RrDVhK2EtHpeOyYaAbldsIQlGOP9FcC94jocdknex0M5vJPCvo5Wl3vRHgs7KhFbKcV3
	TPFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=LSw2CdtzUJbMWyOnd3Zr+VJn1TYKEMSQ6t2s7Lo1prM=;
	b=OO+0P+THUV5G9THggtzFEjWE9diqO19EwTXltdYNwgPQJyC/IP/HfB06YCTFIm2Pv1
	nYiM0CwqprwNJCuAkoBIju5vCnzga8lFbSKamfFtqaOZlPncHGh/2HbcI26EEIszzHPu
	wDYhSchlHZ9kXUQR4p6GKcFpJkL4pLxNMy0xjp+Ygd58an5m1/WvIaJdFtzDzmnNSRqP
	p37BiFQg8RJRq3I8gdPwP9zT65GJgeCzThsiDZLYCF1oVuGnZAj2dYIJ01uIy/0bYrAu
	sf8/MA04+1DfowwSy88G4S+4ygk+tK/B00aEVdXmKh+NrpTOZYICHPCnrcQrlyuhmViq
	k0OQ==
X-Gm-Message-State: AGRZ1gJu11UYvPZusC/ysCk55HGWappUOIintg7dzXq8/IcSSzm4CdEy
	H+IXg/fltjnNnCTd6WbfC6PyDL95
X-Google-Smtp-Source: AJdET5eZsL82muhtMUMzfizS0QdqxwVV4rh6QX3FmKp6DtALi279HgWKx+hPxyRvF+G+jw2OpLnheA==
X-Received: by 2002:a63:d705:: with SMTP id
	d5-v6mr11861571pgg.27.1540777400520; 
	Sun, 28 Oct 2018 18:43:20 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:3405:5320:ca09:da28?
	([2601:202:4180:c33:3405:5320:ca09:da28])
	by smtp.gmail.com with ESMTPSA id
	z4-v6sm27112697pgs.50.2018.10.28.18.43.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Oct 2018 18:43:19 -0700 (PDT)
To: Anders Montonen <Anders.Montonen@iki.fi>
References: <943A040F-0297-4CB9-B4AB-FECBBFF17A0C@iki.fi>
	<94c69dbc-f1e6-f51e-3200-d37edb531bd7@gmail.com>
	<F885A7B9-BEEE-45B1-AD98-F111F5FFB0BD@iki.fi>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <0f393594-17f5-e5dc-7eaa-7c13d84f6b12@gmail.com>
Date: Mon, 29 Oct 2018 01:43:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <F885A7B9-BEEE-45B1-AD98-F111F5FFB0BD@iki.fi>
Cc: yocto@yoctoproject.org
Subject: Re: tzdata overwrites existing localtime/zoneinfo?
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
X-List-Received-Date: Mon, 29 Oct 2018 01:43:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 10/28/18 6:31 PM, Anders Montonen wrote:
> Hi,
>
>> On 28 Oct 2018, at 17:27, akuster808 <akuster808@gmail.com> wrote:
>> On 10/25/18 5:43 PM, Anders Montonen wrote:
>>> It seems to me that the tzdata package will overwrite whatever the current time zone is with its default. This is not great if you’re upgrading the package on an existing system. Should the creation of the file and link be removed from the do_install and only be done in the pkg_postinst?
>> Timely email.. 2018g just got release. I will take a look at this issue
>> shortly.
> A colleague pointed out that although ${sysconfdir}/localtime is added to CONFFILES, the get_conffiles() function in package.bbclass explicitly removes symlinks from the list of configuration files.

Have you tried setting INSTALL_TIMEZONE_FILE="0" in your local.conf?

- armin

>
> Regards,
> Anders Montonen

