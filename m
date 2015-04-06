Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 131CDE00963; Mon,  6 Apr 2015 01:37:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.25 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA278E0076B
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 01:37:49 -0700 (PDT)
Received: from epcpsbgr3.samsung.com
	(u143.gpu120.samsung.co.kr [203.254.230.143])
	by mailout2.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NMD00L5FMN0F860@mailout2.samsung.com> for
	yocto@yoctoproject.org; Mon, 06 Apr 2015 17:37:48 +0900 (KST)
Received: from epcpsbgx3.samsung.com ( [172.20.52.126])
	by epcpsbgr3.samsung.com (EPCPMTA) with SMTP id 3F.55.24422.CD542255;
	Mon, 6 Apr 2015 17:37:48 +0900 (KST)
X-AuditID: cbfee68f-f793b6d000005f66-af-552245dca1d5
Received: from epmailer01 ( [203.254.219.141])
	by epcpsbgx3.samsung.com (EPCPMTA) with SMTP id E2.40.18557.CD542255;
	Mon, 6 Apr 2015 17:37:48 +0900 (KST)
Date: Mon, 06 Apr 2015 08:37:48 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: "mark.hatle@windriver.com" <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20150406082934315@maninder1.s
Msgkey: 20150406082934315@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150406082934315@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <1789275301.445341428309468219.JavaMail.weblogic@epmlwas01c>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsWyRsSkTveOq1KowZEtFhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVsWTaD9aCfYIVPevusTUwNgh2MXJyCAmoSSza+5gNxJYQMJF4
	tvUnC4QtJnHh3nqgOBdQzVJGiUnztzDBFK04d5EVonkOo8TPl8wgNouAikTLrz9gNWwC+hJn
	964DiwsL+Ems2t8GtkBEwFLiy5pXjCBDmQV6GSWW7+hjhxikKLH+xhNGEJtXQFDi5MwnUFeo
	SCyfd4UNIq4q8WnVAUaIuJzEkqmXoQ7ilZjR/pQFJj7t6xpmCFta4vysDYww3yz+/hgqzi9x
	7PYOqF4BialnDgLVcADZmhI3LmhAhPkk1ix8ywJTvuvUcmaYVfe3zIVqlZDY2vIEHA7MQOdP
	6X7IDmEbSBxZNIcV3Su8Ah4SK5t2M4H8LiEwkUNi6rm/LBMYlWYhqZuFZNYsJLOQ1SxgZFnF
	KJpakFxQnJReZKxXnJhbXJqXrpecn7uJEZgcTv971r+D8e4B60OMAhyMSjy8Hs8UQ4VYE8uK
	K3MPMZoC42kis5Rocj4wBeWVxBsamxlZmJqYGhuZW5opifMulPoZLCSQnliSmp2aWpBaFF9U
	mpNafIiRiYNTqoGxPSCiV0WuO/5shEna221TUqavs1XZZdp+o/yK6cdp4gGV78W6nXrk392I
	NtZQiull23jR/Mv7va82zrNPDdgt9uXQxswbBtmPVogsUg+4Ex/z6L9prajNUr9Pt+75nUr9
	LSWcd32dxVGHY/J1s4R+rMxku8Bn2b8m69uEevOTZz6I7dVYmZ+gxFKckWioxVxUnAgAHZrN
	iQkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOKsWRmVeSWpSXmKPExsVy+t/tXt07rkqhBrdvGFhMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlrG
	kmk/WAv2CVb0rLvH1sDYINjFyMkhJKAmsWjvYzYQW0LARGLFuYusELaYxIV769kgauYwSvx8
	yQxiswioSLT8+sMEYrMJ6Euc3bsOLC4s4Cexan8bWL2IgKXElzWvGLsYuTiYBXoZJZbv6GOH
	GKQosf7GE0YQm1dAUOLkzCcsEMtUJJbPu8IGEVeV+LTqACNEXE5iydTLTBA2r8SM9qcsMPFp
	X9cwQ9jSEudnbWCEOXrx98dQcX6JY7d3QPUKSEw9cxCohgPI1pS4cUEDIswnsWbhWxaY8l2n
	ljPDrLq/ZS5Uq4TE1pYn4DBhBjp/SvdDdgjbQOLIojms6F7hFfCQWNm0m2kCo+wsJKlZSNpn
	IWlHVrOAkWUVo2hqQXJBcVJ6hbFecWJucWleul5yfu4mRnAierZ4B+P/89aHGAU4GJV4eBe8
	UAwVYk0sK67MPcQowcGsJML7w0gpVIg3JbGyKrUoP76oNCe1+BCjKTDWJjJLiSbnA5NkXkm8
	obGJuamxqYWBobm5mZI47/9zuSFCAumJJanZqakFqUUwfUwcnFLAdDLtNev1l9+LZ81t3Mas
	+D18kd4BQfvbOSLCNQJh7Sm+bA/ZYhZ/VrOOPadtUZaWGW1w98n1X2yhZ1p0HfgbNx3yPHLg
	df7yScKnL3bvebhI3aHh6Qo/P473iqsrvPzFbJ9E9RYtjN21eNPcmuqaqsAa3h11NZWTkmZt
	PWezxnz19eXic8SNlViKMxINtZiLihMBzt5HrFoDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: "v.narang@samsung.com" <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: [prelink-cross] [PATCH 1/1] debug-for-missing-loader-and-libc
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
X-List-Received-Date: Mon, 06 Apr 2015 08:37:52 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGksCgpEdXJpbmcgY3Jvc3MgcHJlbGluayBpZiB3ZSBtaXNzIG91dCBsZC1saW51eC5zby4qIG9y
IGxpYmMuc28uKiBJdCBwcmludHMgYmVsb3cgaW5mbzoKLi9wcmVsaW5rOiAvdGVzdF9iaW5hcnk6
IENvdWxkIG5vdCBwYXJzZSBgcHJlbGluay1ydGxkOiBkbC12ZXJzaW9uLmM6MjE5OiBydGxkX2No
ZWNrX21hcF92ZXJzaW9uczoKIEFzc2VydGlvbiBgbmVlZGVkICE9ICgodm9pZCAqKTApJyBmYWls
ZWQuJwoKQW5kIHRodXMgd2UgbWlzcyBhY3R1YWwgY2F1c2UgZm9yIHRoaXMgZmFpbHVyZSwgIGJ5
IHRoaXMgcGF0Y2ggd2Ugd2lsbCBrbm93IGZhaWx1cmUgcmVhc29uLgouL3ByZWxpbms6IC90ZXN0
X2JpbmFyeTogQ291bGQgbm90IHBhcnNlIGAuL3ByZWxpbmstcnRsZDogZXJyb3Igd2hpbGUgbG9h
ZGluZyBzaGFyZWQgbGlicmFyaWVzOiBsZC1saW51eC5zby4zJwooSW4gdGhpcyBjYXNlIGxkLWxp
bnV4LnNvLjMgd2FzIG1pc3NpbmcpCgpTaWduZWQtb2ZmLWJ5OiBNYW5pbmRlciBTaW5naCA8bWFu
aW5kZXIxLnNAc2Ftc3VuZy5jb20+ClNpZ25lZC1vZmYtYnk6IFZhbmVldCBOYXJhbmcgPHYubmFy
YW5nQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogQWplZXQgWWFkYXYgPGFqZWV0LnZAc2Ftc3Vu
Zy5jb20+ClJldmlld2VkLWJ5OiBHZW9uLWhvIEtpbSA8Z2gwMDcua2ltQHNhbXN1bmcuY29tPgot
LS0KIHNyYy9ydGxkL2RsLXZlcnNpb24uYyB8ICAgIDYgKysrKysrCiAxIGZpbGVzIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKZGlmZiAtLWdpdCBhL3NyYy9ydGxkL2Rs
LXZlcnNpb24uYyBiL3NyYy9ydGxkL2RsLXZlcnNpb24uYwppbmRleCBlNDA0MGE2Li5lYjYyOTQz
IDEwMDY0NAotLS0gYS9zcmMvcnRsZC9kbC12ZXJzaW9uLmMKKysrIGIvc3JjL3J0bGQvZGwtdmVy
c2lvbi5jCkBAIC0yMTYsNiArMjE2LDEyIEBAIF9kbF9jaGVja19tYXBfdmVyc2lvbnMgKHN0cnVj
dCBsZGxpYnNfbGlua19tYXAgKm1hcCwgaW50IHZlcmJvc2UsIGludCB0cmFjZV9tb2RlCiAgICAg
IC8qIElmIE5FRURFRCBpcyBOVUxMIHRoaXMgbWVhbnMgYSBkZXBlbmRlbmN5IHdhcyBub3QgZm91
bmQKICAgICAgICAgYW5kIG5vIHN0dWIgZW50cnkgd2FzIGNyZWF0ZWQuICBUaGlzIHNob3VsZCBu
ZXZlciBoYXBwZW4uICAqLworICAgICBpZihuZWVkZWQgPT0gTlVMTCkKKyAgICAgICB7CisgICAg
ICAgICBfZGxfc2lnbmFsX2Vycm9yIChlcnJ2YWwsIE5VTEwsIE5VTEwsIHN0cnRhYiArIGVudC0+
dm5fZmlsZSk7CisgICAgICAgICBwcmludGYoImVycm9yIHdoaWxlIGxvYWRpbmcgc2hhcmVkIGxp
YnJhcmllczogJXMiLCBzdHJ0YWIgKyBlbnQtPnZuX2ZpbGUpOworICAgICAgICAgZXhpdCgwKTsK
KyAgICAgICB9CiAgICAgIGFzc2VydCAobmVlZGVkICE9IE5VTEwpOwogICAgICAvKiBNYWtlIHN1
cmUgdGhpcyBpcyBubyBzdHViIHdlIGNyZWF0ZWQgYmVjYXVzZSBvZiBhIG1pc3NpbmcKLS0KMS43
LjEKCkFuZCBhbHNvIGlmIGl0IGlzIG9rIHdlIGNhbiByZW1vdmUgdGhpcyBvbmUgLS0tIGFzc2Vy
dCAobmVlZGVkICE9IE5VTEwpOyAKYmVjYXVzZSB3ZSBhcmUgdXNpbmcgZXhpdCgwKSBmb3IgKG5l
ZWRlZD09TlVMTCkgCgpUaGFua3MsCk1hbmluZGVyIFNpbmdo



