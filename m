Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80F11E00717
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 05:38:33 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F2329F81207; Thu,  4 Oct 2012 06:38:32 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9DC1CF811FF;
	Thu,  4 Oct 2012 06:38:31 -0600 (MDT)
Message-ID: <506D8357.9000203@mlbassoc.com>
Date: Thu, 04 Oct 2012 06:38:47 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <C1024C359E9D4C4EBC664A0111A52A3F7CFB32FC78@ESESSCMS0355.eemea.ericsson.se>
In-Reply-To: <C1024C359E9D4C4EBC664A0111A52A3F7CFB32FC78@ESESSCMS0355.eemea.ericsson.se>
Subject: Re: Python-installation on target (qemuppc) image ....
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
X-List-Received-Date: Thu, 04 Oct 2012 12:38:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-10-04 06:27, Jonas Jonsson L wrote:
> Hi,
> I'm trying to get a working python on a 'core-image-minimal' type of image but with no luck.  Loads of stuff from the standard python library aren't installed on the target
> (qemuppc), as an example I can't run 'python-config' since the 'distutils'-module isn't available.  I need the 'shutil' module on my image but I can't figure out how to achive
> that.  Python seems to work on the target but it seems to lack lots of standard functionality.
> The shutil.py & shutil.pyo exists in .../build/tmp/work/ppc603e-poky-linux/python-2.7.3-r0.2/package/usr/lib/python2.7 folder but it doesn't exist on the target image...
> Also, in ..../deploy-rpms/ppc603e/python-shell-2.7.3-r0.2.ppc603e.rpm, the shutil-files exist ...
> Somehow, it seems as if this rpm isn't installed on my target-image, what controls that?
> Examining the log.do_package-file shows ~5700 lines of "error: Couldn't exec ..../sysroot//*x86_64-linux*//usr/lib/rpm/pythoneggs.py: No such file or directory" (shouldn't it be
> qemupcc??) from function package_do_filedeps.
> Examining the log.do_populate_sysroot-file shows "WARNING: The recipe is trying to install files into a shared area when those files already exist. Those files are: pyconfig.h,
> libpython2.7.so, libpython2.7.so.1.0 and Makefile" ....

Python packages are split up into functionality and you'll need
to install the pieces that you need.  Remember that these systems
are presumed to be [somewhat] small, embedded devices and there's
no sense to install what you will never use...

For example, you need to install 'python-distutils' to get the distutils module.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

