Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79BE5E0086D; Fri, 13 Mar 2015 00:59:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 971FDE00858;
	Fri, 13 Mar 2015 00:59:21 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Fri, 13 Mar 2015 08:59:14 +0100
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "benjamin.esquivel@linux.intel.com" <benjamin.esquivel@linux.intel.com>
Thread-Topic: [yocto] bind: issue in trust anchor management can cause named
	to crash (CVE-2015-1349)
Thread-Index: AQHQXFMMGlsTvvRwhkO3gFfy/9nO0p0YcVtwgAB/0gCAARkb8A==
Date: Fri, 13 Mar 2015 07:59:14 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48258AE98F@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48258AD7F4@SESTOEX04.enea.se>
	<2131862827.2912188.1426116488072.JavaMail.yahoo@mail.yahoo.com>
	<3230301C09DEF9499B442BBE162C5E48258ADF48@SESTOEX04.enea.se>
	<1426175872.12716.8.camel@besquive-mobl.amr.corp.intel.com>
In-Reply-To: <1426175872.12716.8.camel@besquive-mobl.amr.corp.intel.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
Cc: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>,
	"yocto-security@yoctoproject.org" <yocto-security@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bind: issue in trust anchor management can cause named to crash (CVE-2015-1349)
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
X-List-Received-Date: Fri, 13 Mar 2015 07:59:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQmVuamFtaW4sDQoNCj4gSSB0aGluayB0aGlzIGxpc3QgaXMgbm90IHB1Ymxpc2hlZCBpbiB0
aGUgeW9jdG8gbGlzdHMgcGFnZToNCj4gaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy90b29s
cy1yZXNvdXJjZXMvY29tbXVuaXR5L21haWxpbmctbGlzdHMNCj4gQW5kLCB3aG8gd291bGQgYmUg
YWJsZSB0byBzdWJzY3JpYmUgdG8gaXQ/IGludml0ZS1vbmx5PyBwdWJsaWM/DQoNClRoaXMgbWFp
bGluZyBsaXN0IGlzIGFuIG9wZW4gbGlzdCB0byBkaXNjdXNzIHNlY3VyaXR5IHJlbGF0ZWQgYWN0
aXZpdGllcyAobWFpbmx5IGZvciB0aG9zZSB3aG8gY29udHJpYnV0ZXMgdGhlIFlvY3RvIFByb2pl
Y3Qgd2l0aCBzZWN1cml0eSB1cGRhdGVzL3BhdGNoZXMgZXRjKS4gIFdlIGhhdmUgc29tZSBpbmZv
IGFib3V0IHRoaXMgbGlzdCBhdCBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL1Nl
Y3VyaXR5IHBhZ2UsIHdlIHNob3VsZCBhZGQgdGhpcyBtYWlsaW5nIGxpc3QgdG8gaHR0cHM6Ly93
d3cueW9jdG9wcm9qZWN0Lm9yZy90b29scy1yZXNvdXJjZXMvY29tbXVuaXR5L21haWxpbmctbGlz
dHMgYXMgd2VsbC4NCg0KVGhhbmsgeW91IGZvciBhZGRyZXNzaW5nIHRoaXMuDQoNCi8vU29uYSAN
Cg==

