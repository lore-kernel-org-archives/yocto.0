Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F095E00D33; Thu, 11 Apr 2019 13:31:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1723 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Apr 2019 13:31:21 PDT
Received: from Mail4.woodward.com (mail4.woodward.com [204.27.169.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D77A8E00D30
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 13:31:21 -0700 (PDT)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x3BJvZY3006283; Thu, 11 Apr 2019 15:02:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-transfer-encoding : mime-version :
	content-type; s=20190114Woodward;
	bh=xaiLg5N/mCBwv5ZSQYqMj72FkfmEPbh4nGGzYbHcBQE=;
	b=VkV/Y+9k1R9JEy+csbSCxyW+62+WONpq1FcAodFwJ+WykJAiiaFc4ubvlrW9E7N7GCIn
	wMlVrl8zFecojs+VSBS7O3A0TrE1+cOccvyq6ySeL12MA30pO53T0apd2aiCXNZR64wd
	XJQ230qouErmd6oxw1LEr2rQedi8qKRzn60WDso5DG0Ns0+wH4njy0k/tqPNdNaasL3k
	XXjUHXV13XVj1kLj8AR2icRO72fowudC3dnJbP4sI6HqViq4/uP8iBDz4X5dlZkHV1cn
	Ul21i37dZ5KoatzLCqCpT8P+A65beiL316oh40NvDaVw+8xDo8ZOg59lrh93uhNsuEj2
	Ow== 
Received: from rkfdhc1.woodward.com ([10.1.100.158])
	by COIL-PMSGA1.woodward.com with ESMTP id 2rtc1xg10g-4
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT);
	Thu, 11 Apr 2019 15:02:33 -0500
Received: from KempHC1.woodward.com (10.25.100.51) by RKFDHC1.woodward.com
	(10.1.100.158) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Thu, 11 Apr 2019 14:55:45 -0500
Received: from KempMail2.woodward.com ([169.254.2.253]) by
	KempHC1.woodward.com ([172.20.1.103]) with mapi;
	Thu, 11 Apr 2019 21:55:43 +0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: Timothy Froehlich <tfroehlich@archsys.io>, Yocto discussion list
	<yocto@yoctoproject.org>
Date: Thu, 11 Apr 2019 21:55:41 +0200
Thread-Topic: [yocto] Read-only filesystems: Move directory to RW directory
	and symlink back
Thread-Index: AdTwn90KUUjgBihnQcCbYBhIwsLQBg==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF55C99E7C4D@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=816 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1904110132
Subject: Re: Read-only filesystems: Move directory to RW directory and symlink back
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
X-List-Received-Date: Thu, 11 Apr 2019 20:31:23 -0000
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

T24gVHVlc2RheSwgTWFyY2ggMjYsIDIwMTkgOTo1NCBQTSwgVGltb3RoeSBGcm9laGxpY2ggd3Jv
dGU6DQo+IElzIHRoZXJlIGEgcmVjb21tZW5kZWQgd2F5IG9mIGRvaW5nIHRoaXM/IFJpZ2h0IG5v
dyBJIGhhdmUgYSBST09URlNfUE9TVFBST0NFU1NfQ01EIA0KPiB0aGF0IG1vdmVzIHRoZSBkaXJl
Y3RvcmllcyBhbmQgc3ltbGlua3MgdGhlbSBiYWNrLCBidXQgSSdtIG5vdCBzdXJlIGlmIEknbSBk
b2luZyBpdCBleGFjdGx5IHJpZ2h0IG9yIGlmIHRoZXJlJ3Mgc29tZXRoaW5nIGJ1aWx0LWluLg0K
DQo+IFRoZSBmdW5jdGlvbiBqdXN0IGRvZXMgYSBidW5jaCBvZiB0aGlzOg0KPsKgIMKgIGluc3Rh
bGwgLWQgJHtEfS8ke3BlcnNpc3RfZGlyfQ0KDQo+wqAgwqAgbXYgJHtEfS8ke09SSUd9ICR7RH0v
JHtwZXJzaXN0X2Rpcn0vJHtMSU5LTkFNRX0NCj7CoCDCoCBsbiAtc3IgJHtEfS8ke3BlcnNpc3Rf
ZGlyfS8ke0xJTktOQU1FfSAke0R9LyR7T1JJR30NCg0KSSBhbSBhbHNvIHdvcmtpbmcgb24gcmVh
ZC1vbmx5IHJvb3RmcyBub3cuIFVuZm9ydHVuYXRlbHkgaXQgbG9va3MgbGlrZSB0aGF0IFlvY3Rv
IGRvZXMgbm90IHByb3ZpZGUgcmVhZHkgc29sdXRpb24gZm9yIHN5bWxpbmtpbmcuIEkgdXNlIHNp
bWlsYXIgYXBwcm9hY2ggdG8geW91cnMuDQpJZiB5b3UgYWNjZXB0IGJpbmQgbW91bnRzIG9yIG92
ZXJsYXlmcywgeW91IG1heSBoYXZlIGEgbG9vayBhdCBtZXRhL3JlY2lwZXMtY29yZS92b2xhdGls
ZS1iaW5kcy92b2xhdGlsZS1iaW5kcy5iYg0KDQpCZXN0IHJlZ2FyZHMsDQpMdWthc3ogWmVtbGEN
CgoqKioKVGhlIGluZm9ybWF0aW9uIGluIHRoaXMgZW1haWwgaXMgY29uZmlkZW50aWFsIGFuZCBp
bnRlbmRlZCBzb2xlbHkgZm9yIHRoZSBpbmRpdmlkdWFsIG9yIGVudGl0eSB0byB3aG9tIGl0IGlz
IGFkZHJlc3NlZC7CoMKgSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBw
bGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgYnkgcmV0dXJuIGUtbWFpbCwgZGVsZXRlIHRoaXMgZW1h
aWwsIGFuZCByZWZyYWluIGZyb20gYW55IGRpc2Nsb3N1cmUgb3IgYWN0aW9uIGJhc2VkIG9uIHRo
ZSBpbmZvcm1hdGlvbi4KKioqCg==

