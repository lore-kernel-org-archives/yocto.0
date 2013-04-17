Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta4.messagelabs.com (mail1.bemta4.messagelabs.com
	[85.158.143.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E9A3E014B2
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 03:01:50 -0700 (PDT)
Received: from [85.158.143.99:5151] by server-1.bemta-4.messagelabs.com id
	7B/7B-06203-D037E615; Wed, 17 Apr 2013 10:01:49 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-6.tower-216.messagelabs.com!1366192896!21636885!5
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 25915 invoked from network); 17 Apr 2013 10:01:46 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-6.tower-216.messagelabs.com with DHE-RSA-AES256-SHA encrypted
	SMTP; 17 Apr 2013 10:01:46 -0000
X-AuditID: 93eaf2e7-b7fcd6d000002add-c7-516e730ad90c
Received: from ilptexch01.ecitele.com ( [172.31.244.40])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	03.40.10973.A037E615; Wed, 17 Apr 2013 13:01:46 +0300 (IDT)
Received: from ILPTWPVEXCA02.ecitele.com (172.31.244.232) by
	ilptexch01.ecitele.com (172.31.244.40) with Microsoft SMTP Server (TLS)
	id 8.3.264.0; Wed, 17 Apr 2013 13:01:46 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA02.ecitele.com ([fe80::c473:490d:3a7e:e34a%12]) with mapi id
	14.02.0328.009; Wed, 17 Apr 2013 13:01:45 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: use different versions of autoconf and automake in parallel
	for different packages
Thread-Index: Ac47Uo1IcuS3HkhRRoiP/1V2AGf0wA==
Date: Wed, 17 Apr 2013 10:01:45 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE3B272@ILPTWPVEXMB02.ecitele.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {A86520B9-D4D0-46D9-8B1E-03CF1F654098}
x-cr-hashedpuzzle: IyU= QDo= A7DI BEd2 DAHd D3lW EH7F Ekf7 F10F F2hx Gb7J
	GfDv HASc HBx/ H1RE
	JIgk; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {A86520B9-D4D0-46D9-8B1E-03CF1F654098};
	bQBpAGMAaABhAGUAbAAuAGYAYQBpAG4AcwB0AGUAaQBuAEAAZQBjAGkAdABlAGwAZQAuAGMAbwBtAA==;
	Wed, 17 Apr 2013 10:01:40 GMT;
	dQBzAGUAIABkAGkAZgBmAGUAcgBlAG4AdAAgAHYAZQByAHMAaQBvAG4AcwAgAG8AZgAgAGEAdQB0AG8AYwBvAG4AZgAgAGEAbgBkACAAYQB1AHQAbwBtAGEAawBlACAAaQBuACAAcABhAHIAYQBsAGwAZQBsACAAZgBvAHIAIABkAGkAZgBmAGUAcgBlAG4AdAAgAHAAYQBjAGsAYQBnAGUAcwA=
x-originating-ip: [10.4.58.22]
content-transfer-encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA3VTW0gUURjm7EzjtDoxbpqntWKZLpC14raJW6nVQ5EvqSREUWzj7ml3cGZ2
	3RlDeyizwOpBUwNTNC/JamIXuohhUS4YJYZKSRJkNyEvVCS2UmQ146wmRPP0nf/75vu/c/h/
	EjMECSPJiTLyiSzPEHq8YnxyyqyXxMyES5XrbeVjbcQOsKf4SQmRAQ4WgmRWFD0yKyOTE0mO
	FCbDxx1jHQWMiXOmMBbG5OVZBxKQKKcwrNeLRCeTqjf98yUrMk40IdHhcXKiK4VJ25duttkS
	t5gtTOq61RbrNn2Wm5NMyCywHG8SkCSxLmRSKkfuYO5AcSfmbSTyy3tqiEJQvug8WExCejO8
	2tGr0/Ay2D98gzgP9KSBfgBgVe0zTDu0A1jy5myI6Qbw9rUrQP2FoJNgX8OXMBVH0Ylw9PEU
	oeKl9GH4snEyVM+G5QF/CMfDt69PzWpwei0MVvbO1ik6A74cG571BEqM6Z622UgYHQNfjdSF
	4tGw6X4fpuFoOPbhV+gKiXDiXQWuhoN0Cw4fXvwephGrYGnvOaAZbYT1nZOEhjdAf8MEpjWO
	hE+rRnAVG+g4+HnKHzJdDrtahvALAFYvyFG9wKp6gVX1Aqt6gLeCaI73ytmCK8ESjxycjHgU
	7/AIt4A2KB87wI+6NQFAk4CJoPq9QqZhEXtMKhACYDmpY6Kp7lwx07Ak2+MscLOS2+7L45EU
	AJDEmCiqLkvhKCdbcBz5PHPULuU5yzBjuMOjjKQo260JCf8/MDFUc+H+dAPtUgYyByEv8s35
	rCBJBlJVavtIH3Kh/KMcL/+ldeRiNUaEEqNC1VCSlxUkzqXxPcBMttwemwAGXPSIyBhD2VUR
	rYrceeK8z9y6jIMY5QGWUptVVYSyTPNO40oTndLkUWuO2kRZnHnKWAjex5eV3HX8ai/1bI9N
	O7RygE06bewKN0xuqoHTcfUHt2SMkDN7wy/brJbS3bED3w838Nc6n2Tz1hZ/X1FeFjDLOalf
	c2s/pw82vzlJxEUeGPQfuj4z9PvMvaKksroXuq7unYE79puf5BXfBHtV8EKp7eJPc/TzhuA6
	y4nYpq0DowwuuVlLHOaT2D85kVhlCQQAAA==
Subject: use different versions of autoconf and automake in parallel for different packages
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
X-List-Received-Date: Wed, 17 Apr 2013 10:01:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"

I have a lot of source packages from CentOS-5. They all use autoconf 2.59 an=
d automake 1.9.6.
Autotools in Yocto are much newer: autoconf 2.63 and automake 1.11.1.
CentOS-5 packages fail to auto-configure with newer autotools.

Can I install and use in parallel several versions of autoconf and automake=
 native tools? I found a guide for doing it at http://www.linuxfromscratch.o=
rg/hints/downloads/files/autotools-multiversion.txt and implemented it. Howe=
ver, install of one version replaces (completely removes) other version, so=
 I can use only one version for my build, and that's not what I want: all Yo=
cto native tools should use newer autotools version and my packages should u=
se older autotools version.


Any suggestions for implementing this?

Thanks,
Michael



This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.


