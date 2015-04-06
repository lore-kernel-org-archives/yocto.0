Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF34E00963; Mon,  6 Apr 2015 01:29:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D646E0076B
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 01:29:03 -0700 (PDT)
Received: from epcpsbgr3.samsung.com
	(u143.gpu120.samsung.co.kr [203.254.230.143])
	by mailout2.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NMD00154M8DJI20@mailout2.samsung.com> for
	yocto@yoctoproject.org; Mon, 06 Apr 2015 17:29:01 +0900 (KST)
Received: from epcpsbgx4.samsung.com ( [172.20.52.125])
	by epcpsbgr3.samsung.com (EPCPMTA) with SMTP id 9B.8F.24422.CC342255;
	Mon, 6 Apr 2015 17:29:00 +0900 (KST)
X-AuditID: cbfee68f-f793b6d000005f66-4a-552243ccbfd7
Received: from epmailer01 ( [203.254.219.141])
	by epcpsbgx4.samsung.com (EPCPMTA) with SMTP id 6D.CE.25195.CC342255;
	Mon, 6 Apr 2015 17:29:00 +0900 (KST)
Date: Mon, 06 Apr 2015 08:29:00 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: "mark.hatle@windriver.com" <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20150406082055973@maninder1.s
Msgkey: 20150406082055973@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150406082055973@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <1643488269.444581428308940250.JavaMail.weblogic@epmlwas01c>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsWyRsSkVveMs1KowblrVhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVsf7ME9aCObwVNy8fYmlgfMPTxcjJISSgJrFo72O2LkYODgkB
	E4kfDWIgYQkBMYkL99YDhbmASpYyStxqmM8CkTCR+PzkKVRiDqPE+XkfmEASLAIqEv2t19hA
	bDYBfYmze9cxg9jCAr4SV45PBYuLCFhKfFnzihGkmVmgl1Fi+Y4+dogrFCXW33jCCGLzCghK
	nJz5BGqbisSLC+9ZIeKqEu+ePGGGiMtJLJl6mQnC5pWY0f6UBSY+7esaqBppifOzNjDCvLP4
	+2OoOL/Esds7oHoFJKaeOQhVoynRt2siVJxPYs3Ctyww9btOLWeG2XV/y1yoGgmJrS1PwG5j
	Brp/SvdDdgjbQOLIojms6H7hFfCQWPD7BQvI8xICEzkk5h2+yT6BUWkWkrpZSGbNQjILWc0C
	RpZVjKKpBckFxUnpRcZ6xYm5xaV56XrJ+bmbGIHp4fS/Z/07GO8esD7EKMDBqMTD6/FMMVSI
	NbGsuDL3EKMpMKImMkuJJucDk1BeSbyhsZmRhamJqbGRuaWZkjjvQqmfwUIC6YklqdmpqQWp
	RfFFpTmpxYcYmTg4pRoYQyP/K8+asTzJdkvW1MnzFq+UnNAuo2F5/vaRo4J8aiWR/Xv6S2P+
	c28U4la86Lv3APfPQvNwjTW8osv/zBNaE7mlQuqFx33J1f4ntMIuSn2bvnZFlMzSlgVaElyC
	ix/POXZb6rzQa5aKc3diFI0PhS5uYHWN4G0LtktI+KhzptZ4zdEfa07/VGIpzkg01GIuKk4E
	ANdb7XYKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsVy+t/tXt0zzkqhBq87jS0mvVzD5sDo0X6i
	jy2AMSrNJiM1MSW1SCE1Lzk/JTMv3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwdo
	qpJCWWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVina0NxIz8hAz9RIz9A01srQwMDIFKgmIS1j
	/ZknrAVzeCtuXj7E0sD4hqeLkZNDSEBNYtHex2wgtoSAicTnJ0+hbDGJC/fWA9lcQDVzGCXO
	z/vABJJgEVCR6G+9BlbEJqAvcXbvOmYQW1jAV+LK8algcREBS4kva14xgjQzC/QySizf0ccO
	sU1RYv2NJ4wgNq+AoMTJmU9YILapSLy48J4VIq4q8e7JE2aIuJzEkqmXmSBsXokZ7U9ZYOLT
	vq6BqpGWOD9rAyPM1Yu/P4aK80scu70DqldAYuqZg1A1mhJ9uyZCxfkk1ix8ywJTv+vUcmaY
	Xfe3zIWqkZDY2vIE7DZmoPundD9kh7ANJI4smsOK7hdeAQ+JBb9fsExglJ2FJDULSfssJO3I
	ahYwsqxiFE0tSC4oTkqvMNErTswtLs1L10vOz93ECE5Gz5bsYGy4YH2IUYCDUYmHd8ELxVAh
	1sSy4srcQ4wSHMxKIrw/jJRChXhTEiurUovy44tKc1KLDzGaAqNtIrOUaHI+MFHmlcQbGpuY
	mxqbWhgYmpubKYnz/j+XGyIkkJ5YkpqdmlqQWgTTx8TBKdXAOPWhnszNjkdxv/6qXp4++Uo2
	866y6wsnXvo+3+ZlTe1s3Yfe88uDbt25Luy90XnVRqeZaRtcWRW2x25d6qCa1Hgy/0XuguP3
	N7PNNZWPerV5lbHiNt3JaftFX0c1nay8J/inlIN1j99XhzTB609OpV3ZX79HRiFQt/vIUzVd
	j7Rnpk7sX37fTFViKc5INNRiLipOBAA8LkvSXAMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: "v.narang@samsung.com" <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: [prelink-cross][PATCH 1/1] debug-for-missing-loader-and-libc
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
X-List-Received-Date: Mon, 06 Apr 2015 08:29:06 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGksCgpwcmVsaW5rIGdpdmVzIGJlbG93IGVycm9yIG1lc3NhZ2UgZm9yIGZhaWx1cmUgZGVwZW5k
ZW5jeToKLi9wcmVsaW5rOiAvdGVzdF9iaW5hcnk6IENvdWxkIG5vdCBmaW5kIG9uZSBvZiB0aGUg
ZGVwZW5kZW5jaWVzCgpUaGlzIHByb3ZpZGVzIG5hbWUgb2YgZGVwZW5kZW50IGxpYnJhcnkgd2hp
Y2ggaXMgbWlzc2luZyBsaWtlIGJlbG93OgouL3ByZWxpbms6IC90ZXN0X2JpbmFyeTogQ291bGQg
bm90IGZpbmQgb25lIG9mIHRoZSBkZXBlbmRlbmNpZXM6Ci4vcHJlbGluay1ydGxkOiBlcnJvciB3
aGlsZSBsb2FkaW5nIHNoYXJlZCBsaWJyYXJpZXM6IGxpYkIuc286IGNhbm5vdCBvcGVuIHNoYXJl
ZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQp3aGVyZSBsaWJCLnNvIGlz
IG1pc3NpbmcgZGVwZW5kZWN5CgpTaWduZWQtb2ZmLWJ5OiBNYW5pbmRlciBTaW5naCA8bWFuaW5k
ZXIxLnNAc2Ftc3VuZy5jb20+ClNpZ25lZC1vZmYtYnk6IFZhbmVldCBOYXJhbmcgPHYubmFyYW5n
QHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogQWplZXQgWWFkYXYgPGFqZWV0LnZAc2Ftc3VuZy5j
b20+ClJldmlld2VkLWJ5OiBHZW9uLWhvIEtpbSA8Z2gwMDcua2ltQHNhbXN1bmcuY29tPgotLS0K
IHNyYy9nYXRoZXIuYyB8ICAgIDQgKystLQogMSBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2dhdGhlci5jIGIvc3JjL2dhdGhl
ci5jCmluZGV4IDVjY2QyNDMuLjRhM2Y0MjggMTAwNjQ0Ci0tLSBhL3NyYy9nYXRoZXIuYworKysg
Yi9zcmMvZ2F0aGVyLmMKQEAgLTI0MCw4ICsyNDAsOCBAQCBnYXRoZXJfZGVwcyAoRFNPICpkc28s
IHN0cnVjdCBwcmVsaW5rX2VudHJ5ICplbnQpCiAgICAgICAgICBpZiAocSAhPSBOVUxMKQogICAg
ICAgICAgICB7CiAgICAgICAgICAgICAgZXJyb3IgKDAsIDAsCi0gICAgICAgICAgICAgICAgIiVz
OiBDb3VsZCBub3QgZmluZCBvbmUgb2YgdGhlIGRlcGVuZGVuY2llcyIsCi0gICAgICAgICAgICAg
ICAgZW50LT5maWxlbmFtZSk7CisgICAgICAgICAgICAgICAgIiVzOiBDb3VsZCBub3QgZmluZCBv
bmUgb2YgdGhlIGRlcGVuZGVuY2llczpcbiVzIiwKKyAgICAgICAgICAgICAgICBlbnQtPmZpbGVu
YW1lLCBsaW5lKTsKICAgICAgICAgICAgICBnb3RvIGVycm9yX291dDsKICAgICAgICAgICAgfQog
ICAgICAgIH0KLS0KCgpUaGFua3MgCk1hbmluZGVyIFNpbmdo



