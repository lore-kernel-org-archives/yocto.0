Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95325E00994; Fri,  1 May 2015 14:11:37 -0700 (PDT)
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
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7506DE0098A
	for <yocto@yoctoproject.org>; Fri,  1 May 2015 14:11:31 -0700 (PDT)
Received: by pabtp1 with SMTP id tp1so101247795pab.2
	for <yocto@yoctoproject.org>; Fri, 01 May 2015 14:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=R0rhAqFLJZjS4WJdW5WzrMo1YMfu2xIiAlroWybWcxg=;
	b=bTGHjc8jLJA6fyx5YfGVIuGvyYv10fX2kh4tFyYbc4roa2JGlvA3iRDpRtBHimXRPS
	c3jYV2XJdKDCdh7aeFc/Rp3D3YY+LItq98LC49DP8AxAySB1Wio39QDEl2qejeiofbCa
	BpK2uJV2ixrWPIEzfe+MjAjMCu9CsCQSGfnodbO9YbKEADlN6MsqsY0lW1iOTJCcTKgF
	P+Ktp3IYGtQqCbT9lYQlnoeVRivbWyyZTLQsK6Y3XIBSiolHKe7URl0kwwJmX+DoxfbP
	1ziJJs/z0AjDeD9cS3nyMcmHxjcmRW+cxFg0lzPK1Hr4GEVBmMxLI0uO78PSIgj3KoaE
	+4wQ==
X-Received: by 10.66.119.71 with SMTP id ks7mr20623764pab.147.1430514691070;
	Fri, 01 May 2015 14:11:31 -0700 (PDT)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id ll2sm5698365pbc.11.2015.05.01.14.11.29
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 May 2015 14:11:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <55432FB0.4050204@widenorth.no>
Date: Fri, 1 May 2015 14:11:29 -0700
Message-Id: <B01F33FD-7B1F-4740-8568-293CAF7227A3@gmail.com>
References: <CAPTXVA0nh8rpnsbrHnWTqmOtvesE=VyczD6PjDMqHbuv+DBdkQ@mail.gmail.com>
	<6115291.3O8KzSeDpB@peggleto-mobl.ger.corp.intel.com>
	<55432FB0.4050204@widenorth.no>
To: christophe coutand <ccoutand@widenorth.no>
X-Mailer: Apple Mail (2.2098)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: How to add openmp to the target image
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
X-List-Received-Date: Fri, 01 May 2015 21:11:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On May 1, 2015, at 12:48 AM, christophe coutand =
<ccoutand@widenorth.no> wrote:
>=20
> Hi Paul,
>=20
> Thank you for your help.
>=20
> replacing
> IMAGE_INSTALL +=3D "libgomp libgomp-dev libgomp-staticdev"
> with
> IMAGE_INSTALL_append =3D " libgomp libgomp-dev libgomp-staticdev=E2=80=9D=



unless you are doing development on the device, you don=E2=80=99t need =
-dev and -staticdev packages to be there



