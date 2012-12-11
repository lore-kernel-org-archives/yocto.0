Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A9DEE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 11:11:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Dec 2012 11:11:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,260,1355126400"; d="scan'208";a="262549316"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.13.105])
	by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2012 11:11:41 -0800
Message-ID: <50C7856D.6040502@linux.intel.com>
Date: Tue, 11 Dec 2012 11:11:41 -0800
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
X-List-Received-Date: Tue, 11 Dec 2012 19:11:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Attendees:
PaulE, MihaiL, MichaelH, LaurentuiS, TomZ, ScottR, CristianI, JeffP, 
MarkH, RichardP, JessicaZ, Nitin, Eran, DavidW, Ramana, Saul and 
possibly others lurking

Minutes:

* Opens collection - 5 min (Song)
* Yocto 1.4 status - 10 min (Song/team)
   - 1.4 / Master: a couple of issues with ICU and guile, the ICU issue 
is causing webkit-gtk to break in the world build
   - 1.3.1 / Danny: Recent build was green and will be pulled into the 
danny branch, expect a QA to happen in the new year at this point and a 
release in January.
   - 1.2.2 / Denzil: In full pass testing currently, expect that to be 
done by end of week
   - QA: Xmas break means people gone, expect lighter testing until 1/7

* SWAT team rotation: Ioana Grigoropol -> Cristian I (volunteered)
* Opens - 2 min
   - Eren: BSP for ALIX 3D3 board, which has AMD Geode LX CPU, 
http://pcengines.ch/alix3d3.htm

* Team Sharing - 10 min
   - Richard: PR Server has been updated and as said last week will be 
put into service this week. He is looking into Export Functionality
   - Mark: Smart work with Paul, looking at NativeSDK and Smart with RPM 
installing packages
   - ScottR: Bitbake Manual is getting some attention from Bill Traynor, 
the directory name for the Reference Manual will be changing.
   - Halstead: Working with Phabricator, maintaining the NAS and 
diskspace management, only keep older builds for 14 days, allows for 
more free space.  Creating Repos and ML for meta-virtualization and 
meta-raspberry-pi.

Quick meeting thanks all

Sau!


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto



