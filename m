Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A66EE008FF; Tue,  4 Sep 2018 08:35:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80940E00812
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 08:35:22 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Sep 2018 08:35:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,329,1531810800"; d="scan'208,217";a="88868915"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by orsmga002.jf.intel.com with ESMTP; 04 Sep 2018 08:35:21 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 4 Sep 2018 08:35:21 -0700
Received: from fmsmsx123.amr.corp.intel.com ([169.254.7.120]) by
	fmsmsx117.amr.corp.intel.com ([169.254.3.210]) with mapi id
	14.03.0319.002; Tue, 4 Sep 2018 08:35:20 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting
Thread-Index: AdREX8ixXxfG7bxJQjqg1WIGDG+MqA==
Date: Tue, 4 Sep 2018 15:35:20 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155ECEE33D23@fmsmsx123.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2RlYWRmN2MtMzFlNS00MjU2LWIwNzctZGY2ZGM0NGJhMTkzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMDVWelNjQyt2RzRaYXNQRmZoV0craWFcL1FIZDM3d3FNazlzOEJjWDVYOWJpNmFaNVRVKzVyRFljYUphZFlUQ2gifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting
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
X-List-Received-Date: Tue, 04 Sep 2018 15:35:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECEE33D23fmsmsx123amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECEE33D23fmsmsx123amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXR0ZW5kZWVzOiBBcm1pbiwgQWxleCwgU3RlcGhlbiwgU2NvdHQgTS4sIFJpY2hhcmQsIFRyZXZv
ciwgSm9zaHVhLCBCcnVjZSwgUm9zcywgUmFuZHksIEFsZWphbmRybywgRGVueXMsIFRvbSwgQmV0
aCwNCg0KV2UgcmVsZWFzZWQgWVAgMi42IE0yICYgWVAgMi41LjEgbGFzdCBtb250aC4NCldlIGFy
ZSBwcmVwYXJpbmcgdG8gcmVsZWFzZSBZUCAyLjYgTTMgc29vbi4gUmljaGFyZCBkaXNjdXNzZWQg
aXNzdWVzIHdpdGggY3VycmVudCBNMyBwcm9ncmVzcyBhcyBjb3ZlcmVkIGluIHRoZSBzdGF0dXMg
cmVwb3J0Lg0KV2UgYXJlIHNlZWluZyBuZXcgd2FybmluZ3Mgd2l0aCB0aGUgbmV3IGF1dG9idWls
ZGVyIGNvZGUsIHdlIGRpc2N1c3NlZCB0aGF0IHRoZXNlIG1pZ2h0IGJlIGFuIGlzc3VlLiBUaGV5
IHByb2R1Y2VzIHRoZSBuZXcgb3JhbmdlIGJ1aWxkcyB3ZSBoYXZlIG5vdCBzZWVuIGJlZm9yZS4g
IE1vc3QgbGlrZWx5IHdlIHdpbGwgYWRkcmVzcyB0aGVzZSB3YXJuaW5ncyBvdmVyIHRpbWUgYW5k
IHRyeSB0byBhZGRyZXNzIG1vc3Qgb2YgdGhlbSBpbiBZUCAyLjcuICAgV2Ugd2lsbCBtb3N0IGxp
a2VseSBub3QgdHJ5IHRvIGZpeCB0aGVzZSBpc3N1ZXMgaW4gZXhpc3Rpbmcgc3RhYmxlIGJyYW5j
aGVzLiAgIFdlIGFyZSBwbGFubmluZyB0byBtb3ZlIGFsbCB3b3JrIHRvIHRoZSBuZXcgQXV0b2J1
aWxkZXIgY2x1c3RlcnMgZm9yIE0zIGFuZCBiZXlvbmQuDQpEaXNjdXNzZWQgc29tZSBvZiB0aGUg
aXNzdWVzIHdpdGggcmVjaXBlIHBhcnNpbmcgYWZ0ZXIgcGdvIGlzIGluIGFuZCB3ZSBhcmUgc2Vl
aW5nIHJlcGVhdCB0ZXN0aW5nIG9mIHJlY2lwZXMuICBUaGUgaXNzdWVzIGFyZSBiZWluZyByZXZp
ZXdlZCBhbmQgd29ya2VkIHdoaWNoIHNob3VsZCBzcGVlZCBidWlsZGluZyBvbmNlIGZpeGVkLg0K
DQpUaGFua3MsDQoNClN0ZXBoZW4gSy4gSm9sbGV5DQpZb2N0byBQcm9qZWN0IFByb2dyYW0gTWFu
YWdlcg0KSU5URUwsIE1TIEpGMS0yNTUsIDIxMTEgTi5FLiAyNXRoIEF2ZW51ZSwgSGlsbHNib3Jv
LCBPUiA5NzEyNA0K4oCiICAgIENlbGw6ICAgICAgICAgICAgICAoMjA4KSAyNDQtNDQ2MA0K4oCi
IEVtYWlsOiAgICAgICAgICAgICAgICBzdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbQ0KDQo=

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECEE33D23fmsmsx123amrcor_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHJ0ZiAt
LT4NCjxzdHlsZT48IS0tIC5FbWFpbFF1b3RlIHsgbWFyZ2luLWxlZnQ6IDFwdDsgcGFkZGluZy1s
ZWZ0OiA0cHQ7IGJvcmRlci1sZWZ0OiAjODAwMDAwIDJweCBzb2xpZDsgfSAtLT48L3N0eWxlPg0K
PC9oZWFkPg0KPGJvZHk+DQo8Zm9udCBmYWNlPSJUaW1lcyBOZXcgUm9tYW4iIHNpemU9IjMiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTJwdDsiPjxhIG5hbWU9Il9NYWlsRW5kQ29tcG9zZSI+PC9h
Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNw
YW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+QXR0ZW5kZWVzOiBBcm1pbiwgQWxleCwgU3RlcGhl
biwgU2NvdHQgTS4sIFJpY2hhcmQsIFRyZXZvciwgSm9zaHVhLCBCcnVjZSwgUm9zcywgUmFuZHks
IEFsZWphbmRybywgRGVueXMsIFRvbSwgQmV0aCwgPC9zcGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+
PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29sb3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250
IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjExcHQ7Ij5XZSByZWxlYXNlZCBZUCAyLjYgTTIgJmFtcDsgWVAgMi41LjEgbGFzdCBt
b250aC48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXpl
PSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+V2UgYXJl
IHByZXBhcmluZyB0byByZWxlYXNlIFlQIDIuNiBNMyBzb29uLiBSaWNoYXJkIGRpc2N1c3NlZCBp
c3N1ZXMgd2l0aCBjdXJyZW50IE0zIHByb2dyZXNzIGFzIGNvdmVyZWQgaW4gdGhlIHN0YXR1cyBy
ZXBvcnQuJm5ic3A7IDwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGli
cmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdEIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7
Ij5XZSBhcmUgc2VlaW5nIG5ldyB3YXJuaW5ncyB3aXRoIHRoZSBuZXcgYXV0b2J1aWxkZXIgY29k
ZSwgd2UgZGlzY3Vzc2VkIHRoYXQgdGhlc2UgbWlnaHQgYmUgYW4gaXNzdWUuIFRoZXkgcHJvZHVj
ZXMgdGhlIG5ldyBvcmFuZ2UgYnVpbGRzIHdlIGhhdmUgbm90IHNlZW4gYmVmb3JlLiAgTW9zdCBs
aWtlbHkgd2UNCndpbGwgYWRkcmVzcyB0aGVzZSB3YXJuaW5ncyBvdmVyIHRpbWUgYW5kIHRyeSB0
byBhZGRyZXNzIG1vc3Qgb2YgdGhlbSBpbiBZUCAyLjcuICZuYnNwOyBXZSB3aWxsIG1vc3QgbGlr
ZWx5IG5vdCB0cnkgdG8gZml4IHRoZXNlIGlzc3VlcyBpbiBleGlzdGluZyBzdGFibGUgYnJhbmNo
ZXMuJm5ic3A7Jm5ic3A7IFdlIGFyZSBwbGFubmluZyB0byBtb3ZlIGFsbCB3b3JrIHRvIHRoZSBu
ZXcgQXV0b2J1aWxkZXIgY2x1c3RlcnMgZm9yIE0zIGFuZCBiZXlvbmQuIDwvc3Bhbj48L2ZvbnQ+
PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNhbGlicmkiIHNpemU9IjIiIGNvbG9yPSIjMUY0OTdE
Ij48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExcHQ7Ij5EaXNjdXNzZWQgc29tZSBvZiB0aGUgaXNz
dWVzIHdpdGggcmVjaXBlIHBhcnNpbmcgYWZ0ZXIgcGdvIGlzIGluIGFuZCB3ZSBhcmUgc2VlaW5n
IHJlcGVhdCB0ZXN0aW5nIG9mIHJlY2lwZXMuJm5ic3A7IFRoZSBpc3N1ZXMgYXJlIGJlaW5nIHJl
dmlld2VkIGFuZCB3b3JrZWQgd2hpY2ggc2hvdWxkIHNwZWVkIGJ1aWxkaW5nDQpvbmNlIGZpeGVk
LiA8L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIy
IiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9z
cGFuPjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgZmFjZT0iQ2FsaWJyaSIgc2l6ZT0iMiIgY29s
b3I9IiMxRjQ5N0QiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPlRoYW5rcyw8L3NwYW4+
PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJDYWxpYnJpIiBzaXplPSIyIiBjb2xvcj0i
IzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMXB0OyI+Jm5ic3A7PC9zcGFuPjwvZm9u
dD48L2Rpdj4NCjxkaXY+PGZvbnQgc2l6ZT0iNCIgY29sb3I9InB1cnBsZSI+PHNwYW4gc3R5bGU9
ImZvbnQtc2l6ZToxNnB0OyI+PGI+PGk+U3RlcGhlbiBLLiBKb2xsZXk8L2k+PC9iPjwvc3Bhbj48
L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNvdXJpZXIgTmV3IiBzaXplPSIxIiBjb2xv
cj0iYmx1ZSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo4cHQ7Ij48Yj5Zb2N0byBQcm9qZWN0IFBy
b2dyYW0gTWFuYWdlcjwvYj48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBmYWNlPSJD
b3VyaWVyIE5ldyIgc2l6ZT0iMiIgY29sb3I9ImZ1Y2hzaWEiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTBwdDsiPjxiPklOVEVMLCBNUyBKRjEtMjU1LCAyMTExIE4uRS4gMjV0aCBBdmVudWUsIEhp
bGxzYm9ybywgT1IgOTcxMjQgPC9iPjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IHNp
emU9IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6OXB0OyI+PGZvbnQgZmFjZT0iV2luZ2Rpbmdz
Ij4oPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSJ0ZWFsIj4mbmJzcDsm
bmJzcDsmbmJzcDsgPC9mb250Pjxmb250IGZhY2U9IkNvbWljIFNhbnMgTVMiIHNpemU9IjEiIGNv
bG9yPSJ0ZWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjhwdDsiPjxiPkNlbGw8L2I+PC9zcGFu
PjwvZm9udD48Zm9udCBmYWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0idGVhbCI+OiZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOw0KPC9mb250Pjxmb250IGZhY2U9Ik1TIFNhbnMgU2VyaWYiIGNvbG9yPSIj
MUY0OTdEIj4oMjA4KSAyNDQtNDQ2MDwvZm9udD48L3NwYW4+PC9mb250PjwvZGl2Pg0KPGRpdj48
Zm9udCBzaXplPSIyIiBjb2xvcj0iIzFGNDk3RCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo5cHQ7
Ij48Zm9udCBmYWNlPSJXaW5nZGluZ3MiPiogPC9mb250Pjxmb250IGZhY2U9IkNvbWljIFNhbnMg
TVMiIHNpemU9IjEiIGNvbG9yPSJ0ZWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjhwdDsiPjxi
PkVtYWlsPC9iPjwvc3Bhbj48L2ZvbnQ+PGZvbnQgZmFjZT0iTVMgU2FucyBTZXJpZiIgY29sb3I9
InRlYWwiPjombmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsNCjwvZm9udD48Zm9udCBm
YWNlPSJNUyBTYW5zIFNlcmlmIiBjb2xvcj0iYmx1ZSI+PHU+c3RlcGhlbi5rLmpvbGxleUBpbnRl
bC5jb208L3U+PC9mb250Pjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGZhY2U9IkNh
bGlicmkiIHNpemU9IjIiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTFwdDsiPiZuYnNwOzwvc3Bh
bj48L2ZvbnQ+PC9kaXY+DQo8L3NwYW4+PC9mb250Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155ECEE33D23fmsmsx123amrcor_--
