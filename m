Return-Path: <prvs=01216f048e=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85FC9E00997; Wed,  9 Nov 2016 06:07:51 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2BF4E0083E
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2016 06:07:48 -0800 (PST)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1c4TXR-00033V-6V
	for yocto@yoctoproject.org; Wed, 09 Nov 2016 15:07:46 +0100
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 9 Nov 2016 15:07:38 +0100
To: <yocto@yoctoproject.org>
References: <f9a57cb411c94c0c8f191bad3d391b35@SI-MBX1022.de.bosch.com>
	<56D865D5.2010702@windriver.com>
	<CAGMdoFkRJbK=YXzm2GDxEd-oLh2hWh+OHNQ9RoOgvB6Dwm2DYA@mail.gmail.com>
	<CAEjjReLCNOKCq5dawyvbFyH=M5B1eot36SLuwCXMFJ1r_o-fUg@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <4eb0e4b5-9e11-114a-66c4-77e5449aeb12@topic.nl>
Date: Wed, 9 Nov 2016 15:07:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CAEjjReLCNOKCq5dawyvbFyH=M5B1eot36SLuwCXMFJ1r_o-fUg@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw8AABa0l71MJhTGCVSA9t5V02KbWfB+BvCLafvmmGbn9dUv6vb7lzwh4VvH3mLi3t6mx
	j3Zz/WM/IwRyPjIHIwDfpzDHGjpAc4THPNcVEpsLYOyRdMEohLJe3aNLB9hxPTwJWw42swm4bO6g
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
X-SpamExperts-Outgoing-Evidence: Combined (0.26)
X-Recommended-Action: accept
Subject: Re: How to handle meta-intel/openembedded repos with multiple developers
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
X-List-Received-Date: Wed, 09 Nov 2016 14:07:51 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFGit submodules work fine for this.

In general, for each project I create a top-level repo that has the OE repo=
s=20
as submodule. The project repo also contains the project-specific recipes.


On 07-11-16 20:31, Chris Z. wrote:
> Hi,
>
> How you store your project configuration ? How you prepare workspace (dow=
nload
> each layer separately)?
> Basic stuff, SW release should be reproducible (in easy way). Store somew=
here
> used hash of each piece or use tags. Non company assets should be already
> somehow tagged or you use HEAD or master/-next ?
>
> Br,
> Chris Z
>
> On Thu, Oct 27, 2016 at 8:22 AM, Edward Wingate <edwingate8@gmail.com
> <mailto:edwingate8@gmail.com>> wrote:
>
>     On Thu, Mar 3, 2016 at 8:27 AM, Mark Hatle <mark.hatle@windriver.com
>     <mailto:mark.hatle@windriver.com>> wrote:
>     >  At some point during product development a lead/architect needs to=
 make the
>     > decision to 'freeze' development and at that point everything is
>     tagged/branched
>     > and only backports are used from them on.  (If the number of backpo=
rts
>     gets too
>     > large, you MIGHT decide to selectively rebase.)
>
>     I'm currently trying to figure out with how to control external layer=
s
>     in my Yocto build and found this thread.  I'm a little unclear on how
>     to track a release to the version used on non-company layers.  Say I'=
m
>     using poky, meta-openembedded, meta-xilinx and then my own layer,
>     meta-me. When I freeze development and do a release, I can tag
>     meta-me, but because I also treat non-company assets as RO, I
>     shouldn't tag poky, meta-openembedded nor meta-xilinx (or should I? I=
s
>     this where I use git's lightweight tagging as opposed to annotated
>     tags?) When "everything is tagged/branched", does that somehow includ=
e
>     tagging the non-company assets?  Thanks for any help.
>
>     Ed
>     --
>    =20

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





_______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>


