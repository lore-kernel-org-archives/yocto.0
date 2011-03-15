Return-Path: <julie.n.fleischer@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1ADAE4C8009D
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2011 18:00:09 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Mar 2011 16:00:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="667629705"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 15 Mar 2011 16:00:08 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Mar 2011 16:00:08 -0700
Received: from orsmsx506.amr.corp.intel.com ([10.22.226.44]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Tue, 15 Mar 2011 16:00:08 -0700
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 15 Mar 2011 16:00:07 -0700
Thread-Topic: Notes from Release Tracking Meeting
Thread-Index: AcvjZLqqBXX5785qSnm+2uCJ9hNOew==
Message-ID: <4F65016F6CB04E49BFFA15D4F7B798D90159543930@orsmsx506.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Notes from Release Tracking Meeting
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
X-List-Received-Date: Tue, 15 Mar 2011 23:00:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,
Here are the notes from the March 15th Yocto Release Tracking Meeting.  Fee=
l free to send on changes/corrections.
Thanks.
- Julie

Attendees:  Julie, Tom, Kevin Tian, Dave, Jeff Polk, Qing, Richard, Beth, D=
arren, Kevin McCombe, Saul, Jessica, Mark

See Release Criteria Status at:  https://wiki.yoctoproject.org/wiki/Yocto_P=
roject_v1.0_Release_Criteria#Yocto_v1.0_Release_Criteria

General bug status:
** All bugs need to be fixed by 9am Pacific on March 18th. **
** ONLY bugs listed on the Release Criteria (or new critical/high items) wi=
ll be added to Bernard. **
** Before a fix goes in, Richard, Beth, Saul/Kevin, Jessica, Dave need to a=
gree the patch can go in. **
** Team will do daily bug meetings at 7am Pacific and 8pm Pacific. **

Action Item:  Beth/Richard will discuss using different directories for Pok=
y and Poky-lsb.
Action Item:  Beth/others:  Determine if we can reduce the number of images=
 we build.  (We discussed that images were added at the request of others.)
Action Item:  All:  If you have /home directories on autobuilder with large=
 files, please remove so Beth has room on autobuilder.
Action Item:  Tom:  Investigate Crownbay EMGD build issue where it was pick=
ing up the wrong checksum.  Beth will give Tom info to reproduce.
Action Item:  Chris:  Send a note to discuss the timing for getting the dem=
o hardware to ELC.


-----------------------
Julie Fleischer
Open Source Technology Center
Intel Corporation



