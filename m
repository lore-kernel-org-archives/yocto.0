Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84932E009B6; Tue,  5 May 2015 23:34:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	XPRIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.25 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	*  1.0 XPRIO Has X-Priority header
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F582E007B6
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 23:34:05 -0700 (PDT)
Received: from epcpsbgr4.samsung.com
	(u144.gpu120.samsung.co.kr [203.254.230.144])
	by mailout2.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NNX00D5E0WDW5A0@mailout2.samsung.com> for
	yocto@yoctoproject.org; Wed, 06 May 2015 15:33:49 +0900 (KST)
Received: from epcpsbgx1.samsung.com ( [172.20.52.122])
	by epcpsbgr4.samsung.com (EPCPMTA) with SMTP id 4A.D1.20564.DC5B9455;
	Wed, 6 May 2015 15:33:49 +0900 (KST)
X-AuditID: cbfee690-f796f6d000005054-4b-5549b5cdb27f
Received: from epmailer03 ( [203.254.219.143])
	by epcpsbgx1.samsung.com (EPCPMTA) with SMTP id 8C.7F.27612.DC5B9455;
	Wed, 6 May 2015 15:33:49 +0900 (KST)
Date: Wed, 06 May 2015 06:33:49 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: "mark.hatle@windriver.com" <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20150506062815579@maninder1.s
Msgkey: 20150506062815579@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150506062815579@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <1484215526.122031430894028615.JavaMail.weblogic@epmlwas03a>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsWyRsSkSvfsVs9Qg8bfQhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVcf/Ab6aCHRwVD3d0sTcwzuDoYuTkEBJQk1i09zEbiC0hYCKx
	9/R7VghbTOLCvfVAcS6gmqWMEje27GOFKZpzeA8jRGIOo8SO011MIAkWARWJB/M6wCaxCehL
	nN27jrmLkYNDWMBVovdWHkhYRMBS4suaV2C9zAK7GCXWPrzOBHGFosT6G08YQWxeAUGJkzOf
	sEAsU5E4c/UFK0RcVeLemwZGiLicxJKpl5kgbF6JGe1PWWDi076uYYawpSXOz9rACPPN4u+P
	oeL8Esdu74DqFZCYeuYgVI2mxLud56Hm8EmsWfiWBaZ+16nlzDC77m+ZC9UrIbG15QnYbcxA
	90/pfsgOYRtIHFk0hxXdL7wCHhIN218wgTwvITCRQ2LnkpdsExiVZiGpm4Vk1iwks5DVLGBk
	WcUomlqQXFCclF5kolecmFtcmpeul5yfu4kRmB5O/3s2YQfjvQPWhxgFOBiVeHhvRHuGCrEm
	lhVX5h5iNAXG00RmKdHkfGASyiuJNzQ2M7IwNTE1NjK3NFMS530t9TNYSCA9sSQ1OzW1ILUo
	vqg0J7X4ECMTB6dUA2NSiBTLjebyuL8fY5PPJzoyb1NYb/jkeW7XbK/zkf+rrqbtUHNdMf+f
	6YuLDYejY75e23Fo+x5mvX4J5XhDeyemeR5zKrZ9yRf0Sn0iH8HaKO0eLuq5V3nFvjPLg7Yu
	stKVUeLikNmf9+QY6/ENB/cyXV/DbNfkpJ1ptdPHalEti6bxn/31N5RYijMSDbWYi4oTAfF6
	XHcKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBKsWRmVeSWpSXmKPExsVy+t/tft2zWz1DDe6f57aY9HINmwOjR/uJ
	PrYAxqg0m4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zByg
	qUoKZYk5pUChgMTiYiV9O5ui/NKSVIWM/OISW6VoQ3MjPSMDPVMjPUPTWCtDAwMjU6CahLSM
	+wd+MxXs4Kh4uKOLvYFxBkcXIyeHkICaxKK9j9lAbAkBE4k5h/cwQthiEhfurQeKcwHVzGGU
	2HG6iwkkwSKgIvFgXgdYA5uAvsTZveuYuxg5OIQFXCV6b+WBhEUELCW+rHnFCNLLLLCLUWLt
	w+tMEMsUJdbfeAK2gFdAUOLkzCcsEMtUJM5cfcEKEVeVuPemAeoIOYklUy8zQdi8EjPan7LA
	xKd9XcMMYUtLnJ+1Ae7oxd8fQ8X5JY7d3gHVKyAx9cxBqBpNiXc7z0PN4ZNYs/AtC0z9rlPL
	mWF23d8yF6pXQmJryxOw25iB7p/S/ZAdwjaQOLJoDiu6X3gFPCQatr9gmsAoOwtJahaS9llI
	2pHVLGBkWcUomlqQXFCclF5hqFecmFtcmpeul5yfu4kRnIqeLdzB+OW89SFGAQ5GJR5egzjP
	UCHWxLLiytxDjBIczEoivFPcgUK8KYmVValF+fFFpTmpxYcYTYGxNpFZSjQ5H5gm80riDY1N
	zE2NTS0MDM3NzZTEef+fyw0REkhPLEnNTk0tSC2C6WPi4JRqYGxcqe7cKN+pJqQTHvaaWfr8
	9MTuo88Kb36f2lh3sPfx8hMSsrXfbshGntx6Z/OzUO3ZW+re7Dg2W6TJ2i+hmzP3889ZhnlT
	l29Nk9i17lZIqllk96lPUWdeHTTctPbQn9/b3gnN3nvr+TGRi/d3tRmXfLW2dZ7Z/jWZIXLD
	QXtts/Kq/EctzjZKLMUZiYZazEXFiQB+lQYMWwMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: AJEET YADAV <ajeet.y@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AKHILESH KUMAR <akhilesh.k@samsung.com>,
	"v.narang@samsung.com" <v.narang@samsung.com>
