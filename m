Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95E4BE0030B
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 10:21:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3AHLpGY026349
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Apr 2012 10:21:52 -0700 (PDT)
Received: from msp-dhcp19.wrs.com (172.25.34.19) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 10 Apr 2012 10:21:51 -0700
Message-ID: <4F846C2E.8040304@windriver.com>
Date: Tue, 10 Apr 2012 12:21:50 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A46AE31E3@ORSMSX101.amr.corp.intel.com>
	<F9AC6E797E022941A4CD80AAEDFAD67D43756F@PGSMSX103.gar.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF10FD@ORSMSX101.amr.corp.intel.com>
	<2083054.YjdMd9bIMH@helios>
In-Reply-To: <2083054.YjdMd9bIMH@helios>
Cc: yocto@yoctoproject.org, "Khor, Boon
 Pin" <boon.pin.khor@intel.com>
Subject: Re: Yocto Project 1.2 Beta testing instructions
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
X-List-Received-Date: Tue, 10 Apr 2012 17:21:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/10/12 4:18 AM, Paul Eggleton wrote:
> On Wednesday 04 April 2012 18:08:58 Liu, Song wrote:
>> Can someone help answer the following question? This happens during Boon
>> Pin's beta testing using the build at:
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-8e9f6fc77ac476
>> 3f4ed1f6e7b720420c220ba6e2.tar.bz2 .
>> ...
>> | Processing task-core-boot...
>> | Manifest:
>> | /home/nemo/yp-beta-build/tmp/work/qemux86-poky-linux/core-image-minimal-1
>> | .0-r0/rootfs/install/install.manifest local: 1: -Uhv: bad variable name
>>
>> NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Failed
>> ERROR: Task 8
>> (/home/nemo/yp-beta/meta/recipes-core/images/core-image-minimal.bb,
>> do_rootfs) failed with exit code '1' NOTE: Tasks Summary: Attempted 1329
>> tasks of which 287 didn't need to be rerun and 1 failed.
>
> Sorry for the late reply, presumably this issue is still present?
>
>> Maybe I am missing rpm packages in ubuntu ?
>
> You don't need to install rpm on the host system, we build rpm-native for
> that.
>
> Mark, any clues what could be going wrong here?

I've never seen any problem like this before.  Below is some analysis and a 
question at the very end...

There are only two places in the system where the string -Uhv exists:

package_rpm.bbclass:

         rpm_common_comand --replacepkgs \
             -Uhv ${target_rootfs}/install/total_solution.manifest

(rpm_common_comand is a shell function it appears... the arguments to the 
function are passed, via $@ to an RPM command)

rootfs_rpm.bbclass:

rootfs_install_packages() {
     # The pkg to be installed here is not controlled by the
     # package_install_internal_rpm, so it may have already been
     # installed(e.g, installed in the first time when generate the
     # rootfs), use '--replacepkgs' to always install them
         for pkg in $@; do
                 ${RPM} --root ${IMAGE_ROOTFS} -D "_dbpath ${rpmlibdir}" \
                         -D "__dbi_txn create nofsync private" \
                         --noscripts --notriggers --noparentdirs --nolinktos \
                         --replacepkgs -Uhv $pkg || true
         done
}

I would guess from the error that it's the one in package_rpm.bbclass that 
failed.. if that is the case, then all I can think of is what shell?  Are we 
using a bash-ism?  Does "dash" on ubuntu have shell functions enabled in it, if 
not that might be the problem.

Please check your system's /bin/sh.. is it a symlink, if so, what does it point 
to?  If it points to "dash", change it to "bash" and see if the error still occurs.

--Mark

