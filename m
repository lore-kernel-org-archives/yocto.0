Return-Path: <v.narang@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F920E00B20; Thu,  5 Nov 2015 23:09:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	XPRIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.33 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	*  1.0 XPRIO Has X-Priority header
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E4CBE00B19
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 23:09:32 -0800 (PST)
Received: from epcpsbgr5.samsung.com
	(u145.gpu120.samsung.co.kr [203.254.230.145])
	by mailout3.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NXD01V61T7P2X70@mailout3.samsung.com> for
	yocto@yoctoproject.org; Fri, 06 Nov 2015 16:09:25 +0900 (KST)
Received: from epcpsbgx2.samsung.com ( [172.20.52.124])
	by epcpsbgr5.samsung.com (EPCPMTA) with SMTP id 12.5A.05385.5225C365;
	Fri, 6 Nov 2015 16:09:25 +0900 (KST)
X-AuditID: cbfee691-f79d66d000001509-98-563c52258f2d
Received: from epmailer02 ( [203.254.219.142])
	by epcpsbgx2.samsung.com (EPCPMTA) with SMTP id B4.B6.04967.5225C365;
	Fri, 6 Nov 2015 16:09:25 +0900 (KST)
Date: Fri, 06 Nov 2015 07:09:25 +0000 (GMT)
From: Vaneet Narang <v.narang@samsung.com>
To: Mark Hatle <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20151106070144532@v.narang
Msgkey: 20151106070144532@v.narang
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20151104051250795@v.narang
X-ParentMTR: 20151104051250795@v.narang
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <1527190987.610301446793765000.JavaMail.weblogic@ep2mlwas08d>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsWyRsSkRlc1yCbMYP0qXYtJL9ewOTB6tJ/o
	YwtgjOKySUnNySxLLdK3S+DKWDFvMXPBJ46KSUeb2RsYL3B0MXJyCAkoS3Reu8YKYksImEjc
	6FnMBGGLSVy4t56ti5ELqGYpo0THnGMsMEU7Zz1mgUjMYZRo7v4PlmARUJH4fb4TbBKbgLbE
	m3+9YHFhAQeJba9vM4PYIkDxA8+PsYI0MwtsZZI48LqdFeIMOYm/C36BFfEKCEqcnPkEapui
	xOTfH9gg4koSj3d+gTpVTmLJ1MtQp/JKzGh/ygITn/Z1DTOELS1xftYGRph3Fn9/DBXnlzh2
	ewdUr4DE1DMHoWrUJI4sv8sOYWtInLj9Dq5+16nlzDC77m+ZC9UrIbG15QnYPcxAd07pfsgO
	YRtIHFk0hxXdL7wCnhJbdn9kAnleQqCXQ+LLoYNMExiVZiGpm4Vk1iwks5DVLGBkWcUomlqQ
	XFCclF5kqlecmFtcmpeul5yfu4kRmCBO/3s2cQfj/QPWhxgFOBiVeHgNlluHCbEmlhVX5h5i
	NAVG1ERmKdHkfGAayiuJNzQ2M7IwNTE1NjK3NFMS59WR/hksJJCeWJKanZpakFoUX1Sak1p8
	iJGJg1OqgZHVYFt0e6STwdYfM5xsz+ufZ/b7Pf3Zn8AljgyKnzdvfHh7+xfBTVp8QX0cSzJP
	zHvybUNEdJEUhzVLE+/eEmu1nezTuhZssbrav7U9YmrVzIN8Kd9nxPCfu8l64G9C3uV+cZan
	K3Yn5dW+vbDwq3xMm73vrbZVr5KcRGJcj9XuyH5zSsTd7LISS3FGoqEWc1FxIgBOqIg/CwMA	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsVy+t/tPl3VIJswgz3flCwmvVzD5sDo0X6i
	jy2AMSrNJiM1MSW1SCE1Lzk/JTMv3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwdo
	qpJCWWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVina0NxIz8hAz9RIz9A01srQwMDIFKgmIS1j
	xbzFzAWfOComHW1mb2C8wNHFyMkhJKAs0XntGiuILSFgIrFz1mMWCFtM4sK99WxdjFxANXMY
	JZq7/4MlWARUJH6f7wRrYBPQlnjzrxcsLizgILHt9W1mEFsEKH7g+TFWkGZmga1MEgdet7NC
	bJOT+LvgF1gRr4CgxMmZT6C2KUpM/v2BDSKuJPF45xeoi+Qklky9zARh80rMaH/KAhOf9nUN
	M4QtLXF+1gZGmKsXf38MFeeXOHZ7B1SvgMTUMwehatQkjiy/yw5ha0icuP0Orn7XqeXMMLvu
	b5kL1SshsbXlCdg9zEB3Tul+yA5hG0gcWTSHFd0vvAKeElt2f2SawCg7C0lqFpL2WUjakdUs
	YGRZxSiaWpBcUJyUXmGkV5yYW1yal66XnJ+7iRGcjJ4t2sH477z1IUYBDkYlHl7D5dZhQqyJ
	ZcWVuYcYJTiYlUR45ZhtwoR4UxIrq1KL8uOLSnNSiw8xmgKjbSKzlGhyPjBR5pXEGxqbmJsa
	m1oYGJqbmymJ875J1wgTEkhPLEnNTk0tSC2C6WPi4JRqYBT73SAgUf/Jd77Ett/xNy7teRf3
	KWZf771SrXjbt+bfzd4uDpr1OrI7l2cX84KM0AC/gthD09ffnLo9P2/KBUtN9eOBYtcat//7
	51J8JPajouau0DsCxqvj6w6cPPKrS1St8+szs9wr06feybEN22a25lccb9uqvWrWHEai9Sc4
	J/zM/HCft0mJpTgj0VCLuag4EQBE8B7OXAMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: AJEET YADAV <ajeet.y@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	doha Hwang <doha.hwang@samsung.com>,
	Hak-Bong Lee <hakbong5.lee@samsung.com>,
	Maninder Singh <maninder1.s@samsung.com>,
	Manjeet Pawar <manjeet.p@samsung.com>, PANKAJ MISHRA <pankaj.m@samsung.com>
Subject: Re: [PATCH 1/1] Fix AARCH64_TLSDESC relocation conflict
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: v.narang@samsung.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Nov 2015 07:09:34 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGkgTWFyaywgDQoNCj5JIGhhdmUgZG9uZSB0aGUgc2FtZSBpbXBsZW1lbnRhdGlvbiBmb3IgQUFS
Q0g2NC4gIExvYWRlciBoYW5kbGVzIEFBUkNINjRfVExTREVTQyBjb25mbGljdCBhcyBiZWxvdy4N
Cj5jYXNlIFJfQUFSQ0g2NF9UTFNERVNDOg0KPi4uLi4NCj4gICAgICAgICAgICBpZiAoISBzeW0p
DQo+ICAgICAgICAgICAgICB7DQo+ICAgICAgICAgICAgICAgIHRkLT5hcmcgPSAodm9pZCopcmVs
b2MtPnJfYWRkZW5kOw0KPiAgICAgICAgICAgICAgICB0ZC0+ZW50cnkgPSBfZGxfdGxzZGVzY191
bmRlZndlYWs7DQo+ICAgICAgICAgICAgICB9DQoNCndlIGhhdmUgc2hhcmVkIG9uZSBwYXRjaCBp
biBsaWJjIHRvIGhhbmRsZSBBQVJDSDY0X1RMUyBjb25mbGljdCBvbiBBQVJDSDY0LiANCmh0dHBz
Oi8vc291cmNld2FyZS5vcmcvbWwvbGliYy1hbHBoYS8yMDE1LTExL21zZzAwMTA2Lmh0bWwNCiAN
ClNpbmNlIHdlIGFyZSB1c2luZyBjcm9zcyBwcmVsaW5rIHdlIGRvbid0IHJ1biB0ZXN0c3VpdGUu
IHdlIGNvbXBpbGUgYWxsIHRlc3QgY2FzZXMgDQpmcm9tIHRlc3Qgc3VpdGUgbWFudWFsbHkgYXMg
bWVudGlvbmVkIGluIHRscy5zaCBmaWxlIGFuZCBydW4gb24gdGFyZ2V0LiANCg0KTERfREVCVUc9
bGlicyBMRF9MSUJSQVJZX1BBVEg9LiAuL3RsczENCiAgICAgICANCiAxODI4OiAgICAgcHJlbGlu
ayBjaGVja2luZzogb2sNCg0KLi4uLg0KTm8gc2VnZmF1bHQgb3IgYWJvcnQoKSBpcyBvYnNlcnZl
ZCBoZW5jZSBpIGFzc3VtZSB0ZXN0Y2FzZSBpcyBydW5uaW5nIHByb3Blcmx5LiAgDQoNCiAgICAg
ICAgIA0KVGhhbmtzIA0KVmFuZWV0IE5hcmFuZw==