Subject: [EDT][prelink-cross] possible memory leak in opd_size
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
X-List-Received-Date: Wed, 06 May 2015 06:34:13 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

RVAtRjZBQTA2MThDNDlDNEFFREE3M0JGRjFCMzk5NTBCQUIKCkhpLAoKd2UgZm91bmQgb25lIGlz
c3VlIHRocm91Z2ggY29kZS13YWxrIHRocm91Z2gKYW5kIGl0IHNlZW1zIHdlIGFyZSBjcmVhdGlu
ZyB1bnVzYWJsZSBPUEQgdGFibGUgLCBOb3Qgc3VyZSBhYm91dCBmaXgsIHBsZWFzZSBjaGVjayBi
ZWxvdyBmaXguIAoKU2lnbmVkLW9mZi1ieTogVmFuZWV0IE5hcmFuZyA8di5uYXJhbmdAc2Ftc3Vu
Zy5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmluZGVyIFNpbmdoIDxtYW5pbmRlcjEuc0BzYW1zdW5n
LmNvbT4KUmV2aWV3ZWQtYnk6IEFqZWV0IFlhZGF2IDxhamVldC55QHNhbXN1bmcuY29tPgotLS0K
IHRydW5rL3NyYy9mcHRyLmMgfCAgICAxICsKIDEgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb25z
KCspLCAwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RydW5rL3NyYy9mcHRyLmMgYi90cnVu
ay9zcmMvZnB0ci5jCmluZGV4IGNmZTNhZWQuLjM5MjcxZDUgMTAwNjQ0Ci0tLSBhL3RydW5rL3Ny
Yy9mcHRyLmMKKysrIGIvdHJ1bmsvc3JjL2ZwdHIuYwpAQCAtNDU4LDYgKzQ1OCw3IEBAIG9wZF9z
aXplIChzdHJ1Y3QgcHJlbGlua19pbmZvICppbmZvLCBHRWxmX1dvcmQgZW50c2l6ZSkKICAgIGUt
PnZhbCA9IGYtPnZhbDsKICAgIGUtPmdwID0gZi0+Z3A7CiAgICBlLT5vcGQgPSByZXQgfCBPUERf
RU5UX05FVzsKKyAgIGYtPmVudCA9IGU7CiAgICByZXQgKz0gZW50c2l6ZTsKICAgICAgIH0KCi0t
CjEuNy4xCgoKVGhhbmtzIGFuZCBSZWdhcmRzLApNYW5pbmRlciBTaW5naA==



