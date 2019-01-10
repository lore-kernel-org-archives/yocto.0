Return-Path: <huangshr@allwinnertech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 454F9E00C6D; Wed,  9 Jan 2019 18:52:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Jan 2019 18:52:49 PST
Received: from smtp2207-205.mail.aliyun.com (smtp2207-205.mail.aliyun.com
	[121.197.207.205])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BB2AE009AA
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 18:52:48 -0800 (PST)
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.3908384|-1; CH=green;
	FP=0|0|0|0|0|-1|-1|-1; HT=e01a16384;
	MF=huangshr@allwinnertech.com; NM=1; PH=DS; RN=1; RT=1; SR=0;
	TI=SMTPD_---.Dji8AaF_1547088463; 
Received: from all-07153340ec0(mailfrom:huangshr@allwinnertech.com
	fp:SMTPD_---.Dji8AaF_1547088463)
	by smtp.aliyun-inc.com(10.147.41.158);
	Thu, 10 Jan 2019 10:47:44 +0800
Date: Thu, 10 Jan 2019 10:47:44 +0800
From: "huangshr@allwinnertech.com" <huangshr@allwinnertech.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-GUID: 9785C4D5-1BCA-4280-9A00-A1E7CFFDF706
X-Has-Attach: no
X-Mailer: Foxmail 7, 2, 8, 379[cn]
Mime-Version: 1.0
Message-ID: <2019011010474297714143@allwinnertech.com>
Subject: how to deal with the dependences between kernel configuration and out of tree module
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
X-List-Received-Date: Thu, 10 Jan 2019 02:52:50 -0000
Content-Type: multipart/alternative;
	boundary="----=_001_NextPart457837074313_=----"

------=_001_NextPart457837074313_=----
Content-Type: text/plain;
	charset="GB2312"
Content-Transfer-Encoding: base64

SGksDQoNCiAgIEkgd2FudCB0byBiaXRiYWtlIGFuIG91dC1vZi10cmVlIGtlcm5lbCBtb2R1bGUs
IGFzIHRoZSBtb2R1bGUgZGVwZW5kcyBvbiBzb21lIGtlcm5lbCBjb25maWd1cmF0aW9ucywgaSBu
ZWVkIHRvIGVuYWJsZSB0aGVzZSBjb25maWd1cmF0aW9ucyBmaXJzdGx5IHdoZW4gYnVpbGQgbGlu
dXgsIGlzIHRoZXJlIGFueSB3YXkgYmV0dGVyIHRvIGRlYWwgd2l0aCB0aGlzIHNjZW5hcmlvLCBo
b3cgdG8gd3JpdGUgdGhlIGJiIGZpbGVzPw0KDQpUaGFua3MsDQpKYWNraWUNCg0K

------=_001_NextPart457837074313_=----
Content-Type: text/html;
	charset="GB2312"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charse=
t=3DGB2312"><style>body { line-height: 1.5; }body { font-size: 10.5pt; fon=
t-family: =CB=CE=CC=E5; color: rgb(0, 0, 0); line-height: 1.5; }</style></=
head><body>=0A<div><span></span>Hi,</div><div><br></div><div><span style=
=3D"color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);">&nbsp; &nbsp=
;I want to bitbake an out-of-tree kernel module, as the module depends on<=
/span><span style=3D"background-color: rgba(0, 0, 0, 0); font-size: 10.5pt=
; line-height: 1.5;">&nbsp;some&nbsp;kernel&nbsp;configurations, i need to=
 enable these configurations firstly when build linux, is there any way be=
tter to deal with this&nbsp;</span><span style=3D"background-color: rgba(0=
, 0, 0, 0); font-size: 10.5pt; line-height: 1.5;">scenario, how to write t=
he bb files?</span></div>=0A<div><br></div><div>Thanks,</div><div>Jackie</=
div><div><br></div>=0A</body></html>

------=_001_NextPart457837074313_=------
