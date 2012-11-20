Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71214E0141C
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 07:22:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qAKFMntr007029
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Nov 2012 07:22:49 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 20 Nov 2012 07:22:48 -0800
Message-ID: <50ABA048.7080707@windriver.com>
Date: Tue, 20 Nov 2012 10:22:48 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
References: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
In-Reply-To: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sanil kumar <sanil.kumar@huawei.com>
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
X-List-Received-Date: Tue, 20 Nov 2012 15:22:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-11-20 10:09 AM, Venkata ramana gollamudi wrote:
> Poky allows to build custom Linux for you, but we have cases where the post build customization is required, like user-addition, network configuration, service control. Even selecting the required packages can be a post build activity.
>
> The current model requires the image to be rebuilt to support these configuration.
> Offline Configuration tool (OCT), which allows a binary image customization before making a final target image. This case will be more evident in larger companies, where platform teams, product teams , application teams are distributed and Linux build from source will be owned and lab tested by a single team, like platform team. Other teams just configure to use it for product variants from same platform build.
>
> Detailed use cases can be found in enhancement bug:3252
>
> OCT should work on the binary pool of compiled packages generated from poky.
>
> The basic operations that can be supported includes
> a) Select/deselect required packages from pool of binary packages into final target image.
> b) Provision to select external binary packages like ADT compiled applications as input and add them to final target image.
> c) Binary level Offline configuration can includes
>        Configure the users/passwords
>        Configure the network
>        Configure the host name
>        Select the services to be started by default
>        Security related configuration
>        Generate initrd in ramfs/ext3/... format
>        etc..
>
> Considering the methods to support these in our current yocto model, following changes can be done.
> 1) HOB can be the tool which can be extended to support these
>      Poky can generate a binary package pool as one if its output and Hob can work on this package pool to select packages, configure and generate image.
> So HOB can support opening HOB in Binary(or OCT) mode i.e., without build options but only with binary package selection. Configuration GUI needs to be added to HOB.
> Note:HOB+OCT is together or separate, needs a bit more thought and overall organization as they will be intended for different users.

Is there some overlap between this point and the other ongoing discussions
about image construction, deployment and package management ?

i.e. this thread:

   [OE-core] RFC: OE-Core image creation and deployment
 
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-July/026938.html

These may already be coordinated, but I do see some common threads and
it would be nice to make sure everything will work together and that we
aren't duplicating effort!

Cheers,

Bruce


> 2) Binary package pool can be a minimal/partial sstate-cache, as complete sstate-cache is quite big and not required for product teams as they are not expected to build but just need to select and configure.
>      I think it is sufficient to keep the minimal binaries from sstate-cache which are required to execute image.bbclass, do_rootfs task to generate image.
> 3) Along with specific configuration UI implementation, a generic configuration model similar to kernel kconfig and menuconfig can be considered, in cases where more detailed offline configurations is required like detailed security configuration.
>
> Regards,
> Ramana
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


