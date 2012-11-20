Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 299B0E0141C
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 08:27:28 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Nov 2012 08:27:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,286,1352102400"; d="scan'208";a="220219659"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 20 Nov 2012 08:27:26 -0800
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 20 Nov 2012 08:27:25 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.218]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.188]) with mapi id
	14.01.0355.002; Tue, 20 Nov 2012 08:27:25 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Need for offline binary configuration
Thread-Index: AQHNxzDKyeCK5q4Ul0GcItQcbcDHSpfy6XYA
Date: Tue, 20 Nov 2012 16:27:25 +0000
Message-ID: <CCD0EBB6.159F2%david.c.stewart@intel.com>
In-Reply-To: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.3.120616
x-originating-ip: [10.24.4.12]
MIME-Version: 1.0
Cc: Sanil kumar <sanil.kumar@huawei.com>
Subject: Re: Need for offline binary configuration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Nov 2012 16:27:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4DDCF05BAF58F44DB3D4BB64B80F365B@intel.com>
Content-Transfer-Encoding: quoted-printable

There are a ton of interesting interactions here with other efforts -
please review and comment.


On 11/20/12 7:09 AM, "Venkata ramana gollamudi"
<ramana.gollamudi@huawei.com> wrote:

>Poky allows to build custom Linux for you, but we have cases where the
>post build customization is required, like user-addition, network
>configuration, service control. Even selecting the required packages can
>be a post build activity.
>
>The current model requires the image to be rebuilt to support these
>configuration.
>Offline Configuration tool (OCT), which allows a binary image
>customization before making a final target image. This case will be more
>evident in larger companies, where platform teams, product teams ,
>application teams are distributed and Linux build from source will be
>owned and lab tested by a single team, like platform team. Other teams
>just configure to use it for product variants from same platform build.
>
>Detailed use cases can be found in enhancement bug:3252

I can certainly see how something like this would be a valuable addition
to the workflow, particularly at large organizations.

Of course, you could conceive of all of these things being configured in a
layer as well, but would require another bitbake run. I think you are
suggesting something separate from bitbake, and a lot more graphical /
interactive.=20

>
>OCT should work on the binary pool of compiled packages generated from
>poky.
>
>The basic operations that can be supported includes
>a) Select/deselect required packages from pool of binary packages into
>final target image.
>b) Provision to select external binary packages like ADT compiled
>applications as input and add them to final target image.
>c) Binary level Offline configuration can includes
>      Configure the users/passwords
>      Configure the network
>      Configure the host name
>      Select the services to be started by default
>      Security related configuration
>      Generate initrd in ramfs/ext3/... format
>      etc..
>
>Considering the methods to support these in our current yocto model,
>following changes can be done.
>1) HOB can be the tool which can be extended to support these
>    Poky can generate a binary package pool as one if its output and Hob
>can work on this package pool to select packages, configure and generate
>image.
>So HOB can support opening HOB in Binary(or OCT) mode i.e., without build
>options but only with binary package selection. Configuration GUI needs
>to be added to HOB.
>Note:HOB+OCT is together or separate, needs a bit more thought and
>overall organization as they will be intended for different users.
>2) Binary package pool can be a minimal/partial sstate-cache, as complete
>sstate-cache is quite big and not required for product teams as they are
>not expected to build but just need to select and configure.
>    I think it is sufficient to keep the minimal binaries from
>sstate-cache which are required to execute image.bbclass, do_rootfs task
>to generate image.
>3) Along with specific configuration UI implementation, a generic
>configuration model similar to kernel kconfig and menuconfig can be
>considered, in cases where more detailed offline configurations is
>required like detailed security configuration.
>
>Regards,
>Ramana=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


