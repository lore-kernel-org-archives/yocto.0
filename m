Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83A98E007BA; Wed,  8 Mar 2017 23:05:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 651 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Mar 2017 23:05:29 PST
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 662B1E00519
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 23:05:29 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id v296sY2e006327
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 9 Mar 2017 08:54:35 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: yocto@yoctoproject.org
Message-ID: <51315601-026c-457c-a99f-4961487e12e3@vitheia.com>
Date: Thu, 9 Mar 2017 08:54:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
Subject: cannot build image using sstate
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
X-List-Received-Date: Thu, 09 Mar 2017 07:05:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Long story short: I have problems building an image, in a clean build 
directory, reusing the shared state cache and downloads from a previous 
build.
A file created in the do_deploy_append task is not created(restored) 
anymore when building using a previous sstate.

And now the long description:
In my custom layer, in a kernel recipe, linux-stable.bb, I have appended 
some operations to the `deploy` task, one of them is creating an U-Boot 
FIT image:

linux-stable.bb:
do_deploy_append() {
[...]
         #this line creates the image_signed.fit file
          mkimage  [...] image_signed.fit

[...]
}

Then in my image recipe, my-custom-image.bb, I'm creating an archive 
with some files, including the above created FIT image:

my-custom-image.bb:

LINUXIMAGE = "image_signed.fit"
do_makeArch() {
[...]
    tar --owner root --group root -C ${DEPLOY_DIR_IMAGE} -cvf 
${DEPLOY_DIR_IMAGE}/psf/${IMAGEFILE} -h ${LINUXIMAGE}
[...]
}

addtask do_makeArch after do_image_complete before do_build


Now, create a new build directory, set DL_DIR and SSTATE_DIR in local 
conf, start build:
# source oe-init-build-env build2
# bitbake my-custom-image
ERROR: my-custom-image-1.0-r0 do_makeArch: Function failed: do_makeArch
Log data follows:
| DEBUG: Executing shell function do_makeArch
| tar: image_signed.fit: Cannot stat: No such file or directory
| tar: Exiting with failure status due to previous errors

So the image build fails, because the image_signed.fit file is not present.
After some short time the build is started, in the deploy directory I 
see that the zimage is already there but the FIT image is missing ...

This is confirmed by the linux-stable.bb's logs: log.do_deploy_setscene. 
It lists all the files that are restored from the sstate cache, 
image_signed.fit
is not one of them:

DEBUG: Executing shell function sstate_unpack_package
deploy-linux-stable/
deploy-linux-stable/zImage-machine.bin
deploy-linux-stable/zImage--4.8.4+git0+a2b42342b2-r0.2-machine-20170308134915.bin
deploy-linux-stable/zImage-at91-machine.dtb
deploy-linux-stable/README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
deploy-linux-stable/zImage--4.8.4+git0+a2b42342b2-r0.2-at91-machine-20170308134915.dtb
deploy-linux-stable/modules-machine.tgz
deploy-linux-stable/modules--4.8.4+git0+a2b42342b2-r0.2-machine-20170308134915.tgz
deploy-linux-stable/zImage
deploy-linux-stable/zImage-initramfs-4.8.4+gitAUTOINC+a2b42342b2-r0-machine-20170308134915.bin
deploy-linux-stable/zImage-initramfs-machine.bin
DEBUG: Shell function sstate_unpack_package finished


Any hints, on how to add my custom generated files to the sstate ? Or 
what am I doing wrong here ?
Thanks


