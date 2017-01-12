Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A709E007AE; Wed, 11 Jan 2017 22:04:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.112 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0112.outbound.protection.outlook.com
	[104.47.37.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2D5DE00524
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 22:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4tatpHxBij6wqyn/WrfDZSdgn4pbcRSzO4z+gncxXKw=;
	b=bK3AlMntgPNEwn1//J0s14jl7J61H3lK6QwvGoARop2eyED1AX5WZPGAD34DJZ3gMbfND1YKjT2eokIE7Jvp2UYRJw+dVaTtgcsGCqGtqMBpdNJ6pEq9MzLnynlZp3NPXJy8IKbnnA2uVNxdwY40dZk/9Q9peDs/cmu6d+H2OSU=
Received: from CY4PR12MB1880.namprd12.prod.outlook.com (10.175.81.23) by
	CY4PR12MB1878.namprd12.prod.outlook.com (10.175.63.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.829.7; Thu, 12 Jan 2017 05:48:48 +0000
Received: from CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) by
	CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) with mapi id
	15.01.0829.017; Thu, 12 Jan 2017 05:48:48 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Linux kernel 4.8 boot can't login.
Thread-Index: AQHSbJbo1EE1FKOra0WRTE/MKHI5yg==
Date: Thu, 12 Jan 2017 05:48:47 +0000
Message-ID: <CY4PR12MB1880D87F3C84CF1046AE33B8A5790@CY4PR12MB1880.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [25.172.122.132]
x-ms-office365-filtering-correlation-id: cdfc37af-55e7-41ee-21d8-08d43aaeadea
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR12MB1878;
x-microsoft-exchange-diagnostics: 1; CY4PR12MB1878;
	7:OTh/dEyxpdX4mDkJaNxiCVBNHQyIz5T9dHq7cTrILxjpU9zbC/9O4H6lMR9saa999DhpVj+qEoPWrA7I1JZ3o28PVmKFex6AHqW4udthXrEBev1W4Se6nwHezLJA1s6VjbTJfK5chRvCwcO6IraD3AmXXOZIZpCi0feE3W1y2+ExxP2cfyFjh1Re6j1IpZkFGpsPnDhEvn2XMUc2VO3sjpibCNGy2+4whtoCitXAsytfsEnegEtW5tG+OHcBL+aYbe/do196uqdtoqm9D0xJdFxJo5UC+02f9vS+icXZiBofl4lBwpkv8NPZn8u35p90C5E12rb8Uwl1Z0MlJSdnnJnWqsu0ARZOs19BKZr/7EJnoDi7JL0lArZZnsiIVecRSP0Aqr2W6lNFTJuGove5f8eMj3H5uargizPN/aex1vpGVXE5tuSd3x2hke7yZ0YkI/cLjEHReLNoCGdt+51ygw==
x-microsoft-antispam-prvs: <CY4PR12MB18783B4BC23495C442B88F19A5790@CY4PR12MB1878.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123564025)(20161123560025)(20161123555025)(2016111802025)(6072148)(6043046);
	SRVR:CY4PR12MB1878; BCL:0; PCL:0; RULEID:; SRVR:CY4PR12MB1878; 
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39410400002)(39830400002)(39450400003)(189002)(53754006)(199003)(50986999)(122556002)(54356999)(9686003)(6506006)(55016002)(74316002)(3280700002)(16234385003)(5660300001)(8676002)(102836003)(6116002)(3846002)(6436002)(8936002)(97736004)(5640700003)(81166006)(77096006)(54896002)(81156014)(1730700003)(3660700001)(25786008)(101416001)(38730400001)(68736007)(450100001)(6916009)(106116001)(105586002)(106356001)(99286003)(33656002)(107886002)(2351001)(110136003)(2900100001)(19627405001)(7696004)(2501003)(6606003)(92566002)(7736002)(189998001)(575784001)(86362001)(66066001)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR12MB1878;
	H:CY4PR12MB1880.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2017 05:48:47.5319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1878
Subject: Yocto Linux kernel 4.8 boot can't login.
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
X-List-Received-Date: Thu, 12 Jan 2017 06:04:38 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR12MB1880D87F3C84CF1046AE33B8A5790CY4PR12MB1880namp_"

