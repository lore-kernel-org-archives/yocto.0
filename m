Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A98A7E009A7
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 23:11:58 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id ld13so8572843vcb.33
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 23:11:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=D2MKNVYWLyEEXurU9VSHfO7alTnfGof7kXl3vg5W0TY=;
	b=TbP1HgI1NdKJAgyTVQmBxDeghjvQlyArZMHllTp3wMFnEJowpJ3yjQQn4bLnWlqsfQ
	Vl4yS46rme5qEkzFg+xWx2gVeD11niev+xOocR76Ph7hbunPEAhJrkCsRyBNZ17/jqsO
	9oWMaJWZ9fpj0Pa+Cz+sVOnvPKgGI/5EQMFQtnS0F9eACDz6IwZcSxqrOLiplaYWg0k5
	/6lTQL8W96Q8TPhwYZ7q2O+vsr1EnH6bit5NovqFTvFQ+rWDBT3rrP/+M7CnN6CyqP4X
	HPJDWJh5BlFijfAeMJAZK6PqSzwviBdR6NuQLcIcbL5D7II66lwLmGeVv/HEbKLP9vQg
	cjqQ==
X-Gm-Message-State: ALoCoQkpt/v2Evjz+qYHrNvjzemoQ72H/IH6DnFuqws68+52ocN0i9rVCNZ+IvNA+P0JIoOXbGtp
MIME-Version: 1.0
X-Received: by 10.58.57.42 with SMTP id f10mr28603311veq.1.1395209515281; Tue,
	18 Mar 2014 23:11:55 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Tue, 18 Mar 2014 23:11:55 -0700 (PDT)
Date: Tue, 18 Mar 2014 23:11:55 -0700
Message-ID: <CAPhnLPCV+R6nJQg_F-LvUwXHDFndLe6t=+v+ThaUWSTZNMQmzg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.4.3_rc4 now avaialbe for testing.
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
X-List-Received-Date: Wed, 19 Mar 2014 06:11:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

The fourth release candidate for 1.4.3 is now available at:

http://autobuilder.yoctoproject.org/pub/nightly/20140318-5

Please begin QA on it as soon as possible.

bitbake 66d01338ab1095775b854ad7509f4d2631c6e6ed
eclipse-poky-juno dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7
meta-fsl-arm 24caed8ff6f6088033d00d4567f7a7cad7fd5dd3
meta-fsl-ppc e4876c9193fc92a3978fcd7dd4858b86c3da5af5
meta-intel 6ea7c0f0af5ad20bffba3cf21b17da892e842f82
meta-minnow d5849d5ea14bc9b34ddd05b92c3a7ea46bd1863a
meta-qt3 4c27cce6688aa39852f3cba5e7b80ec279019605
oecore 30d3f06fddea2d8f3537d3415c95d75a6487078c
poky c397b69e681d5f1ffe0a0bfd9d43ee880fc27553

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

