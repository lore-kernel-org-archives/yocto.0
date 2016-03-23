Return-Path: <mbgrego@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A42CBE00AD8; Wed, 23 Mar 2016 06:58:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RDNS_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 913 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Mar 2016 06:58:05 PDT
Received: from emvm-gh1-uea09.nsa.gov (unknown [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16975E009D7
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 06:58:05 -0700 (PDT)
X-TM-IMSS-Message-ID: <12ac13ef0000708a@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	12ac13ef0000708a ; Wed, 23 Mar 2016 09:46:55 -0400
Received: from moss-wolfpack.infosec.tycho.ncsc.mil (moss-wolfpack
	[192.168.25.76])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id u2NDgmF6008224; 
	Wed, 23 Mar 2016 09:42:49 -0400
To: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <d5ba2b9811994d2dbfe58a1e46e7721a@SI-MBX1022.de.bosch.com>
From: "M. Gregory" <mbgrego@tycho.nsa.gov>
Message-ID: <56F29CC0.3050006@tycho.nsa.gov>
Date: Wed, 23 Mar 2016 09:40:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <d5ba2b9811994d2dbfe58a1e46e7721a@SI-MBX1022.de.bosch.com>
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1571-6.5.0.1024-16972.004
X-TM-AS-Result: No--3.275-7.0-31-10
X-imss-scan-details: No--3.275-7.0-31-10
X-TMASE-MatchedRID: QfHZjzml1E+YLyCLOSg+wya1MaKuob8Pt3aeg7g/usDkMnUVL5d0E6ZE
	Tt/s5jFSVqi2pSyuUC2qD8Jw4wYqMi0kxsNYPyneqxsSQa9fWKe4lBi4DSFJu1j/amLs8rQSEXF
	HklABLo5fLyNmlSKbmWRT/6s0+hMliwjsyrTVNP7Rc75iroKqAjpd9sHVoyNe3M5CjuZOAD6wB/
	VzbIDhLEXyUzljLsTnL9KWhiY58nS7JfBr9Xl5ClCi/xDHcDzfFk73i4rVVIEaSBIWXJYAugX2Q
	VMzXe2Dqgmc6kFdwjAEVzfzIiIfQCBMJ1RBrW1At0/WB+Ci0gmDwbLcFKK91Lnzorj/H/KmMREz
	VEIBQtiY6WBRdABnbqiNWxjB4Og/oExRhpykho17RJjPJtVEc0m1osm7TNO4AqHi81z6t5M3utE
	FeFaYvr2ih/ikXHg6gt63HIVDFQ3yhUt3BI5jjXhja0aTlTuD
Subject: Re: Question about XEN-hypervisor and Yocto build system
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
X-List-Received-Date: Wed, 23 Mar 2016 13:58:07 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 03/23/2016 08:46 AM, Olsson Rikard (RBSN/ESW1) wrote:
> Hello Yocto Members,
>
> I am looking into xen-hypervisor and have downloaded the meta-virtualization layer and updated bblayers.conf to pull in the layer. However I am unsure how to proceed:
> 1) How do I configure the meta-virtualization to use Xen hypervisor
> 2) What target do I build/bb file do I build.
>
> I usually build either:
> bitbake core-image-minimal ==> Standard Linux for our HW board
> bitbake core-image-XXX--XXX ==> Standard Linux for our HW board + additional application layers.
>
> I am however unable to understand the connection between the images I currently build and the Xen-hypervisor, for example:
> recipes-extended/libvirt/libvirt_1.2.19.bb:# xen-minimal config
> recipes-extended/images/kvm-image-minimal.bb:DESCRIPTION = "A minimal kvm image"
> recipes-extended/images/xen-image-minimal.bb:DESCRIPTION = "A minimal xen image"
> What are above bitbake recipes, should I build xen-image-minimal.bb instead of core-image-minimal or....
>
> I have looked at:
> https://wiki.yoctoproject.org/wiki/Virtualization_with_KVM
> and the two README files:
> ./docs/00-README
> ./README
> but there is not much information on Yocto and xen-hypervisor so I am unsure how to setup the build system.
>
> Appreciate any advice or input.
>
> Best regards
> Rikard Olsson
>
You should send your meta-virtualization questions to
meta-virtualization@yoctoproject.org.

The xen-image-minimal will build an image with the Xen hypervisor. You
need to include xen in your DISTRO_FEATURES to ensure all other required
components are built.

-- 
Machon Gregory


