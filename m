Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A4E1E00404
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 11:10:04 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VJ5uU-0003P4-OJ
	for yocto@yoctoproject.org; Mon, 09 Sep 2013 20:10:02 +0200
Received: from correo.horus.es ([2.139.157.236])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 20:10:02 +0200
Received: from jose.ferreiro by correo.horus.es with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 20:10:02 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: jfc <jose.ferreiro@horus.es>
Date: Mon, 9 Sep 2013 18:05:31 +0000 (UTC)
Message-ID: <loom.20130909T200332-57@post.gmane.org>
References: <4F02005F.4080705@algarvio.me>
	<20120104055803.GL31275@sakrah.homelinux.org>
	<4F0454F0.3000107@algarvio.me>
	<20120104133608.GE6485@jama.jama.net>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 2.139.157.236 (Mozilla/5.0 (Windows NT 5.1;
	rv:23.0) Gecko/20100101 Firefox/23.0)
Subject: Re: Python Math Module
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
X-List-Received-Date: Mon, 09 Sep 2013 18:10:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Martin Jansa <martin.jansa@...> writes:

> 
> On Wed, Jan 04, 2012 at 01:32:32PM +0000, Pedro Algarvio wrote:
> > First of all, Thanks!
> > 
> > So basically, for a smaller space, python is split into several
> > packages, how can I known which packages exist?
> 

Hi

bitbake -e python | grep "PACKAGES"

Correct?

Good luck

PF: testing post.gname.org



