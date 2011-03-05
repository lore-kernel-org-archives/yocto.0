Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E0754C80050
	for <yocto@yoctoproject.org>; Sat,  5 Mar 2011 09:23:18 -0600 (CST)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1PvtK6-0001YB-Cz
	for yocto@yoctoproject.org; Sat, 05 Mar 2011 16:23:14 +0100
Received: from ppp079166130230.dsl.hol.gr ([79.166.130.230])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 05 Mar 2011 16:23:14 +0100
Received: from gmane by ppp079166130230.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 05 Mar 2011 16:23:14 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 05 Mar 2011 17:22:58 +0200
Organization: Reliable Embedded Systems
Message-ID: <iktkgj$rpj$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166130230.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
Subject: yocto supported freescale eval boards
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 05 Mar 2011 15:23:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

A customer asked for a training with a freescale eval board and I would
like to use yocto for it.

What I found from the documentation is, that the MPC8313E-RDB Reference
Platform is supported. I'm a bit confused by a list, which can be found
on the Freescale website:

http://www.freescale.com/webapp/sps/site/prod_summary.jsp?code=MPC8313E-RDB&tab=Buy_Parametric_Tab&pspll=1&fromSearch=false

It says:
MPC8313E-RDB,Hardware Only 8313E PROCESSOR BD (SOCK 	Hardware 	Not
Recommended for New Design)

MPC8313E-RDB-T, MPC8313E-RDB-U, MPC8313E-RDB-UT, MPC8313E-RDBB seem to
be still supported. What's the difference? What would you recommend?


Besides the PPC the iMX31ADS seems to be supported as well.

What would you recommend? Are there more Freescale eval boards going to
be supported by yocto in the near future?

Regards,

Robert...In all large corporations, there is a pervasive fear that
someone, omewhere is having fun with a computer on company time.
Networks help alleviate that fear.

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



