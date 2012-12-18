Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE1A8E0034C
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 10:00:42 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Dec 2012 10:00:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,309,1355126400"; d="scan'208";a="233422252"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.13.212])
	by azsmga001.ch.intel.com with ESMTP; 18 Dec 2012 10:00:41 -0800
Message-ID: <50D0AF49.7070208@linux.intel.com>
Date: Tue, 18 Dec 2012 10:00:41 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, December 11, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 18 Dec 2012 18:00:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Attendees:
PaulE, MihaiL, MichaelH, LaurentuiS, TomZ, ScottR, SeanH, EranT, Amit, 
JessicaZ, Nitin, KevinS, BruceA, CorneliuxS, RossB, Saul and possibly 
others lurking

Minutes:
* Opens collection - 5 min (Song)

* Yocto 1.4 status - 10 min (Song/team)
   - 1.4 / Master: Master is moving slower through the holidays due to 
Richard on vacation. Saul will be consolidating patches in 
stage/master_under_test.  Milestone 2 will be delayed into the New Year 
and will be getting the SMART and SystemD changes, expect a systemd RFC 
in the next day or so.
   - 1.3.1 / Danny (Ross): Richard merged Ross's danny-next into danny, 
expecting QA in early Jan with release time of Late Jan/ Early Feb.
   - 1.2.2 / Denzil: Full pass testing due today, may have more patches 
pending.
   - QA: Xmas break means people gone, expect lighter testing until 1/7
AR for QA Team: Plan 3 Full pass test cycles in Jan for M2, 1.2.2 and 
1.3.1 (in that order).

* SWAT team rotation: Cristian I -> Andrei Dinu
    - Thanks to Mihai L to point out the wiki page
    - I will send email rotation reminders as we progress through the 
holidays.

* Opens - 2 min
   - Eren: BSP for ALIX 3D3 BSP
He has started on the BSP and is working on graphics (x drivers), wanted 
some suggestions on kernel building strategies, Bruce mentioned the 
ELC-E talk and Darren's recent writeup.
   - Cornel: Testopia
Announce it's usage and open to the Community as a way for Community 
Members and QA Teams can better collaborate. Wiki page is available
https://wiki.yoctoproject.org/wiki/Testopia and via Bugzilla 
http://www.bugzilla.yoctoproject.org (click on Product Dashboard)

* Team Sharing - 10 min
Amit: Checked in quickly say he will be gone about 1 month
Nitin: NUC BSP is now available in meta-intel layer, 
http://www.intel.com/content/www/us/en/motherboards/desktop-motherboards/next-unit-computing-introduction.html
PaulE: Working on Web-based layer Index tool to replace current manual 
wiki page see: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3272
He will also be gone until 1/11/13.

Quick meeting thanks all

Sau!


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto



