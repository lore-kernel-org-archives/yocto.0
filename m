Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B462E01454
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2013 10:06:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 08 Jan 2013 10:05:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,432,1355126400"; d="scan'208";a="243540451"
Received: from unknown (HELO [10.255.14.104]) ([10.255.14.104])
	by orsmga001.jf.intel.com with ESMTP; 08 Jan 2013 10:06:37 -0800
Message-ID: <50EC602C.7050109@linux.intel.com>
Date: Tue, 08 Jan 2013 10:06:36 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 8, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 08 Jan 2013 18:06:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Attendees:
PaulE, MihaiL,  LaurentuiS, TomZ, ScottR, SeanH, EranT, Amit, JessicaZ, 
Nitin, KevinS, BruceA, CorneliuxS, RossB, Saul and possibly others lurking

Minutes:
* Opens collection

* Yocto 1.2.2 status (Saul for Scott)
   - In Full pass testing right now, planning for release next week.
   - QA Testing planned by end of week.
* Yocto 1.3.1 / Danny (Ross)
   - Few more patches have been merged, ready for QA
* Yocto 1.4 / Milestone 2/3
   - Many patches merged, currently we have some major functionality 
pending for systemd and wayland, there is also an issue with the headers 
build currently being worked.
   - Need to schedule QA for 1.4 based on getting functionality in


* SWAT team rotation: Cristiana Voicu -> Radu Moisan

* Opens - 2 min
   - Darren - Deployment
     Discussion on the mailing list and in IRC, Assembling images, 
partition types, ramdisk and filesystems, unifiying filesystem 
generation without root privs, ext3 and ext4 have gap because of missing 
functionality. Patches being reviewed on EXTFS mailing list, needs some 
test suite
Mark: Installs based on package feeds, run same bitbake code for image 
generation. Working on it currently, expect RFC in a couple of weeks.
Script with config files. Cross or target based install via some 
interface, using same bitbake backend code. Still Prototype mode.
Darren: Live and Partitioned images is sub-optimal, parted type script 
to create disk image, POC created, but needs integration work
Memory based FS, Disk Based and Live Type.

   - Scott Rif - Bitbake Manual
     http://git.openembedded.org/bitbake/log/?h=wmat
     https://wiki.yoctoproject.org/wiki/BitBake/UserManual
     Bill Traynor would like review of the manaual, please take a look
   - Corneliu - Testopia
     - Officially Launched:
       https://bugzilla.yoctoproject.org/tr_show_product.cgi
     - Open to the community to add tests or create test plans
     - https://wiki.yoctoproject.org/wiki/Testopia
     - Contact Corneliu if you have questions, please contact
         corneliux.stoicescu@intel.com
     - extensions planned for the wiki to generate

* Team Sharing - 10 min
Alex D: Wayland Patches are on the list for review, ran into an issue 
with eglibc-initial
RP: DUring his vacation, playing with RaspberryPi: 
http://www.rpsys.net/avrpi.jpg


Sau!


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto





