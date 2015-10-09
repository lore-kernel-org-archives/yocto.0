Return-Path: <gilles.carry@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48022E00D31; Fri,  9 Oct 2015 05:40:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.207.212.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com
	[91.207.212.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFF4CE0086D
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 05:40:01 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx08-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	t99CdPHv020195; Fri, 9 Oct 2015 14:39:55 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx08-00178001.pphosted.com with ESMTP id 1xdrufdfum-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 09 Oct 2015 14:39:55 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2C76831;
	Fri,  9 Oct 2015 12:39:34 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas3.st.com [10.75.90.18])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2B357F2C;
	Fri,  9 Oct 2015 12:39:54 +0000 (GMT)
Received: from Safex1mail1.st.com ([fe80::38a0:4c7c:3de6:5e4b]) by
	SAFEX1HUBCAS3.st.com ([::1]) with mapi; Fri, 9 Oct 2015 14:39:53 +0200
From: Gilles CARRY <gilles.carry@st.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Oct 2015 14:39:52 +0200
Thread-Topic: [yocto] Intelligent global config files setting
Thread-Index: AdECfuDxWeu0Ec+aSBSoz3EBBHHc1AAEJVcw
Message-ID: <9A1915A5EDF1BD429C7E67EC45EFD43501572C9F8F@SAFEX1MAIL1.st.com>
References: <9A1915A5EDF1BD429C7E67EC45EFD43501572C9E16@SAFEX1MAIL1.st.com>
	<CAJTo0LY2PfQTa5BDngDQHscRM2Phqmek3MeEwZwDmzOisz90Lg@mail.gmail.com>
In-Reply-To: <CAJTo0LY2PfQTa5BDngDQHscRM2Phqmek3MeEwZwDmzOisz90Lg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-10-09_10:2015-10-09, 2015-10-09,
	1970-01-01 signatures=0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Intelligent global config files setting
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
X-List-Received-Date: Fri, 09 Oct 2015 12:40:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9A1915A5EDF1BD429C7E67EC45EFD43501572C9F8FSAFEX1MAIL1st_"

--_000_9A1915A5EDF1BD429C7E67EC45EFD43501572C9F8FSAFEX1MAIL1st_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCB0aGlzIGxvb2tzIGdvb2QuDQpJIHdhcyBub3QgYXdhcmUgb2YgdGhpcyBwb3N0aW5zdCBt
ZWNoYW5pc20uDQpUaGFua3MgZm9yIHRoZSBhbnN3ZXIuDQoNCkZyb206IEJ1cnRvbiwgUm9zcyBb
bWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NClNlbnQ6IEZyaWRheSwgT2N0b2JlciAwOSwg
MjAxNSAxMjo0MCBQTQ0KVG86IEdpbGxlcyBDQVJSWQ0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIEludGVsbGlnZW50IGdsb2JhbCBjb25maWcgZmlsZXMg
c2V0dGluZw0KDQoNCk9uIDkgT2N0b2JlciAyMDE1IGF0IDA4OjM4LCBHaWxsZXMgQ0FSUlkgPGdp
bGxlcy5jYXJyeUBzdC5jb208bWFpbHRvOmdpbGxlcy5jYXJyeUBzdC5jb20+PiB3cm90ZToNCkkg
dHJpZWQgdG8gdXNlIFJPT1RGU19QT1NUUFJPQ0VTU19DT01NQU5EIGluIGMxLmJiPGh0dHA6Ly9j
MS5iYj4gYW5kIGMyLmJiPGh0dHA6Ly9jMi5iYj4gYnV0IHRoaXMgbWVjaGFuaXNtIG9ubHkgc2Vl
bXMgdG8gd29yayBpbiBpbWFnZXMgcmVjaXBlcy4gKGluaGVyaXQgY29yZS1pbWFnZSkNCg0KVXNl
IGEgcGFja2FnZSBwb3N0aW5zdCB0byBtb2RpZnkgdGhlIGNvbmZpZ3VyYXRpb24gZmlsZXMgd2hl
biB0aGUgcm9vdGZzIGlzIGdlbmVyYXRlZD8NCg0KUm9zcw0K

