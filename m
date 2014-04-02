Return-Path: <Dipesh.Karmakar@hcl.com>
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3600E00B54
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 06:43:21 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,780,1389724200"; d="scan'208";a="20797632"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 02 Apr 2014 19:08:41 +0530
Received: from CHN-HCLT-CSHT06.HCLT.CORP.HCL.IN (10.150.12.31) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 2 Apr 2014 19:13:14 +0530
Received: from CHN-HCLT-MBS06.HCLT.CORP.HCL.IN ([10.150.12.21]) by
	CHN-HCLT-CSHT06.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Wed, 2 Apr 2014 19:13:14 +0530
From: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
Thread-Index: AQHPSYlGWF8OgI4BY0eUG8fpk2Rq8Zr0llAAgAFgBgCAAAsvkP///EyAgAZ3sHCAAV3GAIAAirrQ
Date: Wed, 2 Apr 2014 13:43:10 +0000
Message-ID: <97272D6808818244BD88BD72F19D658B03CAC1EB@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
References: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LY5VVCZbimtTBNdgDCEB+1mwSwdsVH31ik8GSdheg48OQ@mail.gmail.com>
	<E4938C0D959B3445943720B88F07213415613B44@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LZt8JA25fpeCxbkdMH44rcNtKKE8vPvhrnPN8iLMcJYAA@mail.gmail.com>
