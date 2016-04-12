Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0C4BE00E03; Tue, 12 Apr 2016 01:55:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	UNPARSEABLE_RELAY autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mojtaba.aajami[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines *  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7C1EE00C41
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 01:55:06 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1apu6C-0003Xb-GJ
	for yocto@yoctoproject.org; Tue, 12 Apr 2016 10:55:05 +0200
Received: from noble.yonsei.ac.kr ([noble.yonsei.ac.kr])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 10:55:04 +0200
Received: from mojtaba.aajami by noble.yonsei.ac.kr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 10:55:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: mojtaba aajami <mojtaba.aajami@gmail.com>
Date: Tue, 12 Apr 2016 08:44:52 +0000 (UTC)
Message-ID: <loom.20160412T104246-984@post.gmane.org>
References: <21582822.75.1424326318941.JavaMail.kraghavendra@Raghavendra>
	<2313626.76.1424326407786.JavaMail.kraghavendra@Raghavendra>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 165.132.221.124 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/49.0.2623.112 Safari/537.36)
Subject: Re: Issue while building the meta-oic layer for my bsp
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
X-List-Received-Date: Tue, 12 Apr 2016 08:55:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit



Raghavendra Kakarla <raghavendra.kakarla@...> writes:

> 
> Hi,
> 
> I need to build meta-oic layer on yocto for my machine which is a mips32 
processor core.
> 
> While i am building i got following errors. Could you please help me for 
resolve this issue.
> 
> Errors are like following:
> 
> ERROR: Function failed: do_install (log file is located at 
/home/testuser/poky/build/tmp/work/mips32r2el-poky-linux/iotivity/0.9.0-
r0/temp/log.do_install.11175)
> ERROR: Logfile of failure stored in: 
/home/testuser/poky/build/tmp/work/mips32r2el-poky-linux/iotivity/0.9.0-
r0/temp/log.do_install.11175
> Log data follows:
> | DEBUG: Executing shell function do_install
> | install: cannot stat
> `/home/testuser/poky/build/tmp/work/mips32r2el-poky-linux/iotivity/0.9.0-
r0/iotivity-0.9.0/out/yocto//release/libcoap.so':
> No such file or directory
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_install (log file is located at 
/home/testuser/poky/build/tmp/work/mips32r2el-poky-linux/iotivity/0.9.0-
r0/temp/log.do_install.11175)
> ERROR: Task 2 (/home/testuser/poky/meta-oic/recipes-
core/iotivity/iotivity_0.9.0.bb,
> do_install) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 657 tasks of which 632 didn't need to be 
rerun and 1 failed.
> Waiting for 0 running tasks to finish:
> 
> Thanks & Regards,
> Raghavendra K.
> 


Hi 

Have you seen the instruction provided here?

http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic/about/?h=1.0.1

Regards,
Mojtaba