--_000_9A1915A5EDF1BD429C7E67EC45EFD43501572C9F8FSAFEX1MAIL1st_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj1Db250ZW50LVR5cGUgY29udGVu
dD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij48bWV0YSBuYW1lPUdlbmVyYXRvciBjb250ZW50
PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQgbWVkaXVtKSI+PHN0eWxlPjwhLS0NCi8qIEZv
bnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IkNhbWJyaWEgTWF0
aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQt
ZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAyIDQ7fQ0KLyogU3R5
bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWwsIGRpdi5Nc29Ob3Jt
YWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJZm9udC1zaXplOjEy
LjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9DQphOmxpbmssIHNw
YW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpibHVlOw0K
CXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1zb0h5cGVybGlu
a0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpwdXJwbGU7DQoJdGV4
dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxNw0KCXttc28tc3R5bGUt
dHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQXJpYWwiLHNhbnMtc2VyaWY7DQoJ
Y29sb3I6IzAwMjA1Mjt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQt
b25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3JkU2Vj
dGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEu
MGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHls
ZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQi
IHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+
PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0
IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPjwvaGVhZD48
Ym9keSBsYW5nPUVOLVVTIGxpbms9Ymx1ZSB2bGluaz1wdXJwbGU+PGRpdiBjbGFzcz1Xb3JkU2Vj
dGlvbjE+PHAgY2xhc3M9TXNvTm9ybWFsPjxzcGFuIHN0eWxlPSdmb250LXNpemU6MTAuMHB0O2Zv
bnQtZmFtaWx5OiJBcmlhbCIsc2Fucy1zZXJpZjtjb2xvcjojMDAyMDUyJz5ZZXMsIHRoaXMgbG9v
a3MgZ29vZC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxzcGFuIHN0
eWxlPSdmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiJBcmlhbCIsc2Fucy1zZXJpZjtjb2xv
cjojMDAyMDUyJz5JIHdhcyBub3QgYXdhcmUgb2YgdGhpcyBwb3N0aW5zdCBtZWNoYW5pc20uPG86
cD48L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb05vcm1hbD48c3BhbiBzdHlsZT0nZm9udC1z
aXplOjEwLjBwdDtmb250LWZhbWlseToiQXJpYWwiLHNhbnMtc2VyaWY7Y29sb3I6IzAwMjA1Mic+
VGhhbmtzIGZvciB0aGUgYW5zd2VyLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29O
b3JtYWw+PHNwYW4gc3R5bGU9J2ZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6IkFyaWFsIixz
YW5zLXNlcmlmO2NvbG9yOiMwMDIwNTInPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD48cCBj
bGFzcz1Nc29Ob3JtYWw+PGI+PHNwYW4gc3R5bGU9J2ZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1p
bHk6IkNhbGlicmkiLHNhbnMtc2VyaWYnPkZyb206PC9zcGFuPjwvYj48c3BhbiBzdHlsZT0nZm9u
dC1zaXplOjExLjBwdDtmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZic+IEJ1cnRvbiwg
Um9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0gPGJyPjxiPlNlbnQ6PC9iPiBGcmlk
YXksIE9jdG9iZXIgMDksIDIwMTUgMTI6NDAgUE08YnI+PGI+VG86PC9iPiBHaWxsZXMgQ0FSUlk8
YnI+PGI+Q2M6PC9iPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPjxiPlN1YmplY3Q6PC9iPiBS
ZTogW3lvY3RvXSBJbnRlbGxpZ2VudCBnbG9iYWwgY29uZmlnIGZpbGVzIHNldHRpbmc8bzpwPjwv
bzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPjxk
aXY+PGRpdj48cCBjbGFzcz1Nc29Ob3JtYWw+PG86cD4mbmJzcDs8L286cD48L3A+PGRpdj48cCBj
bGFzcz1Nc29Ob3JtYWw+T24gOSBPY3RvYmVyIDIwMTUgYXQgMDg6MzgsIEdpbGxlcyBDQVJSWSAm
bHQ7PGEgaHJlZj0ibWFpbHRvOmdpbGxlcy5jYXJyeUBzdC5jb20iIHRhcmdldD0iX2JsYW5rIj5n
aWxsZXMuY2FycnlAc3QuY29tPC9hPiZndDsgd3JvdGU6PG86cD48L286cD48L3A+PGJsb2NrcXVv
dGUgc3R5bGU9J2JvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlkICNDQ0NDQ0MgMS4wcHQ7cGFk
ZGluZzowaW4gMGluIDBpbiA2LjBwdDttYXJnaW4tbGVmdDo0LjhwdDttYXJnaW4tcmlnaHQ6MGlu
Jz48cCBjbGFzcz1Nc29Ob3JtYWwgc3R5bGU9J21zby1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1t
YXJnaW4tYm90dG9tLWFsdDphdXRvJz48c3BhbiBzdHlsZT0nZm9udC1zaXplOjEwLjBwdDtmb250
LWZhbWlseToiQXJpYWwiLHNhbnMtc2VyaWY7Y29sb3I6IzAwMjA1Mic+SSB0cmllZCB0byB1c2Ug
Uk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1BTkQgaW4gPGEgaHJlZj0iaHR0cDovL2MxLmJiIiB0YXJn
ZXQ9Il9ibGFuayI+YzEuYmI8L2E+IGFuZCA8YSBocmVmPSJodHRwOi8vYzIuYmIiIHRhcmdldD0i
X2JsYW5rIj5jMi5iYjwvYT4gYnV0IHRoaXMgbWVjaGFuaXNtIG9ubHkgc2VlbXMgdG8gd29yayBp
biBpbWFnZXMgcmVjaXBlcy4gKGluaGVyaXQgY29yZS1pbWFnZSk8L3NwYW4+PG86cD48L286cD48
L3A+PC9ibG9ja3F1b3RlPjwvZGl2PjxwIGNsYXNzPU1zb05vcm1hbD48YnI+VXNlIGEgcGFja2Fn
ZSBwb3N0aW5zdCB0byBtb2RpZnkgdGhlIGNvbmZpZ3VyYXRpb24gZmlsZXMgd2hlbiB0aGUgcm9v
dGZzIGlzIGdlbmVyYXRlZD88bzpwPjwvbzpwPjwvcD48L2Rpdj48ZGl2PjxwIGNsYXNzPU1zb05v
cm1hbD48bzpwPiZuYnNwOzwvbzpwPjwvcD48L2Rpdj48ZGl2PjxwIGNsYXNzPU1zb05vcm1hbD5S
b3NzPG86cD48L286cD48L3A+PC9kaXY+PC9kaXY+PC9kaXY+PC9ib2R5PjwvaHRtbD4=

--_000_9A1915A5EDF1BD429C7E67EC45EFD43501572C9F8FSAFEX1MAIL1st_--
