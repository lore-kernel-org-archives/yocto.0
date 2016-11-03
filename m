Return-Path: <prvs=0115253e18=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F957E00BB0; Thu,  3 Nov 2016 02:57:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.244.64.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx18-05.smtp.antispamcloud.com (mx18-05.smtp.antispamcloud.com
	[207.244.64.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DEADE00A64
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 02:57:35 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1c2Em1-0006vR-LE
	for yocto@yoctoproject.org; Thu, 03 Nov 2016 10:57:34 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 3 Nov 2016 10:57:27 +0100
To: <yocto@yoctoproject.org>
References: <CAEjjReLcovpDJoMi-AO8stp7CR5gEAe9K8xCCCUL6+v2=py6yQ@mail.gmail.com>
	<CAJTo0LZN5N5r58kn52yTgL32X+PF6RX4=Kr5ntdNHBQ0HucgwA@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <357f4773-a71c-4bd3-6f8b-55c3a23ba05e@topic.nl>
Date: Thu, 3 Nov 2016 10:57:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZN5N5r58kn52yTgL32X+PF6RX4=Kr5ntdNHBQ0HucgwA@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t6mx
	j3Zz/WM/IwRyPjIHIwD0pxSDbhnEK8meQ/S+RxYokvbnEHV/NA/2OtjgrNnB/zwJWw42swm4bO6g
	acpMpzKAsmN/Lb+FQ/HEaohPJy4sx1hqmEa9iilDbgon2SBEMwR1Cbr/gA0Hb9IMgtxSpQPVCZ1m
	y7qTGj+pYSPpnV3taEKYvM7FMBxCYVZUBGGA2ntmL1IOux+wiS7a7xut+NpifFDKEuqo+y7SM5LK
	mlqkSSzm7P5LFQTh7xAIEq/JANELms9PgUTO7N3X8VVCH5Tejl+klpcKS8WcpGJHUE5QmdySlZou
	9qHIGOZDEEo7O6ELVSrXu1Q3s0Dk1D5TiiVga8sJFDUhvJ7BMUbUKCRIMiPLyoQzvILSDO18VtgB
	XV1z/z4WnEoC8C13cWABWljMJUuewaNdgFhoy6E5hGQo6J1fhOzjF0b4LXcjJZ5lojEMqtzJ1njt
	3WX6t7gEp256Mn2LvZcHnl+qWjt8ZNLnihyMiH+f+SmwfmZ/JPSGbtlbWpw95PUjgvuRiAeCIlI=
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
Subject: Re: [sstate-cache] using sstate-cache in parallel builds
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
X-List-Received-Date: Thu, 03 Nov 2016 09:57:40 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 02-11-16 15:17, Burton, Ross wrote:
>
> On 2 November 2016 at 13:36, Chris Z. <winotu.email@gmail.com
> <mailto:winotu.email@gmail.com>> wrote:
>
>     Is it secure to use in parallel sstate-cache for building images for
>     different target machines ?
>
> Short answer: yes.
>
> The hashes will be different so there's no risk of conflicting files for =
the
> target, so it's only native recipes that may conflict.  The worst case
> situation here in two parallel builds is that they'll both build the same
> recipe and put it into sstate, there isn't any risk of corruption.

Could I take this one step further:

Would it be safe to store the sstate-cache for a bunch of builds into a sin=
gle=20
directory, with builds running in parallel contributing to that?

Each build would be using a different set of layers, different machines, an=
d=20
building different images, but there would be a lot of common things (usual=
ly=20
they all refer to the same OE branches).

We use a build server to share out sstate-cache for various builds, but as=
=20
projects are getting added, it's getting more complicated with projects usi=
ng=20
the sstate-caches of other projects. It would make things quite simple if a=
ll=20
builds just pointed to the same sstate-cache directory, so they could share=
=20
whatever they want.

Would that work? I'd think so, but never dared to actually make it so...


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






