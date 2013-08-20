Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA405E00747
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 08:30:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2013 08:28:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,921,1367996400"; 
	d="scan'208,217";a="365623616"
Received: from unknown (HELO [10.255.14.105]) ([10.255.14.105])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2013 08:30:55 -0700
Message-ID: <52138BAE.9040104@linux.intel.com>
Date: Tue, 20 Aug 2013 08:30:54 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130805 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 20, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 20 Aug 2013 15:30:56 -0000
X-Groupsio-MsgNum: 15549
Content-Type: multipart/mixed; boundary="------------010308030100090905080703"

--------------010308030100090905080703
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-1">
    <meta name="Generator" content="Microsoft Exchange Server">
    <!-- converted from rtf -->
    <style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left: #800000 2px solid; } --></style>
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <font size="-1"></font>* SWAT team rotation: Ross -&gt; Cristiana<br>
    <font size="-1">
      <div>Attendees:</div>
      <div>DavidW, Nitin, SteveL, Saul, DaveST, Beth, ChrisL, ScottR,
        TomZ, MichaelH, MarkH, Denys, BruceA, Cristian, Cristiana,
        Richard, JeffP, Darren, Belen, Simar, PaulE, Song&nbsp; </div>
      <div>&nbsp;</div>
      <div>Welcome back, Richard!</div>
      <div>&nbsp;</div>
      <div>Agenda:</div>
      <div>&nbsp;</div>
      <div>* Opens collection - 5 min (Song)</div>
      <div>* Yocto 1.5 status - 10 min (Song/team)</div>
      <div>&nbsp; <a
          href="https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status"><font
            color="blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status</u></font></a></div>
      <div><font size="-1">&nbsp; M4 Freeze Date: Aug 25th<font size="-1">,
            th<font size="-1">is also the 1.5 Feature Freeze!!</font></font><br>
          &nbsp; Feature<font size="-1">s in flight: <br>
            <font size="-1">&nbsp;&nbsp; - <font size="-1">Web Ho<font size="-1">b
                  groundwork<br>
                  <font size="-1">&nbsp;&nbsp; <font size="-1">- Package
                      Exclusion (4079)<br>
                      <font size="-1">&nbsp;&nbsp; - Bastille Security Testing in
                        meta-security (3867 + 4600)<br>
                        <font size="-1">&nbsp;&nbsp; - Deployment work -
                          partitioning descript<font size="-1">ion and
                            tooling (3847)</font></font><br>
                      </font></font></font></font></font></font></font><font
            size="-1">&nbsp; <font size="-1">Distro Testing - <br>
              <font size="-1">&nbsp; - Issues with F19 and Qemu<font
                  size="-1">, bu<font size="-1">g filed<font size="-1">
                      (4973)</font><br>
                    <font size="-1">&nbsp; <font size="-1">- Need to test
                        Ubuntu 1<font size="-1">3.10 (Sau<font size="-1">cy
                            Salamand<font size="-1">er)</font></font></font></font></font><br>
                    <br>
                  </font></font></font></font></font>SWAT Rotation: </font>Cristiana<font
          size="-1"><font size="-1"> -&gt; </font>Cristian<br>
          <br>
        </font></div>
      <div>* Opens - 10 min </div>
      <div>&nbsp; - Paul: 1.4.2<font size="-1"> rc<font size="-1">1</font> is
          in testing </font>now for Full past and will be re<font
          size="-1">leased short if all goes well.<br>
        </font><font size="-1"></font></div>
      <br>
      <div>* Team Sharing - 20 min<br>
        <font size="-1">&nbsp; - Mark: Package Excl<font size="-1">usion Code
            posted with comments from Paul about data st<font size="-1">o<font
                size="-1">rage, wou<font size="-1">ld more comments on
                  List<br>
                  <font size="-1">&nbsp; - Michael: Security work on the
                    infrastructure and firewalls</font>, need to <font
                    size="-1">schedule<font size="-1"></font> a longer <font
                      size="-1">downtime, as long as an hour<br>
                      <font size="-1">&nbsp;&nbsp;&nbsp; for web<font size="-1">
                          servers and up to 5 hours for the build
                          Servers.</font></font><br>
                    </font></font></font></font></font></font></font></div>
      <div>&nbsp;</div>
    </font>
  </body>
</html>

--------------010308030100090905080703
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


--------------010308030100090905080703--
