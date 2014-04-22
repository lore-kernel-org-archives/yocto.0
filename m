Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8710BE00C6C
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 07:58:54 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wcc9o-0008Fd-R9
	for yocto@yoctoproject.org; Tue, 22 Apr 2014 16:58:48 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 16:58:48 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 16:58:48 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Tue, 22 Apr 2014 16:58:35 +0200
Message-ID: <lj602r$2p1$1@ger.gmane.org>
References: <lj57d5$6ao$1@ger.gmane.org>	<CF7BEDE6.25E3D9%rcalhoun@shotspotter.com>
	<lj5vgd$njl$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <lj5vgd$njl$1@ger.gmane.org>
Subject: [solved] Re: Newbie question: How to get dependencies into compile of custom recipe?
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
X-List-Received-Date: Tue, 22 Apr 2014 14:58:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Got it working!

The hint with the "devshell" helped very much. I could try out
"pkg-config --list-all|grep rtsp" and found the name pkg-config was
expecting.

So, the line must be:

pkg-config --cflags --libs gstreamer-0.10 gst-rtsp-server-0.10

(Thought I had tried this, but maybe had a typo in the name.)

Now it compiled and build the package. Great!!

Hope, the package does work :-)

Thanks again. I learned a lot!

Michael


