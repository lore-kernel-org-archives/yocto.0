Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2F79E01528
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 05:41:27 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V1yHX-0001Z9-Pv
	for yocto@yoctoproject.org; Wed, 24 Jul 2013 14:35:03 +0200
Received: from 193.146.28.111 ([193.146.28.111])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:35:03 +0200
Received: from mvalleavila by 193.146.28.111 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 14:35:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Marcelo Valle <mvalleavila@gmail.com>
Date: Wed, 24 Jul 2013 11:39:06 +0000 (UTC)
Message-ID: <loom.20130724T132956-99@post.gmane.org>
References: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
	<loom.20130614T060308-378@post.gmane.org>
	<1571616.VWc8oWtlLJ@helios>
	<loom.20130614T195255-724@post.gmane.org>
	<CE727E34-D6D2-4B25-840A-0D2F32318C0A@gmail.com>
	<loom.20130614T200317-354@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 193.146.28.111 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/28.0.1500.71 Safari/537.36)
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Wed, 24 Jul 2013 12:41:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Dat Tran <dtran11@...> writes:



> 
> This is the error I get:
> 
> configure: WARNING: unrecognized options: --disable-silent-rules, --with-
> sysroot 
> DEBUG: Shell function do_configure finished 
> DEBUG: Executing python function do_qa_configure 
> NOTE: Checking autotools environment for common misconfiguration 
> ERROR: This autoconf log indicates errors, it looked at host include 
and/or 
> library paths while determining system capabilities. 
> Rerun configure task after fixing this. The path was 
> '/home/appusr/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-
> gnueabi/libtool-cross-2.4.2-r5.1/libtool-2.4.2' 
> DEBUG: Python function do_qa_configure finished 
> ERROR: Function failed: do_qa_configure 
> 
> Thanks
> 
> 

Hello, 

I followed the same steps to use fortran with Yocto, but get a similar 
error:

ERROR: This autoconf log indicates errors, it looked at host include and/or 
library paths while determining system capabilities.
Rerun configure task after fixing this. The path was '/home/mvalle/poky-
dylan-9.0.0/build/tmp/work/x86_64-poky-linux/gcc-runtime/4.7.2-r19/gcc-
4.7.2/build.x86_64-poky-linux.x86_64-poky-linux/x86_64-poky-
linux/libgfortran'
ERROR: Function failed: do_qa_configure

You finally could fix this error?

Thanks in advance.


