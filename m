Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20158E00524
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 06:50:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q92DorW3000105
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 2 Oct 2012 06:50:56 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Tue, 2 Oct 2012 06:50:53 -0700
Message-ID: <506AF12E.6090009@windriver.com>
Date: Tue, 2 Oct 2012 09:50:38 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
References: <C1024C359E9D4C4EBC664A0111A52A3F7CFB32F185@ESESSCMS0355.eemea.ericsson.se>
In-Reply-To: <C1024C359E9D4C4EBC664A0111A52A3F7CFB32F185@ESESSCMS0355.eemea.ericsson.se>
Cc: "Yocto Mailinglist \(yocto@yoctoproject.org\)" <yocto@yoctoproject.org>
Subject: Re: Howto add TIPC-support into kernel?
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
X-List-Received-Date: Tue, 02 Oct 2012 13:50:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-10-02 05:23 AM, Jonas Jonsson L wrote:
> Hi!
> I'm writing a recipe for a piece of software that requires TIPC support
> in the kernel. I've tried to figure out a way to accomplish this within
> my bb-file, but with no success. Is there a way to do such thing with
> Yocto, currently I run 'bitbake -c menuconfig linux-yocto' (or is it
> yocto-linux, can't recall) and then I add 'kernel-modules' to
> IMAGE_INSTALL_append in my 'local.conf'-file? I would like to have this
> dependency some-how contained within my recipe.

Are you primarily concerned with getting the kernel options enabled and
then the built modules installed onto your target ? (I ask because
TIPC userspace can come into play .. depending on your usecase).

If so, you'd want to add a linux-yocto_3.4.bbappend (assuming you are
using the 3.4 kernel) to your layer, and put your options into a .cfg
fragment that you append to the SRC_URI (just like any patch or other
file). Those options will be added to the config on your next build and
installed.

In that same layer, you can add kernel-modules to IMAGE_INSTALL and
you'll get the build and install whenever the layer is active.

There are other ways to do this as well, but what I have above is
what I typically do in a distro or BSP layer.

Cheers,

Bruce


> Thanks!
> Best regards,
> Jonas Jonsson
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


