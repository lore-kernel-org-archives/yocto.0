Return-Path: <prvs=01809d03fe=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B68FE00A08; Sat,  7 Jan 2017 01:23:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.112.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx5-04.smtp.antispamcloud.com (mx5-04.smtp.antispamcloud.com
	[95.211.112.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0976E007EB
	for <yocto@yoctoproject.org>; Sat,  7 Jan 2017 01:23:54 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx5.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1cPnE7-0005rp-C0
	for yocto@yoctoproject.org; Sat, 07 Jan 2017 10:23:53 +0100
Received: from [192.168.1.16] (85.150.144.104) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Sat, 7 Jan 2017 10:23:50 +0100
To: <yocto@yoctoproject.org>
References: <10cd01d26822$55003760$ff00a620$@ln-systems.com>
	<1783218.8DiePDOEFx@rjs-zotac.streifs.net>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <5870B3A6.1060205@topic.nl>
Date: Sat, 7 Jan 2017 10:23:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <1783218.8DiePDOEFx@rjs-zotac.streifs.net>
X-Originating-IP: [85.150.144.104]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.12)
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W/95+6ZE6dI+d
	FNTaLLKrTD4PkK8WOoKuw32u9iEtZmisSr42qUwvK7U11fJ5smF5bE7GwnNXTE7JFCR1ojdwNKgy
	OXKHZj0f69yN+UVdF0hvphvsDI6jyqlVqquIyTqRBVYZuAZ3vJYIEwkRHz+ClmbjO41FyBEqIaDu
	dcVplPGNaieKxw/vh63RdlaW2Zj1hcQD6Dxo9kokFZNwiacNPxeTCKssqlJePCDBHWfCYUvWOATT
	vnG+QUCcfrSs6FZc7tZ3vKwSN7Mv0HNteAusUZ8BuYwGqmI8Tx/Ism0pnCcmlWACu0WC7nIKSPYV
	aBAAdpU0oUDqng6Dyy2mQeofiSiV5394BqBtjfBqT0vzc/91el35jO+WJBgrWGjAavfuifnL+9wg
	oTj4ygNPw1XfN1IUJ2+rCMPpQhII5VkEVC//8GRISD+lYCwA5l6/Q4nfg8y63jKKBrO1BroJmvb9
	eS8/gEZbIQzNpzl9FXiGPzJpwWXpE+sdjNmnXWjiNaLzU4EFnW2XgX+M1ZN6UZmlFVODLzPsd/iT
	v744WiqgNunTiEw2ui8TVPldBCj8jBATWTBGqdJt0f5T8QbPnFgP6qI5l+bukEPAN7a+1bvsjncm
	QHSZWNrRnvlwpWmUbgAFTGNEHIeqEJHEXRcDdYgtoPFSqLjY6w6DP6U9VKa5TZ6Gs9HjdrlYbXkZ
	KU5GQmOJ6T38BJSNojNDpUW6fi2LXzWVOsP7lcJzh+EAmDYIbXSi1FDPlOxQI3wIkDeNX6949jih
	x+Za/cV70jOJzN2r4A==
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
X-Recommended-Action: accept
Subject: Re: Adding to inittab based on image content
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
X-List-Received-Date: Sat, 07 Jan 2017 09:23:58 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 06-01-17 18:17, Rudolf J Streif wrote:
> Hi Colin,
>
> The correct way of doing this is a package postinstallation script that i=
s run
> by the package manager after the package containing your application is
> installed on the target system.
>
> You add to your recipe:
>
> pkg_postinst_${PN}() {
> #!/bin/sh
> echo "whateveryouneed" >> ${D}/etc/inittab
> }

Problems are that if you upgrade the application on target, it'll be=20
included twice, and that when you remove the application, the inittab=20
entry remains. If inittab itsef gets upgraded, the entry will be gone.


>
> The build system will include this as the post install script into the pa=
ckage
> in the correct form for the package manager you are using e.g. RPM, DEB, =
IPK.
>
> This will work when the build system installs your package into the syste=
m
> root or when executed on the target.
>
> You can also distinguish the two cases:
>
> pkg_postinst_${PN}() {
> #!/bin/sh
> if [ x"$D" =3D "x" ] ; then
>     # shell commands for target execution
> else
>     # shell commands for build system execution
> fi
> }
>
> In the case of target execution $D is not set.
>
> Best regards,
> Rudi
>
>
> On Friday, January 6, 2017 1:39:40 PM PST colin.helliwell@ln-systems.com
> wrote:
>> Hi,
>>
>> I have a custom recipe for an application, and the app also needs an ent=
ry
>> adding to inittab. I'd like to trigger this, obviously, only when the ap=
p is
>> included in the image.
>>
>> I came across some hints at how to do this -
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/tree/recip=
es-c
>> ore/sysvinit/sysvinit-inittab_2.88dsf.bbappend?h=3Ddizzy - but the app i=
sn't
>> in DISTRO_FEATURES. (Right or wrong.., I include it in the image with a
>> "CORE_IMAGE_EXTRA_INSTALL +=3D" in my image recipe).
>>
>> Any suggestions on how to make this inittab addition conditional?
>>
>> Thanks
>
>
>
>


--=20
Mike Looijmans


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






