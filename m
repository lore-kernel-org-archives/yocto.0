Return-Path: <baker@usgs.gov>
Received: from smtp1.doi.gov (SMTP1.doi.gov [137.227.82.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CF6DE003FB
	for <yocto@yoctoproject.org>; Sat, 31 Aug 2013 00:16:24 -0700 (PDT)
Received: from smtp4.smgd.doi.gov (10.10.82.14) by smtp1.doi.gov (10.10.82.21)
	with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Sat, 31 Aug 2013 01:16:23 -0600
X-AuditID: 89e35218-b7f716d000003f2d-bd-52219844d8af
Received: from gsmtp2.doi.gov ( [10.10.82.16])	(using TLS with cipher
	AES128-SHA (128/128 bits))	(Client did not present a certificate)	by
	smtp4.smgd.doi.gov (Hello) with SMTP id CC.27.16173.44891225;
	Sat, 31 Aug 2013 01:16:20 -0600 (MDT)
Received: from mail-pd0-f170.google.com (209.85.192.170) by gsmtp2.doi.gov
	(137.227.82.16) with Microsoft SMTP Server (TLS) id 14.2.318.4;
	Sat, 31 Aug 2013 01:16:19 -0600
Received: by mail-pd0-f170.google.com with SMTP id x10so2746377pdj.1
	for <yocto@yoctoproject.org>; Sat, 31 Aug 2013 00:16:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:content-transfer-encoding
	:subject:date:message-id:cc:to:mime-version;
	bh=ms5+1C75bVflyo4PE/sXVrh2OLyqixe7bN38AceWEp0=;
	b=Q6KCCissaBMFhToBrY3SNDVFf2vfMnQtPm3uRhlD135mkR7dC+T+ccLlx64a8lmMD8
	oGp86tIyopL5tBJn7Vqf3ybRRynltwDtsRZkj5u783fFbnSNAd8l9aytqFBIxkwESZvk
	wBl0tt5Y+l0WHatgzB/7xOHSYnWWlV1MFJ5PO/QYr5lqIY4vxiipl2yVD3/w9w9pnKrZ
	4LDCHwgfsK+1WfzrVh489yHc5IGp4h39CXNbCULjLNTl7YhxKVBmix6Ae4G5//9S1Xs7
	qSqAppY1M5InCQLQ5lzA8o6wGXs6PVnNioKEE1FFUTRdpyV0RtDIoCQYMvohccp5qYvB
	EzJA==
X-Gm-Message-State: ALoCoQktbtxspwbZJ/jnIkiu1LDFB8SQmz06khT18TJqAqJoTGiYfZpqUyHAaoVgVDT6sNwgRf6qw1lSdSjHIzhQ2mq5qU2dOCNvjtqKXzEF4+jzgO5+FDloODnYckgKm7xFD40dgOzqtEKee3PFdBe1fJr/7+4hZr2W5FFy+gSKwY/Q6QAjGGHV+YGOJOuzgSE21Nsv6kGNKexGeKJ1rwvGafEMOIg3RA==
X-Received: by 10.68.220.1 with SMTP id ps1mr14212071pbc.30.1377933379104;
	Sat, 31 Aug 2013 00:16:19 -0700 (PDT)
X-Received: by 10.68.220.1 with SMTP id ps1mr14212046pbc.30.1377933378792;
	Sat, 31 Aug 2013 00:16:18 -0700 (PDT)
Received: from [192.168.1.112] (adsl-71-135-44-131.dsl.pltn13.pacbell.net.
	[71.135.44.131])        by mx.google.com with ESMTPSA id
	nv6sm2417105pbc.6.1969.12.31.16.00.00        (version=TLSv1
	cipher=ECDHE-RSA-RC4-SHA bits=128/128); Sat, 31 Aug 2013 00:16:18
	-0700 (PDT)
From: Larry Baker <baker@usgs.gov>
Date: Sat, 31 Aug 2013 00:16:16 -0700
Message-ID: <64A67EA8-DDE1-4860-BB09-8596DB7996B7@usgs.gov>
To: <yocto@yoctoproject.org>
MIME-Version: 1.0 (Apple Message framework v1085)
X-Mailer: Apple Mail (2.1085)
X-Gm-Spam: 0
Received-SPF: Pass (gSMTP2.doi.gov: domain of baker@usgs.gov designates
	209.85.192.170 as permitted sender) receiver=gSMTP2.doi.gov;
	client-ip=209.85.192.170; helo=mail-pd0-f170.google.com;
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphkeLIzCtJLcpLzFFi42LhYvr1TtdlhmKQwcVJUhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVsWhNE3PBJqaKN++/sTcw/mbsYuTkkBAwkTg44wEThC0mceHe
	erYuRi4OIYEvjBJLm2ezgSSEBNYxSuw9YA+RmMgocf/aRRYQR0JgG6vEh8+ToJwfjBJP33dB
	zaqUeHKohxXGvr9kPgvEKFmJhc/PQdlzmCRmHowHsdkElCSeT1kM1sssoCOxYPcnNghbW2LZ
	wtfMILawgKrElBOzwGpYgOynN5+CzeEVsJZY2b8U7AhmgSWMEosPfAV7TkRARuL41dlQRYYS
	E/4chjpOVmLnndMsEDaPxJS5F9khfjvIKLH29XI2iISkxMEVN1gmMErMQnLULCRHzUIydwEj
	8ypGoeLckgITveLc9BS9lPxMvfT8sk2MwDjqfBwksYPx1y7LQ4wCHIxKPLw/7ysECbEmlhVX
	5h5ilOBgVhLhTTJRDBLiTUmsrEotyo8vKs1JLT7EKM3BoiTOe9V/dqCQQHpiSWp2ampBahFM
	lomDU6qBMWRKUk4T74vb6hsuN4nUrRSu075RrpbqEbpEe+mbis8HQzUT1HYtPaiyRk7zf7Gj
	k8RFhzlym78+SlkpGXq/4cd653V1Xataqg9H8KWFXP0qwL59pUXXnQ7/g99O65vlipbOU3V7
	7vkjhaFPLGddwv8S50P3AsX4Z5zo23tO3+FagY/TzY2NSizFGYmGWsxFxYkAcd7Oip8CAAA=
Cc: mvalleavila@gmail.com, dtran11@gmail.com, paul.eggleton@linux.intel.com,
	vidal.develone@gmail.com
Subject: gcc enable-languages
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
X-List-Received-Date: Sat, 31 Aug 2013 07:16:25 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

See core-fortran.patch, "Fixes to build a gfortran cross compiler and =
the gfortran runtime libraries", which is an attachment at =
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5091.  My bbappend =
files are there too.

Larry Baker
US Geological Survey
650-329-5608
baker@usgs.gov





