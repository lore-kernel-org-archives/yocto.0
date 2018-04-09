Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13E05E00BAA; Mon,  9 Apr 2018 07:30:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EB8BE00AE6
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 07:30:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w39EUJYl004084
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Apr 2018 07:30:20 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 9 Apr 2018 07:30:19 -0700
To: Mark Junghanns <mark.junghanns@spectra.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <EEF480D2AA622D48BD0D761FB54F5B1BE0D57D@AresMail.spectra.netz>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <0e5a2248-9f4b-ba47-cb3d-8377f1aa3c8f@windriver.com>
Date: Mon, 9 Apr 2018 10:30:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <EEF480D2AA622D48BD0D761FB54F5B1BE0D57D@AresMail.spectra.netz>
Subject: Re: meta-virtualization -> docker not packaged when using PACKAGE_CLASSES ?= "package_deb"
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
X-List-Received-Date: Mon, 09 Apr 2018 14:30:35 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 04/06/2018 09:13 AM, Mark Junghanns wrote:
> Hello,
> I encountered a funny behavior the other day. While trying to integrate Docker into my image using the openembedded meta-virtualization layer, I happened to not being able to get my image finalized.
> 
> Usually I build with
>              PACKAGE_CLASSES ?= "package_deb".
> 
> I also added
>              DISTRO_FEATURES_append = " virtualization"
> 
> The build process aborts at some point within do_rootfs, stating something like that the package 'docker' could not be found. I tracked down the problem to docker's  build/tmp/work/<something>/docker/<version>/deploy-debs/ directory. I found the following packages:
> 
> docker-contrib_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.deb
> docker-distribution-dev_v2.6.2-r0_amd64.deb
> docker-registry_v2.6.2-r0_amd64.deb
> docker-dbg_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.deb
> docker-distribution-ptest_v2.6.2-r0_amd64.deb
> docker-distribution-dbg_v2.6.2-r0_amd64.deb
> docker-ptest_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.deb
> 
> 
> The package that is actually missing, is the docker package itself. I suppose it would be named docker_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.deb.
> 
> There is not any single warning or error thrown whatsoever during the build of docker, it seems to just silently refusing to build the package.
> 
> Yet, when change PACKAGE_CLASSES ?= "package_deb" to PACKAGE_CLASSES ?= "package_rpm" it would build all required docker RPM-Packages just fine. At the end of the day I way able to get a complete image with Docker integrated, which is fine for the moment. Unfortunately I need to stick with the DEB format for update reasons, so eventually I need to deal with this issue again.
> 
> Has anyone seen this happening as well? Any idea, where and how to fix this?

I've never seen this, but then again, I've also never used the .deb
package backend.

When you were building with .debs, and your image had "docker' in the
image install .. was there any errors thrown due to the package not
being created ?

Bruce

> 
> Thanks in advance for your help!
> 
> Mark
> 


