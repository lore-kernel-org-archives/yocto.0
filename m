Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA2C9E009D8; Tue,  5 May 2015 22:16:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	XPRIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.34 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	*  1.0 XPRIO Has X-Priority header
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 386B1E009AA
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 22:16:17 -0700 (PDT)
Received: from epcpsbgr4.samsung.com
	(u144.gpu120.samsung.co.kr [203.254.230.144])
	by mailout4.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NNW00E7FXASG040@mailout4.samsung.com> for
	yocto@yoctoproject.org; Wed, 06 May 2015 14:16:04 +0900 (KST)
Received: from epcpsbgx1.samsung.com ( [172.20.52.122])
	by epcpsbgr4.samsung.com (EPCPMTA) with SMTP id 22.B0.20564.393A9455;
	Wed, 6 May 2015 14:16:03 +0900 (KST)
X-AuditID: cbfee690-f796f6d000005054-7c-5549a393a31f
Received: from epmailer03 ( [203.254.219.143])
	by epcpsbgx1.samsung.com (EPCPMTA) with SMTP id C2.F3.27612.393A9455;
	Wed, 6 May 2015 14:16:03 +0900 (KST)
Date: Wed, 06 May 2015 05:16:03 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: "mark.hatle@windriver.com" <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20150506050718528@maninder1.s
Msgkey: 20150506050718528@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150506050718528@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <1402879333.114481430889362699.JavaMail.weblogic@epmlwas03a>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsWyRsSkSnfyYs9Qg8UrJCwmvVzD5sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoErY+apP0wFb7grdrQdYWxgPMDdxcjJISSgJrFo72M2EFtCwETi
	y6c2dghbTOLCvfVAcS6gmqWMEvNeXWGHKTq1dw4rRGIOo8SOKc+YQRIsAioSrxfuYQSx2QT0
	Jc7uXQcWFxawlXg1YRlYXETAUuLLmleMIM3MAr2MEhM2r2GBOENRYv2NJ2BFvAKCEidnPmGB
	2KYi8fISxAJeAVWJ2w+/sELE5SSWTL3MBGHzSsxof8oCE5/2dQ0zhC0tcX7WBkaYdxZ/fwwV
	55c4dnsHVK+AxNQzB6FqNCW2/V4NVcMnsWbhWxaY+l2nljPD7Lq/ZS5Ur4TE1pYnYPcwA90/
	pfshO4RtIHFk0RxWdL/wCnhI3LxyiQnkeQmBXg6Jl8/2M01gVJqFpG4WklmzkMxCVrOAkWUV
	o2hqQXJBcVJ6kYlecWJucWleul5yfu4mRmCCOP3v2YQdjPcOWB9iFOBgVOLhvRHtGSrEmlhW
	XJl7iNEUGFETmaVEk/OBaSivJN7Q2MzIwtTE1NjI3NJMSZz3tdTPYCGB9MSS1OzU1ILUovii
	0pzU4kOMTBycUg2MmTY6r609Qw49fy1ZIuJ+ck5iUJzPCXUDTdF1c268WaS3k93SUE6337eX
	R2eKpr9t1JX/S1TPznD9r8Ub3nG9Ujf05g3Wrl6FpNUBX/x2uy+4yrOIv3r1cjGn2QJK5p2/
	iqYH2Wzn4inn9dnA8VXn6dRlF69v+rVBOiNajmca676l3274L52txFKckWioxVxUnAgAq3rr
	dQsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsVy+t/tft3Jiz1DDd6eELKY9HINmwOjR/uJ
	PrYAxqg0m4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zByg
	qUoKZYk5pUChgMTiYiV9O5ui/NKSVIWM/OISW6VoQ3MjPSMDPVMjPUPTWCtDAwMjU6CahLSM
	maf+MBW84a7Y0XaEsYHxAHcXIyeHkICaxKK9j9lAbAkBE4lTe+ewQthiEhfurQeKcwHVzGGU
	2DHlGTNIgkVAReL1wj2MIDabgL7E2b3rwOLCArYSryYsA4uLCFhKfFnzihGkmVmgl1FiwuY1
	LBDbFCXW33gCVsQrIChxcuYTFohtKhIvL0Es4BVQlbj98AvUFXISS6ZeZoKweSVmtD9lgYlP
	+7qGGcKWljg/awMjzNWLvz+GivNLHLu9A6pXQGLqmYNQNZoS236vhqrhk1iz8C0LTP2uU8uZ
	YXbd3zIXqldCYmvLE7B7mIHun9L9kB3CNpA4sggSWsh+4RXwkLh55RLTBEbZWUhSs5C0z0LS
	jqxmASPLKkbR1ILkguKk9ApDveLE3OLSvHS95PzcTYzgZPRs4Q7GL+etDzEKcDAq8fAaxHmG
	CrEmlhVX5h5ilOBgVhLhneIOFOJNSaysSi3Kjy8qzUktPsRoCoy2icxSosn5wESZVxJvaGxi
	bmpsamFgaG5upiTO+/9cboiQQHpiSWp2ampBahFMHxMHp1QDo0+Im9maS+wiDYIrxXb/ZFso
	dLY4sGp7Uadp0MTgEwYi1Ye4JP1faN+c3W9Tz3h8V7VEm/ZifTmHefveKpx7qru2cNPnAxrz
	f5+rnhqzOdw12ufesqOHZbJ6r0R8+BU7+3/qkeho/Y0xxZcuWqgcW366RPvAscI38xT3mV4L
	fWUY96Dw4TbVv0osxRmJhlrMRcWJAGDVAWtcAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: AJEET YADAV <ajeet.y@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"v.narang@samsung.com" <v.narang@samsung.com>
