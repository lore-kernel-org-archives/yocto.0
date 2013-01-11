Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A94E01301
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 02:25:00 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1TtbnV-00084U-AU
	for yocto@yoctoproject.org; Fri, 11 Jan 2013 11:25:13 +0100
Received: from ppp089210059044.access.hol.gr ([89.210.59.44])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 11:25:13 +0100
Received: from gmane by ppp089210059044.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 11:25:13 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 11 Jan 2013 12:24:47 +0200
Message-ID: <kcop9d$mfv$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210059044.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
Subject: gcov on target
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
X-List-Received-Date: Fri, 11 Jan 2013 10:25:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I use Yocto Project, 1.3 "danny" for a beagle-xm and would like to show
kernel code coverage with a core-image-sato-sdk.
This image is pretty complete. Unfortunately there is no gcov available
on the target.

It looks like it's only built for the host.

Did someone manage to build/run gcov for an armv7a?
... or let's put it otherwise: Why doesn't it exist on the target?

Regards,

Robert...The most likely way for the world to be destroyed, most experts
agree, is by accident. That's where we come in; we're computer
professionals. We cause accidents.

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



