Return-Path: <cmorgan@cybexintl.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A4DCE00282
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 10:25:52 -0800 (PST)
Received: from [216.82.242.179:63889] by server-12.bemta-8.messagelabs.com id
	C9/F0-06553-E205E825; Thu, 21 Nov 2013 18:25:50 +0000
X-Env-Sender: cmorgan@cybexintl.com
X-Msg-Ref: server-8.tower-86.messagelabs.com!1385058340!44932033!2
X-Originating-IP: [12.216.199.31]
X-StarScan-Received: 
X-StarScan-Version: 6.9.13; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 25669 invoked from network); 21 Nov 2013 18:25:42 -0000
Received: from unknown (HELO c1mxip01.na.cybexintl.com) (12.216.199.31)
	by server-8.tower-86.messagelabs.com with AES128-SHA encrypted SMTP;
	21 Nov 2013 18:25:42 -0000
Received: from c1mxip01.na.cybexintl.com ([169.254.1.202]) by
	c1mxip01.na.cybexintl.com ([169.254.1.202]) with mapi id 14.02.0347.000;
	Thu, 21 Nov 2013 13:25:40 -0500
From: Chris Morgan <cmorgan@cybexintl.com>
To: "Michael_E_Brown@Dell.com" <Michael_E_Brown@Dell.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Proxy server related package fetching issues
Thread-Index: AQHO5lQsLxEwfylCSUmAnPVsPHxdwpowAFCwgAABK4A=
Date: Thu, 21 Nov 2013 18:25:39 +0000
Message-ID: <CEB3BA21.12768%cmorgan@cybexintl.com>
References: <CEB2C3D7.12735%cmorgan@cybexintl.com>
	<DB6E482E89290547898851B8CC9D8110012FAE31A4@AUSX7MCPS302.AMER.DELL.COM>
In-Reply-To: <DB6E482E89290547898851B8CC9D8110012FAE31A4@AUSX7MCPS302.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.9.131030
x-originating-ip: [10.10.1.118]
MIME-Version: 1.0
Subject: Re: Proxy server related package fetching issues
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
X-List-Received-Date: Thu, 21 Nov 2013 18:25:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <21CE9F4AB163C044BFE6E7D4E3088929@cybexintl.com>
Content-Transfer-Encoding: quoted-printable

Hi Michael.

You do that  because of the same issue where something on the network is bl=
ocking the package fetching? When you say you update the sources offline do=
 you mean from a home network or something?

Chris


From: "Michael_E_Brown@Dell.com<mailto:Michael_E_Brown@Dell.com>" <Michael_=
E_Brown@Dell.com<mailto:Michael_E_Brown@Dell.com>>
Date: Thursday, November 21, 2013 at 1:22 PM
To: Chris Morgan <cmorgan@cybexintl.com<mailto:cmorgan@cybexintl.com>>, "yo=
cto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctoproject.or=
g<mailto:yocto@yoctoproject.org>>
Subject: RE: Proxy server related package fetching issues


Dell - Internal Use - Confidential
For my group, I keep a separate git repository updated with all the require=
d sources. I update the sources offline and set bitbake to not use the netw=
ork. You can usually download the required sources from the yocto project m=
irror.
--
Michael

-----Original Message-----
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Chris Morgan
Sent: Wednesday, November 20, 2013 6:54 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Proxy server related package fetching issues

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
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

