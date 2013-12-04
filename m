Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72C85E007A0
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 02:38:12 -0800 (PST)
Received: by mail-ve0-f171.google.com with SMTP id pa12so11992778veb.30
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 02:38:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=Ka51MvGPhI5J2Q3Jz1rONp+QfAhaDz62IGmOOjc1vSc=;
	b=OUkkoZ9F/gNPMAE8YQCS55ysOopzuHseFL1DbaQs4rwIub/TShxhDw2DKqiQxZWig7
	kos95Fk1jgp8XXm7i8a6aSnu5gaCs4uji3ucJ9JH4hN4IH2Gv9PWf0iCYYoRo4us8qp6
	ptN9iDUF/1CDF6XgpszJZIwolKLcsjvraqmrdPZWrUILzjBqNocK5rlsKb0Ui9FnMlRv
	rnJsT93DG5rSzzRodFO6NImqVQpVN0uOohKqW3YfeVa8pM7XQma6Cf3jDOjQHnJfBrlf
	XkqN4bdHtlKHVxpZlutByXQE+UAo4htM5Lb3QOOB85F6SUw9RgAxNal3/UV/dogEryu/
	ZXeQ==
X-Gm-Message-State: ALoCoQmO1hVOHeuraWnP7zZCX9IDAFFLkl4POij4XfPxCQj1GJcKPKFXOKAE6r8RRz1LA/+ivAH4
MIME-Version: 1.0
X-Received: by 10.220.101.199 with SMTP id d7mr350272vco.42.1386153491045;
	Wed, 04 Dec 2013 02:38:11 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Wed, 4 Dec 2013 02:38:10 -0800 (PST)
Date: Wed, 4 Dec 2013 10:38:10 +0000
Message-ID: <CAPhnLPCq4XX=wgFpFwDDMuxKEqEh84mufUb8-fZ4agsEbOw8PQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: 1.6_M1.rc1 now available for testing.
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
X-List-Received-Date: Wed, 04 Dec 2013 10:38:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

The first release candidate for the first milestone of 1.6 is now available at:

http://autobuilder.yoctoproject.org/pub/releases/1.6_M1.rc1

Please begin testing.

meta-fsl-arm 7d3cb3b9be6e22673a21d555efedc48cc3ea19da
meta-fsl-ppc 768c6ef13546e0f977847bc1fbb5957571fbf724
meta-intel a649e92498d234f2d0d52f3da5a85bdc87296c23
meta-minnow 91cff9475081a5625c1c0bb49c17c6f3130ec503
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
poky c51730aaa91066cfb51ad6ec2920fb4f9d9ea94c
eclipse-poky-juno e8342d27db60a9d1b627ddb9f8ae2f5512bfc0c9
eclipse-poky-kepler 3dd620d9f89e297ee9e22d5ba9fe741a5f40ac82


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

