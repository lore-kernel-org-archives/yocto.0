Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03F0DE00D1E; Mon, 25 Sep 2017 17:17:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BFF2E00D1B
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 17:17:52 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id b70so4657262pfl.8
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 17:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=to:from:subject:organization:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=d0wOAq+J2H3WTvxZlkS/sbsHA6sv6uCLPnUGPFXcSTQ=;
	b=hSaUYvWP7Hm6HC1ezJdxMKF17jIwQveOnora0sIgSwS7cP83O8xSrsM/mvfs5v4hpd
	FP1Lm2RPaJX8j9z0+OxOEwGQMN4G4mn33PWHtz7eXA17cHhua7Vnq4Daf8rC5JHw4xBj
	V7C+wt3tLnjSc25qV8DWjyXE526BfG/5motzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:organization:message-id:date
	:user-agent:mime-version:content-language:content-transfer-encoding;
	bh=d0wOAq+J2H3WTvxZlkS/sbsHA6sv6uCLPnUGPFXcSTQ=;
	b=VwgL7j5vwvAvdwhhoUF1Fy3vR37u8m6L2y+r5GfblZnxbIu59DUV0ctxG/v6VaL2Rz
	HH9sUGzLnf7p8OFrCSPQ6nOEpBiLb2CZSyzzQt93rKUMSHt7RD6kfAR2nZKVb6zFzHGD
	NX/J8vZEBYRkJYWLGBG4wFrTuYDinDyojg8P3h3KOpGY1o88HrJWt0+9oyCw0WTA5RC9
	7+tJ5ptUEIyNsrXFt8c/6iaO6fKs0GpuFX2kFD177XbzDjA1vJq0oKMmPo8sRlyyr2C1
	UmpEiwGJ8MCCoUKdvnpwoexmA0CqU7E2mn7aEXAHL7VHSk5gS1UOFF8UGxMG19j0wTz5
	i6KQ==
X-Gm-Message-State: AHPjjUio9yXFEkB1B53biwbPj0kYV1ixQN5RYuE7fJwcizAHjf2fMWIk
	itmVwilCfbJDPC58JXDTk6H3fAGCDCQ=
X-Google-Smtp-Source: AOwi7QD5lKEsGFXuMFZ9kfu6miSXWVVxNhBwAMLh1xq/t66QfgwGeRMCGkIjGADeV4s+D4zh2jQ5DQ==
X-Received: by 10.99.123.4 with SMTP id w4mr9613243pgc.307.1506385071195;
	Mon, 25 Sep 2017 17:17:51 -0700 (PDT)
Received: from yct-lpt.lan (50-39-175-47.bvtn.or.frontiernet.net.
	[50.39.175.47]) by smtp.gmail.com with ESMTPSA id
	184sm12315226pfg.18.2017.09.25.17.17.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Sep 2017 17:17:50 -0700 (PDT)
To: yocto-infrastructure@yoctoproject.org, yocto@yoctoproject.org
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <b38b99b3-9090-a99c-06c1-396ce3baab26@linuxfoundation.org>
Date: Mon, 25 Sep 2017 17:17:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: [infra] git domain name updates
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
X-List-Received-Date: Tue, 26 Sep 2017 00:17:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hello,

As Yocto Project continues to grow load on our git server does as
well. We are going to make a few changes to our git infrastructure to
allow for more growth.

All read-only git operations should point at git.yoctoproject.org. For
example poky can be cloned from the following URLs:

git://git.yoctoproject.org/poky
https://git.yoctoproject.org/git/poky

If you have repositories pointed at www.yoctoproject.org,
git.pokylinux.org, or any other domain name please update their remotes
to git.yoctoproject.org.

Read-write operations via ssh will use a new domain specifically for
that purpose. I've added push.yoctoproject.org and ra.yoctoproject.org
(like ra.kernel.org).

Read-write URLs should be updated to the new domain names. I've
changed mine like so:


git remote set-url origin ssh://git@push.yoctoproject.org/poky-contrib


This is all ready to go right now. Please update your remotes.

We will have to make these changes required before we can start to get
performance benefits from them. I suggest November 1st 2017 but I need
more feedback before we can set a cut off date.

Thank you,

- --
Michael Halstead
Yocto Project / SysAdmin
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzowQ2UYmQerfiW8/amSWNbpCWpUFAlnJnKsACgkQamSWNbpC
WpVwphAAkRfTKy64rClsiB2lijbi2Z7o/NJIEbkDgbYf92aeAAJw4KQHLMxbrOS+
lZi6MtUSEGtFGdcxqOZ3RCNagfjA9peiDpcxf0A/Jnax02yQz5njHQco12n7IuYl
Q92CW2wMWfqVHJ+0NZe2THb72OUd6cepjHOeNBUb4L3TFOK6NAc63zaFD24vXqq0
VAx+x3s8DPIyzttS7s3lA1IXlLS1S3jGdhLM/0G0E48QJM3Y/I3ntUJ3G02mVMYc
wJ1a8E1/YTTgcL0Xwioa+EoGXeuAPmbrirlp+e9QXwBzYw/2EjNTt3stEpGCK+xK
Pf7+TNGgky/OMzX9pr51jHl1XwgtZJzmumyyIDA3UewVxxvkkOwsFjICN0keWM3W
GGlkOn+Sn+V7Nnw5MVchX9cexojgebgbaDuyFmlpr+nXin9YKO7ELPnOaENTQouk
lq72nvlfllHDGa0yx6ZbhP/UV5E03Q0g+aDLvoYvY+HWFZGyMFP5cyumEI4H2puQ
mqTjg9aWE3NExA5/gseihxjW/UvGhApfkV5OWXcxv03FmCfLIGNBKdFYJYTtC4gm
WUGZbV8yyw13/F0gwPe/538BEsL+4oJxhk4AqNtGYjbb3m0XpjIxVP/Gbf7WASJi
2r3NDP8SE0ehQE79gqxQIX07+s1smCPJ3EkHvvKY/Bk8QCa2iBg=
=TfzM
-----END PGP SIGNATURE-----

