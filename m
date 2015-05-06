Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D574BE009D8; Tue,  5 May 2015 22:51:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B192AE009AA
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 22:51:28 -0700 (PDT)
Received: from epcpsbgr2.samsung.com
	(u142.gpu120.samsung.co.kr [203.254.230.142])
	by mailout4.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NNW00EY2YXQG070@mailout4.samsung.com> for
	yocto@yoctoproject.org; Wed, 06 May 2015 14:51:26 +0900 (KST)
Received: from epcpsbgx2.samsung.com ( [172.20.52.122])
	by epcpsbgr2.samsung.com (EPCPMTA) with SMTP id 8C.77.28411.EDBA9455;
	Wed, 6 May 2015 14:51:26 +0900 (KST)
X-AuditID: cbfee68e-f79c56d000006efb-a4-5549abde95bc
Received: from epmailer02 ( [203.254.219.142])
	by epcpsbgx2.samsung.com (EPCPMTA) with SMTP id C0.1D.31182.EDBA9455;
	Wed, 6 May 2015 14:51:26 +0900 (KST)
Date: Wed, 06 May 2015 05:51:26 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: "mark.hatle@windriver.com" <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20150506054028097@maninder1.s
Msgkey: 20150506054028097@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150506054028097@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <389650514.118101430891486083.JavaMail.weblogic@epmlwas03a>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrKIsWRmVeSWpSXmKPExsWyRsSkSvfeas9QgxXnDC0mvVzD5sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoEr4/+kvywFx9grDiy2bWBcwd7FyMkhJKAmsWjvYzYQW0LARGLv
	y9UsELaYxIV764HiXEA1SxklZqx7ywhT1HlqFRNEYg6jxOqPF4EmcXCwCKhI9M+UA6lhE9CX
	OLt3HTOILSxgIXF/02WwXhEBS4kva16B2cwCuxglHq+UhDhCUWL9jSdgcV4BQYmTM59AHaEi
	sbP9NTNEXFXi59R5UHE5iSVTLzNB2LwSM9qfwsWnfV3DDGFLS5yftYER5pnF3x9Dxfkljt3e
	AdUrIDH1zEGoGk2JK/+eQc3hk1iz8C0LTP2uU8uZYXbd3zIXqldCYmvLE1aIXxQlpnQ/ZIew
	DSSOLJrDiu4XXgF3ib8nLoMDVEKgl0Pi1P6LrBMYlWYhqZuFZNYsJLOQ1SxgZFnFKJpakFxQ
	nJReZKRXnJhbXJqXrpecn7uJEZgaTv971reD8eYB60OMAhyMSjy8N6I9Q4VYE8uKK3MPMZoC
	o2kis5Rocj4wAeWVxBsamxlZmJqYGhuZW5opifMmSP0MFhJITyxJzU5NLUgtii8qzUktPsTI
	xMEp1cAomb9uR9z92f3OvKyhG/7fyLSbHXmmwPC3QhrLpGUsK1c9fLZrV3b9f771HtalDwyl
	1ypWHUx96P7z7p30Zulny07E7+f/+egZV+DW8ydn/fALz/kyTds20Kd616qIoom3n963tW/f
	5ZXOukZZt3Sp2N+C3ualzJeD3kx90KPv8uq1+ZRf/LJXlViKMxINtZiLihMBwPaNUAgDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGKsWRmVeSWpSXmKPExsVy+t/tPt17qz1DDVZ/0bKY9HINmwOjR/uJ
	PrYAxqg0m4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zByg
	qUoKZYk5pUChgMTiYiV9O5ui/NKSVIWM/OISW6VoQ3MjPSMDPVMjPUPTWCtDAwMjU6CahLSM
	/5P+shQcY684sNi2gXEFexcjJ4eQgJrEor2P2UBsCQETic5Tq5ggbDGJC/fWA8W5gGrmMEqs
	/ngRqIGDg0VARaJ/phxIDZuAvsTZveuYQWxhAQuJ+5suM4LYIgKWEl/WvAKzmQV2MUo8XikJ
	sUtRYv2NJ2BxXgFBiZMzn7BA7FKR2Nn+mhkirirxc+o8qLicxJKpl6Hu4ZWY0f4ULj7t6xpm
	CFta4vysDYwwNy/+/hgqzi9x7PYOqF4BialnDkLVaEpc+fcMag6fxJqFb1lg6nedWs4Ms+v+
	lrlQvRISW1uesEL8oigxpfshO4RtIHFk0RxWdL/wCrhL/D1xmW0Co+wsJKlZSNpnIWlHVrOA
	kWUVo2hqQXJBcVJ6hZFecWJucWleul5yfu4mRnAaerZoB+O/89aHGAU4GJV4eG9Ee4YKsSaW
	FVfmHmKU4GBWEuGd4g4U4k1JrKxKLcqPLyrNSS0+xGgKjLSJzFKiyfnAFJlXEm9obGJuamxq
	YWBobm6mJM77/1xuiJBAemJJanZqakFqEUwfEwenVANj34qSp+z/on6VfLl1SPtt6eoFKzP1
	TDiV/heo659WPKawuSxEvvSYWbauQ27nseN3Yh6Yrf97eOmGOEHNmdt9RKLiEiYmTpnK1H5t
	lv3huVtfrmd8cd172ul5IonpHiWLss677X71Iv/FGv+pz389WP7fOUN03+8tWac+vVunVT/7
	scgE5XeP1ymxFGckGmoxFxUnAgDz9h7AWQMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: "v.narang@samsung.com" <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AKHILESH KUMAR <akhilesh.k@samsung.com>, AJEET YADAV <ajeet.y@samsung.com>