--_000_CY4PR12MB1880D87F3C84CF1046AE33B8A5790CY4PR12MB1880namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgYWxsDQoNCg0KSnVzdCBhIHN0cmFuZ2UgZXJyb3Igb24gbXkgbG9naW4uDQoNCg0KV2l0aCB5
b2N0byBrZXJuZWwgNC44ICBhbmQgZ2xpYmMgMi4yMyBmcm9tIHBva3kgMi4xLjIsIEkgZ2V0IHRo
aXM6DQoNCg0Kc2V0dWlkOiBGdW5jdGlvbiBub3QgaW1wbGVtZW50ZWQNCg0KDQpJcyB0aGVyZSBz
b21ldGhpbmcgaW5jb21wYXRpYmxlPw0KDQoNCg0KDQpGdWxsIGtlcm5lbCBtZXNzYWdlOg0KDQoN
ClsgICAgMy4zMDg1MDNdIGNsb2Nrc291cmNlOiBTd2l0Y2hlZCB0byBjbG9ja3NvdXJjZSB0c2MN
ClsgICAxMi44NDM5MjJdIG1kOiBXYWl0aW5nIGZvciBhbGwgZGV2aWNlcyB0byBiZSBhdmFpbGFi
bGUgYmVmb3JlIGF1dG9kZXRlY3QNClsgICAxMi44NTE1MjBdIG1kOiBJZiB5b3UgZG9uJ3QgdXNl
IHJhaWQsIHVzZSByYWlkPW5vYXV0b2RldGVjdA0KWyAgIDEyLjg1ODI4MV0gbWQ6IEF1dG9kZXRl
Y3RpbmcgUkFJRCBhcnJheXMuDQpbICAgMTIuODYyODgxXSBtZDogU2Nhbm5lZCAwIGFuZCBhZGRl
ZCAwIGRldmljZXMuDQpbICAgMTIuODY3ODUyXSBtZDogYXV0b3J1biAuLi4NClsgICAxMi44NzA5
NzJdIG1kOiAuLi4gYXV0b3J1biBET05FLg0KWyAgIDEyLjg4NDA5MV0gRVhUNC1mcyAoc2RhNSk6
IG1vdW50ZWQgZmlsZXN5c3RlbSB3aXRoIG9yZGVyZWQgZGF0YSBtb2RlLiBPcHRzOiAobnVsbCkN
ClsgICAxMi44OTI2OTNdIFZGUzogTW91bnRlZCByb290IChleHQ0IGZpbGVzeXN0ZW0pIG9uIGRl
dmljZSA4OjUuDQpbICAgMTIuOTAyODA4XSBkZXZ0bXBmczogbW91bnRlZA0KWyAgIDEyLjkxMDYz
Nl0gRnJlZWluZyB1bnVzZWQga2VybmVsIG1lbW9yeTogMTcwMEsgKGZmZmZmZmZmODFkOGUwMDAg
LSBmZmZmZmZmZjgxZjM3MDAwKQ0KWyAgIDEyLjkxOTQyNF0gV3JpdGUgcHJvdGVjdGluZyB0aGUg
a2VybmVsIHJlYWQtb25seSBkYXRhOiAxMjI4OGsNClsgICAxMi45MjY2NjJdIEZyZWVpbmcgdW51
c2VkIGtlcm5lbCBtZW1vcnk6IDE0MEsgKGZmZmY4ODAwMDE3ZGQwMDAgLSBmZmZmODgwMDAxODAw
MDAwKQ0KWyAgIDEyLjkzNzMwNV0gRnJlZWluZyB1bnVzZWQga2VybmVsIG1lbW9yeTogMjM2SyAo
ZmZmZjg4MDAwMWJjNTAwMCAtIGZmZmY4ODAwMDFjMDAwMDApDQpJTklUOiB2ZXJzaW9uIDIuODgg
Ym9vdGluZw0KWyAgIDEzLjAxMTM4MF0gcmFuZG9tOiBmYXN0IGluaXQgZG9uZQ0KU3RhcnRpbmcg
dWRldg0KWyAgIDEzLjE0OTc5Ml0gdWRldmRbMTg4XTogc3RhcnRpbmcgdmVyc2lvbiAzLjEuNQ0K
WyAgIDEzLjM4NDIzMl0gRVhUNC1mcyAoc2RhNSk6IHJlLW1vdW50ZWQuIE9wdHM6IGRhdGE9b3Jk
ZXJlZA0KUG9wdWxhdGluZyBkZXYgY2FjaGUNCklOSVQ6IEVudGVyaW5nIHJ1bmxldmVsOiA1DQpD
b25maWd1cmluZyBuZXR3b3JrIGludGVyZmFjZXMuLi4gWyAgIDEzLjgyNjkwN10gSVB2NjogQURE
UkNPTkYoTkVUREVWX1VQKTogZXRoMDogbGluayBpcyBub3QgcmVhZHkNClsgICAxMy44MzM0NDJd
IDgwMjFxOiBhZGRpbmcgVkxBTiAwIHRvIEhXIGZpbHRlciBvbiBkZXZpY2UgZXRoMA0KdWRoY3Bj
ICh2MS4yNC4xKSBzdGFydGVkDQpTZW5kaW5nIGRpc2NvdmVyLi4uDQpbICAgMTYuODI1MjI2XSBp
Z2IgMDAwMDowMzowMC4wIGV0aDA6IGlnYjogZXRoMCBOSUMgTGluayBpcyBVcCAxMDAwIE1icHMg
RnVsbCBEdXBsZXgsIEZsb3cgQ29udHJvbDogUlgNClNlbmRpbmcgZGlzY292ZXIuLi4NClsgICAx
Ni45Mzk5NjBdIElQdjY6IEFERFJDT05GKE5FVERFVl9DSEFOR0UpOiBldGgwOiBsaW5rIGJlY29t
ZXMgcmVhZHkNClNlbmRpbmcgZGlzY292ZXIuLi4NClNlbmRpbmcgc2VsZWN0IGZvciAxMC4xMC41
MS4yMDUuLi4NCkxlYXNlIG9mIDEwLjEwLjUxLjIwNSBvYnRhaW5lZCwgbGVhc2UgdGltZSAzNjAw
DQovZXRjL3VkaGNwYy5kLzUwZGVmYXVsdDogQWRkaW5nIEROUyAxMC4xMC41MC4xMA0KL2V0Yy91
ZGhjcGMuZC81MGRlZmF1bHQ6IEFkZGluZyBETlMgOC44LjguOA0KZG9uZS4NClN0YXJ0aW5nIE9w
ZW5CU0QgU2VjdXJlIFNoZWxsIHNlcnZlcjogc3NoZA0KICBnZW5lcmF0aW5nIHNzaCBSU0Ega2V5
Li4uDQogIGdlbmVyYXRpbmcgc3NoIEVDRFNBIGtleS4uLg0KICBnZW5lcmF0aW5nIHNzaCBEU0Eg
a2V5Li4uDQogIGdlbmVyYXRpbmcgc3NoIEVEMjU1MTkga2V5Li4uDQpkb25lLg0KU3RhcnRpbmcg
bnRwZDogZG9uZQ0KU3RhcnRpbmcgc3lzbG9nZC9rbG9nZDogZG9uZQ0KU3RhcnRpbmcgY3JvbmQ6
IHNldHVpZDogRnVuY3Rpb24gbm90IGltcGxlbWVudGVkDQpGQUlMDQoNClBpY2E4IFBpY09TIGZv
ciBnZW5lcmljeDg2LTY0IFJlbGVhc2UgMi44LjAgQnVpbGQgZmY0NzQzZjFjMGE1ZjIzZGEzOGJi
YjM0MWQ3NmNkZGUgMi44LjAgZ2VuZXJpY3g4Ni02NCAvZGV2L3R0eVMxDQoNCmdlbmVyaWN4ODYt
NjQgbG9naW46IHJvb3QNCnNldGdpZDogRnVuY3Rpb24NClBpY2E4IFBpY09TIGZvciBnZW5lcmlj
eDg2LTY0IFJlbGVhc2UgMi44LjAgQnVpbGQgZmY0NzQzZjFjMGE1ZjIzZGEzOGJiYjM0MWQ3NmNk
ZGUgMi44LjAgZ2VuZXJpY3g4Ni02NCAvZGV2L3R0eVMxDQoNCmdlbmVyaWN4ODYtNjQgbG9naW46
IFsgIDEzOS4zMDI5MzBdIHJhbmRvbTogY3JuZyBpbml0IGRvbmUNCg0KDQoNCg0KDQpSZWdhcmRz
DQoNClJpY2hhcmQNCg==

