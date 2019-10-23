Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B54FBE00D89; Wed, 23 Oct 2019 09:28:55 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
	[209.85.210.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E5EE00BFF
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 09:28:54 -0700 (PDT)
Received: by mail-pf1-f175.google.com with SMTP id b4so4331379pfr.12
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 09:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=PJQeIrw3F0ohyTawjIGPupMNER0coRan0DgLHV/MtQI=;
	b=RZPmtZWE0f4xhhXzm2OBIIBYF3/+jSFxh502zGQnUZwvNrUvkgQQIJT+1QY13KXKN5
	+Flr9IMKmseWADNWRTwF4l9k0gyqLswm0sFKMdEhVDCwGxFmLoadD9SM9kaxL7kYTDaz
	nhXkal6XNiFUVSF2aCILo+F8H5JxKCOM9hepAc0PxXTqNoq3DxV8i5YbH03hyCZruKXO
	Md7EXbwNPFL3Cz8126nohutvpbzTwvcE6EfRV3K9jK1O6RFFPUW5RO9+mUION2jho5Xj
	EpcZgvFeOK7M02fA8ZMOzJJUzgCy3+SRXHgTC3Jy3XBANBlR49d06sTWxhIozeQwqtQi
	VKQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=PJQeIrw3F0ohyTawjIGPupMNER0coRan0DgLHV/MtQI=;
	b=m+IRRdI9IFHLx9gbvCWI2o1VbfO0KYynO+z/Nii8wFLdbxG8/GF31k1vs8qzF6g5ZK
	GHoY1eLYuWBiO1WOXBDF+P8swE+rMYPMTsfBr9pLbdnYDifVPfkORqv74biiTNcDT39Y
	xA4PeCR4qP1WNi27RJB08c++sS/Ukr9NAbEeB15zQafhQMHUo4dJkz8A5cazKExoqpEZ
	Vt05not2492x98oIcijfRlAdVsUBWAdGtp8bi9dTC3U8qujTAlaZkfCwWysZroJVTCSo
	ocHv29pIDOwWZ1Ph/e58aNKumQ7sf/C4KTyVqMZ1FJSEWJqw5Qp+atWKPuCOlgpNc887
	dBbA==
X-Gm-Message-State: APjAAAVfZH3N53lLYgDUmfbx1yAKZL8W4/dOryMl9tjoVWmcG+RGxznd
	w8UPFcMS5aIy5vuO+r/AcKU=
X-Google-Smtp-Source: APXvYqwnhoGvdA6G9YOs/VKpn+Q1612jgY+y3Runknz8IoQhvKnWJaaH7avsnp8s5NEaMVR4Q1uWXw==
X-Received: by 2002:a17:90a:a783:: with SMTP id
	f3mr1000328pjq.25.1571848134089; 
	Wed, 23 Oct 2019 09:28:54 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:d998:942e:6613:6ef4?
	([2601:202:4180:a5c0:d998:942e:6613:6ef4])
	by smtp.gmail.com with ESMTPSA id
	18sm27025066pfp.100.2019.10.23.09.28.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Oct 2019 09:28:53 -0700 (PDT)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <20191017211733.34EB81C0386@ubuntu1604-ty-1.yocto.io>
	<BN7PR11MB2721D442E4925D6788AC41E6C86C0@BN7PR11MB2721.namprd11.prod.outlook.com>
	<CY4PR11MB1879D36BFFD921ECB8929D57E36B0@CY4PR11MB1879.namprd11.prod.outlook.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <c67a3f69-55ab-79af-c26e-ff69aa44f4f1@gmail.com>
Date: Wed, 23 Oct 2019 09:28:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879D36BFFD921ECB8929D57E36B0@CY4PR11MB1879.namprd11.prod.outlook.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.4.rc2)
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
X-List-Received-Date: Wed, 23 Oct 2019 16:28:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Jain,

Thanks for the report.


On 10/23/19 1:00 AM, Jain, Sangeeta wrote:
> Hello all,
>
> This is the full report for 2.6.4 RC2: =20
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tr=
ee/?h=3Dintel-yocto-testresults
>
> =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
> No high milestone defects. =20
> No new defect found in this cycle.
> The stap test case failure on beaglebone still exists in this release (=
BUG id:13273).=20
>
> =3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13273

The fix for this is sitting in patchworks

https://patchwork.openembedded.org/patch/165649/

When I told Richard Thud was a go, I complete forgot about that change
not being merged.

- armin
>
> Thanks & Regards,
> Sangeeta Jain
>
>> -----Original Message-----
>> From: Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>
>> Sent: Friday, October 18, 2019 5:18 AM
>> To: yocto@yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Cha=
n,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
>> <chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>> akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
>> <sangeeta.jain@intel.com>
>> Subject: QA notification for completed autobuilder build (yocto-2.6.4.=
rc2)
>>
>>
>> A build flagged for QA (yocto-2.6.4.rc2) was completed on the autobuil=
der and is
>> available at:
>>
>>
>>    https://autobuilder.yocto.io/pub/releases/yocto-2.6.4.rc2
>>
>>
>> Build hash information:
>>
>> bitbake: 6b045e074c6fea97d4e305a5a3c8bf82135d95eb
>> meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
>> meta-intel: c200851435f39acd2fe4abbf7a05fbf617833964
>> meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
>> oecore: cd7cf933b3235560ec71576d8f3836dff736a39f
>> poky: 51f6145f8f99a02df1dad937684f014b0172e72a
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>



