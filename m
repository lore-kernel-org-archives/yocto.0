Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA0C6E00995; Sun, 19 Jul 2015 23:48:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [95.211.2.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2395 seconds by postgrey-1.32 at yocto-www;
	Sun, 19 Jul 2015 23:47:59 PDT
Received: from mx6-14.smtp.antispamcloud.com (mx6-14.smtp.antispamcloud.com
	[95.211.2.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CDB4E0096C
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 23:47:59 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx6.antispamcloud.com with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1ZH4F3-0004YX-NL
	for yocto@yoctoproject.org; Mon, 20 Jul 2015 08:08:01 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Mon, 20 Jul 2015 08:07:53 +0200
Message-ID: <55AC903C.7040509@topic.nl>
Date: Mon, 20 Jul 2015 08:07:56 +0200
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <55A79757.8010704@mlbassoc.com>
In-Reply-To: <55A79757.8010704@mlbassoc.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t0di
	2A4r9us+Fq8MBvFDhJgLx0LI1Amz+jk2QRc2dlvgowDmxnbdo5VjC78wUNKTcGbjO41FyBEqIaDu
	dcVplPEV5fdZbBgAYjRktFsnBOu68dy9p6gE/g99Plm2mIQhBQ00JYCpdDQoJU79BjIi5W2Z3JKV
	mi72ocgY5kMQSjs70ALn042Wb7mIcbVJi7pqphHamFlRvlxL+MzCKMvMkk78ZQ0AiyqMiTY+IYva
	kPBr0z6bhalFEM/pjPCQA+BAlkniC5++pOyFfhmFBNq2PYR7Zn6OGQcTLcl+10S2CCSFSbZLiIzq
	6RHISf0BeR/9lxlAbFwXFyuSr4goiWKeWbtWBb39uS1TjWG2Inx+Ts2Q85bpu8v0MLjfVaUXUvFy
	TEwEAmRywCEMPg5NNGTMxTzARyhSs4e+Ytun4y6JKMrt8M2oUrr42YKjVVGTpbenSXSOjCd5tjJG
	tAG9qTyK2srKWI8N0qcImQqSeb6nSlZ9mG5re5knRAISeKQWbUCrROjb5NA413zESMJef949r2h3
	KLwbXHjHpxz8VOWtxaqRRTlHFazPXt/x3tAgKOX3Wg==
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJXhXyDRoOQM5J3kcUr0HrMvJUWjZ8+qhjyB23tbDuyLOYL8Ff78gYsez
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
Subject: Re: Read-only file system with persistent storage
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
X-List-Received-Date: Mon, 20 Jul 2015 06:48:02 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 16-07-15 13:36, Gary Thomas wrote:
> I'd like to set up a system with a read-only root file system
> along with some persistent read-write storage.  What are the
> [best] options in Poky/Yocto for this?  Is there any support
> for some type of overlay file system?
>
> Thanks for any ideas/pointers

Depends. NOR or NAND flash?

with NOR, you can store a squashfs rootfs into it, and then use another=20
portion with jffs2 or ubifs for r/w capability. If you want to be able to=20
change 'everything', you can use an overlay fs, this requires some fiddling=
=20
with pivot_root and friends.

with NAND, you'd have to use a fault-tolerant filesystem to store the rootf=
s.=20
Dunno if it's possible to store a squashfs as a volume into ubi. The rest i=
s=20
similar to NOR.



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






