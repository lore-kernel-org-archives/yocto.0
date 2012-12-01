Return-Path: <chege@cybertux.de>
Received: from wp202.webpack.hosteurope.de (wp202.webpack.hosteurope.de
	[80.237.132.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9122CE0133F
	for <yocto@yoctoproject.org>; Sat,  1 Dec 2012 06:00:39 -0800 (PST)
Received: from hsi-kbw-109-192-216-113.hsi6.kabel-badenwuerttemberg.de
	([109.192.216.113] helo=[192.168.1.126]); authenticated
	by wp202.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	id 1TencQ-00074p-T3; Sat, 01 Dec 2012 15:00:34 +0100
Message-ID: <50BA0D82.3070001@cybertux.de>
Date: Sat, 01 Dec 2012 15:00:34 +0100
From: Christian Ege <chege@cybertux.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <c7e075a69adcbd736ab89d241cd10ec3-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkFYXEYJVl1oA1RTQ15eQioDXF9aSFxTXQhb-webmailer2@server03.webmailer.hosteurope.de>
In-Reply-To: <c7e075a69adcbd736ab89d241cd10ec3-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkFYXEYJVl1oA1RTQ15eQioDXF9aSFxTXQhb-webmailer2@server03.webmailer.hosteurope.de>
X-bounce-key: webpack.hosteurope.de;chege@cybertux.de;1354370439;3c86ebea;
Subject: Re: How to handle src.rpm packages
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
X-List-Received-Date: Sat, 01 Dec 2012 14:00:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I think src rpms are not that interesting stuff for a lot of you. I've 
fixed this by my own by adding a class to my meta-stlinux layer which 
handles the extra sources and patches within the *.src.rpm.

The idea was taken from the lsof package.

LOCAL_SRC ??= ""

def src_rpm_do_base(d,func):
     bb.build.exec_func(func, d)
     src_uri = d.getVar('SRC_URI')
     d.setVar('SRC_URI', '${LOCAL_SRC}')
     bb.build.exec_func(func, d)
     d.setVar('SRC_URI', src_uri)



python do_unpack () {
     src_rpm_do_base(d,'base_do_unpack')
}

python do_patch () {
     src_rpm_do_base(d,'base_d
}

https://github.com/project-magpie/meta-stlinux/blob/master/classes/src_rpm.bbclass

I hope this is the way things like this should be handled.

regards,

Christian



> Hello,
>
> I am interested in how to handle source code inside of a src.rpm 
> package. There had been a patch from Mark Hatle which handles the rpm 
> packages inside the fetcher2. In his patch he suggests to handle 
> Patches inside the rpm in the following way:
>
>
> file://${WORKDIR}/mypatch.patch
>
> When I tried this inside the SRC_URI declaration I always get en error 
> like this:
>
> NOTE: Running task 439 of 669 (ID: 4, 
> /home/chris/src/poky-denzil/meta-stlinux/recipes-core/stslave/stslave_0.7.bb, 
> do_fetch)
> NOTE: package stslave-0.7-r1: task do_fetch: Started
> ERROR: Function failed: Fetcher failure for URL: 
> 'file:///home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz'. 
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in: 
> /home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/temp/log.do_fetch.25817
> Log data follows:
> | DEBUG: Trying PREMIRRORS
> | DEBUG: For url ['file', '', 
> '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
> '', '', {}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['http', 
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 
> '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
> '', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['http', 
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 
> '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
> '', '', {}] comparing ['git', '.*', '/.*', '', '', {}] to ['http', 
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 
> '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
> '', '', {}] comparing ['hg', '.*', '/.*', '', '', {}] to ['http', 
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 
> '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
> '', '', {}] comparing ['osc', '.*', '/.*', '', '', {}] to ['http', 
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 
> '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
> '', '', {}] comparing ['p4', '.*', '/.*', '', '', {}] to ['http', 
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 
> '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
> '', '', {}] comparing ['svk', '.*', '/.*', '', '', {}] to ['http', 
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 
> '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
> '', '', {}] comparing ['svn', '.*', '/.*', '', '', {}] to ['http', 
> 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
> | DEBUG: Trying Upstream
> | ERROR: Function failed: Fetcher failure for URL: 
> 'file:///home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz'. 
> Unable to fetch URL from any source.
>
> Yes of course I can just let fetcher2 extract all the files an 
> afterwards apply the patches by hand. But I think there should be a 
> more generic way to handle this. I hope I can get some hints how to 
> solve this.
>
>
>
>
> with kind regards,
>
> Christian
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
~: https://github.com/project-magpie/meta-stlinux :~


