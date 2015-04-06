Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 768FAE00963; Mon,  6 Apr 2015 02:07:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CDFAE0076B
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 02:07:19 -0700 (PDT)
Received: from epcpsbgr2.samsung.com
	(u142.gpu120.samsung.co.kr [203.254.230.142])
	by mailout2.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NMD00MSVO05L060@mailout2.samsung.com> for
	yocto@yoctoproject.org; Mon, 06 Apr 2015 18:07:17 +0900 (KST)
Received: from epcpsbgx4.samsung.com ( [172.20.52.123])
	by epcpsbgr2.samsung.com (EPCPMTA) with SMTP id F1.95.28411.5CC42255;
	Mon, 6 Apr 2015 18:07:17 +0900 (KST)
X-AuditID: cbfee68e-f79c56d000006efb-1d-55224cc51c1d
Received: from epmailer02 ( [203.254.219.142])
	by epcpsbgx4.samsung.com (EPCPMTA) with SMTP id 6B.23.25195.5CC42255;
	Mon, 6 Apr 2015 18:07:17 +0900 (KST)
Date: Mon, 06 Apr 2015 09:07:17 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: Maninder Singh <maninder1.s@samsung.com>,
	"mark.hatle@windriver.com" <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20150406090448642@maninder1.s
Msgkey: 20150406090448642@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150406082055973@maninder1.s
X-ParentMTR: 20150406082055973@maninder1.s
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <618709705.452561428311237038.JavaMail.weblogic@epmlwas06a>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCIsWRmVeSWpSXmKPExsWyRsSkWveoj1KowdGbGhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV0dlwkqXgCl9F+3OrBsYFfF2MnBxCAmoSi/Y+Zuti5OCQEDCR
	WDmjEiQsISAmceHeeqAwF1DJUkaJQ9O3s0EkTCQuPZjCCtE7h1Hizr8iEJtFQEVievtDsBo2
	AX2Js3vXMYPMFBYIkZhxuwYkLCKQLtH8ahIzyExmgTZGidYdsxgh5ihKrL/xBMzmFRCUODnz
	CQvELhWJlX3vWSDiqhKzLk5ihYjLSSyZepkJwuaVmNH+lAUmPu3rGmYIW1ri/KwNjDDPLP7+
	GCrOL3Hs9g6oXgGJqWcOQtVoSvTtmggV15a486SZDaZ+16nlzDC77m+ZC1UjIbG15QnYPcxA
	90/pfsgOYRtIHFk0hxXdL7wC7hLrDn5nBXleQqCXQ2L/6iksExiVZiGpm4Vk1iwks5DVLGBk
	WcUomlqQXFCclF5kpFecmFtcmpeul5yfu4kRmBhO/3vWt4Px5gHrQ4wCHIxKPLwezxRDhVgT
	y4orcw8xmgLjaSKzlGhyPjD95JXEGxqbGVmYmpgaG5lbmimJ8yZI/QwWEkhPLEnNTk0tSC2K
	LyrNSS0+xMjEwSnVwKh4d2fPcoXz06UDivwDSyIq3rbucucTm56l3zGz9bbKvw3/RPbtkX6i
	4RkT8rfDI41V1vtEhuoaDbXslB0nW/M4VO/63zuTwHj0RHV5p23VrCCeR12lT0saq547LHw0
	117H3mPyL+FbT+JXHN1ls/XrgZVLZ5dP+/giXevJbA5uXv1pbLIc35VYijMSDbWYi4oTAYvW
	wpwHAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGKsWRmVeSWpSXmKPExsVy+t/tPt2jPkqhBjMvKVpMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlpG
	Z8NJloIrfBXtz60aGBfwdTFycggJqEks2vuYDcSWEDCRuPRgCiuELSZx4d56NoiaOYwSd/4V
	gdgsAioS09sfgsXZBPQlzu5dx9zFyMEhLBAiMeN2DUhYRCBdovnVJKAwFwezQBujROuOWYwQ
	cxQl1t94AmbzCghKnJz5hAVil4rEyr73LBBxVYlZFydB3SAnsWTqZSYIm1diRvtTFpj4tK9r
	mCFsaYnzszYwwty8+PtjqDi/xLHbO6B6BSSmnjkIVaMp0bdrIlRcW+LOk2Y2mPpdp5Yzw+y6
	v2UuVI2ExNaWJ2D3MAPdP6X7ITuEbSBxZNEcVnS/8Aq4S6w7+J11AqPsLCSpWUjaZyFpR1az
	gJFlFaNoakFyQXFSeoWJXnFibnFpXrpecn7uJkZwGnq2ZAdjwwXrQ4wCHIxKPLwLXiiGCrEm
	lhVX5h5ilOBgVhLh/WGkFCrEm5JYWZValB9fVJqTWnyI0RQYaxOZpUST84EpMq8k3tDYxNzU
	2NTCwNDc3ExJnPf/udwQIYH0xJLU7NTUgtQimD4mDk6pBsaWReo+sZcv7p2482vE+2fv/nKp
	xHYpfijaGuo2Y0rhhdyGPVtfGaV827FGdOsmvsovp96Yfn+5QF3/8cyFBzJ7vY4axal/1Q/b
	H3SWM3al1yOjX6fbUrdtzO7O614rX7N1f8ydNN3ye6LrPhT80rr71ijyV7OEKPPkfSz/NH7e
	YRVS2CWpWe+mxFKckWioxVxUnAgA0j5Od1kDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: Vaneet Narang <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: [prelink-cross][PATCH 1/1] debug message for dependencies not found
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
X-List-Received-Date: Mon, 06 Apr 2015 09:07:23 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGksDQpTYW1lIG1haWwgc2VudCBlYXJsaWVyIENoYW5naW5nIHN1YmplY3QgbGluZSwgQnkgbWlz
dGFrZSBzaGFyZWQgc3ViamVjdCBsaW5lIG9mIG90aGVyIHBhdGNoLg0KDQpwcmVsaW5rIGdpdmVz
IGJlbG93IGVycm9yIG1lc3NhZ2UgZm9yIGZhaWx1cmUgZGVwZW5kZW5jeToNCi4vcHJlbGluazog
L3Rlc3RfYmluYXJ5OiBDb3VsZCBub3QgZmluZCBvbmUgb2YgdGhlIGRlcGVuZGVuY2llcw0KDQpU
aGlzIHByb3ZpZGVzIG5hbWUgb2YgZGVwZW5kZW50IGxpYnJhcnkgd2hpY2ggaXMgbWlzc2luZyBs
aWtlIGJlbG93Og0KLi9wcmVsaW5rOiAvdGVzdF9iaW5hcnk6IENvdWxkIG5vdCBmaW5kIG9uZSBv
ZiB0aGUgZGVwZW5kZW5jaWVzOg0KLi9wcmVsaW5rLXJ0bGQ6IGVycm9yIHdoaWxlIGxvYWRpbmcg
c2hhcmVkIGxpYnJhcmllczogbGliQi5zbzogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxl
OiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQp3aGVyZSBsaWJCLnNvIGlzIG1pc3NpbmcgZGVw
ZW5kZWN5DQoNClNpZ25lZC1vZmYtYnk6IE1hbmluZGVyIFNpbmdoIDxtYW5pbmRlcjEuc0BzYW1z
dW5nLmNvbT4NClNpZ25lZC1vZmYtYnk6IFZhbmVldCBOYXJhbmcgPHYubmFyYW5nQHNhbXN1bmcu
Y29tPg0KUmV2aWV3ZWQtYnk6IEFqZWV0IFlhZGF2IDxhamVldC52QHNhbXN1bmcuY29tPg0KUmV2
aWV3ZWQtYnk6IEdlb24taG8gS2ltIDxnaDAwNy5raW1Ac2Ftc3VuZy5jb20+DQotLS0NCiBzcmMv
Z2F0aGVyLmMgfCAgICA0ICsrLS0NCiAxIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL3NyYy9nYXRoZXIuYyBiL3NyYy9nYXRoZXIu
Yw0KaW5kZXggNWNjZDI0My4uNGEzZjQyOCAxMDA2NDQNCi0tLSBhL3NyYy9nYXRoZXIuYw0KKysr
IGIvc3JjL2dhdGhlci5jDQpAQCAtMjQwLDggKzI0MCw4IEBAIGdhdGhlcl9kZXBzIChEU08gKmRz
bywgc3RydWN0IHByZWxpbmtfZW50cnkgKmVudCkNCiAgICAgICAgICBpZiAocSAhPSBOVUxMKQ0K
ICAgICAgICAgICAgew0KICAgICAgICAgICAgICBlcnJvciAoMCwgMCwNCi0gICAgICAgICAgICAg
ICAgIiVzOiBDb3VsZCBub3QgZmluZCBvbmUgb2YgdGhlIGRlcGVuZGVuY2llcyIsDQotICAgICAg
ICAgICAgICAgIGVudC0+ZmlsZW5hbWUpOw0KKyAgICAgICAgICAgICAgICAiJXM6IENvdWxkIG5v
dCBmaW5kIG9uZSBvZiB0aGUgZGVwZW5kZW5jaWVzOlxuJXMiLA0KKyAgICAgICAgICAgICAgICBl
bnQtPmZpbGVuYW1lLCBsaW5lKTsNCiAgICAgICAgICAgICAgZ290byBlcnJvcl9vdXQ7DQogICAg
ICAgICAgICB9DQogICAgICAgIH0NCi0tDQoNCg0KVGhhbmtzIA0KTWFuaW5kZXIgU2luZ2gNCg0K



