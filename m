Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 314DAE009A5; Tue,  7 Feb 2017 10:30:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 232 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Feb 2017 10:30:02 PST
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC7ECE008D0
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 10:30:02 -0800 (PST)
Received: from 1cbASt-0001Hb-Vq by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1cbASu-0001IZ-TJ; Tue, 07 Feb 2017 10:26:08 -0800
Received: by emcmailer; Tue, 07 Feb 2017 10:26:08 -0800
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1cbASt-0001Hb-Vq; Tue, 07 Feb 2017 10:26:07 -0800
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0319.002; Tue, 7 Feb 2017 19:26:07 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
Thread-Topic: [yocto] Minutes: Yocto Project Technical Team Meeting -
	Tuesday, Feb 7, 2017 8:00 AM US Pacific Time
Thread-Index: AdKBWt6kWtr2LUkvTrmq0NVtsZB2UAACOa2A
Date: Tue, 7 Feb 2017 18:26:06 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48AC31DB92@SESTOEX04.enea.se>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E573584DF@fmsmsx111.amr.corp.intel.com>
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E573584DF@fmsmsx111.amr.corp.intel.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.1.188]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, Feb 7, 2017 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 07 Feb 2017 18:30:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jolley,

Cve-check tool fails on master and latest morty, I have created following b=
ug (Jussi is working on this):=20
Bug=A011026 - cve-check: Error in executing cve-check-update

Some background info about this tool:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
cve-check tool has been supported since the Morty release. This tool is not=
 perfect (we get many false positives and false negatives) but it is better=
 than nothing. This tool is using the nvd database which reads CVE data fro=
m Mitre. Sometimes Mitre doesn't  have the correct/updated info about CVEs.=
=20

EX: CVE-2016-2147 is listed=A0:

 https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-2147

** RESERVED ** This candidate has been reserved by an organization or indiv=
idual that will use it when announcing a new security problem. When the can=
didate has been publicized, the details for this candidate will be provided=
.

So this CVE will not be in the nvd database and will not be detected by cve=
-check tool.

There are other similar problems with nvd database but some of these can be=
 fixed /improved eventually.
=20

My suggestion is to run this tool on master e.g. weekly when a release is a=
pproaching. It is easier to upgrade a package version to address CVEs on ma=
ster rather than on maintenance/release branches.

People caring about security could voluntarily check the result (cve.log) o=
r we can have responsible maintainer, rotating on a weekly/bi-weekly basis.

Related issues, hopefully someone will have time to work on these :)
Bug=A010771 - cve-check tool does not detect and report all relevant CVEs=20
Bug=A010772 - Automatic generation of CVE-reports

Let me know if you have further question.

Thanks for paying attention to this issue.
//Sona

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jolley, Stephen K
Sent: den 7 februari 2017 17:27
To: yocto@yoctoproject.org
Subject: [yocto] Minutes: Yocto Project Technical Team Meeting - Tuesday, F=
eb 7, 2017 8:00 AM US Pacific Time

Attendees: Stephen, Armin, Stephano Sona, Ross, Joshua, Jussi, Saul, Sveins=
e, Richard, =A0

Agenda:
=A0
* Opens collection - 5 min (Stephen)
* Yocto Project status - 5 min (Stephen/team)
YP 2.3 M2 rc3 is in QA.=A0=20
YP 2.3 M3 target cut off is Feb. 27th.
YP 2.2.1 should go into QA after YP 2.3 M2 is out.
https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status
https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule
https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features=20
* Opens - 10 min=20
* Team Sharing - 10 min
Sona - CVE Check tool doesn't currently build on master.=A0 Jussi discussed=
 that patches to fix it should be sent this week. =A0We has some issues wit=
h the tool and discussed if we can get this into QA. We need an automated t=
est script to add testing the tool to QA.=20
Richard - How are recipe specific sysroots doing?=A0 No issues not filed in=
 bugzilla yet.=20

Thanks,

Stephen K. Jolley
Yocto Project Program Manager
INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124=20
I =A0=A0Work Telephone:=A0=A0=A0=A0=A0=A0=A0 (503) 712-0534
(=A0=A0=A0 Cell:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (208) 244-4460
((Email:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 stephen.k.jolley@intel.com


