Return-Path: <cmorgan@cybexintl.com>
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DD00E0056D
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 16:54:09 -0800 (PST)
Received: from [216.82.250.179:4183] by server-2.bemta-12.messagelabs.com id
	89/D7-23225-DA95D825; Thu, 21 Nov 2013 00:54:05 +0000
X-Env-Sender: cmorgan@cybexintl.com
X-Msg-Ref: server-16.tower-210.messagelabs.com!1384995244!6799565!1
X-Originating-IP: [12.216.199.31]
X-StarScan-Received: 
X-StarScan-Version: 6.9.13; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22659 invoked from network); 21 Nov 2013 00:54:05 -0000
Received: from unknown (HELO c1mxip01.na.cybexintl.com) (12.216.199.31)
	by server-16.tower-210.messagelabs.com with AES128-SHA encrypted SMTP;
	21 Nov 2013 00:54:05 -0000
Received: from c1mxip01.na.cybexintl.com ([169.254.1.202]) by
	c1mxip01.na.cybexintl.com ([169.254.1.202]) with mapi id 14.02.0347.000;
	Wed, 20 Nov 2013 19:54:04 -0500
From: Chris Morgan <cmorgan@cybexintl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Proxy server related package fetching issues
Thread-Index: AQHO5lQsLxEwfylCSUmAnPVsPHxdwg==
Date: Thu, 21 Nov 2013 00:54:03 +0000
Message-ID: <CEB2C3D7.12735%cmorgan@cybexintl.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.8.130913
x-originating-ip: [24.181.225.109]
MIME-Version: 1.0
Subject: Proxy server related package fetching issues
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
X-List-Received-Date: Thu, 21 Nov 2013 00:54:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <241FB683199CE54F823D88D62B5E4FDF@cybexintl.com>
Content-Transfer-Encoding: quoted-printable

Hello.

I=92ve been working to build an angstrom build and have had some issues wit=
h our corporate proxy server blocking the fetching of some packages, either=
 because of the protocol/port or because the site was for some reason flagg=
ed. In my case it took several hours to determine that the failure wasn=92t=
 due to a missing file, I tried on another network connection and everythin=
g worked.

I=92m posting here to see if anyone has had similar experience and if so, a=
ny details you=92d be willing to provide, how you detected/debugged the iss=
ue and how long it took, and how you resolved the issue.

Thanks,
Chris