In-Reply-To: <CAJTo0LZt8JA25fpeCxbkdMH44rcNtKKE8vPvhrnPN8iLMcJYAA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 02 Apr 2014 08:20:00 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Meenakumari Shedole <meenakumari.s@hcl.com>
Subject: Re: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
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
X-List-Received-Date: Wed, 02 Apr 2014 13:43:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpXZSBoYXZlIGNoZWNrZWQgYXZpLCBtcDQsIDNncCwgb2d2IGFuZCBtYW55IG90aGVyIGV4dGVu
c2lvbnMgd2l0aCBnc3QtbGF1bmNoLTAuMTAgcGxheWJpbiwgYWxsIGFyZSBwbGF5aW5nIHByb3Bl
cmx5IGV4Y2VwdCAxMDgwcC1tcDQ7IGl0cyBwbGF5aW5nIGtpbmQgb2Ygc2xvdy1tb3Rpb24gdGFr
aW5nIGNwdSB1c2FnZSA+NjAlLiBMb2cgcmV2ZWFscywgbG90cyBvZiBidWZmZXIgZHJvcCBpbiBz
aW5rIHNpZGUuDQoNCmdzdC1sYXVuY2gtMC4xMCBwbGF5YmluMiArIG1wNC9hdmkgaXMgZmFpbGlu
ZyB3aXRoIGZvbGxvd2luZyBlcnJvciwNCg0KbGlidmE6IFZBLUFQSSB2ZXJzaW9uIDAuMzIuMA0K
bGlidmE6IHZhX2dldERyaXZlck5hbWUoKSByZXR1cm5zIDANCmxpYnZhOiBUcnlpbmcgdG8gb3Bl
biAvdXNyL2xpYi9kcmkvaTk2NV9kcnZfdmlkZW8uc28NCmxpYnZhOiBGb3VuZCBpbml0IGZ1bmN0
aW9uIF9fdmFEcml2ZXJJbml0XzBfMzINCmxpYnZhIGVycm9yOiAvdXNyL2xpYi9kcmkvaTk2NV9k
cnZfdmlkZW8uc28gaW5pdCBmYWlsZWQNCmxpYnZhOiB2YV9vcGVuRHJpdmVyKCkgcmV0dXJucyAt
MQ0KdmFJbml0aWFsaXplIGZhaWxlZCB3aXRoIGVycm9yIGNvZGUgLTEgKHVua25vd24gbGlidmEg
ZXJyb3IpLGV4aXQgDQoNCkJhc2VkIG9uIHRoZSBsb2csIGl0J3MgY2xlYXIgdGhhdCBwbGF5Ymlu
IGlzIHVzaW5nIHNvZnQtZGVjb2RlciBpbmNhc2UgaHctZGVjb2RlciBmYWlscywgaGVuY2UgdGFr
aW5nIGhpZ2ggY3B1IHVzYWdlLCBob3dldmVyIHBsYXliaW4yIGlzIG9ubHkgdGFraW5nIGh3LWRl
Y29kZXIuDQoNCkRpcGVzaA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQnVy
dG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXSANClNlbnQ6IFdlZG5lc2Rh
eSwgQXByaWwgMDIsIDIwMTQgNDoyMCBQTQ0KVG86IE1lZW5ha3VtYXJpIFNoZWRvbGUNCkNjOiB5
b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBEaXBlc2ggS2FybWFrYXINClN1YmplY3Q6IFJlOiBbeW9j
dG9dIEhlbHAtR3N0cmVhbWVyIFZhYXBpIFBsdWdpbiBJc3N1ZSBpbiAxMDgwcCBtcDQgcGxheWJh
Y2sNCg0KT24gMSBBcHJpbCAyMDE0IDEwOjA1LCBNZWVuYWt1bWFyaSBTaGVkb2xlIDxtZWVuYWt1
bWFyaS5zQGhjbC5jb20+IHdyb3RlOg0KPiBJIGhhdmUgdXNlZCBsaWJ2YS1pbnRlbC1kcml2ZXIt
MS4yLjAgYXMgYSBwYXJ0IG9mIG1ldGEtaW50ZWwgb24gRG9yYSBhcyB0aGUgcmVjaXBlcyBwcm92
aWRlZCBieSBJbnRlbC4gSSBjYW4gYXR0YWNoIGJiIGZpbGUgYWxzbyBpZiBpdHMgbmVlZGVkLg0K
PiBIYXZlIGJ1aWxkIEludGVsIHZhIHNvdXJjZSBtYW51YWxseSBhbmQgbm93IHdlIGNhbiBhYmxl
IHRvIHNpbmsgd2l0aCB2YWFwaXNpbmsgaW4gaXRzIG93biB3aW5kb3cuDQo+IFdlIGFyZSBub3Qg
YWJsZSB0byB1c2UgdmFhcGlzaW5rIHdpdGggQVZJLzNHUCBmaWxlcywgYXNraW5nIGZvciBzb21l
IG1pc3NpbmcgdmlkZW8veC1zdXJmYWNlLg0KPg0KPiBJIGhhdmUgY2hlY2tlZCB2YWFwaXNpbmsg
c291cmNlLCBpdCBzZWVtcyBpdHMgc3VwcG9ydGluZyBvdmVybGF5IG9uIGZvcmVpZ24gWCB3aW5k
b3cuDQo+IGh0dHBzOi8vZ2l0b3Jpb3VzLm9yZy92YWFwaS9nc3RyZWFtZXItdmFhcGkvc291cmNl
LzY0M2QzNWU4N2E2NzM3NmFmOWMNCj4gZDg5Y2Q4Njg2NjYzNjhiMTA1YWMzOmdzdC92YWFwaXNp
bmsvZ3N0dmFhcGlzaW5rLmMNCj4gc3RhdGljIGdib29sZWFuIGdzdF92YWFwaXNpbmtfaW1wbGVt
ZW50c19pbnRlcmZhY2Vfc3VwcG9ydGVkKCk7DQo+IHN0YXRpYyBnYm9vbGVhbiBnc3RfdmFhcGlz
aW5rX2Vuc3VyZV93aW5kb3dfeGlkKCk7DQoNClRoZSBtb3N0IGltcG9ydGFudCB0aGluZyB0byBk
byBoZXJlIGlzIHRvIGRvIHRlc3Rpbmcgd2l0aCBnc3QtbGF1bmNoIHRvIHJlbW92ZSB5b3VyIGFw
cGxpY2F0aW9uIGNhdXNpbmcgcHJvYmxlbXMuICBFbWJlZGRpbmcgcGlwZWxpbmVzIChlc3BlY2lh
bGx5IHVzaW5nIHZhYXBpKSBpbnRvIG90aGVyIHdpbmRvd3MgaXNuJ3QgdHJpdmlhbCBhbmQgaXRz
DQpwb3NzaWJsZSB0aGF0IHlvdXIgYXBwbGljYXRpb24gaXMgY2F1c2luZyB0aGUgcHJvYmxlbS4g
ICAgSWYNCiJnc3QtbGF1bmNoIHBsYXliaW4yIiB3b3JrcyBmaW5lIGZvciBhbGwgb2YgeW91ciBm
aWxlcyB0aGVuIHlvdXIgYXBwbGljYXRpb24gaXMgY2F1c2luZyB0aGUgcHJvYmxlbS4NCg0KUm9z
cw0KCgo6OkRJU0NMQUlNRVI6OgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpU
aGUgY29udGVudHMgb2YgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGFyZSBjb25m
aWRlbnRpYWwgYW5kIGludGVuZGVkIGZvciB0aGUgbmFtZWQgcmVjaXBpZW50KHMpIG9ubHkuCkUt
bWFpbCB0cmFuc21pc3Npb24gaXMgbm90IGd1YXJhbnRlZWQgdG8gYmUgc2VjdXJlIG9yIGVycm9y
LWZyZWUgYXMgaW5mb3JtYXRpb24gY291bGQgYmUgaW50ZXJjZXB0ZWQsIGNvcnJ1cHRlZCwKbG9z
dCwgZGVzdHJveWVkLCBhcnJpdmUgbGF0ZSBvciBpbmNvbXBsZXRlLCBvciBtYXkgY29udGFpbiB2
aXJ1c2VzIGluIHRyYW5zbWlzc2lvbi4gVGhlIGUgbWFpbCBhbmQgaXRzIGNvbnRlbnRzCih3aXRo
IG9yIHdpdGhvdXQgcmVmZXJyZWQgZXJyb3JzKSBzaGFsbCB0aGVyZWZvcmUgbm90IGF0dGFjaCBh
bnkgbGlhYmlsaXR5IG9uIHRoZSBvcmlnaW5hdG9yIG9yIEhDTCBvciBpdHMgYWZmaWxpYXRlcy4K
Vmlld3Mgb3Igb3BpbmlvbnMsIGlmIGFueSwgcHJlc2VudGVkIGluIHRoaXMgZW1haWwgYXJlIHNv
bGVseSB0aG9zZSBvZiB0aGUgYXV0aG9yIGFuZCBtYXkgbm90IG5lY2Vzc2FyaWx5IHJlZmxlY3Qg
dGhlCnZpZXdzIG9yIG9waW5pb25zIG9mIEhDTCBvciBpdHMgYWZmaWxpYXRlcy4gQW55IGZvcm0g
b2YgcmVwcm9kdWN0aW9uLCBkaXNzZW1pbmF0aW9uLCBjb3B5aW5nLCBkaXNjbG9zdXJlLCBtb2Rp
ZmljYXRpb24sCmRpc3RyaWJ1dGlvbiBhbmQgLyBvciBwdWJsaWNhdGlvbiBvZiB0aGlzIG1lc3Nh
Z2Ugd2l0aG91dCB0aGUgcHJpb3Igd3JpdHRlbiBjb25zZW50IG9mIGF1dGhvcml6ZWQgcmVwcmVz
ZW50YXRpdmUgb2YKSENMIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBoYXZlIHJlY2Vp
dmVkIHRoaXMgZW1haWwgaW4gZXJyb3IgcGxlYXNlIGRlbGV0ZSBpdCBhbmQgbm90aWZ5IHRoZSBz
ZW5kZXIgaW1tZWRpYXRlbHkuCkJlZm9yZSBvcGVuaW5nIGFueSBlbWFpbCBhbmQvb3IgYXR0YWNo
bWVudHMsIHBsZWFzZSBjaGVjayB0aGVtIGZvciB2aXJ1c2VzIGFuZCBvdGhlciBkZWZlY3RzLgoK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo=