--_000_CY4PR12MB1880D87F3C84CF1046AE33B8A5790CY4PR12MB1880namp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi all</p>
<p><br>
</p>
<p>Just a strange error on my login.</p>
<p><br>
</p>
<p>W<span>ith yocto kernel 4.8&nbsp; and glibc 2.23 from poky 2.1.2, I get =
this:<br>
</span></p>
<p><span><br>
</span></p>
<p><span>setuid: Function not implemented</span><br>
</p>
<p><br>
</p>
<p>Is there something&nbsp;<span>incompatible?</span></p>
<p><span><br>
</span></p>
<p><br>
<span></span></p>
<p><br>
<span></span></p>
<p>Full kernel message:</p>
<p><br>
</p>
<p></p>
<div>[&nbsp;&nbsp;&nbsp; 3.308503] clocksource: Switched to clocksource tsc=
<br>
[&nbsp;&nbsp; 12.843922] md: Waiting for all devices to be available before=
 autodetect<br>
[&nbsp;&nbsp; 12.851520] md: If you don't use raid, use raid=3Dnoautodetect=
<br>
[&nbsp;&nbsp; 12.858281] md: Autodetecting RAID arrays.<br>
[&nbsp;&nbsp; 12.862881] md: Scanned 0 and added 0 devices.<br>
[&nbsp;&nbsp; 12.867852] md: autorun ...<br>
[&nbsp;&nbsp; 12.870972] md: ... autorun DONE.<br>
[&nbsp;&nbsp; 12.884091] EXT4-fs (sda5): mounted filesystem with ordered da=
ta mode. Opts: (null)<br>
[&nbsp;&nbsp; 12.892693] VFS: Mounted root (ext4 filesystem) on device 8:5.=
<br>
[&nbsp;&nbsp; 12.902808] devtmpfs: mounted<br>
[&nbsp;&nbsp; 12.910636] Freeing unused kernel memory: 1700K (ffffffff81d8e=
000 - ffffffff81f37000)<br>
[&nbsp;&nbsp; 12.919424] Write protecting the kernel read-only data: 12288k=
<br>
[&nbsp;&nbsp; 12.926662] Freeing unused kernel memory: 140K (ffff8800017dd0=
00 - ffff880001800000)<br>
[&nbsp;&nbsp; 12.937305] Freeing unused kernel memory: 236K (ffff880001bc50=
00 - ffff880001c00000)<br>
INIT: version 2.88 booting<br>
[&nbsp;&nbsp; 13.011380] random: fast init done<br>
Starting udev<br>
[&nbsp;&nbsp; 13.149792] udevd[188]: starting version 3.1.5<br>
[&nbsp;&nbsp; 13.384232] EXT4-fs (sda5): re-mounted. Opts: data=3Dordered<b=
r>
Populating dev cache<br>
INIT: Entering runlevel: 5<br>
Configuring network interfaces... [&nbsp;&nbsp; 13.826907] IPv6: ADDRCONF(N=
ETDEV_UP): eth0: link is not ready<br>
[&nbsp;&nbsp; 13.833442] 8021q: adding VLAN 0 to HW filter on device eth0<b=
r>
udhcpc (v1.24.1) started<br>
Sending discover...<br>
[&nbsp;&nbsp; 16.825226] igb 0000:03:00.0 eth0: igb: eth0 NIC Link is Up 10=
00 Mbps Full Duplex, Flow Control: RX<br>
Sending discover...<br>
[&nbsp;&nbsp; 16.939960] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes =
ready<br>
Sending discover...<br>
Sending select for 10.10.51.205...<br>
Lease of 10.10.51.205 obtained, lease time 3600<br>
/etc/udhcpc.d/50default: Adding DNS 10.10.50.10<br>
/etc/udhcpc.d/50default: Adding DNS 8.8.8.8<br>
done.<br>
Starting OpenBSD Secure Shell server: sshd<br>
&nbsp; generating ssh RSA key...<br>
&nbsp; generating ssh ECDSA key...<br>
&nbsp; generating ssh DSA key...<br>
&nbsp; generating ssh ED25519 key...<br>
done.<br>
Starting ntpd: done<br>
Starting syslogd/klogd: done<br>
Starting crond: setuid: Function not implemented<br>
FAIL<br>
<br>
Pica8 PicOS for genericx86-64 Release 2.8.0 Build ff4743f1c0a5f23da38bbb341=
d76cdde 2.8.0 genericx86-64 /dev/ttyS1<br>
<br>
genericx86-64 login: root<br>
setgid: Function<br>
Pica8 PicOS for genericx86-64 Release 2.8.0 Build ff4743f1c0a5f23da38bbb341=
d76cdde 2.8.0 genericx86-64 /dev/ttyS1<br>
<br>
genericx86-64 login: [&nbsp; 139.302930] random: crng init done<br>
</div>
<br>
<span></span>
<p></p>
<p><br>
<span></span></p>
<p><br>
<span></span></p>
<p><span><br>
</span></p>
<p><span>Regards</span></p>
<p><span>Richard</span><br>
</p>
</div>
</body>
</html>

--_000_CY4PR12MB1880D87F3C84CF1046AE33B8A5790CY4PR12MB1880namp_--
