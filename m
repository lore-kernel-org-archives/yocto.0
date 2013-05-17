Return-Path: <travis.post@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331A8E01466
	for <yocto@yoctoproject.org>; Thu, 16 May 2013 17:40:55 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 May 2013 17:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,687,1363158000"; 
	d="scan'208,217";a="338615463"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 16 May 2013 17:40:54 -0700
Received: from orsmsx109.amr.corp.intel.com (10.22.240.7) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 16 May 2013 17:40:52 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.26]) by
	ORSMSX109.amr.corp.intel.com ([169.254.2.235]) with mapi id
	14.01.0355.002; Thu, 16 May 2013 17:40:52 -0700
From: "Post, Travis" <travis.post@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Customize Number of Threads per Task?
Thread-Index: Ac5Sly2x0ztGZejoRa6HQZfgu/0DbA==
Date: Fri, 17 May 2013 00:40:51 +0000
Message-ID: <1B9AA52722844A4995CFFE20C2BC6B596B7A1105@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Customize Number of Threads per Task?
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
X-List-Received-Date: Fri, 17 May 2013 00:40:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1B9AA52722844A4995CFFE20C2BC6B596B7A1105ORSMSX107amrcor_"

--_000_1B9AA52722844A4995CFFE20C2BC6B596B7A1105ORSMSX107amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG86DQoNCknigJl2ZSB3cml0dGVuIGEgYml0YmFrZSBjbGFzcyB0aGF0IGFkZHMgYSBjdXN0
b20gdGFzayBpbi1iZXR3ZWVuIGRvX2NvbmZpZ3VyZSBhbmQgZG9fY29tcGlsZSwgY2FsbGVkIOKA
mGRvX3NlbmRfdG9fcmVtb3Rl4oCZLiBJcyB0aGVyZSBhbnkgd2F5IGZvciBZb2N0byB0byBhbGxv
dyBvbmx5IG9uZSBpbnN0YW5jZSBvZiB0aGlzIHRhc2sgdG8gcnVuIGF0IGEgdGltZT8gSSBrbm93
IEkgY2FuIHNldCBCQl9OVU1CRVJfVEhSRUFEUyA9IDEsIGJ1dCB0aGF0IHdpbGwgc2xvdyBkb3du
IGV2ZXJ5dGhpbmcuIElzIHRoZXJlIGEgd2F5IHRvIGRvIHNvbWV0aGluZyBsaWtlOiBCQl9OVU1C
RVJfVEhSRUFEU1tkb19zZW5kX3RvX3JlbW90ZV0gPSAxPw0KDQpUaGFua3MsDQoNCg0KVHJhdmlz
DQoNCg0KDQoNCg==

--_000_1B9AA52722844A4995CFFE20C2BC6B596B7A1105ORSMSX107amrcor_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTQgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUgMiAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZp
bml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXtt
YXJnaW46MGluOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTEuMHB0Ow0K
CWZvbnQtZmFtaWx5OiJDYWxpYnJpIiwic2Fucy1zZXJpZiI7fQ0KYTpsaW5rLCBzcGFuLk1zb0h5
cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6Ymx1ZTsNCgl0ZXh0LWRl
Y29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bhbi5Nc29IeXBlcmxpbmtGb2xsb3dl
ZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6cHVycGxlOw0KCXRleHQtZGVjb3Jh
dGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVy
c29uYWwtY29tcG9zZTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsInNhbnMtc2VyaWYiOw0KCWNv
bG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0
LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLCJzYW5zLXNlcmlmIjt9DQpAcGFnZSBXb3Jk
U2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGlu
IDEuMGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9z
dHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVk
aXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28g
OV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJl
ZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9o
ZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRp
diBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkhlbGxvOjxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5J4oCZdmUgd3JpdHRlbiBhIGJpdGJha2UgY2xhc3MgdGhhdCBh
ZGRzIGEgY3VzdG9tIHRhc2sgaW4tYmV0d2VlbiBkb19jb25maWd1cmUgYW5kIGRvX2NvbXBpbGUs
IGNhbGxlZCDigJhkb19zZW5kX3RvX3JlbW90ZeKAmS4gSXMgdGhlcmUgYW55IHdheSBmb3IgWW9j
dG8gdG8gYWxsb3cgb25seSBvbmUgaW5zdGFuY2Ugb2YgdGhpcyB0YXNrIHRvIHJ1biBhdCBhIHRp
bWU/IEkga25vdyBJIGNhbiBzZXQgQkJfTlVNQkVSX1RIUkVBRFMNCiA9IDEsIGJ1dCB0aGF0IHdp
bGwgc2xvdyBkb3duIGV2ZXJ5dGhpbmcuIElzIHRoZXJlIGEgd2F5IHRvIGRvIHNvbWV0aGluZyBs
aWtlOiBCQl9OVU1CRVJfVEhSRUFEU1tkb19zZW5kX3RvX3JlbW90ZV0gPSAxPzxvOnA+PC9vOnA+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5UaGFua3MsPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+VHJhdmlzPG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4m
bmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwv
cD4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_1B9AA52722844A4995CFFE20C2BC6B596B7A1105ORSMSX107amrcor_--
