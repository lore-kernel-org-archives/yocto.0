Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F868E00740
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 07:28:58 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:44646 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tuly4-0007So-Kw; Mon, 14 Jan 2013 10:28:56 -0500
Date: Mon, 14 Jan 2013 10:28:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Jerrod Peach <peachj@lexmark.com>
In-Reply-To: <CA+QkY1BDAof70=YAjtkpwH3ZpV5doDiVBuySZyq9YOiuajTQJQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1301141025560.6889@oneiric>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D23083@ORSMSX101.amr.corp.intel.com>
	<CA+QkY1BDAof70=YAjtkpwH3ZpV5doDiVBuySZyq9YOiuajTQJQ@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: SRCPV description
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
X-List-Received-Date: Mon, 14 Jan 2013 15:28:58 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  it might be worth tweaking the comment in fetch2/__init__.py, which
currently reads:

def get_srcrev(d):
    """
    Return the version string for the current package
    (usually to be used as PV)


  no, it's primarily used not *as* PV but in the *construction* of PV,
as in:

meta/conf/bitbake.conf:SRCPV = "${@bb.fetch2.get_srcrev(d)}"
...
meta/recipes-bsp/x-load/x-load_git.bb:PV = "1.5.0+git${SRCPV}"

  so, pedantically, that routine is used as SRCPV, which is
subsequently used in the final construction of PV.  QED.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

