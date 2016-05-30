Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9533E00D09; Mon, 30 May 2016 17:27:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.251.71.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 61777 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 May 2016 17:27:29 PDT
Received: from mx26-01.smtp.antispamcloud.com (mx26-01.smtp.antispamcloud.com
	[148.251.71.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 629A1E00CEC
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 17:27:29 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx26.antispamcloud.com with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1b7HSN-0008HR-SR; Mon, 30 May 2016 09:17:51 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 30 May 2016 09:17:46 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8F90F944E50427428C60E12A34A309D24B6D12CAA4@carmd-exchmb01.sierrawireless.local>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <574BE91A.7030901@topic.nl>
Date: Mon, 30 May 2016 09:17:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <8F90F944E50427428C60E12A34A309D24B6D12CAA4@carmd-exchmb01.sierrawireless.local>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw2NKIplDr51gKKrAFT63aAZWShQ0+uJXiDSCp280tJFsvHP2GUz1mUiuXfrTI3OBzrAP
	5mA5e8VFn+Dg/gahqS31MuIaFB/X7VuSt5dZDA86Vevm82401rY+4FHZWLtwMqBYiRzPnraGRdlf
	kio92N0rs4X3WGxRqxWqpia9JO86PAlbDjazCbhs7qBpykynMlNQuAFF73arf+veNOXe+RVQ1GfL
	kOWleVrVr+45sSFCDw1VWO3/qzdOziyihV0+sigJZp+EGNF2ucOZkdt/1pmnSGtDOW/IeYce2Wq8
	Kn5PWpuDzmWIKo73PrltnLG4RVuDQEdKm65cTUbfWaDAny7D7RhMOrg7fR4O/NaYVInfUG32eB3p
	qPzNYkpEKukJvhtnh67vwc34ME4psYWcv54+9pnuKMgRCTUCiXjwWCmbywpVvspdLimNL0Q4FrQT
	VZnckpWaLvahyBjmQxBKOzsUHHvpiRYr8S/td9tdQdozJgpBtWNKbYAqwQOg0ZOxszUTBbSYd0Z0
	Q1kfpOeT2nzf5YynCdRsn5OMsRCkmnDOH4nquDtq1GIHlhY+a+nLE+idX4Ts4xdG+C13IyWeZaKG
	dZxKD39TLPLrS70neGG96CLuXYvqYQupG5k/pCqNCBohK7hPw14oEUT3v9O8hoIOINmDQK9laUd8
	TBRL0eiH
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Originating-IP: 88.159.208.100
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.06)
X-Recommended-Action: accept
Subject: Re: Is There a Package Limit to use of Smart / RPM?
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
X-List-Received-Date: Tue, 31 May 2016 00:27:33 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFWe've seen similar effects with IPK packages and opkg, but the pro=
blem then=20
isn't so much the package manager, but it's just that some packages don't=20
upgrade properly when bunched together with some others. For example, two=20
packages A and B which individually upgrade just fine, but if you try to=20
upgrade them both, something in their pre/post-install/remove actions messe=
s=20
things up and causes one or both of them to fail.

Also, things like upgrading network components while using ssh to start the=
=20
upgrade, or upgrading parts of the package manager can also cause strange=20
upgrade problems.

I doubt there's some magic "maximum number of packages" in any package mana=
ger.


On 28-05-16 21:16, Darcy Watkins wrote:
> Hi,
>
> In my project, we have exceeded 700 packages and have run into numerous i=
ssues
> using smart with rpm handling large transactions on the target (e.g. upda=
te
> from a non-PR service build to a PR-service build resulting in all RPMs b=
eing
> updated, though most are just version/release 'bumped' by the PR service)=
.
>
> Before I dig too deep, I figured I would see if anyone recognizes this
> signature as a known issue.
>
> 1.  Are there any hard coded limits to number of packages that can be han=
dled
> in a smart/rpm transaction?  (Particularly around 700)?
>
> 2.  Are there known issues related to when 'smart' updates itself and/or =
'rpm'?
>
> Daisy branch
>
> Layerscape (ARM) architecture
>
> Kernel 3.19 (yocto-linux + BSP patches)
>
> Installing on ext3 rootfs
>
> Building on CentOS7
>
> All appeared to work fine until recently when a bunch of added kernel mod=
ules
> and other firmware packages were added, which makes me wonder about a mag=
ic
> limit of 700.
>
> Thanks in advance for your insights.
>
>
>
> Regards,
>
> Darcy
>
> Darcy Watkins :: Staff Engineer, Firmware
>
> SIERRA WIRELESS
> Direct +1 604 233 7989 :: Fax +1 604 231 1109 :: Main +1 604 231 1100
> 13811 Wireless Way :: Richmond, BC Canada V6V 3A4
> [M1]
> dwatkins@sierrawireless.com :: www.sierrawireless.com ::
> www.inmotiontechnology.com
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
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