Subject: [EDT][prelink-cross][PATCH] cleanup code
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
X-List-Received-Date: Wed, 06 May 2015 05:51:34 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

RVAtRjZBQTA2MThDNDlDNEFFREE3M0JGRjFCMzk5NTBCQUIKSGksCgpSZW1vdmUgZHNvIE5VTEwg
Y2hlY2sgYmVjYXVzZSBiZWZvcmUgY2FsbGluZyB0aGlzIEFQSQphbHJlYWR5IGNoZWNraW5nIGZv
ciBkc28gTlVMTCBhbmQgYWxzbyBkc28gcG9pbnRlciBpcyB1c2VkIGJlZm9yZSB0aGlzIGNoZWNr
LgoKU2lnbmVkLW9mZi1ieTogQWtoaWxlc2ggS3VtYXIgPGFraGlsZXNoLmtAc2Ftc3VuZy5jb20+
ClJldmlld2VkLWJ5OiBBamVldCBZYWRhdiA8YWplZXQueUBzYW1zdW5nLmNvbT4KLS0tCiB0cnVu
ay9zcmMvZ2F0aGVyLmMgfCAgICAxIC0KIDEgZmlsZXMgY2hhbmdlZCwgMCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RydW5rL3NyYy9nYXRoZXIuYyBiL3RydW5r
L3NyYy9nYXRoZXIuYwppbmRleCBjM2QzMTI4Li44ZjMxMGY2IDEwMDY0NAotLS0gYS90cnVuay9z
cmMvZ2F0aGVyLmMKKysrIGIvdHJ1bmsvc3JjL2dhdGhlci5jCkBAIC01NjEsNyArNTYxLDYgQEAg
bWFrZV91bnByZWxpbmthYmxlOgoKICAgICAgIGFzc2VydCAoZW50LT50eXBlID09IEVUX05PTkUp
OwogICAgICAgZW50LT50eXBlID0gRVRfVU5QUkVMSU5LQUJMRTsKLSAgICAgIGlmIChkc28pCiAg
ICBjbG9zZV9kc28gKGRzbyk7CiAgICAgICByZXR1cm4gMDsKICAgICB9Ci0tCjEuNy4xCgpUaGFu
a3MgCk1hbmluZGVyIFNpbmdo



