Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC632E00B1A; Thu, 27 Aug 2015 07:14:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [95.211.2.226 listed in list.dnswl.org]
X-Greylist: delayed 1212 seconds by postgrey-1.32 at yocto-www;
	Thu, 27 Aug 2015 07:14:19 PDT
Received: from mx6-14.smtp.antispamcloud.com (mx6-14.smtp.antispamcloud.com
	[95.211.2.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 751ABE005A2
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 07:14:19 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx6.antispamcloud.com with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1ZUxcq-00041S-Ml
	for yocto@yoctoproject.org; Thu, 27 Aug 2015 15:54:03 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Thu, 27 Aug 2015 15:53:28 +0200
Message-ID: <55DF1671.8010207@topic.nl>
Date: Thu, 27 Aug 2015 15:53:53 +0200
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
In-Reply-To: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t0di
	2A4r9us+Fq8MBvFDhJgiI5hfJ3WzU7L2dVNd9Fy0/aWyhsHWS7o3UbvHAJVRQ2bjO41FyBEqIaDu
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
Subject: Re: How to disable OVERRIDES temperally
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
X-List-Received-Date: Thu, 27 Aug 2015 14:14:22 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 27-08-15 13:40, Qiang Yu wrote:
> Hi all,
>
> I want to load kernel module ci_hdrc_imx at boot time and add a conf file=
 in
> /etc/modprobe.d. I find it can be done by add
> module_conf_ci_hdrc_imx =3D "my configure"
>
> But the suffix "imx" is in OVERRIDES, so I get
> module_conf_ci_hdrc =3D "my configure"
>
> How to disable the OVERRIDES temperally here? Or may be there is another
> way?

This might work (untested):

MY_HDRC_MODULE_NAME =3D "conf_ci_hdrc"
module_${MY_HDRC_MODULE_NAME} =3D "my configure"




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






