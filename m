Return-Path: <pabisr@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93D79E00D6E; Tue, 10 Oct 2017 11:38:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI,SPF_HELO_PASS,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.75 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Oct 2017 11:38:07 PDT
Received: from rcdn-iport-4.cisco.com (rcdn-iport-4.cisco.com [173.37.86.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC8EE00D18
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 11:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=3988; q=dns/txt; s=iport;
	t=1507660687; x=1508870287;
	h=from:to:subject:date:message-id:mime-version;
	bh=Q6goGncGjvcMeZwopH6fJBQ4/5cQdPW6HCMAw7iMv1s=;
	b=f5mvoCobWUAOKGpCHQiEVqjCUnU09nAl7az2gp4A8wqcLQy7aAYctsU/
	bBw5Wn0vMsBAMXRT3ncV5w0r3EXMddW6n5bZSKjSqcvO4RMltjgrT+KNI
	y1NZYz9Sd9K0GPjQByBEC2yFd2XELHqLAwa2votldWBp2cLCnEuCd3Wdf 4=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0C1AQB9Et1Z/4sNJK1dGQEBAQEBAQEBA?=
	=?us-ascii?q?QEBBwEBAQEBgm9sZG4ug3OaE4FUkRKHUQqFV4Q1QhUBAgEBAQEBAQFrHQuFR2g?=
	=?us-ascii?q?BDD4CBDAnBIlTZKg4gicniwoBAQEBAQEEAQEBAQEBAQEBH4MtggKDZguCc4gXL?=
	=?us-ascii?q?4IyBaE8ApRnkw+VNAIRGQGBOAE1IoEOeBVbAYcKiiiBEAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.43,359,1503360000"; 
	d="scan'208,217";a="306053022"
Received: from alln-core-6.cisco.com ([173.36.13.139])
	by rcdn-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	10 Oct 2017 18:37:03 +0000
Received: from XCH-RCD-001.cisco.com (xch-rcd-001.cisco.com [173.37.102.11])
	by alln-core-6.cisco.com (8.14.5/8.14.5) with ESMTP id v9AIb3Si022645
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 18:37:03 GMT
Received: from xch-rcd-001.cisco.com (173.37.102.11) by XCH-RCD-001.cisco.com
	(173.37.102.11) with Microsoft SMTP Server (TLS) id 15.0.1320.4;
	Tue, 10 Oct 2017 13:37:02 -0500
Received: from xch-rcd-001.cisco.com ([173.37.102.11]) by
	XCH-RCD-001.cisco.com ([173.37.102.11]) with mapi id 15.00.1320.000;
	Tue, 10 Oct 2017 13:37:02 -0500
From: "Ryan Pabis (pabisr)" <pabisr@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Replacing Openssl with a custom version?
Thread-Index: AQHTQfbD0PEZfw7M5ECUZglsq31IuA==
Date: Tue, 10 Oct 2017 18:37:02 +0000
Message-ID: <9615587B-3637-4ABB-BB94-9C9416352354@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.1d.0.161209
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.116.215.244]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 10 Oct 2017 11:53:50 -0700
Subject: Replacing Openssl with a custom version?
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
X-List-Received-Date: Tue, 10 Oct 2017 18:38:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9615587B36374ABBBB949C9416352354ciscocom_"

--_000_9615587B36374ABBBB949C9416352354ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsLA0KDQpJ4oCZbSB0cnlpbmcgdG8gYnVpbGQsIGxpbmsgYW5kIGluc3RhbGwgb3VyIENpc2Nv
IHZlcnNpb24gb2Ygc3NsLiAgQW5kIEnigJl2ZSBiZWVuIGFibGUgdG8gY29tcGlsZSBhbmQgbGlu
ayBpdCwgaG93ZXZlciBJIGRvbuKAmXQgdW5kZXJzdGFuZCBob3cgdG8gaW5zdGFsbCBvdXIgY2lz
Y28gdmVyc2lvbiBJTlNURUFEIG9mIG9wZW5zc2wuDQoNCkFueSBoZWxwIGlzIGdyZWF0bHkgYXBw
cmVjaWF0ZWQuDQoNClJlZ2FyZHMsDQpSeWFuDQo=

--_000_9615587B36374ABBBB949C9416352354ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <2D46D39D854A4241A261712446D83D23@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iVGl0bGUiIGNvbnRlbnQ9IiI+DQo8bWV0YSBuYW1lPSJLZXl3b3JkcyIgY29udGVu
dD0iIj4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUg
KGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxlPjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8N
CkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0
IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJ
cGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAyIDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8N
CnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWwsIGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsN
CgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJZm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWls
eTpDYWxpYnJpO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9y
aXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQph
OnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5
Ojk5Ow0KCWNvbG9yOiM5NTRGNzI7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFu
LkVtYWlsU3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZvbnQt
ZmFtaWx5OkNhbGlicmk7DQoJY29sb3I6d2luZG93dGV4dDt9DQpzcGFuLm1zb0lucw0KCXttc28t
c3R5bGUtdHlwZTpleHBvcnQtb25seTsNCgltc28tc3R5bGUtbmFtZToiIjsNCgl0ZXh0LWRlY29y
YXRpb246dW5kZXJsaW5lOw0KCWNvbG9yOnRlYWw7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0
eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6Q2FsaWJyaTt9DQpAcGFnZSBXb3Jk
U2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGlu
IDEuMGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9z
dHlsZT4NCjwvaGVhZD4NCjxib2R5IGJnY29sb3I9IndoaXRlIiBsYW5nPSJFTi1VUyIgbGluaz0i
IzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5BbGwsPG86
cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5J4oCZbSB0cnlpbmcgdG8g
YnVpbGQsIGxpbmsgYW5kIGluc3RhbGwgb3VyIENpc2NvIHZlcnNpb24gb2Ygc3NsLiZuYnNwOyBB
bmQgSeKAmXZlIGJlZW4gYWJsZSB0byBjb21waWxlIGFuZCBsaW5rIGl0LCBob3dldmVyIEkgZG9u
4oCZdCB1bmRlcnN0YW5kIGhvdyB0byBpbnN0YWxsIG91ciBjaXNjbyB2ZXJzaW9uIElOU1RFQUQg
b2Ygb3BlbnNzbC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPkFu
eSBoZWxwIGlzIGdyZWF0bHkgYXBwcmVjaWF0ZWQuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTEuMHB0Ij5SZWdhcmRzLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5SeWFuPG86cD48L286
cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_9615587B36374ABBBB949C9416352354ciscocom_--
