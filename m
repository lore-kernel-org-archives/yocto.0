Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B380AE0167D
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 08:31:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Oct 2013 08:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1057,1371106800"; 
	d="scan'208,217";a="413578774"
Received: from unknown (HELO [10.255.15.229]) ([10.255.15.229])
	by fmsmga002.fm.intel.com with ESMTP; 08 Oct 2013 08:31:05 -0700
Message-ID: <52542539.8080407@linux.intel.com>
Date: Tue, 08 Oct 2013 08:31:05 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130923 Thunderbird/17.0.9
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, October 8, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 08 Oct 2013 15:31:08 -0000
X-Groupsio-MsgNum: 16407
Content-Type: multipart/mixed; boundary="------------010409010005060900000407"

--------------010409010005060900000407
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
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="-1">
    </font><font size="-1">
      <div>Attendees:<br>
        <font size="-1">Darren, ScottR, Bjorn, Paul, Bruce, Tom,
          Michael, Ross, Nitin, Beth, Richard, Saul, I<font size="-1">onut</font>,
          JeffP, A<font size="-1">l</font>exG, JessicaZ, Den<font
            size="-1">ys</font><br>
          <br>
        </font></div>
      <div>Agenda:</div>
      <div>&nbsp;</div>
      <div>* Opens collection - 5 min (Song)<br>
        <font size="-1">&nbsp; - Dylan Patch Queue</font><br>
      </div>
      <div>* Yocto 1.5 status - 10 min (Song/team)</div>
      <div>&nbsp; <a
          href="https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status"><font
            color="blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status</u></font></a></div>
      <div>&nbsp; - <font size="-1">One Issue with SDK TARGET<font size="-1">_ARCH
            vs TUNE<font size="-1">_ARCH Change<br>
              <font size="-1">&nbsp; - Plan to get builds going to build
                today to start, with QA doing Full Pass</font><br>
              <font size="-1">&nbsp; - Beth will start the packaging pending
                final Release Approval<br>
                <font size="-1">&nbsp; - Looking for a Volunteer for 1.5
                  Stable Maintainer<br>
                  <br>
                  <font size="-1"><font size="-1">* Yocto 1.6 Planning:<br>
                      <font size="-1">&nbsp;- Please enter your 1.6 Feature <font
                          size="-1">requests into Bugzilla</font></font><br>
                    </font></font></font><br>
              </font></font></font></font></div>
      <div>* SWAT team rotation: Saul</div>
      <div>* Opens - 10 min<br>
        <font size="-1">&nbsp; - <font size="-1">Dylan Patch Queue - Paul<br>
            <font size="-1">&nbsp;&nbsp; - P<font size="-1">lanning a build <font
                  size="-1">after the RC6 Master complete<br>
                  <font size="-1">&nbsp;&nbsp; -<font size="-1"> Please submit any
                      dylan patches to </font></font><br>
                </font></font></font></font></font></div>
      <div><br>
        <font size="-1"></font>* Team Sharing - 20 min<br>
        &nbsp; <font size="-1">- Richard:</font><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - G++ Bug with 256 Memory (Bug #5133) visible on<font
          size="-1">&nbsp;</font> ARM Hardware and QemuArm, QemuMips and
        QemuPP<font size="-1">C</font><br>
        <font size="-1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Working on tighter reproducer, need<font
            size="-1"> help from good compiler person</font><br>
          <font size="-1">&nbsp; - Michael<br>
            <font size="-1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <font size="-1">Downloads will come
                from the new data<font size="-1">ce<font size="-1">nter</font></font></font></font><br>
            <font size="-1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Labs for Yocto Dev<font size="-1">Day</font></font><br>
            <font size="-1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - <font size="-1">W<font size="-1">ill
                  Update AB Infrstructure later this week with la<font
                    size="-1">test OSes</font></font></font></font><br>
            <br>
          </font></font></div>
    </font><font size="-1">
    </font>
  </body>
</html>

--------------010409010005060900000407
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="Attached Message Part"

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


--------------010409010005060900000407--
