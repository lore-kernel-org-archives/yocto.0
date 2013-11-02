Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2188E00503
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 10:15:12 -0700 (PDT)
Received: from [173.34.6.101] (port=41651 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vcemz-0001Ep-Es
	for yocto@yoctoproject.org; Sat, 02 Nov 2013 13:15:09 -0400
Date: Sat, 2 Nov 2013 13:15:04 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311021306510.26003@oneiric>
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
Subject: so how does PACKAGECONFIG really work?
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
X-List-Received-Date: Sat, 02 Nov 2013 17:15:13 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  most of the way thru the variable glossary and this one confuses me.
from here:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG

we have:

"This variable provides a means of enabling or disabling features of a
recipe on a per-recipe basis. PACKAGECONFIG blocks are defined in
recipes when you specify features and then arguments that define
feature behaviors. Here is the basic block structure:

     PACKAGECONFIG ??= "f1 f2 f3 ..."
     PACKAGECONFIG[f1] = "--with-f1,--without-f1,build-deps-f1,rt-deps-f1"
     PACKAGECONFIG[f2] = "--with-f2,--without-f2,build-deps-f2,rt-deps-f2"
     PACKAGECONFIG[f3] = "--with-f3,--without-f3,build-deps-f3,rt-deps-f3"

which *seems* to suggest that you must first set PACKAGECONFIG to the
list of features, but i see numerous examples that don't seem to obey
that condition.

 from meta-oe/recipes-extended, this looks good:

gnuplot/gnuplot.inc:PACKAGECONFIG ??= "cairo"
gnuplot/gnuplot.inc:PACKAGECONFIG[cairo] = "--with-cairo,--without-cairo,cairo pango"

 this looks like it's missing a reference to "ftdi":

lcdproc/lcdproc5.inc:PACKAGECONFIG ??= "usb"
lcdproc/lcdproc5.inc:PACKAGECONFIG[usb] = "--enable-libusb,--disable-libusb,virtual/libusb0"
lcdproc/lcdproc5.inc:PACKAGECONFIG[ftdi] = "--enable-libftdi,--disable-libftdi,libftdi"

 and this looks, well, totally wrong (at least according to the
explanation in the manual):

collectd/collectd_5.2.2.bb:PACKAGECONFIG ??= ""
collectd/collectd_5.2.2.bb:PACKAGECONFIG[snmp] = "--enable-snmp,--disable-snmp --with-libnetsnmp=no,net-snmp"
collectd/collectd_5.2.2.bb:PACKAGECONFIG[libmemcached] = "--with-libmemcached,--without-libmemcached,libmemcached"
collectd/collectd_5.2.2.bb:PACKAGECONFIG[iptables] = "--enable-iptables,--disable-iptables,iptables"
collectd/collectd_5.2.2.bb:PACKAGECONFIG[postgresql] = "--enable-postgresql,--disable-postgresql,postgresql"
collectd/collectd_5.2.2.bb:PACKAGECONFIG[dbi] = "--enable-dbi,--disable-dbi,libdbi"
collectd/collectd_5.2.2.bb:PACKAGECONFIG[modbus] = "--enable-modbus,--disable-modbus,libmodbus"
collectd/collectd_5.2.2.bb:PACKAGECONFIG[libowcapi] = "--with-libowcapi,--without-libowcapi,owfs"
collectd/collectd_5.2.2.bb:PACKAGECONFIG[sensors] = "--enable-sensors,--disable-sensors,lmsensors"

 so ... clarification? oh, and while i'm here, it's easy enough to use
the "bb" utility to print PACKAGECONFIG:

$ bb show -r gnuplot PACKAGECONFIG
Parsing recipes..done.
PACKAGECONFIG="cairo"
$

but is there a way to display the value of PACKAGECONFIG[cairo]? "bb"
doesn't seem prepared to do something like that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

