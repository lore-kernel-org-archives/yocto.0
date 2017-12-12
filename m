Return-Path: <prvs=05197fe871=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FE38E00D03; Tue, 12 Dec 2017 05:26:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.165.232.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1659 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Dec 2017 05:26:12 PST
Received: from mx12-out5.antispamcloud.com (mx12-out5.antispamcloud.com
	[46.165.232.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEE0DE00CEF
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 05:26:12 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1eOk8k-0000tJ-IK
	for yocto@yoctoproject.org; Tue, 12 Dec 2017 13:58:32 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 12 Dec 2017 13:58:27 +0100
To: <yocto@yoctoproject.org>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
Date: Tue, 12 Dec 2017 13:58:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-AntiSpamCloud-Domain: topic.nl
X-AntiSpamCloud-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-AntiSpamCloud-Outgoing-Class: unsure
X-AntiSpamCloud-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
X-Filter-ID: EX5BVjFpneJeBchSMxfU5imvYJkwVPwJJuI+ewyEUrQXv9krsgRhBn0ayn6qsUc7w6SccWMDC+EB
	BTuK3o3KEyQlGLPaobytuzUKW+xz+P7knsgxO8QU5XhJXv6Xg0nrBMmyNbDn7R5kilAhwr3KtIuk
	b+536l3+pqAIhIa/zGXJ2IbOs1PpEthBRUy/wV+RvmOVq23tbQw2LZ3RX+IyZmptLDQVVEkr0fd3
	TM0QBRM62G/U67cKaa0HbaH2D8o8DZ7dAk4PIDlJHa9u6GsEq/Ke8s8utGHT8Q5pJWi2MVr7Evam
	8tYC7wyZQ4fzB8++QUwbiOFfV2Jvu+B3DrH1MxO3mU2z2ywUcjN7x2PlCANg9et9Fj8PSGjy/Yn8
	oAWNeQ26l+6g7IYTcpkQV1OwCLwqyT5p50x81ZKcmzCu2U325+uTFUuzvo8URmhDaMaDm2krverQ
	RYVy3aYXqZGE8/jHXabDECB8Ge2rA5iD/Uv1GXxLJFjVApPQIqy2JQrfHOhaDqil5cRRI+xFj+oA
	aa2tYl3CnIdPpOBhNFPr8dEWvMnx1+mLfQonsX6FaGpjrpQXAF/CEbfyvTJrNDLq4CiOtfKsJtTc
	Fd/j3b5mo/Tw6L+Rha4vSYxtpQn4lvqg0zzExxL5NoVI8mgIHlVDMHgJbFyUOzItj2jBqKA2zYwd
	R2pqSBkha+GyzfuUg0ZdofQ2vwh0WDCoPRLYWedbrWbjO41FyBEqIaDudcVplPFkPlJ6qSDW+aCQ
	chArcU2JTgWCa86y+gZU09fkvMjUtC30rbiheRb0a5mYj9Pl7r9IRfX5T90jmhx2+8Di+QhQ3jR5
	NeVaJQBh0uawl0Cg8sgK3Hz6uYkg1EcSzONQTDOJeknspp2QYhsLurZRnM70j9ygHhVolbJAfiYw
	jWOIY7HB7wpa5NZ74b9REdJZQ0k=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Subject: Re: recipe to clean up files from rootfs
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
X-List-Received-Date: Tue, 12 Dec 2017 13:26:14 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: nl
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 11-12-17 15:18, Sherif Omran wrote:
> i want to create a recipe to clean some files from the rootfile system, b=
ut i=20
> don't know how to let this recipe run the last one before building the=20
> rootfile system.

You can use ROOTFS_POSTPROCESS_COMMAND in your image recipe to do some=20
last-minute filesystem cleanup.

However, in most cases it's much better to determine what recipe puts the=20
files there and modify the recipe or remove the package. It would help a lo=
t=20
if you would reveal what files you want to remove and why.


Kind regards,

Mike Looijmans
System Expert

TOPIC Products
Materiaalweg 4, NL-5681 RJ Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail




