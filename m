Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69260E009E7; Thu, 12 Jun 2014 03:20:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DATE_IN_PAST_24_48,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 0.5 DATE_IN_PAST_24_48 Date: is 24 to 48 hours before Received: date
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73113E0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 03:20:12 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wv276-0003rI-UZ
	for yocto@yoctoproject.org; Thu, 12 Jun 2014 12:20:09 +0200
Received: from 91-64-81-99-dynip.superkabel.de ([91.64.81.99])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:20:08 +0200
Received: from holger by 91-64-81-99-dynip.superkabel.de with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:20:08 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Holger Freyther <holger@freyther.de>
Date: Wed, 11 Jun 2014 06:19:49 +0000 (UTC)
Message-ID: <loom.20140611T081745-106@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 91.64.81.99 (Mozilla/5.0 (X11;
	Linux i686) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/35.0.1916.114 Safari/537.36)
Subject: pseudo source gone missing?
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
X-List-Received-Date: Thu, 12 Jun 2014 10:20:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Good Morning,

pseudo_1.5.1.bb refers to a URL like this
http://www.yoctoproject.org/downloads/${BPN}/${BPN}-${PV}.tar.bz2
but that is not were the sourcecode is located anymore. It looks
like an infrastructure problem? Should I report a bug somewhere
or can this be easily fixed?

holger


