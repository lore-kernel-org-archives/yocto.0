Return-Path: <157724595@163.com>
Received: from m13-125.163.com (m13-125.163.com [220.181.13.125])
	by mx1.pokylinux.org (Postfix) with ESMTP id 846614C80334
	for <yocto@yoctoproject.org>; Mon, 23 May 2011 11:10:31 -0500 (CDT)
Received: from 157724595 ( [118.114.252.50] ) by ajax-webmail-wmsvr125
	(Coremail) ; Tue, 24 May 2011 00:10:19 +0800 (CST)
Date: Tue, 24 May 2011 00:10:19 +0800 (CST)
From: =?GBK?B?1cXOxL3c?= <157724595@163.com>
To: yocto@yoctoproject.org
Message-ID: <752f15.db68.1301d9f08ee.Coremail.157724595@163.com>
MIME-Version: 1.0
X-Originating-IP: [118.114.252.50]
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	110420(13372.3725.3724) Copyright (c) 2002-2011 www.mailtech.cn 163com
X-CM-CTRLDATA: 4fOh4WZvb3Rlcl9odG09MzQ4Mzo4MQ==
X-CM-TRANSID: fcGowLDrJvLshtpNB4AZAA--.5886W
X-CM-SenderInfo: irvxljiuvzkqqrwthudrp/1tbiZQZIwU0vIjeXrgABsl
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Mailman-Approved-At: Wed, 25 May 2011 20:06:39 -0500
Subject: ERROR when bitbake e2fsprogs
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
X-List-Received-Date: Mon, 23 May 2011 16:10:34 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_150982_33426072.1306167019757"

------=_Part_150982_33426072.1306167019757
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

The error log is blow:
| make[2]: Entering directory `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsprogs-1.41.12-r20/e2fsprogs-1.41.12/misc'
|COMPILE_ET prof_err.et
|CC mke2fs.c
|CC util.c
|CC ../e2fsck/profile.c
|CC prof_err.c
|PROFILE_TO_C mke2fs.conf
|CC default_profile.c
|LD mke2fs
|CC badblocks.c
|LD badblocks
|CC tune2fs.c
|LD tune2fs
|CC dumpe2fs.c
|LD dumpe2fs
|CC blkid.c
|LD blkid
| ../lib/libext2fs.so: undefined reference to `sem_init'
| ../lib/libext2fs.so: undefined reference to `sem_destroy'
| ../lib/libext2fs.so: undefined reference to `sem_post'
| ../lib/libext2fs.so: undefined reference to `sem_wait'
| collect2: ld returned 1 exit status
| make[2]: *** [blkid] Error 1
| make[2]: Leaving directory `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsprogs-1.41.12-r20/e2fsprogs-1.41.12/misc'
| make[1]: *** [all-progs-recursive] Error 1
| make[1]: Leaving directory `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsprogs-1.41.12-r20/e2fsprogs-1.41.12'
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see /sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsprogs-1.41.12-r20/temp/log.do_compile.10589 for further information)
NOTE: package e2fsprogs-1.41.12-r20: task do_compile: Failed
ERROR: Task 8 (/sdb1/yocto/poky-bernard-5.0/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb, do_compile) failed with exit code '1'
Waiting for 1 active tasks to finish:
0: ncurses-5.7-r1 do_package (pid 31748)


And in its Makefile of DIR misc it has
#
# Library definitions
#
LIB = $(top_builddir)/lib
LIBSS = $(LIB)/libss.so # -ldl
LIBCOM_ERR = $(LIB)/libcom_err.so # -lpthread
LIBE2P = $(LIB)/libe2p.so
LIBEXT2FS = $(LIB)/libext2fs.so
LIBUUID = -luuid
LIBBLKID = $(LIB)/libblkid.so # $(LIBUUID)
I think the red lind should append -lpthread, but it not. any suggestion?




------=_Part_150982_33426072.1306167019757
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

The error log is blow:<div><div>| make[2]: Entering directory `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsprogs-1.41.12-r20/e2fsprogs-1.41.12/misc'</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>COMPILE_ET prof_err.et</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC mke2fs.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC util.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC ../e2fsck/profile.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC prof_err.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>PROFILE_TO_C mke2fs.conf</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC default_profile.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>LD mke2fs</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC badblocks.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>LD badblocks</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC tune2fs.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>LD tune2fs</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC dumpe2fs.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>LD dumpe2fs</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>CC blkid.c</div><div>| <span class="Apple-tab-span" style="white-space:pre">	</span>LD blkid</div><div>| ../lib/libext2fs.so: undefined reference to `sem_init'</div><div>| ../lib/libext2fs.so: undefined reference to `sem_destroy'</div><div>| ../lib/libext2fs.so: undefined reference to `sem_post'</div><div>| ../lib/libext2fs.so: undefined reference to `sem_wait'</div><div>| collect2: ld returned 1 exit status</div><div>| make[2]: *** [blkid] Error 1</div><div>| make[2]: Leaving directory `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsprogs-1.41.12-r20/e2fsprogs-1.41.12/misc'</div><div>| make[1]: *** [all-progs-recursive] Error 1</div><div>| make[1]: Leaving directory `/sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsprogs-1.41.12-r20/e2fsprogs-1.41.12'</div><div>| make: *** [all] Error 2</div><div>| FATAL: oe_runmake failed</div><div>| ERROR: Function 'do_compile' failed (see /sdb1/yocto/poky-bernard-5.0/build/tmp/work/ppce500v2-wrs-linux-gnu/e2fsprogs-1.41.12-r20/temp/log.do_compile.10589 for further information)</div><div>NOTE: package e2fsprogs-1.41.12-r20: task do_compile: Failed</div><div>ERROR: Task 8 (/sdb1/yocto/poky-bernard-5.0/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb, do_compile) failed with exit code '1'</div><div>Waiting for 1 active tasks to finish:</div><div>0: ncurses-5.7-r1 do_package (pid 31748)</div></div><div><br></div><div>And in its Makefile of DIR misc it has</div><div><div>#</div><div># Library definitions</div><div>#</div><div>LIB = $(top_builddir)/lib</div><div>LIBSS = $(LIB)/libss.so # -ldl</div><div>LIBCOM_ERR = $(LIB)/libcom_err.so # -lpthread</div><div>LIBE2P = $(LIB)/libe2p.so</div><div><font class="Apple-style-span" color="#ff0000">LIBEXT2FS = $(LIB)/libext2fs.so</font></div><div>LIBUUID = -luuid</div><div>LIBBLKID = $(LIB)/libblkid.so # $(LIBUUID)</div></div><div>I think the red lind should append -lpthread, but it not. any suggestion?</div><div><br></div><div><br></div><br><br><span title="neteasefooter"><span id="netease_mail_footer"></span></span>

------=_Part_150982_33426072.1306167019757--
