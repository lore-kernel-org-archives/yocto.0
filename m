Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D8BAE006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 08:56:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Mar 2013 08:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="273055590"
Received: from unknown (HELO [10.255.13.175]) ([10.255.13.175])
	by azsmga001.ch.intel.com with ESMTP; 19 Mar 2013 08:55:51 -0700
Message-ID: <51488A86.1090807@linux.intel.com>
Date: Tue, 19 Mar 2013 08:55:50 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 19, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 19 Mar 2013 15:56:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Attendees:

Saul, MichaelH, MarkH, JeffP, Beth, Richard, KevinS, TomZ, DaveST,
JessicaZ, ScottR, Nitin, Corneliu, RossB, PaulE, AlexD, SeanH

Notes:

* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Ross)
   - 1.3.1 has a couple of bugs from QA, but nothing critical
     - marked for 1.3.2, no regressions noted.
   - Possible to get some Docs updates
   - Release Notes working
   - No objections from CCB for release readiness

* Yocto 1.4 status - 10 min (Song/team)
   https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
   - systemd changes coming from Ross tomorrow for 1.4M5 Build
   - There are a couple QA failures from testing last week

   *** RP Named 1.4 Dylan!

  * SWAT team rotation: Andrei Dinu -> Cristiana Voicu

* Opens - 10 min
   - Beth - New Autobuilder
     Apologies for Spaming due to issue in git fetcher
     Networking issues resolved
     Autobuilder ports have changed, new port is 8011
     ** Reminder AB logs should not be pointed to by Bugzilla, please 
cut and paste

* Team Sharing - 20 min
   - AlexD - Working on High bugs Qemu VMware issue
   - Mark - Perl & allarch multilib, should not be allarch, please review
            perl for one multilib might use a different directory with
            shared library bits.
   - MichaelH, speeding up mailing list issues,
               yocto-admin@yoctoproject.org for issues
   - Richard - package.bbclass performance tuning using cached stat 
calls, 800,000 stat calls reduced to about 160,000 stat calls down from 
2minutes to 10secs, possible issues with data life time with creating or 
moving files.  Separating build ${B} vs source ${S}, stream of patches 
to allow this in packages.


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto



