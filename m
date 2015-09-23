Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1233AE00DE5; Wed, 23 Sep 2015 01:17:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.165.232.184 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3388 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Sep 2015 01:17:12 PDT
Received: from mx12-14.smtp.antispamcloud.com (mx12-14.smtp.antispamcloud.com
	[46.165.232.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0670E0076A
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 01:17:12 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx12.antispamcloud.com with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1ZeeM0-0002ft-Sv
	for yocto@yoctoproject.org; Wed, 23 Sep 2015 09:20:41 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Wed, 23 Sep 2015 09:19:54 +0200
To: <yocto@yoctoproject.org>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD>
	<CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com>
	<3DB96F2F9D444EFE931CA8443BAFBACE@PAULD>
	<CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
	<1442946736651.15866@seescan.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <560252C3.80207@topic.nl>
Date: Wed, 23 Sep 2015 09:20:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1442946736651.15866@seescan.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t0di
	2A4r9us+Fq8MBvFDhJgKfqZbW/75LCi3G0ymnSdzpiigmRopPcaelV+RpJ7ivmbjO41FyBEqIaDu
	dcVplPEV5fdZbBgAYjRktFsnBOu68dy9p6gE/g99Plm2mIQhBQ00JYCpdDQoJU79BjIi5W2Z3JKV
	mi72ocgY5kMQSjs70ALn042Wb7mIcbVJi7pqphHamFlRvlxL+MzCKMvMkk78ZQ0AiyqMiTY+IYva
	kPBr0z6bhalFEM/pjPCQA+BAlkniC5++pOyFfhmFBNq2PYR7Zn6OGQcTLcl+10S2CCSFSbZLiIzq
	6RHISf0BeR/9lxlAbFwXFyuSr4goiWKeWbtWBb39uS1TjWG2Inx+Ts2Q85bpu8v0MLjfVaUXUvFy
	TEwEAmRywCEMPg5NNGTMxTwq5H2HisnUiFGNBznFCJKEejk40iyx8hQPmbkJabHvUAAjMhPl4Vhd
	NvMNOfYY5VjTiEw2ui8TVPldBCj8jBAT9EIYxHyidUrHJfz9kNKga+jb5NA413zESMJef949r2h3
	KLwbXHjHpxz8VOWtxaqRRTlHFazPXt/x3tAgKOX3Wg==
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJUb3OPwsHaH0Fvg5oXltHd/JUWjZ8+qhjyB23tbDuyLOYL8Ff78gYsez
	4Rl08xudmXi4esCQ0R1MchVjt7wblGlvhFgW0MjUMRkF5sMCDfftTXNFDzN17hnrWeZYOJvLq0Ic
	WjZ+XcEjj/7Pkld0zkmvziDInX9WdMov2kn2yXjdwv61T+KDYyYtREgszdyFwv8IxCB3p/oCKvxr
	eyISh3JGb7OS5oVgiO+kDxZrVPLz3MmEGC2PrUKqLq5WmHK+Nw==
X-Originating-IP: 88.159.208.100
X-Spampanel-Domain: topic.nl
X-Spampanel-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-Spampanel-Outgoing-Class: ham
X-Spampanel-Outgoing-Evidence: Combined (0.00)
X-Recommended-Action: accept
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Wed, 23 Sep 2015 08:17:17 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 22-09-15 20:33, Fred Ollinger wrote:
...
> SUBSYSTEM=3D=3D"block", ACTION=3D=3D"remove" RUN+=3D"/etc/udev/scripts/mo=
unt.sh"

This only serves to remove a mounted directory after "yanking" the device. =
It=20
doesn't really do anything useful though, you'll still get corrupted=20
filesystems, because Linux is way too lazy in writing out dirty data.

Proper solution would be to have the system mount a removable device as=20
read-only, and promote it to r/w once someone tries to write to it. And the=
n=20
after a timeout, it should go back to readonly.

Supposedly, "autofs" can accomplish this, but I've never met anyone who got=
=20
that to actually work.



Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
Telefax: +31 (0) 499 33 69 70
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