Subject: [EDT][PATCH][prelink-cross] dso validation check fix
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maninder1.s@samsung.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 May 2015 05:16:25 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

RVAtRjZBQTA2MThDNDlDNEFFREE3M0JGRjFCMzk5NTBCQUIKSGkgTWFyaywKCmRzbyBudWxsIHBv
aW50ZXIgY2hlY2sgaXMgd3JvbmdseSBwbGFjZWQuCgoKU2lnbmVkLW9mZi1ieTogTWFuaW5kZXIg
U2luZ2ggPG1hbmluZGVyMS5zQHNhbXN1bmcuY29tPgpTaWduZWQtb2ZmLWJ5OiBWYW5lZXQgTmFy
YW5nIDx2Lm5hcmFuZ0BzYW1zdW5nLmNvbT4KUmV2aWV3ZWQtYnk6IEFqZWV0IFlhZGF2IDxhamVl
dC55QHNhbXN1bmcuY29tPgotLS0KIHRydW5rL3NyYy9ydGxkL3J0bGQuYyB8ICAgIDQgKystLQog
MSBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvdHJ1bmsvc3JjL3J0bGQvcnRsZC5jIGIvdHJ1bmsvc3JjL3J0bGQvcnRsZC5jCmluZGV4
IDM1ZGZkZTcuLmY4OGNlN2YgMTAwNjQ0Ci0tLSBhL3RydW5rL3NyYy9ydGxkL3J0bGQuYworKysg
Yi90cnVuay9zcmMvcnRsZC9ydGxkLmMKQEAgLTQ3OSwxMyArNDc5LDEzIEBAIGZpbmRfbGliX2lu
X3BhdGggKHN0cnVjdCBzZWFyY2hfcGF0aCAqcGF0aCwgY29uc3QgY2hhciAqc29uYW1lLAogICAg
ICAgaWYgKHdyYXBfYWNjZXNzIChyZXQsIEZfT0spID09IDApCiAgICB7CiAgICAgIERTTyAqZHNv
ID0gb3Blbl9kc28gKHJldCk7CisgICAgIGlmIChkc28gPT0gTlVMTCkKKyAgICAgICBjb250aW51
ZTsKICAgICAgICAgICBpbnQgZHNvX2NsYXNzID0gZ2VsZl9nZXRjbGFzcyAoZHNvLT5lbGYpOwog
ICAgICBpbnQgZHNvX21hY2hpbmUgPSAoZHNvX2NsYXNzID09IEVMRkNMQVNTMzIpID8KICAgICAg
ICAgICAgICAgIGVsZjMyX2dldGVoZHIgKGRzby0+ZWxmKS0+ZV9tYWNoaW5lIDoKICAgICAgICAg
ICAgICAgIGVsZjY0X2dldGVoZHIgKGRzby0+ZWxmKS0+ZV9tYWNoaW5lOwoKLSAgICAgaWYgKGRz
byA9PSBOVUxMKQotICAgICAgIGNvbnRpbnVlOwoKICAgICAgLyogU2tpcCAzMi1iaXQgbGlicmFy
aWVzIHdoZW4gbG9va2luZyBmb3IgNjQtYml0LiAgQWxzbwogICAgICAgICBza2lwIGxpYnJhcmll
cyBmb3IgYWx0ZXJuYXRpdmUgbWFjaGluZXMuICAqLwotLQoxLjcuMQoKClRoYW5rcyBhbmQgUmVn
YXJkcywKTWFuaW5kZXIgU2luZ2g=



