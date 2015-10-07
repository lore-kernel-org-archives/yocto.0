Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B30A7E00F32; Wed,  7 Oct 2015 05:28:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [95.211.2.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 19550 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Oct 2015 05:28:08 PDT
Received: from mx6-14.smtp.antispamcloud.com (mx6-14.smtp.antispamcloud.com
	[95.211.2.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC9B8E00B6F
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 05:28:08 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx6.antispamcloud.com with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1Zjijq-0005dp-HS
	for yocto@yoctoproject.org; Wed, 07 Oct 2015 09:02:16 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Wed, 7 Oct 2015 09:00:31 +0200
To: <yocto@yoctoproject.org>
References: <DB59870584238C45879465F0A2E5C3F17E16BB@IRVEXCHMB14.corp.ad.broadcom.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <5614C341.2090104@topic.nl>
Date: Wed, 7 Oct 2015 09:01:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <DB59870584238C45879465F0A2E5C3F17E16BB@IRVEXCHMB14.corp.ad.broadcom.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t0di
	2A4r9us+Fq8MBvFDhJgZTSkrk1vENBCFqpj7Mq3eVx+pICt/gViUP6xZbFTtUGbjO41FyBEqIaDu
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
Subject: Re: tmp on NFS
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
X-List-Received-Date: Wed, 07 Oct 2015 12:28:11 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFI can think of various things that would go wrong with tmp on NFS.=
 One of the=20
most obvious example would be to try and change the network configuration=20
while running, and needing some temporary file to manage that.\

I think the expectation is that /tmp should be accessible at all times, and=
=20
that it's local and (at least somewhat) volatile.

I tend to mount /tmp/ in RAM on all systems. Even my desktop. Not having to=
 do=20
wait for a device IO queue when performing actions in /tmp/ can greatly=20
improve the responsiveness of the system.

If your application's /tmp/ storage requirements are such that they don't f=
it=20
in RAM, I don't think /tmp/ is the place where they should be stored.



On 07-10-15 03:37, Luke (Lucas) Starrett wrote:
> Hi,
>
> Can anybody give a brief history of time on why using an NFS drive for tm=
p is
> necessarily a bad thing, and why we have a sanity check for it?  We=E2=80=
=99re doing
> this without any obvious side effects.
>
> I=E2=80=99m aware of the checks added by changes like this:
>
> patchwork.openembedded.org/patch/61107/
>
> However, I don=E2=80=99t see the reasoning/background documented as to ex=
actly what is
> actually broken when putting tmp on NFS.  Is it time skew, problems with
> concurrent file access, something else?
>
> Thanks,
>
> Luke
>
>
>



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






